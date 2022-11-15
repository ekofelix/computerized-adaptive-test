<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data1 = User::create([
            'nisn' => '201810370311126',
            'name' => 'Felix',
            'password' => bcrypt('12345678'),
            'school' => 'Sdn Maju Mundur',
            'kelas_id' => '6',
            'gender' => 'Male',
            'age' => '10'
        ]);
        $data1->syncRoles('admin');

        $data2 = User::create([
            'nisn' => '1266',
            'name' => 'Peserta',
            'password' => bcrypt('12345678'),
            'school' => 'Sdn Maju Mundur',
            'kelas_id' => '5',
            'gender' => 'Male',
            'age' => '10'
        ]);
        $data2->syncRoles('user');
        
    }
}
