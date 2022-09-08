<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\cursoController;

Route::get('/', homeController::class);

// Rutas por grupo
/*Route::controller(cursoController::class)->group(function(){
	Route::get('cursos', 'index')->name('cursos.index');
	Route::get('cursos/create', 'create')->name('cursos.create');
	Route::post('cursos', 'store')->name('cursos.store');
	Route::get('cursos/{curso}/edit', 'edit')->name('cursos.edit');
	Route::put('cursos/{curso}', 'update')->name('cursos.update');
	Route::delete('cursos/{curso}', 'destroy')->name('cursos.destroy');
	Route::get('cursos/{id}', 'show')->name('cursos.show');
});*/

// Rutas por cada metodo del controlador
Route::resource('cursos', cursoController::class);

// Rutas con cambio de URL (asignaturas) pero se mantienen el nombre de las variables (curso) con parameters y el nombre de las rutas (cursos) con names. Ya podemos usar la URL asignaturas en vez de cursos
//Route::resource('asignaturas', cursoController::class)->parameters(['asignaturas' => 'curso'])->names('cursos');