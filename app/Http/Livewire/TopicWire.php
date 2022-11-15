<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Topic;
use Livewire\WithPagination;
use App\Imports\TopicImport;
use App\Exports\TopicExport;
use App\Models\Kelases;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class TopicWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $topics, $title, $topic_id, $kelas_id, $kelas;
    public $isModalOpen = 0;

    public function render()
    {
        $topic =  Topic::search($this->search)
        ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
        ->simplePaginate($this->perPage);
        return view('livewire.topic.index', compact('topic'));
    }

    public function create()
    {
        $kelas = Kelases::select('id', 'title')->get();
        if ($kelas->isEmpty()) {
            $this->kelas = null;
        }
        else {
            $this->kelas = $kelas;
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
        $this->kelas_id = '';
    }
    
    public function store()
    {
        $this->validate([
            'title' => 'required',
            'kelas_id' => 'required'
        ]);
    
        Topic::updateOrCreate(['id' => $this->topic_id], [
            'title' => $this->title,
            'kelas_id' => $this->kelas_id
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $topic = Topic::findOrFail($id);
        $this->topic_id = $id;
        $this->title = $topic->title;
        $this->kelas_id = $topic->kelas_id;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        Topic::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new TopicImport(), $request->file('import_file'));
        return redirect()->route('livewire.topic.import')->withSuccess('Topic Created');
    }

    public function export()
	{
		return Excel::download(new TopicExport, 'topic.xlsx');
	}
}
