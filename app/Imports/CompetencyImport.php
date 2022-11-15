<?php

namespace App\Imports;

use App\Models\Competency;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class CompetencyImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Competency([
            'kelas_id' => $row['kelas_id'],
            'topic_id' => $row['topic_id'],
            'title' => $row['title'],
        ]);
    }
}
