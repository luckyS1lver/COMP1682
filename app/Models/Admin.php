<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Admin extends Authenticatable
{
    use Notifiable;
    const ROLES = [
        2 => 'Quản lý sản phẩm',
        1 => 'Quản trị viên',
    ];
    protected $table = 'admins';
    protected $fillable = ['name', 'email', 'password', 'phone', 'class', 'address', 'avatar', 'role'];
}
