<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\QuestionOption;
use Livewire\WithPagination;
use App\Imports\QuestionOptionImport;
use App\Exports\QuestionOptionExport;
use App\Models\Question;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class QuestionOptionWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $questionOptions, $questionOption_id, $question_id, $question, $option, $correct;
    public $isModalOpen = 0;

    public function render()
    {
        return view('livewire.question-option.index', [
            'questionOption' => QuestionOption::search($this->search)
            ->orderBy($this->orderBy, $this->orderAsc ? 'asc' : 'desc')
            ->simplePaginate($this->perPage),
        ]);
    }

    public function create()
    {
        $question = Question::select('id', 'question_text')->get();
        if ($question->isEmpty()) {
            $this->question = null;
        }
        else {
            $this->question = $question;
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
        $this->question_id = '';
        $this->option = '';
        $this->correct = '';
    }
    
    public function store()
    {
        $this->validate([
            'question_id' => 'required',
            'option' => 'required',
            'correct' => 'required'
        ]);
    
        QuestionOption::updateOrCreate(['id' => $this->questionOption_id], [
            'question_id' => $this->question_id,
            'option' => $this->option,
            'correct' => $this->correct,
        ]);


        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $questionOption = QuestionOption::findOrFail($id);
        $this->questionOption_id = $id;
        $this->question_id = $questionOption->question_id;
        $this->option = $questionOption->option;
        $this->correct = $questionOption->correct;
    
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        QuestionOption::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new QuestionOptionImport(), $request->file('import_file'));
        return redirect()->route('livewire.question-option.import')->withSuccess('Question Option Created');
    }

    public function export()
	{
		return Excel::download(new QuestionOptionExport, 'question-option.xlsx');
	}
}
