<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sort;
use App\Models\Article;

class SortController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function lists(Sort $sort)
    { 
        $articles = $sort->articles()->orderbydesc('created_at')->paginate(30);
          $count = Article::count();
        return view('sort.lists',compact('sort','articles','count'));
    }

    
}
