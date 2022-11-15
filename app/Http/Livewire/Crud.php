<?php


namespace App\Http\Livewire;
use Livewire\Component;
use App\Models\Student;
use Livewire\WithPagination;

class Crud extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $students, $name, $email, $mobile, $student_id;
    public $isModalOpen = 0;

    public function render()
    {
        return view('livewire.crud', [
            'student' => Student::search($this->search)
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
        $this->name = '';
        $this->email = '';
        $this->mobile = '';
    }
    
    public function store()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
        ]);
    
        Student::updateOrCreate(['id' => $this->student_id], [
            'name' => $this->name,
            'email' => $this->email,
            'mobile' => $this->mobile,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $student = Student::findOrFail($id);
        $this->student_id = $id;
        $this->name = $student->name;
        $this->email = $student->email;
        $this->mobile = $student->mobile;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        Student::find($id)->delete();
    }
}
