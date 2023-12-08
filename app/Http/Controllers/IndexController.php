<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
class IndexController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   
        $articles=Article::orderby('created_at','desc')->paginate(30);
          $count = Article::count();
        return view('index',compact('articles','count'));
    }
}
