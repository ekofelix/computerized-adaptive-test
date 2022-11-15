<?php

namespace App\Exports;

use App\Models\QuestionOption;
use Maatwebsite\Excel\Concerns\FromCollection;

class QuestionOptionExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return QuestionOption::all();
    }
}
