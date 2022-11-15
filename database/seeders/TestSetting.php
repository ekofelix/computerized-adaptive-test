<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TestSetting extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\TestSetting::create([
            'qty_question' => 5,
            'time_estimation' => 3,
        ]);
    }
}
