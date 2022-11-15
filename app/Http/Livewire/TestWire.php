<?php

namespace App\Http\Livewire;

use Auth;
use App\Models\Test;
use App\Models\TestAnswer;
use App\Models\Question;
use App\Models\QuestionOption;
use App\Models\Kelases;
use Livewire\Component;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class TestWire extends Component
{
    use WithPagination;
    public $perPage = 1, $questions;

    public function index()
    {
        $questions = Question::where('kelas_id','6')->inRandomOrder()->limit(5)->get();
        // $questions = Question::inRandomOrder()->limit(10)->get();
        // $questions = Question::simplePaginate($this->perPage);
        // $questions = 0;
        // if($questions == null ){
        //     $questions = Question::where('kelas_id','6')->where('tingkat_kesulitan','1')->inRandomOrder()->limit(1)->get();
        //     $questions++;
        // }else{
        //     $questions = Question::where('kelas_id','6')->where('tingkat_kesulitan','3')->inRandomOrder()->limit(2)->get();
        // }

        foreach ($questions as &$question) {
            $question->option = QuestionOption::where('question_id', $question->id)->inRandomOrder()->get();
        }
        return view('tests.index', compact('questions'));
    }

    public function store(Request $request)
    {
        $result = 0;

        $test = Test::create([
            'user_id' => Auth::id(),
            'result'  => $result,
        ]);

        foreach ($request->input('questions', []) as $key => $question) {
            $status = 0;

            if ($request->input('answers.'.$question) != null
                && QuestionOption::find($request->input('answers.'.$question))->correct
            ) {
                $status = 1;
                $result++;
            }
            TestAnswer::create([
                'user_id'     => Auth::id(),
                'test_id'     => $test->id,
                'question_id' => $question,
                'option_id'   => $request->input('answers.'.$question),
                'correct'     => $status,
            ]);
        }

        $test->update(['result' => $result]);

        return redirect()->route('result.show', [$test->id]);
    }
}
