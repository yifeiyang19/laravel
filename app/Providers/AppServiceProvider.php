<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Observers\ArticleObserver;
use App\Models\Article;  
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

      
       Schema::defaultStringLength(191);
    
       Article::observe(ArticleObserver::class);
  
    
    }
}
