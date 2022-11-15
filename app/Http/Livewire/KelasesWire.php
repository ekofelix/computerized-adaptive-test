<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Kelases;
use Livewire\WithPagination;
use App\Imports\KelasImport;
use App\Exports\KelasExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class KelasesWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $kelases, $title, $kelas_id;
    public $isModalOpen = 0;

    public function render()
    {
        return view('livewire.kelas.index', [
            'kelas' => Kelases::search($this->search)
            ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
            ->simplePaginate($this->perPage),
        ]);
    }

    public function create()
    {
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
    }
    
    public function store()
    {
        $this->validate([
            'title' => 'required',
        ]);
    
        Kelases::updateOrCreate(['id' => $this->kelas_id], [
            'title' => $this->title,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $kelas = Kelases::findOrFail($id);
        $this->kelas_id = $id;
        $this->title = $kelas->title;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        Kelases::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new KelasImport(), $request->file('import_file'));
        return redirect()->route('livewire.kelas.import')->withSuccess('CLass Created');
    }

    public function export()
	{
		return Excel::download(new KelasExport, 'class.xlsx');
	}
}
