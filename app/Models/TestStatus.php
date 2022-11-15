<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestStatus extends Model
{
    use HasFactory;
    protected $table = 'test_statuses';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id_test',
        'id_user',
        'level_test',
        'pilihan_soal',
        'count_number',
        'start_time',
        'end_time',
        'status',
    ];
}
