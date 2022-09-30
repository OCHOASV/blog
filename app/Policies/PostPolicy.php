<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Post;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostPolicy
{
    use HandlesAuthorization;

    // Todas las Policys deben llevar el parametro (User $user)

    public function authorPost(User $user, Post $post){
        // Esto recibe el parametro del usuario en sesion y el post que se esta modificando
        if ($user->id == $post->user_id) {
            return true;
        }
        else{
            return false;
        }

    }

    // Para mostrar en show solo los post publicados, status = 2. El simbolo ? delante de User indica que es opcional, ya que si un user no esta autenticado aun puede ver un post publicado (en estado 2)
    public function statusPost(?User $user, Post $post){
        if ($post->status == 2) {
            return true;
        }
        else{
            return false;
        }
    }
}
