<?php

namespace App\Imports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class UserImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $data = User::create ([
            'kelas_id' => $row['kelas_id'],
            'name' => $row['name'],
            'nisn' => $row['nisn'],
            'school' => $row['school'],
            'gender' => $row['gender'],
            'password' => bcrypt('12345678'),
            'age' => $row['age'],
        ]);
        $data->syncRoles('user');
    }
}
