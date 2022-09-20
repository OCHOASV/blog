<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'slug'];

    // con esto ya no se usa el ID sino el slug
    public function getRouteKeyName(){
    	return "slug";
    }

    // Relacion uno a muchos - Categorias > Posts
    public function posts(){
        return $this->hasMany('App\Models\Category');
    }
}
