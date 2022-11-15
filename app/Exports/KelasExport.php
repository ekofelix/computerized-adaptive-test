<?php

namespace App\Exports;

use App\Models\Kelases;
use Maatwebsite\Excel\Concerns\FromCollection;

class KelasExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Kelases::all();
    }
}
