<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
	protected $guarded = [];

    use HasFactory;

    // La funcion se llama asi porque en la DB los campos se llaman asi, y luego llevan el _id o _type
    public function imageable(){
    	// Con esto especificamos que esta tabla es Polimorfica
    	return $this->morphTo();
    }
}
