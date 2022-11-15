<?php

namespace App\Http\Livewire;

use App\Models\Result;
use Auth;
use App\Models\Test;
use App\Models\TestAnswer;
use Livewire\Component;
use Livewire\WithPagination;

class ResultWire extends Component
{
    use WithPagination;
    public $perPage = 10;
    public $search = '';
    public $orderBy = 'id';
    public $orderAsc = true;

    public $isModalOpen = 0;

    public function index()
    {
        $results = Test::all()->load('user');

        if (!Auth::user()->hasrole('admin')) {
            $results = $results->where('user_id', '=', Auth::id());
        }
        return view('result.index', compact('results'));
    }

    /**
     * Display a listing of Result.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {
    //     $results = Test::all()->load('user');

    //     if (!Auth::user()->hasrole('admin')) {
    //         $results = $results->where('user_id', '=', Auth::id());
    //     }

    //     return view('livewire.results.index', compact('results'));
    // }

    /**
     * Display Result.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $test = Test::find($id)->load('user');

        if ($test) {
            $results = TestAnswer::where('test_id', $id)
                ->with('question')
                ->with('question.option')
                ->get()
            ;
        }
        
        return view('result.show', compact('test', 'results'));
    }

    // public function edit($id)
    // {
    //     $test = Test::findOrFail($id);
    //     if ($test) {
    //         $results = TestAnswer::where('test_id', $id)
    //             ->with('question')
    //             ->with('question.option')
    //             ->get()
    //         ;
    //     }
    // }
}
