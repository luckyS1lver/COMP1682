<section class="top-header desktop" style="background-color: #fff !important; color: #000 !important;">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>
                 <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
            </div>
            <div class="right">
                @if (Auth::check())
                    <a href="{{  route('get.user.dashboard') }}">Xin chào {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{  route('get.logout') }}">Đăng xuất </a>
                @else
                    <a href="{{  route('get.register') }}">Đăng ký</a>
                    <a href="{{  route('get.login') }}">Đăng nhập</a>
                @endif
             </div>
        </div>
    </div>
</section>
<section class="top-header mobile">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>
                <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
                @if (Auth::check())
                    <a href="">Xin chào {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{  route('get.logout') }}">Đăng xuất </a>
                @else
                    <a href="{{  route('get.register') }}">Đăng ký</a>
                    <a href="{{  route('get.login') }}">Đăng nhập</a>
                @endif
            </div>
        </div>
    </div>
</section>
<div class="top-headers">
    <div class="container content-top-header">
        <div class="logo">
            <a href="/" class="desktop-logo">
                <img src="{{ url('images/logo.png') }}" alt="Home">
            </a>
        </div>
        <div class="search">
            <form action="{{ $link_search ?? route('get.product.list',['k' => Request::get('k')]) }}" role="search" method="GET">
                <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control custom-input-search" placeholder="Tìm kiếm sản phẩm ...">
                <button type="submit" class="btn btnSearch">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>
        <div class="support">
            <div class="icon-suppor">
                <img src="{{ asset('icon/icon_support.png') }}" alt="">
            </div>
            <div class="content-support">
                <a href="tel:0769090940 / 0974253826"><p class="text-gray-90 mg-t-5"><span>Hỗ trợ</span> 0769.090.940 / 0974.253.826</p></a>
                <a href="mailto:vanphongfocus@gmail.com"><span class="email-support">Email: </span>kinhdoanh@homesafety.vn</a>
            </div>
        </div>
        <div class="support">
            <div class="icon-suppor">
                <img src="{{ asset('icon/icon_localtion.png') }}" alt="">
            </div>
            <div class="content-support">
                <p class="text-gray-90 mg-t-5"><span>Văn phòng đại diện</span></p>
                <a href="">Số 2A- Ngõ 73 Nhật Chiêu-Nhật Tân-Tây Hồ-Hà Nội</a>
            </div>
        </div>
    </div>
