<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class curso extends Model
{
    use HasFactory;

    // Con esta validmos que campos queremos guardar en la DB
    // protected $fillable = ['name', 'slug', 'descripcion', 'categoria'];

    // Esta linea ignora los campos protegidos como status
    protected $guarded = [];

    // Cambiando que en vez de buscar y retornar el ID, me traiga el slug
    public function getRouteKeyName(){
    	// return $this->getKeyName();
    	return 'slug';
    }
}
