<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App;

class Language extends Model
{
    //
    public function translations()
    {
        return $this->hasMany(Translation::class);
    }
}
