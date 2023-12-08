<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
class SearchController extends Controller
{
  
   
// public function __construct()
//     {
// 		$this->middleware('throttle:30,1');
//     }
	
    public function search(Request $request)
    {
        
         
		$k = $request->query()['k'] ?? '';
		if(!$k)return redirect()->back()->with(['msg'=>__('请输入关键词'), 'alert'=>'danger']);
		$searchlist = Article::where('title', 'like', '%'.$k.'%')->paginate(30);
		return view('search.index', compact('k', 'searchlist'));
    }
     
}
