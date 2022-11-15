<?php

namespace App\Http\Controllers;

use App\Models\Question;
use App\Models\User;
use App\Models\Kelases;
use App\Models\Competency;
use App\Models\SubCompetency;
use App\Models\Topic;
use App\Models\QuestionOption;

class DashboardController extends Controller
{
    public function index()
    {
        $kelas = Kelases::get();
        $topic = Topic::get();
        $competency = Competency::get();
        $subcompetency = SubCompetency::get();
        $question = Question::get();
        $option = QuestionOption::get();
        $user = User::get();
        return view('dashboard', compact('kelas','topic','competency','subcompetency','question','option','user'));
    }
}
