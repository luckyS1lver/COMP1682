<?php
return [
    [
        'name'  => 'Quản lý menu',
        'list-check' => ['menu'],
        'namespace' => 'menu',
        'route' => 'admin.menu.index',
        'icon'  => 'fa fa-fw fa-list',
        'roles' =>  [1,2]
    ],
    [
        'name' => 'Sản phẩm',
        'list-check' => ['category', 'producer', 'type', 'attribute', 'keyword', 'product', 'discount-code'],
        'icon' => 'fa fa-database',
        'roles' =>  [1,2],
        'sub'  => [
            [
                'name'  => 'Danh Mục',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit'
            ],
            [
                'name'  => 'Nhà sản xuất',
                'namespace' => 'producer',
                'route' => 'admin.producer.index',
                'icon'  => 'fa fa-truck'
            ],
//            [
//                'name'  => 'Kiểu dữ liệu',
//                'namespace' => 'type',
//                'route' => 'admin.type.index',
//                'icon'  => 'fa fa-bookmark'
//            ],
//            [
//                'name'  => 'Dữ liệu sản phẩm',
//                'namespace' => 'attribute',
//                'route' => 'admin.attribute.index',
//                'icon'  => 'fa fa-key'
//            ],

            [
                'name'  => 'Keyword',
                'namespace' => 'keyword',
                'route' => 'admin.keyword.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Sản phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database'
            ],
           
        ]
    ],
    
    [
        'name' => 'Tài khoản',
        'list-check' => ['user','rating','comment','contact'],
        'icon' => 'fa fa-user',
        'roles' =>  [1],
        'sub'  => [
            [
                'name'  => 'Quản trị viên',
                'route' => 'admin.index',
                'namespace' => 'admin',
                'icon'  => 'fa fa-user'
            ],
           
        ]
    ]
];
