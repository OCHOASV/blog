<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCurso;
use App\Http\Requests\UpdateCursoRequest;
use Illuminate\Support\Str;

class cursoController extends Controller
{
    public function index(){
    	$cursos = Curso::orderBy('id', 'desc')->paginate();
    	return view('cursos.index', compact('cursos'));
    }

    public function create(){
    	return view('cursos.create');
    }

    public function store(StoreCurso $request){
        /*$curso = new Curso();
        $curso->name =  $request->name;
        $curso->descripcion =  $request->descripcion;
        $curso->categoria =  $request->categoria;
        $curso->save();*/

        // Creando el Slug
        $request->merge([
            'slug' => Str::slug($request->name)
        ]);

        $curso = Curso::create($request->all());

        return redirect()->route('cursos.show', $curso);
    }

    // Buscando Exclusivamente por ID
    /*public function show($id){
    	$curso = Curso::find($id);
    	// return view('cursos.show', ['curso' => $id]);
    	return view('cursos.show', compact('curso'));
    }*/

    public function show(Curso $curso){
        return view('cursos.show', compact('curso'));
    }

    public function edit(Curso $curso){
        return view('cursos.edit', compact('curso'));
    }

    public function update(UpdateCursoRequest $request, Curso $curso){

        $name = $request->name;

        $curso->name =  $name;
        $curso->slug = Str::slug($name);
        $curso->descripcion =  $request->descripcion;
        $curso->categoria =  $request->categoria;
        $curso->save();

        // Sin lograrlo con Asignacion Masiva ya que si edito por ID pero se pierde el ID del curso y me pone 1 en el array lo que me lleva al show del curso 1
        // $curso = Curso::where('id', $curso->id)->update($request->except(['_token','_method']));

        return redirect()->route('cursos.show', $curso);
    }

    public function destroy(Curso $curso){
        $curso->delete();
        return redirect()->route('cursos.index');
    }
}
