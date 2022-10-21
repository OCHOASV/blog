<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    public function index(User $user){
    	// $user = User::
    	return view('admin.index', compact('user'));
    }
}
