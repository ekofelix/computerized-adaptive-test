<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $fillable = [
        'kelas_id',
        'topic_id',
        'competency_id',
        'sub_competency_id',
        'question_text', 
        'answer_explanation', 
        'more_info_link', 
        'tingkat_kesulitan',
        // 'correct',
        // 'option1',
        // 'option2',
        // 'option3',
        // 'option4',
    ];


    public static function boot()
    {
        parent::boot();

        Question::observe(new \App\Observers\UserActionsObserver);
    }

    /**
     * Set to null if empty
     * @param $input
     */
    // public function setCompetencyIdAttribute($input)
    // {
    //     $this->attributes['competency_id'] = $input ? $input : null;
    // }

    public function subCompetency()
    {
        return $this->belongsTo(SubCompetency::class, 'sub_competency_id')->withTrashed();
    }

    public function competency()
    {
        return $this->belongsTo(Competency::class, 'competency_id')->withTrashed();
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class, 'topic_id')->withTrashed();
    }

    public function kelas()
    {
        return $this->belongsTo(Kelases::class, 'kelas_id')->withTrashed();
    }

    public function option()
    {
        return $this->hasMany(QuestionOption::class, 'question_id')->withTrashed();
    }

    public function testAnswer()
    {
        return $this->hasMany(TestAnswer::class, 'test_answer_id')->withTrashed();
    }

    public static function search($search)
    {
        return empty($search) ? static::query()
            : static::query()->where('id', 'like', '%'.$search.'%')
                ->orWhere('kelas_id', 'like', '%'.$search.'%')
                ->orWhere('topic_id', 'like', '%'.$search.'%')
                ->orWhere('competency_id', 'like', '%'.$search.'%')
                ->orWhere('sub_competency_id', 'like', '%'.$search.'%')
                ->orWhere('question_text', 'like', '%'.$search.'%')
                ->orWhere('tingkat_kesulitan', 'like', '%'.$search.'%');
    }
}
