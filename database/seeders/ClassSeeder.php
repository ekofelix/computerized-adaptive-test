<?php

namespace Database\Seeders;

use App\Models\Kelases;
use Illuminate\Database\Seeder;

class ClassSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Kelases::create([
            'title' => '1',
        ]);

        Kelases::create([
            'title' => '2',
        ]);

        Kelases::create([
            'title' => '3',
        ]);

        Kelases::create([
            'title' => '4',
        ]);

        Kelases::create([
            'title' => '5',
        ]);

        Kelases::create([
            'title' => '6',
        ]);
        
    }
}
