<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug', 'category_id', 'details', 'photo', 'source', 'views', 'updated_at', 'status', 'meta_title', 'meta_tag', 'meta_img', 'meta_description', 'meta_keywords', 'tags'];

    // protected $dates = ['created_at', 'updated_at'];

    // public $timestamps = false;

    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->created_at = $model->freshTimestamp();
        });
    }

    public function category()
    {
        return $this->belongsTo('App\BlogCategory', 'category_id')->withDefault(function ($data) {
            foreach ($data->getFillable() as $dt) {
                $data[$dt] = __('Deleted');
            }
        });
    }
}