</div>
<div class="commonTop">
    <div id="headers">
        <div class="container header-wrapper">
            <div class="min-height-45">
                <nav class="navbar navbar-expand-lg navbar-dark">
                    <div class="container-fluid">
                        <button class="navbar-toggler toggle-cart-mobile" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="main_nav">
                            <ul class="navbar-nav">
                                <li class="nav-item active"> <a class="nav-link" href="/">Trang chủ </a> </li>
                                <li class="nav-item"><a class="nav-link" href="{{ route('get.static.about.us') }}"> Giới thiệu </a></li>
                                @if (isset($menuCategories))
                                    @foreach($menuCategories as $menu)
                                        <li class="nav-item dropdown has-megamenu">
                                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> {{ $menu->mn_name }} </a>
                                            @if (isset($menu->categories) && $menu->categories->count() > 0)
                                                <div class="dropdown-menu megamenu {{ $menu->categories->count() > 1 ? 'megamenufull' : '' }}" role="menu">
                                                    <div class="row g-3">
                                                        @foreach($menu->categories as $category)
                                                            <div class="{{ $menu->categories->count() > 1 ? 'col-lg-4 col-6' : 'col-lg-12 col-12' }}">
                                                                <div class="col-megamenu">
                                                                    <a href="{{ $category->c_is_dowload != 1 ?  route('get.category.list', $category->c_slug.'-'.$category->id) : asset(pare_url_file($category->c_part_file)) }}"><h6 class="title" style="font-weight: bold; margin-bottom: 10px;">{{ $category->c_name }}</h6></a>
                                                                    @if (isset($category->children) && count($category->children))
                                                                        <ul class="list-unstyled">
                                                                            @foreach($category->children as $children)
                                                                                <li><a href="{{  $children->c_is_dowload != 1 ? route('get.category.list', $children->c_slug.'-'.$children->id) : asset(pare_url_file($children->c_part_file)) }}" title="{{  $children->c_name }}">{{  $children->c_name }}</a></li>
                                                                            @endforeach
                                                                        </ul>
                                                                    @endif
                                                                </div>  <!-- col-megamenu.// -->
                                                            </div><!-- end col-3 -->
                                                        @endforeach
                                                    </div><!-- end row -->
                                                </div> <!-- dropdown-mega-menu.// -->
                                            @endif
                                        </li>
                                    @endforeach
                                @endif
                                <li class="nav-item dropdown has-megamenu">
                                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> Dịch vụ </a>
                                    <div class="dropdown-menu megamenu" role="menu">
                                        <div class="row g-3">
                                            <div class="col-lg-12 col-12">
                                                <div class="col-megamenu">
                                                    <ul class="list-unstyled">
                                                        <li><a href="{{ route('get.static.service', 5) }}" title="">Dịch vụ tư vấn thiết kế</a></li>
                                                        <li><a href="{{ route('get.static.service', 6) }}" title="">Dịch vụ thi công nội thất</a></li>
                                                        <li><a href="{{ route('get.static.service', 7) }}" title="">Dịch vụ thi công điện</a></li>
                                                        <li><a href="{{ route('get.static.service', 8) }}" title="">Dịch vụ thi công điện nhẹ</a></li>
                                                        <li><a href="{{ route('get.static.service', 9) }}" title="">Dịch vụ thi công trọn gói</a></li>
                                                        <li><a href="{{ route('get.static.service', 10) }}" title="">Dịch vụ khác</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                @if (isset($menuNews))
                                    @foreach($menuNews as $menuNew)
                                        <li class="nav-item">
                                            <a class="nav-link" title="{{ $menuNew->mn_name }}"
                                                href="{{ route('get.article.by_menu',$menuNew->mn_slug.'-'.$menuNew->id) }}">
                                                {{ $menuNew->mn_name }}
                                            </a>
                                        </li>
                                    @endforeach
                                @endif
                                <li class="nav-item"><a class="nav-link" href="{{ route('get.contact') }}">Liên hệ</a></li>
                            </ul>
                            <ul class="navbar-nav ms-auto">
                                <li class="nav-item">
                                    <a href="{{ route('get.shopping.list') }}" title="Giỏ hàng" class="nav-link">
                                        <i class="fa fa-shopping-bag"></i>
                                        <span class="total-order">{{ \Cart::count() }}</span>
                                        <span class="text">
                                            <span class="">Giỏ hàng </span>

                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div> <!-- navbar-collapse.// -->
                        <ul class="navbar-nav ms-auto navbar-mobile">
                            <li class="nav-item">
                                <a href="{{ route('get.shopping.list') }}" title="Giỏ hàng" class="nav-link">
                                    <i class="fa fa-shopping-bag"></i>
                                    <span class="total-order">{{ \Cart::count() }}</span>
                                    <span class="text">
                                            <span class="">Giỏ hàng </span>

                                        </span>
                                </a>
                            </li>
                        </ul>
                    </div> <!-- container-fluid.// -->
                </nav>
            </div>
            {{--<ul>--}}
                {{--<li><a href=""></a></li>--}}
                {{--<li><a href="">Giới thiệu</a></li>--}}
                {{--<li><a href="">Thiết bị đèn</a></li>--}}
                {{--<li><a href="">Vật tư diện</a></li>--}}
                {{--<li><a href="">Dịch vụ</a></li>--}}
                {{--<li><a href="">Liên hệ</a></li>--}}
            {{--</ul>--}}
        </div>
    </div>
</div>
