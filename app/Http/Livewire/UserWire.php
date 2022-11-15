<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User;
use Livewire\WithPagination;
use App\Imports\UserImport;
use App\Exports\UserExport;
use App\Models\Kelases;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class UserWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $title, $user_id, $kelas_id, $kelas, $nisn, $name, $password, $school, $gender, $age, $users;
    public $isModalOpen = 0;

    public function render()
    {
        $user =  User::search($this->search)
        ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
        ->simplePaginate($this->perPage);
        return view('livewire.user.index', compact('user'));
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
        $this->nisn = '';
        $this->kelas_id = '';
        $this->name = '';
        $this->password = '';
        $this->school = '';
        $this->gender = '';
        $this->age = '';
    }
    
    public function store()
    {
        $this->validate([
            'nisn' => 'required',
            'kelas_id' => 'required',
            'name' => 'required',
            'password' => 'required',
            'school' => 'required',
            'gender' => 'required',
            'age' => 'required',
        ]);
    
        User::updateOrCreate(['id' => $this->user_id], [
            'nisn' => $this->nisn,
            'kelas_id' => $this->kelas_id,
            'name' => $this->name,
            'password' => bcrypt($this->password),
            'school' => $this->school,
            'gender' => $this->gender,
            'age' => $this->age,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        $this->user_id = $id;
        $this->nisn = $user->nisn;
        $this->kelas_id = $user->kelas_id;
        $this->name = $user->name;
        $this->password = $user->password;
        $this->school = $user->school;
        $this->gender = $user->gender;
        $this->age = $user->age;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        User::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new UserImport(), $request->file('import_file'));
        return redirect()->route('livewire.user.import')->withSuccess('User Created');
    }

    public function export()
	{
		return Excel::download(new UserExport, 'user.xlsx');
	}
}
