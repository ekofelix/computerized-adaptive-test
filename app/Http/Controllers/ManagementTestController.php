<?php

namespace App\Http\Controllers;

use App\Models\TestSetting;
use Illuminate\Http\Request;

class ManagementTestController extends Controller
{
    public function index()
    {
        $data = TestSetting::first();
        return view('new_fiture.management_test.index', compact('data'));
    }
    public function update($id, Request $request)
    {
        try {
            $data = TestSetting::find($id);
            $data->update([
                'qty_question' => $request->qty_question,
                'time_estimation' => $request->time_estimation,
            ]);
            return redirect()->back()->with('success', 'Success update test settings');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
