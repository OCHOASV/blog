<?php
// Para que Laravel reconozca este archivo como un archivo de rutas, lo he agregado en el archivo app\Providers\RouteServicesProvider.php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\CategoryController;

Route::get('', [HomeController::class, 'index'])->name('admin.home');

Route::resource('categories', CategoryController::class)->names('admin.categories');