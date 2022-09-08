<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    // Relacion muchos a muchos Roles -> Users
    public function users(){
        return $this->belongstoMany('App\Models\User');
    }

    // Relacion muchos a muchos Roles -> Permisos
    public function permisos(){
        return $this->belongstoMany('App\Models\Permiso');
    }
}
