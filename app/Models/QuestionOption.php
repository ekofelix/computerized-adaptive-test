<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuestionOption extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $fillable = [
        'question_id',
        'option',
        'correct'
    ];


    public static function boot()
    {
        parent::boot();

        Question::observe(new \App\Observers\UserActionsObserver);
    }


    public function question()
    {
        return $this->belongsTo(Question::class, 'question_id')->withTrashed();
    }

    public static function search($search)
    {
        return empty($search) ? static::query()
            : static::query()->where('id', 'like', '%'.$search.'%')
                ->orWhere('question_id', 'like', '%'.$search.'%')
                ->orWhere('option', 'like', '%'.$search.'%')
                ->orWhere('correct', 'like', '%'.$search.'%');
    }
}
