@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card bj-whitc">
                <div class="card-header">latest articles</div>
               <div class="card-body">
                  <div class="list-group">
            @foreach($articles  as $article)
  <li class="list-group-item list-group-item-action d-flex align-items-center">
      <span class="me-1 text-black-50"><a href="{{ route('sort.lists', $article->sort->id) }}" class="link-secondary text-decoration-none">[{{ $article->sort->name }}]&nbsp;</a></span>
      <a href="{{ route('article.show',$article->id) }}" class="link-dark text-decoration-none">{{ $article->title }}</a>
      <span class="ms-auto">{{ $article->created_at }}</span>
  </li>
            @endforeach
     </div>
     <div class="mt-4"> {{ $articles->links('vendor/pagination/bootstrap-5') }} </div>
       
     
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
