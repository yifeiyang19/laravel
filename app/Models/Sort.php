<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sort extends Model
{
    public function articles()
    {
        return $this->hasMany(Article::class,'sort_id','id');  
      //  return $this->hasMany(Article::class);  
    }
}
