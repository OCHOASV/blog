<?php
// Para que Laravel reconozca este archivo como un archivo de rutas, lo he agregado en el archivo app\Providers\RouteServicesProvider.php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\HomeController;

Route::get('', [HomeController::class, 'index']);