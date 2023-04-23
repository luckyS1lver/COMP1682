@extends('layouts.app_master_frontend')
@section('title_page', 'Bán hàng điện lạnh -')
@section('css')
    <style>
		<?php $style = file_get_contents('css/product_insights.min.css');echo $style;?>
        .filter-tab .active a {
            color: red;
        }
    </style>
@stop

@section('content')
    <div class="container">
        <div class="product-list">
            <div class="left">
                @include('frontend.pages.product.include._inc_sidebar')
            </div>
            <div class="right">
                <div class="breadcrumb">
                    <ul>
                        <li >
                            <a itemprop="url" href="/" title="Home"><span itemprop="title">Trang chủ</span></a>
                        </li>
                    </ul>
                </div>
                <div class="filter-tab">
                    <ul>
                        @for($i = 5; $i <= 6; $i++)
                            <li class="{{ Request::get('price') == $i ? "active" : "" }}">
                                <a href="{{ request()->fullUrlWithQuery(['price' =>  $i]) }}">
                                    {{  $i == 6 ? "Lớn hơn 5 triệu" : "Giá Nhỏ hơn " . $i  ." triệu" }}
                                </a>
                            </li>
                        @endfor
                    </ul>
                </div>
                {{-- {{  dd($products) }} --}}
                <div class="order-tab">
                    <span class="total-prod">Tổng số: {{ $products->total() }} sản phẩm Tính năng</span>
                    <div class="sort">
                        <div class="item">
                            <span class="title js-show-sort">Sắp xếp <i class="fa fa-caret-down"></i></span>
                            <ul>
                                <li><a class="{{ Request::get('sort') == 'desc' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'desc']) }}">Mới nhất</a></li>
                                <li><a class="{{ Request::get('sort') == 'asc' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'asc']) }}">Cũ nhất</a></li>
                                <li><a class="{{ Request::get('sort') == 'min' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'min']) }}">Giá thấp</a></li>
                                <li><a class="{{ Request::get('sort') == 'max' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'max']) }}">Giá cao</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="group">
                    @foreach($products as $product)
                        @include('frontend.components.product_item', ['product' => $product])
                    @endforeach
                </div>
                <div style="display: block;">
                    {!! $products->appends($query ?? [])->links() !!}
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
		var CSS = "{{ asset('css/product_search.min.css') }}";
    </script>
    <script type="text/javascript" src="{{asset('js/product_search.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/popper.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/main.js')}}"></script>
@stop
