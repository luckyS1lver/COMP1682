<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Transaction extends Model
{
    protected $guarded = [''];

    const VNP_URL = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    const VNP_HASH_SECRET = "DTHXNFNBUMNKFKQOZVHTXUXNUQUUXMTV";
    const VNP_TMN_CODE = "Y4U88XFK";

    protected $status = [
        '1' => [
            'class' => 'default',
            'name'  => 'Tiếp nhận'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Đang vận chuyển'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Hoàn thành'
        ],
        '4' => [
            'class' => 'warning',
            'name'  => 'GH không thành công'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Đã Huỷ'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status,"[N\A]");
    }

    public function user()
    {
        return $this->belongsTo(User::class,'tst_user_id','id');
    }

    public function payment()
    {
        return $this->belongsTo(Payment::class, 'id', 'p_transaction_id');
    }

    public function admin()
    {
        return $this->belongsTo(Admin::class,'tst_admin_id','id');
    }
}
