<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;

    // Definimos que es una Relacion Polimorfica
    // El nombre del metodo es el nombre del campo que le dimos en la tabla antes del guion bajo
    public function imageable(){
    	return $this->morphTo();
    }
}
