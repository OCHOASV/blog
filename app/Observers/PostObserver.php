<?php

namespace App\Observers;

use App\Models\Post;
// Para las imagenes
use Illuminate\Support\Facades\Storage;

class PostObserver
{
    /**
     * Handle the Post "created" event.
     *
     * @param  \App\Models\Post  $post
     * @return void
     */
    public function creating(Post $post)
    {
        // Le vamos a agregar al objeto post el ID del usuario en sesion, esto para evitar enviar el ID desde el formolario
        $post->user_id = auth()->user()->id;
    }

    /**
     * Handle the Post "updated" event.
     *
     * @param  \App\Models\Post  $post
     * @return void
     */
    public function updated(Post $post)
    {
        //
    }

    /**
     * Handle the Post "deleted" event.
     *
     * @param  \App\Models\Post  $post
     * @return void
     */

    // El observer se debe registrar en App\Providers\EventServiceProvider

    // El evento "deleted" se activa una vez se ha eliminado el post, pero lo que necesitamos es que se active antes para que elimine la imagen, asi que lo cambiamos por "deleting"
    public function deleting(Post $post)
    {
        if ($post->image) {
                // Borramos la imagen del server
                Storage::delete($post->image->url);
        }
    }

    /**
     * Handle the Post "restored" event.
     *
     * @param  \App\Models\Post  $post
     * @return void
     */
    public function restored(Post $post)
    {
        //
    }

    /**
     * Handle the Post "force deleted" event.
     *
     * @param  \App\Models\Post  $post
     * @return void
     */
    public function forceDeleted(Post $post)
    {
        //
    }
}
