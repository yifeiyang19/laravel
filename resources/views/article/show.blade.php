@extends('layouts.app')

@section('navtitle',$article->title)

@section('content')
<link rel="stylesheet" href="/vendor/prism/prism.css" />
<script type="text/javascript" src="/vendor/prism/prism.js"></script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">{{$article->title}}</div>
                <div class="card-body">
                   <style>img { max-width: 100%; height: auto; width: auto; width: auto; }</style>
                    <div class="mb-3">
                       <span class="me-2"> {{ $article->author->name }}</span>
                       <span class="me-2"> {{ $article->created_at }}</span>
                       <span class="me-2"> published in：<a href="{{route('sort.lists', $article->sort_id )}}">{{ $article->sort->name }}</a></span>
                       <span class="me-2"> Number of views：{{ $article->views }}</span>
                        </div>
                    {!! $article->content !!}
                    @if($article->created_at != $article->updated_at)
                    <div class="text-black-50 mt-3">updated on：{{$article->updated_at}}</div>
                    @endif
                     
                </div>
                 @can('delete',$article)
                 <div class="card-footer">
                   <a href="{{route('article.edit',$article->id)}}"><button type="button" class="btn btn-primary">modify articles</button></a>
                  
                   <a href="javascript:;" class="text-danger ms-2"  onclick="return sumbit_sure()"><button type="button" class="btn btn-danger">delete</button></a>
                   
                   <!--delete form-->
         <form id="del-form" action="{{route('article.del',$article->id)}}" method="POST" class="d-none">
         @csrf 
           
                @endcan
            
             
            </div> 
        </div>
    </div>
</div>
 
 
   <script language="javascript">  
    function sumbit_sure(){  
    var gnl=confirm("确定要删除该条数据?");  
        if (gnl==true){  
        document.getElementById('del-form').submit();    
        }else{  
        return false;  
        }  
    }  
</script>  
@endsection

