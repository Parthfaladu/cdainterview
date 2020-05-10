<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Configuration;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layout.front.base', function ($view) {
            $configuration = Configuration::first();
            $view->with('configuration', $configuration);
        });
    }
}
