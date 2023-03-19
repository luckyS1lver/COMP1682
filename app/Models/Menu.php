<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $guarded = [''];
    const TYPES = [
        1 => 'Menu sản phẩm',
        2 => 'Menu tin tức'
    ];

    public function categories()
    {
        return $this->hasMany(Category::class, 'c_menu_id', 'id');
    }
}
