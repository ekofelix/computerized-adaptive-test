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
class Topic extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'timer', 'kelas_id'];

    public static function boot()
    {
        parent::boot();

        Topic::observe(new \App\Observers\UserActionsObserver);
    }

    public function competency()
    {
        return $this->hasMany(Competency::class, 'competency_id')->withTrashed();
    }

    public function kelas()
    {
        return $this->belongsTo(Kelases::class, 'kelas_id')->withTrashed();
    }

    public static function search($search)
    {
        return empty($search) ? static::query()
            : static::query()->where('id', 'like', '%'.$search.'%')
                ->orWhere('title', 'like', '%'.$search.'%')
                ->orWhere('kelas_id', 'like', '%'.$search.'%');
    }
}
