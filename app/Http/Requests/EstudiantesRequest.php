<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EstudiantesRequest extends FormRequest
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
            'nif'=>'required|string|max:15|min:4|unique:estudiantes',
            'nombres'=>'required|string|max:50|min:3',
            'apellidos'=>'required|string|max:50|min:3',
        ];
    }
}
