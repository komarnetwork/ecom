<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Translation extends Model
{
    //
    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}
