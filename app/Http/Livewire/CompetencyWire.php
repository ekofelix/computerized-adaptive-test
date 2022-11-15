<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Topic;
use Livewire\WithPagination;
use App\Imports\CompetencyImport;
use App\Exports\CompetencyExport;
use App\Models\Kelases;
use App\Models\Competency;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class CompetencyWire extends Component
{
    use WithPagination;
    public $perPage = 10, $search = '', $orderBy = 'id', $orderAsc = true, $kelases, $title, $topic_id, $topic,
     $competency_id, $topics, $kelas_id, $isModalOpen = 0, $selectedTopic = null, $selectedKelas = null,
     $selectedCompetency = null;

    public function mount($selectedTopic = null)
    {
        $this->kelases = Kelases::all();
        $this->topics = collect();
        $this->selectedTopic = $selectedTopic;

        if (!is_null($selectedTopic)) {
            $topic = Topic::with('kelas')->find($selectedTopic);
            if ($topic) {
                $this->topic = Topic::where('kelas_id', $topic->kelas_id)->get();
                $this->kelas_id = $topic->kelas_id;
            }
        }
    }

    public function updatedKelasId($kelas)
    {
        $this->topics = Topic::where('kelas_id', $kelas)->get();
    }

    public function render()
    {
        return view('livewire.competency.index', [
            'competency' => Competency::search($this->search)
                ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
                ->simplePaginate($this->perPage),
        ]);
    }

    public function create()
    {
        $topics = Topic::select('id', 'title')->get();
        if ($topics->isEmpty()) {
            $this->topics = null;
        } else {
            $this->topics = $topics;
        }
        
        $this->resetCreateForm();
        $this->openModalPopover();
    }

    private function resetCreateForm()
    {
        $this->title = '';
        $this->topic_id = '';
        $this->kelas_id = '';
    }

    public function openModalPopover()
    {
        $this->isModalOpen = true;
    }

    public function closeModalPopover()
    {
        $this->isModalOpen = false;
    }

    


    public function store()
    {
        $this->validate([
            'title' => 'required',
            'topic_id' => 'required',
            'kelas_id' => 'required',
        ]);
        Competency::updateOrCreate(['id' => $this->competency_id], [
            'title' => $this->title,
            'topic_id' => $this->topic_id,
            'kelas_id' => $this->kelas_id,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $competency = Competency::findOrFail($id);
        $this->competency_id = $id;
        $this->title = $competency->title;
        $this->kelas_id = $competency->kelas_id;
        $this->topic_id = $competency->topic_id;

        $this->openModalPopover();
    }

    public function delete($id)
    {
        Competency::find($id)->delete();
    }

    public function import(Request $request)
    {
        Excel::import(new CompetencyImport(), $request->file('import_file'));
        return redirect()->route('livewire.competency.import')->withSuccess('Competency Created');
    }

    public function export()
    {
        return Excel::download(new CompetencyExport, 'competency.xlsx');
    }
}
