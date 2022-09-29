<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // Verifico si el userID enviado en el form es igual al del usuario autenticado y lo dejo pasar
        if ($this->user_id == auth()->user()->id) {
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        // Para evitar el error de que no acepta el slug porque ya existe aunque no lo estamos guardando sino que editando entonces recupero el ID del post que estoy editando y se lo paso a la regla
        $post = $this->route()->parameter('post');

        $rules = [
            'name' => 'required',
            // Esta regla funcionará si es para crear el post
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'status' => 'required|in:1,2',
            'file' => 'image'
        ];

        // Y para actualizar funcionará esta regla
        if ($post) {
            $rules['slug'] = 'required|unique:posts,slug,'.$post->id;
        }

        if ($this->status == 2) {
            $rules = array_merge($rules, [
                'tags' => 'required',
                'extract' => 'required',
                'body' => 'required'
            ]);
        }

        return $rules;
    }
}
