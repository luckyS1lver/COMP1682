<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class PageStatic extends Model
{
    protected $table = 'statics';
    protected $guarded = [''];

    protected $type = [
        1 => 'Hướng dẫn mua hàng',
        2 => 'Chính sách đổi trả',
        3 => 'Chăm sóc khách hàng',
        4 => 'Giới thiệu',
        5 => 'Dịch vụ tư vấn thiết kế',
        6 => 'Dịch vụ thi công nội thất',
        7 => 'Dịch vụ thi công điện',
        8 => 'Dịch vụ thi công điện nhẹ',
        9 => 'Dịch vụ thi công trọn gói',
        10 => 'Dịch vụ khác',
        11 => 'Chính sách bảo hành',
    ];

    public function getType() 
    {
        return Arr::get($this->type, $this->s_type,"[N\A]");
    }
}
