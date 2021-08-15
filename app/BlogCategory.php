<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BlogCategory extends Model
{
    protected $fillable = ['name', 'slug'];
    // public $timestamps = true;

    public function blogs()
    {
        return $this->hasMany('App\Blog', 'category_id');
    }

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = str_replace(' ', '-', $value);
    }
}
