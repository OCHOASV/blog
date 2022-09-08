<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCursoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required|max:100',
            'descripcion' => 'required|min:10',
            'categoria' => 'required'
        ];
    }

    public function attributes(){
        return[
            'name' => 'Nombre del Curso'
        ];
    }

    public function messages(){
        return[
            'descripcion.required' => 'Ingrese una Descripción'
        ];
    }
}
