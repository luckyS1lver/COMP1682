<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>{{ strtolower($title_page ?? "Website bán hàng")   }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('images/fanicon.png') }}" />
    @yield('css')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{ asset('css/header_custom.css') }}"/>
    @yield('css')
    <style type="text/css">
        .navbar .megamenu{ padding: 1rem; }
        /* ============ desktop view ============ */
        @media all and (min-width: 992px) {

            .navbar .has-megamenu{position:static!important;}
            .navbar .megamenu{  margin-top:0;  }
            .megamenufull {width:60%;}
        }
        /* ============ desktop view .end// ============ */


        /* ============ mobile view ============ */
        @media(max-width: 991px){
            .navbar.fixed-top .navbar-collapse, .navbar.sticky-top .navbar-collapse{
                overflow-y: auto;
                max-height: 90vh;
                margin-top:10px;
            }
        }
        /* ============ mobile view .end// ============ */
    </style>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function(){
            /////// Prevent closing from click inside dropdown
            document.querySelectorAll('.dropdown-menu').forEach(function(element){
                element.addEventListener('click', function (e) {
                    e.stopPropagation();
                });
            })
        });
        // DOMContentLoaded  end
    </script>

    {{-- Thông báo --}}
    @if(session('toastr'))
        <script>
			var TYPE_MESSAGE = "{{session('toastr.type')}}";
			var MESSAGE = "{{session('toastr.message')}}";
        </script>
    @endif
</head>
<body>
@include('frontend.components.header')
<div class="container user">
    <div class="left">
        <div class="header">
            <img src="{{ pare_url_file(Auth::user()->avatar) }}" alt="">
            <p>
                <span>Tài khoản của</span>
                <span>{{ Auth::user()->name }}</span>
            </p>
        </div>
        <p>Đăng nhập lần cuối <b>{{ get_time_login(Auth::user()->log_login)['time'] ?? "" }}</b></p>
        <div class="content">
            <ul class="left-nav">
                @foreach(config('user') as $item)
                    <li>
                        <a href="{{ route($item['route']) }}" class="{{ \Request::route()->getName() == $item['route'] ? 'active' : '' }}">
                            <i class="{{ $item['icon'] }}"></i>
                            <span>{{ $item['name'] }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="right">
        @yield('content')
    </div>
    <div class="" style="clear: both"></div>
</div>
@include('frontend.components.footer')
<script>
	var DEVICE = '{{  device_agent() }}'
</script>
<script src="{{ asset('js/cart.js') }}" type="text/javascript"></script>

@yield('script')
</body>
</html>
