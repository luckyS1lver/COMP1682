@extends('layouts.app_master_frontend')

@section('css')
    <style>
		<?php $style = file_get_contents('css/home_insights.min.css');echo $style;?>
    </style>
@stop

@section('content')

    <div id="content-slide">
        @include('frontend.pages.home.include._inc_slide', compact('slides'))
    </div>
    <div class="container" id="before-slide">
        {{-- <div class="logo-partner">
            @for($i = 0; $i < 6; $i++)
                <div class="item">
                    <a href="#" title="Đồng hồ Atlantic Swiss">
                        <img class="lazyload" src="https://www.dangquangwatch.vn/view/Pic/Jacques.jpg" data-src="" alt="Atlantic Swiss" />
                    </a>
                </div>
            @endfor
        </div> --}}
        <div class="product-one">
            <div class="top">
                <a href="#" title="" class="main-title"><b>SẢN PHẨM BÁN CHẠY</b></a>
            </div>
            <div class="bot">
                @if ($event1)
                <div class="left">
                    <div class="image">
                        <a href="{{  $event1->e_link }}" title="" class="{{ $event1->e_name }}" target="_blank">
                            <img style="height: 310px;" class="lazyload lazy" alt="{{ $event1->e_name }}" src="{{  asset('images/preloader.gif') }}"  data-src="{{  pare_url_file($event1->e_banner) }}" />
                        </a>
                    </div>
                </div>
                @endif
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    @foreach($productsPay as $product)
                        <div class="item">
                            @include('frontend.components.product_item',[ 'product' => $product])
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="product-three">
            <div class="top">
                <a href="#" title="" class="main-title"><b>SẢN PHẨM MỚI</b></a>
            </div>
            <div class="product-five">
                <div class="left">
                    <div class="image">
                        @if (isset($event3->e_link))
                            <a href="{{  $event3->e_link }}" title="" class="{{ $event3->e_name }}" target="_blank">
                                <img style="height: 310px;" class="lazyload lazy" alt="{{ $event3->e_name }}" src="{{  asset('images/preloader.gif') }}"  data-src="{{  pare_url_file($event3->e_banner) }}" />
                            </a>
                        @endif
                    </div>
                </div>
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    @if (isset($productsNew))
                        @foreach($productsNew as $product)
                            <div class="item">
                                @include('frontend.components.product_item',['product' => $product])
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        @if ($event2)
            @include('frontend.pages.home.include._inc_flash_sale')
        @endif
        <div class="product-five">
            <div class="top">
                <a href="#" class="main-title"><b>SẢN PHẨM NỔI BẬT</b></a>
            </div>
            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                @if (isset($productsHot))
                    @foreach($productsHot as $product)
                        <div class="item">
                            @include('frontend.components.product_item',['product' => $product])
                        </div>
                    @endforeach
                @endif
            </div>
        </div>

        @if ($categoriesHot)
            @foreach($categoriesHot as $category)
                <div class="product-five">
                    <div class="top">
                        <a href="#" class="main-title">{{ $category['c_name'] }}</a>
                    </div>

                    <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                        @if (isset($category['products']) && !empty($category['products']))
                            @foreach($category['products'] as $product)
                                <div class="item">
                                    @include('frontend.components.product_item',['product' => $product])
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            @endforeach
        @endif
        <div class="product-two" id="product-recently"></div>
        @include('frontend.pages.home.include._inc_article')
    </div>
@stop

@section('script')
    <script>
		var routeRenderProductRecently  = '{{ route('ajax_get.product_recently') }}';
		var routeRenderSlide  = '{{ route('ajax_get.slide') }}';
		var CSS = "{{ asset('css/home.min.css') }}";
    </script>
    <script type="text/javascript" src="{{ asset('js/home.js') }}"></script>
@stop
