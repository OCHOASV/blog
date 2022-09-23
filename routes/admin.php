<?php
// Para que Laravel reconozca este archivo como un archivo de rutas, lo he agregado en el archivo app\Providers\RouteServicesProvider.php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Admin\PostController;

Route::get('', [HomeController::class, 'index'])->name('admin.home');

// Ruta que maneja las Categorías
Route::resource('categories', CategoryController::class)->names('admin.categories');

// Ruta que maneja las Etiquetas
Route::resource('tags', TagController::class)->names('admin.tags');

// Ruta que maneja los Posts
Route::resource('posts', PostController::class)->names('admin.posts');