<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;
use App\Http\Requests\PostRequest;
// Para las imagenes
use Illuminate\Support\Facades\Storage;
// Para la Cache
use Illuminate\Support\Facades\Cache;

class PostController extends Controller
{
    public function __construct(){
        $this->middleware('can:admin.posts.index')->only('index');
        $this->middleware('can:admin.posts.create')->only('create', 'store');
        $this->middleware('can:admin.posts.edit')->only('edit', 'update');
        $this->middleware('can:admin.posts.destroy')->only('destroy');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.posts.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        /* Creamos un array del tipo atributo valor para Laravel Collective del tipo
            {
                "1": "aliquid",
                "2": "officia",
                "3": "laboriosam",
                "4": "fugiat",
                "5": "neque"
            }
        */
        $categories = Category::pluck('name', 'id');
        $tags = Tag::all();

        return view('admin.posts.create', compact('categories', 'tags'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request)
    {
        // Las reglas de validacion las hacemos en Requests/PostRequest

        // Inserto el registro en la tabla Posts
        $post = Post::create($request->all());

        // Si han subido imagen
        if ($request->file('file')) {
            // Movemos la imagen de tmp a la carpeta posts
            $imgURL = Storage::put('posts', $request->file('file'));
            // Guardamos la imagen con la relacion
            $post->image()->create([
                'url' => $imgURL
            ]);
        }

        // Limpiamos la cache
        Cache::flush();

        // Guardamos las etiquetas
        if ($request->tags) {
            // Recupero la relacion muchos a muchos de Post Model
            $post->tags()->attach($request->tags);
        }

        return redirect()->route('admin.posts.edit', $post)->with('info', "Post $post->name creado con Exito!!!");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        // Pongo en marcha la verificacion del usuario en sesion, llamando al metodo de la Policy
        $this->authorize('authorPost', $post);

        $categories = Category::pluck('name', 'id');
        $tags = Tag::all();
        return view('admin.posts.edit', compact('post', 'categories', 'tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PostRequest $request, Post $post)
    {
        $this->authorize('authorPost', $post);

        $post->update($request->all());

        // Si en el form viene una imagen en file
        if ($request->file('file')) {
            // Movemos la imagen de tmp a la carpeta posts
            $imgURL = Storage::put('posts', $request->file('file'));

            // Si ya habia una imegen
            if ($post->image) {
                // Borramos la imagen del server
                Storage::delete($post->image->url);
                // Y actualizamos la DB con la nueva url
                $post->image->update([
                    'url' => $imgURL
                ]);
            }
            // Si no habia imagen, la creamos con la relacion para que coloque los ID's
            else{
                $post->image()->create([
                    'url' => $imgURL
                ]);
            }
        }

        // Limpiamos la cache
        Cache::flush();

        // Guardamos las etiquetas con sync para que no se dupliquen los tags
        if ($request->tags) {
            // Recupero la relacion muchos a muchos de Post Model
            $post->tags()->sync($request->tags);
        }

        return redirect()->route('admin.posts.edit', $post)->with('info', "Post $post->name actualizado con Exito!!!");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $this->authorize('authorPost', $post);
        $post->delete();

        // Limpiamos la cache
        Cache::flush();

        return redirect()->route('admin.posts.index')->with('info', "Post $post->name eliminado con Exito!!!");
    }
}
