<?php

namespace App\Imports;

use App\Models\SubCompetency;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class SubCompetencyImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new SubCompetency([
            'kelas_id' => $row['kelas_id'],
            'topic_id' => $row['topic_id'],
            'competency_id' => $row['competency_id'],
            'title' => $row['title'],
        ]);
    }
}
