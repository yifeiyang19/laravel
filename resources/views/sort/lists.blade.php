@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Classification：{{ $sort->name }}</div>

                <div class="card-body">
                  <div class="list-group">
            @foreach($articles as $article)
  <li class="list-group-item list-group-item-action d-flex align-items-center">
      <a href="{{ route('article.show',$article->id) }}" class="text-decoration-none">{{ $article->title }}</a>
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
