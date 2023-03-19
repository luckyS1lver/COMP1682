<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use Illuminate\Support\Facades\Schema;
use App\Models\Category;
use App\Models\Menu;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

    }


    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        try {
            $menuCategories = Menu::with(['categories' => function($query) {
                $query->with('children')
                    ->where('c_parent_id', 0)->get();
            }])->where('mn_type', 1)->get();

            View::share('menuCategories', $menuCategories);

            $categories = Category::with('children:id,c_name,c_slug,c_parent_id')
                ->where('c_parent_id', 0)
                ->select('id', 'c_name', 'c_slug', 'c_avatar', 'c_parent_id')
                ->get();
            View::share('categories', $categories);
            $menuNews = Menu::where('mn_type', 2)->get();
            View::share('menuNews', $menuNews);
            $categoriesHot = Category::where('c_hot', 1)->select('id', 'c_name', 'c_slug', 'c_avatar')->get();
            View::share('categoriesHot', $categoriesHot);

            $menus = Menu::select('id', 'mn_name', 'mn_slug')->get();
            View::share('menus', $menus);
        } catch (\Exception $exception) {
            dd($exception);
        }
    }
}
