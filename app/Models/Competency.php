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
class Competency extends Model
{
    use SoftDeletes;

    protected $fillable = ['topic_id', 'title', 'kelas_id'];

    public static function boot()
    {
        parent::boot();

        Competency::observe(new \App\Observers\UserActionsObserver);
    }

    public function setTopicIdAttribute($input)
    {
        $this->attributes['topic_id'] = $input ? $input : null;
    }

    public function subCompetency()
    {
        return $this->hasMany(SubCompetency::class, 'sub_competency_id')->withTrashed();
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
            : static::query()->where('id', 'like', '%' . $search . '%')
            ->orWhere('kelas_id', 'like', '%' . $search . '%')
            ->orWhere('topic_id', 'like', '%' . $search . '%')
            ->orWhere('title', 'like', '%' . $search . '%');
    }
}
