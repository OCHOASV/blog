<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Image;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $posts = Post::factory(50)->create();

        foreach ($posts as $post) {
        	Image::factory(1)->create([
        		'imageable_id' => $post->id,
        		'imageable_type' => Post::class
        	]);

        	// Llamamos a la relacion (tags) que creamos en Post Model y asignamos 2 etiquetas a cada post
        	$post->tags()->attach([
        		rand(1, 5),
        		rand(6, 10)
        	]);
        }
    }
}
