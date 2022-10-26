<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;
use Illuminate\Support\Facades\Cache;

class PostController extends Controller
{
    public function index(){
        // Uso de Cache con Archivos (file)
        // Pregunto si hay paginación
        if (request()->page) {
            // Si la hay, creo el nombre del file que almacenara el cache junto con el numero de pagina enviada en request
            $key = 'post'.request()->page;
        } else {
            // Sino, solo creo el nombre del file que guardara la cache
            $key = 'post';
        }

        // Pregunto si ya hay un file en cache
        if (Cache::has($key)) {
            // Recupero el file llamado posts
            $posts = Cache::get($key);
        } else {
            $posts = Post::where('status', 2)
                ->latest('id')
                ->paginate(8);

            // Guardo en cache, nombre del file y valor, se puede poner tiempo que dure en cache tambien
            Cache::put($key, $posts);
        }

    	return view('posts.index', compact('posts'));
    }

    public function show(Post $post){
        // Verificacion del estado de un post
        $this->authorize('statusPost', $post);

        $similares = Post::where('category_id', $post->category_id)
        	->where('status', 2)
        	->where('id', '!=', $post->id)
        	->latest('id')
        	->take(4)
        	->get();

    	return view('posts.show', compact('post', 'similares'));
    }

    public function category(Category $category){
    	$posts = Post::where('category_id', $category->id)
    		->where('status', 2)
    		->latest('id')
    		->paginate(4);

    	return view('posts.category', compact('posts', 'category'));
    }

    public function tag(Tag $tag){
    	// Se accede por la relacion de las tablas
    	$posts = $tag->posts()
    		->where('status', 2)
    		->latest('id')
    		->paginate(4);

    	return view('posts.tag', compact('posts', 'tag'));
    }
}
