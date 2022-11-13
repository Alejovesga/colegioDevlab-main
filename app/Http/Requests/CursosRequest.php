<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CursosRequest extends FormRequest
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
            'nombre'=>'required|string|max:30|min:5|unique:cursos',
            'codigo'=>'required|string|max:30|min:3|unique:cursos',
            'descripcion'=>'required|string|max:250|min:5',
            'creditos'=>'required|numeric',
        ];
    }
}
