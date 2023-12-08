<?php

namespace App\Observers;
use App\Models\Article;  
use \DB;
use Illuminate\Http\Request;
class ArticleObserver
{
    //
    public function created(Article $article)
    {
     
    
      \DB::table('http_log')->insert([
      'name' => 'model observer :'.time() .'Article title： '.$article->title
    ]);
    }

}
