<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestSetting extends Model
{
    use HasFactory;
    protected $table = 'test_settings';
    protected $primaryKey = 'id';
    protected $fillable = [
        'qty_question',
        'time_estimation',
    ];
}
