<?php

namespace App\Imports;

use App\Models\Topic;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class TopicImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Topic([
            'kelas_id' => $row['kelas_id'],
            'title' => $row['title'],
        ]);
    }
}
