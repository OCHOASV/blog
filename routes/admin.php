<?php
// Para que Laravel reconozca este archivo como un archivo de rutas, lo he agregado en el archivo app\Providers\RouteServicesProvider.php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\UserController;

// Con el Middleware protegemos toda la ruta con el permiso
Route::get('', [HomeController::class, 'index'])->middleware('can:admin.home')->name('admin.home');

// Ruta que maneja los Usuarios y Perfiles, solo 3
Route::resource('users', UserController::class)->only(['index', 'edit', 'update'])->names('admin.users');

// Ruta que maneja las Categorías
Route::resource('categories', CategoryController::class)->except('show')->names('admin.categories');

// Ruta que maneja las Etiquetas
Route::resource('tags', TagController::class)->except('show')->names('admin.tags');

// Ruta que maneja los Posts
Route::resource('posts', PostController::class)->except('show')->names('admin.posts');