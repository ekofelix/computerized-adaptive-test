<?php

namespace App\Http\Controllers;

use DateTime;
use Carbon\Carbon;
use App\Models\Test;
use App\Models\Question;
use App\Models\TestAnswer;
use App\Models\TestStatus;
use App\Models\TestSetting;
use Illuminate\Http\Request;
use App\Models\QuestionOption;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class TestController extends Controller
{
    public function index()
    {
        $data = TestSetting::first();
        return view('new_fiture.test.index', compact('data'));
    }
    public function timeout($id)
    {
        $TestStatus = TestStatus::find($id);
        $TestStatus->update([
            'status' => 'stop',
        ]);

        $Test = Test::find($TestStatus->id_test);
        $TestAnswer = TestAnswer::where('user_id', Auth::user()->id)->where('test_id', $Test->id)->get();
        $result = 0;
        foreach ($TestAnswer as $x) {
            if ($x->correct == 1) {
                $result = $result + 1;
            }
        }
        $Test->update([
            'result' => $result,
        ]);
        return redirect()->route('test');
    }
    public function start_test()
    {
        date_default_timezone_set('Asia/Jakarta');
        $Test = Test::create([
            'user_id' => Auth::user()->id,
            'result' => "",
        ]);

        $level = 2;
        $question = Question::where('tingkat_kesulitan', $level)->where('kelas_id', Auth::user()->kelas_id)->get();
        $pilihan_soal = rand(1, count($question) - 1);

        // Create a new \DateTime instance
        $date = DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s'));

        // Modify the date
        $TestSetting = TestSetting::first();
        $date->modify('+' . $TestSetting->time_estimation . ' minutes');

        $TestStatus = TestStatus::create([
            'id_user' => Auth::user()->id,
            'id_test' => $Test->id,
            'level_test' => 2,
            'pilihan_soal' => $pilihan_soal,
            'count_number' => 1,
            'status' => 'progres',
            'start_time' => date('d/m/y'),
            'end_time' => $date->format('Y-m-d H:i:s'),
        ]);
        return redirect()->route('test_page', ['id' => $Test->id, 'level' => $level, 'pilihan_soal' => $pilihan_soal, 'count_number' => 1, 'id_status' => $TestStatus->id]);
    }
    public function test_page($id, $level, $pilihan_soal, $count_number, $id_status)
    {
        date_default_timezone_set('Asia/Jakarta');
        $Test = Test::find($id);
        $data = TestSetting::first();
        $question = Question::where('tingkat_kesulitan', $level)->where('kelas_id', Auth::user()->kelas_id)->get();
        $a = 0;
        while ($a == 0) {
            $count_question = TestAnswer::where('question_id', $question[$pilihan_soal]->id)->where('test_id', $id)->where('user_id', Auth::user()->id)->count();
            if ($count_question == 0) {
                $pilihan_soal = $pilihan_soal;
                break;
            } else {
                $pilihan_soal = rand(1, count($question) - 1);
            }
        }
        $question = $question[$pilihan_soal];

        $status = TestStatus::find($id_status);
        return view('new_fiture.test.test_page', compact('data', 'question', 'Test', 'count_number', 'status'));
    }
    public function next_test($id, $id_question, $count_number, $id_status, Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');

        if ($request->options == null) {
            return redirect()->back();
        }

        $question = Question::find($id_question);
        $QuestionOption = QuestionOption::find($request->options);
        $TestAnswer = TestAnswer::create([
            'user_id' => Auth::user()->id,
            'test_id' => $id,
            'question_id' => $question->id,
            'correct' => $QuestionOption->correct,
            'option_id' => $request->options,
        ]);
        if ($QuestionOption->correct == 1) {
            $level = $question->tingkat_kesulitan + 1;
        } else {
            $level = $question->tingkat_kesulitan - 1;
        }

        if ($level == 0) {
            $level = 1;
        }
        if ($level == 4) {
            $level = 3;
        }

        $question = Question::where('tingkat_kesulitan', $level)->where('kelas_id', Auth::user()->kelas_id)->get();
        $pilihan_soal = rand(1, count($question) - 1);
        $a = 0;
        while ($a == 0) {
            $count_question = TestAnswer::where('question_id', $question[$pilihan_soal]->id)->where('test_id', $id)->where('user_id', Auth::user()->id)->count();
            if ($count_question == 0) {
                $pilihan_soal = $pilihan_soal;
                break;
            } else {
                $pilihan_soal = rand(1, count($question) - 1);
            }
        }

        $count_number = $count_number + 1;
        $TestStatus = TestStatus::find($id_status);
        $TestStatus->update([
            'level_test' => $level,
            'pilihan_soal' => $pilihan_soal,
            'count_number' => $count_number,
        ]);
        return redirect()->route('test_page', ['id' => $id, 'level' => $level, 'pilihan_soal' => $pilihan_soal, 'count_number' => $count_number, 'id_status' => $id_status]);
    }
    public function finish($id, $id_question, $id_status, Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        if ($request->options == null) {
            return redirect()->back();
        }
        $question = Question::find($id_question);
        $QuestionOption = QuestionOption::find($request->options);
        $TestAnswer = TestAnswer::create([
            'user_id' => Auth::user()->id,
            'test_id' => $id,
            'question_id' => $question->id,
            'correct' => $QuestionOption->correct,
            'option_id' => $request->options,
        ]);
        $Test = Test::find($id);
        $TestAnswer = TestAnswer::where('user_id', Auth::user()->id)->where('test_id', $id)->get();
        $result = 0;
        foreach ($TestAnswer as $x) {
            if ($x->correct == 1) {
                $result = $result + 1;
            }
        }
        $Test->update([
            'result' => $result,
        ]);

        $TestStatus = TestStatus::find($id_status);
        $TestStatus->update([
            'status' => 'stop',
        ]);
        return redirect()->route('test');
    }

    public function result()
    {
        $query = DB::table('tests as d')
            ->select('d.*', 'u.name')
            ->join('users as u', 'u.id', '=', 'd.user_id');
        if (isset($_GET['search'])) {
            $query->where('u.name', 'like', '%' . $_GET['search'] . '%');
        }

        $data = $query->orderBy('id', 'DESC')->paginate(10);
        return view('new_fiture.result.index', compact('data'));
    }
    public function result_detail($id)
    {
        $data['test'] = DB::table('tests as d')
            ->select(
                'u.*',
                'u.id as user_id',
                'd.*',
            )
            ->join('users as u', 'u.id', '=', 'd.user_id')
            ->where('d.id', $id)
            ->first();
        $data['test_answer'] = TestAnswer::where('test_id', $id)->get();
        return view('new_fiture.result.detail', compact('data'));
    }
}
