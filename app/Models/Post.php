<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // Relacion uno a muchos Inversa - Posts > Users
    public function post(){
        return $this->belongsTo('App\Models\User');
    }

    // Relacion uno a muchos Inversa - Posts > Categorias
    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

    // Relacion muchos a muchos - Posts > Tags
    public function tags(){
        return $this->belongsToMany('App\Models\Tag');
    }

    // Relacion uno a uno Polimorfica - Posts > Images
    public function image(){
    	// El segundo parametro 'imageable' es el nombre del metodo que le dimos en el modelo Image
        return $this->morphOne('App\Models\Image', 'imageable');
    }
}
