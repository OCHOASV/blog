<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory;

    // Relacion uno a muchos con users
   	public function user(){
        return $this->belongsTo('App\Models\User');
    }

    // Relacion uno a uno Polimorfica Post -> Images
    public function comments(){
        return $this->morphMany('App\Models\Comment', 'commentable');
    }

    // Relacion muchos a muchos Polimorfica Post -> Tags
    public function tags(){
        return $this->morphToMany('App\Models\Tag', 'taggable');
    }
}
