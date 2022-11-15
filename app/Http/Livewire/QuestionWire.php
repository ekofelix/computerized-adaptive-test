<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Imports\QuestionImport;
use App\Exports\QuestionExport;
use App\Models\Kelases;
use App\Models\Topic;
use App\Models\Question;
use App\Models\Competency;
use App\Models\SubCompetency;
use App\Models\QuestionOption;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class QuestionWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $title, $kelas_id, $topic_id, $competency_id, $question_id, $kelases, $topics,
    $competencies, $question_text, $answer_explanation, $more_info_link, $tingkat_kesulitan,
    $correct, $option, $option1, $option2, $option3, $option4, $subCompetencies, $subCompetency,
    $sub_competency_id;
    public $isModalOpen = 0;
    public $selectedTopic = null;
    public $selectedKelas = null;
    public $selectedCompetency = null;
    public $selectedSubCompetency = null;

    public function mount($selectedSubCompetency = null)
    {
        $this->kelases = Kelases::all();
        $this->topics = collect();
        $this->competencies = collect();
        $this->subCompetencies = collect();
        $this->selectedSubCompetency = $selectedSubCompetency;

        if (!is_null($selectedSubCompetency)) {
            $subCompetency = SubCompetency::with('competency.topic.kelas')->find($selectedSubCompetency);
            if ($subCompetency) {
                $this->subCompetencies = SubCompetency::where('competency_id', $subCompetency->competency_id)->get();
                $this->competencies = Competency::where('topic_id', $subCompetency->competency->topic_id)->get();
                $this->topics = Topic::where('kelas_id', $subCompetency->topic->kelas_id)->get();
                $this->kelas_id = $subCompetency->competency->topic->kelas_id;
                $this->topic_id = $subCompetency->competency->topic_id;
                $this->competency_id = $subCompetency->competency_id;
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
        }else{
            $this->competency_id = null;
        }
    }

    public function updatedCompetencyId($competency)
    {
        if(!is_null($competency)){
            $this->subCompetencies = SubCompetency::where('competency_id', $competency)->get();
        }
    }

    public function render()
    {
        return view('livewire.question.index', [
            'question' => Question::search($this->search)
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
        $this->topic_id = '';
        $this->kelas_id = '';
        $this->competency_id = '';
        $this->sub_competency_id = '';
        $this->question_text = '';
        $this->answer_explanation = '';
        $this->more_info_link = '';
        $this->tingkat_kesulitan = '';
        // $this->option1 = '';
        // $this->option2 = '';
        // $this->option3 = '';
        // $this->option4 = '';
        // $this->correct = '';
    }

    public function store()
    {
        $this->validate([
            'topic_id' => 'required',
            'kelas_id' => 'required',
            'competency_id' => 'required',
            'sub_competency_id' => 'required',
            'question_text' => 'required',
            'answer_explanation' => 'nullable',
            'more_info_link' => 'nullable',
            'tingkat_kesulitan' => 'required',
            // 'option1' => 'required',
            // 'option2' => 'required',
            // 'option3' => 'required',
            // 'option4' => 'required',
            // 'correct' => 'nullable',
        ]);
        
        Question::updateOrCreate(['id' => $this->question_id], [
            'topic_id' => $this->topic_id,
            'kelas_id' => $this->kelas_id,
            'competency_id' => $this->competency_id,
            'sub_competency_id' => $this->sub_competency_id,
            'question_text' => $this->question_text,
            'answer_explanation' => $this->answer_explanation,
            'more_info_link' => $this->more_info_link,
            'tingkat_kesulitan' => $this->tingkat_kesulitan,
            // 'option1' => $this->option1,
            // 'option2' => $this->option2,
            // 'option3' => $this->option3,
            // 'option4' => $this->option4,
            // 'correct' => $this->correct,
        ]);

        $this->closeModalPopover();
        $this->resetCreateForm();
    }

    public function edit($id)
    {
        $question = Question::findOrFail($id);
        $this->question_id = $id;
        $this->kelas_id = $question->kelas_id;
        $this->topic_id = $question->topic_id;
        $this->competency_id = $question->competency_id;
        $this->sub_competency_id = $question->sub_competency_id;
        $this->question_text = $question->question_text;
        $this->answer_explanation = $question->answer_explanation;
        $this->more_info_link = $question->more_info_link;
        $this->tingkat_kesulitan = $question->tingkat_kesulitan;
        // $this->correct = $question->correct;
        // $this->option1 = $question->option1;
        // $this->option2 = $question->option2;
        // $this->option3 = $question->option3;
        // $this->option4 = $question->option4;
        $this->openModalPopover();
    }
    
    public function delete($id)
    {
        Question::find($id)->delete();
    }

    public function import(Request $request) 
    {
        Excel::import(new QuestionImport(), $request->file('import_file'));
        return redirect()->route('livewire.question.import')->withSuccess('Question Created');
    }

    public function export()
	{
		return Excel::download(new QuestionExport, 'question.xlsx');
	}
}
