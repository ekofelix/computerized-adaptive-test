<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Topic;
use Livewire\WithPagination;
use App\Imports\SubCompetencyImport;
use App\Exports\SubCompetencyExport;
use App\Models\Kelases;
use App\Models\Competency;
use App\Models\SubCompetency;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class SubCompetencyWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $kelases, $title, $topic_id, $topic, $competency_id, $topics, $kelas_id,
    $sub_competency_id, $competencies;
    public $isModalOpen = 0;
    public $selectedTopic = null;
    public $selectedKelas = null;
    public $selectedCompetency = null;

    public function mount($selectedCompetency = null)
    {
        $this->kelases = Kelases::all();
        $this->topics = collect();
        $this->competencies = collect();
        $this->selectedCompetency= $selectedCompetency;

        if (!is_null($selectedCompetency)) {
            $competency = Competency::with('topic.kelas')->find($selectedCompetency);
            if ($competency) {
                $this->competencies = Competency::where('topic_id', $competency->topic_id)->get();
                $this->topics = Topic::where('kelas_id', $competency->topic->kelas_id)->get();
                $this->kelas_id = $competency->topic->kelas_id;
                $this->topic_id = $competency->topic_id;
            }
        }
    }

    public function updatedKelasId($kelas)
    {
        $this->topics = Topic::where('kelas_id', $kelas)->get();
        $this->topic_id = null;
    }

    public function updatedTopicId($topic)
    {
        if(!is_null($topic)){
            $this->competencies = Competency::where('topic_id', $topic)->get();
        }
    }

    public function render()
    {
        return view('livewire.sub-competency.index', [
            'subCompetency' => SubCompetency::search($this->search)
            ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
            ->simplePaginate($this->perPage),
        ]);
    }

    public function create()
    {
        $competencies = Competency::select('id', 'title')->get();
        if ($competencies->isEmpty()) {
            $this->competencies = null;
        }
        else {
            $this->competencies = $competencies;
        }
        $this->resetCreateForm();
        $this->openModalPopover();
    }

    public function openModalPopover()
    {
        $this->isModalOpen = true;
    }

    public function closeModalPopover()
    {
        $this->isModalOpen = false;
    }

    private function resetCreateForm(){
        $this->title = '';
        $this->topic_id = '';
        $this->kelas_id = '';
        $this->competency_id = '';
    }
    

    public function store()
    {
        $this->validate([
            'title' => 'required',
            'topic_id' => 'required',
            'kelas_id' => 'required',
            'competency_id' => 'required',
        ]);
        SubCompetency::updateOrCreate(['id' => $this->sub_competency_id], [
            'title' => $this->title,
            'topic_id' => $this->topic_id,
            'kelas_id' => $this->kelas_id,
            'competency_id' => $this->competency_id,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $competency = SubCompetency::findOrFail($id);
        $this->sub_competency_id = $id;
        $this->title = $competency->title;
        $this->kelas_id = $competency->kelas_id;
        $this->topic_id = $competency->topic_id;
        $this->competency_id = $competency->competency_id;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        SubCompetency::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new SubCompetencyImport(), $request->file('import_file'));
        return redirect()->route('livewire.sub-competency.import')->withSuccess('Sub Competency Created');
    }

    public function export()
	{
		return Excel::download(new SubCompetencyExport, 'sub-competency.xlsx');
	}
}
