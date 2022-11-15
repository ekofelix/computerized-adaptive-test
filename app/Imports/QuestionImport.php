<?php

namespace App\Imports;

use App\Models\Question;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class QuestionImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Question([
            'kelas_id' => $row['kelas_id'],
            'topic_id' => $row['topic_id'],
            'competency_id' => $row['competency_id'],
            'sub_competency_id' => $row['sub_competency_id'],
            'question_text' => $row['question_text'],
            'answer_explanation' => $row['answer_explanation'],
            'more_info_link' => $row['more_info_link'],
            'tingkat_kesulitan' => $row['tingkat_kesulitan'],
            // 'correct' => $row['correct'],
            // 'option1' => $row['option1'],
            // 'option2' => $row['option2'],
            // 'option3' => $row['option3'],
            // 'option4' => $row['option4'],
        ]);
    }
}
