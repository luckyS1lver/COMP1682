@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách đơn hàng</div>
        <form class="form-inline">
            <div class="form-group " style="margin-right: 10px;">
                <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <select name="status" class="form-control">
                    <option value="">Trạng thái</option>
                    <option value="1" {{ Request::get('status') == 1 ? "selected='selected'" : "" }}>Tiếp nhận</option>
                    <option value="2" {{ Request::get('status') == 2 ? "selected='selected'" : "" }}>Đang vận chuyển
                    </option>
                    <option value="3" {{ Request::get('status') == 3 ? "selected='selected'" : "" }}>Đã bàn giao
                    </option>
                    <option value="-1" {{ Request::get('status') == -1 ? "selected='selected'" : "" }}>Huỷ bỏ</option>
                </select>
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <button type="submit" class="btn btn-pink btn-sm">Tìm kiếm</button>
            </div>
        </form>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Mã đơn</th>
                    <th scope="col">Name</th>
                    <th scope="col">Total</th>
                    <th scope="col">Time</th>
                    <th scope="col">Status</th>
                    <th scope="col" style="text-align: center">Export</th>
                    <th scope="col" style="text-align: center">Action</th>
                </tr>
            </thead>
            <tbody>
            @foreach($transactions as $transaction)
                <tr>
                    <th scope="row">
                        <a href="{{ route('get.user.order', $transaction->id) }}">DH{{ $transaction->id }}</a>
                    </th>
                    <th>{{ $transaction->tst_name }}</th>
                    <th>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</th>
                    <th>{{  $transaction->created_at }}</th>
                    <th>
                        <span
                            class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                            {{ $transaction->getStatus($transaction->tst_status)['name'] }}
                        </span>
                    </th>
                    <td style="text-align: center">
                        <a href="{{ route('ajax_get.user.invoice_transaction',$transaction->id) }}" target="_blank"
                           class="btn-xs label-success js-show-invoice_transaction" style="color: white"><i class="fa fa-save"></i> Export</a>
                    </td>
                    <td style="text-align: center">
                        @if (!in_array($transaction->tst_status , [-1,2,3]) )
                            <a href="{{ route('get.user.transaction.cancel',$transaction->id) }}"
                               class="btn-xs label-danger" style="color: white"><i class="fa fa-save"></i> Huỷ đơn</a>
                        @endif
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

    </section>
@stop
@section('script')
    <div id="popup-transaction" class="modal text-center">
        <div class="header">Hoá đơn mua hang</div>
        <div class="content">

        </div>
        <div class="footer">
            <a href="#" rel="modal:close" class="btn btn-pink ">Đóng</a>
            <a href="" class="btn btn-purple js-export-pdf"> Export PDF</a>
        </div>
    </div>
@stop