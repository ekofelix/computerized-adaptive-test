<?php

namespace App\Exports;

use App\Models\SubCompetency;
use Maatwebsite\Excel\Concerns\FromCollection;

class SubCompetencyExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return SubCompetency::all();
    }
}
