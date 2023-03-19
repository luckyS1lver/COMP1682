<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class AdminRequest extends FormRequest
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

    public function rules(Request $request)
    {
        $validate = [
            'name' => 'required',
            'email' => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'phone' => 'required|unique:admins,phone,'.$this->id,
        ];

        if ($request->submit !== 'update') {
            $validate['password'] = 'required | max:191 ';
        }

        return $validate;
    }

    public function messages()
    {
        return [
            'name.required' => 'Dữ liệu không được để trống',
            'email.required' => 'Dữ liệu không được để trống',
            'email.min' => 'Dữ liệu phải nhiều hơn 3 ký tự',
            'email.unique'   => 'Tài khoản đã tồn tại',
            'phone.unique'   => 'Số điện thoại đã tồn tại',
            'phone.required' => 'Dữ liệu không được để trống',
            'password.required' => 'Dữ liệu không được để trống',
            'role.required' => 'Dữ liệu không được để trống',
        ];
    }
}
