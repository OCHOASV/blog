<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    // Relacion uno a uno
    public function user(){

    	// Forma manual
    	// $user = User::find($this->user_id);
    	// return $user;

    	// Con esta forma no necesito importar a User al inicio del archivo
        return $this->belongsTo('App\Models\User');
    }
}
