<div class="top">
    <a href="#" class="main-title"><b>SẢN PHẨM VỪA XEM</b></a>
</div>
<div class="bot">
    @if (isset($products))
        @foreach($products as $product)
            <div class="item">
                @include('frontend.components.product_item',['product' => $product])
            </div>
        @endforeach
    @endif
</div>
