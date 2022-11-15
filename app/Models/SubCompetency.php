<?php
namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Topic
 *
 * @package App
 * @property string $title
*/
class SubCompetency extends Model
{
    use SoftDeletes;

    protected $fillable = ['topic_id','title','kelas_id','competency_id'];

    public static function boot()
    {
        parent::boot();

        Competency::observe(new \App\Observers\UserActionsObserver);
    }

    public function question()
    {
        return $this->hasMany(Question::class, 'question_id')->withTrashed();
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

    public static function search($search)
    {
        return empty($search) ? static::query()
            : static::query()->where('id', 'like', '%'.$search.'%')
                ->orWhere('kelas_id', 'like', '%'.$search.'%')
                ->orWhere('topic_id', 'like', '%'.$search.'%')
                ->orWhere('competency_id', 'like', '%'.$search.'%')
                ->orWhere('title', 'like', '%'.$search.'%');
    }
}
