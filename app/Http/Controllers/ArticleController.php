<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Sort;
use Illuminate\Http\Request;
use App\Lib\Parsedown;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }
 
    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request,Article $article)
    {
        //
         if($request->isMethod('POST')){
             $request->validate([
            'title' => 'required|between:2,80',
            'content' => 'required|min:10',
             ],[
            'title.*' => __('Title 2-80 words'),
            'content.*' => __('The content should be no less than 10 words'),
             ]);   
        $article->title = $request->title;
        $article->sort_id = $request->sort_id;
        $article->content = $request->content;
        $article->user_id = \Auth::user()->id;
        $article->save();
         
        return redirect(route('article.show',$article->id))->with(['msg'=>__('发表成功'),'alert'=>'success']);
        }
        $sorts = Sort::get();
        return view('article.create',compact('sorts'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Article $article)
    {
        $parsedown= new Parsedown();
        $article->content =  $parsedown->text($article->content);
        $count = Article::count();
      $article->hits();
         return view('article.show',compact('article','count'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request , Article $article)
    {
        //
        if($request->isMethod('POST')){
            
           $request->validate([
            'title' => 'required|between:2,80',
            'content' => 'required|min:10',
             ],[
            'title.*' => __('Title 2-80 words'),
            'content.*' => __('The content should be no less than 10 words'),
             ]);   
        $article->title = $request->title;
        $article->sort_id = $request->sort_id;
        $article->content = $request->content;
        $article->save();
         
        return redirect(route('article.show',$article->id))->with(['msg'=>__('修改成功'),'alert'=>'success']);
        }
         $sorts = Sort::get();
        return view('article.edit', compact('article', 'sorts'));
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Article $article)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function del(Article $article)
    {
        $this->authorize('delete', $article);  
        $article->delete();
        return redirect(route('index'))->with(['msg'=>__('delete successfully'),'alert'=>'success']);
    }
}
