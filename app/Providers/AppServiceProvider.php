<?php

namespace App\Providers;
use View;
use App\User;
use App\Category;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::Composer('front-end.include.header', function($view) {
            $view->with('categories', Category::where('publication_status', 1)->get());
    });
        View::Composer('front-end.category.category-content', function($view) {
            $view->with('categories', Category::where('publication_status', 1)->get());

        });

        }


    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
