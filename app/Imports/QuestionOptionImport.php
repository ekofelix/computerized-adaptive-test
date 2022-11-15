<?php

namespace App\Imports;

use App\Models\QuestionOption;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class QuestionOptionImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new QuestionOption([
            'question_id' => $row['question_id'],
            'option' => $row['option'],
            'correct' => $row['correct'],
        ]);
    }
}
