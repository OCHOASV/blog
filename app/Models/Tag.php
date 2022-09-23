<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'slug', 'color'];

    // con esto ya no se usa el ID sino el slug
    public function getRouteKeyName(){
    	return "slug";
    }

    // Relacion muchos a muchos - Posts > Tags
    public function posts(){
        return $this->belongsToMany('App\Models\Post');
    }
}
