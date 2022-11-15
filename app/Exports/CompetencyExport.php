<?php

namespace App\Exports;

use App\Models\Competency;
use Maatwebsite\Excel\Concerns\FromCollection;

class CompetencyExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Competency::all();
    }
}
