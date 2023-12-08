@extends('layouts.app')
@section('navtitle', __('Search').':'.$k)
@section('content')
<div class="container py-4 my-md-2">
	<div class="row gx-5 justify-content-center">
		<div class="col-lg-12">
			<div class="fs-5 fw-bold mb-2">{{ __('搜索关键字') }}:<span class="text-danger ms-2">{{ $k }}</span></div>
			<div class="overflow-hidden mb-3">
				@forelse($searchlist as $article)
				<div class="row gx-3 align-items-center py-2 hover-shadow">
					<div class="col my-1"><a href="{{route('article.show',$article->id)}}" class="text-decoration-none link-dark d-block font-15" target="_blank">{!! preg_replace("/($k)/i", "<font color=red><b>\\1</b></font>", $article->title) !!}</a></div>
					<div class="col-auto my-1">
					 
					</div>
				</div>
				@empty
				<div class="py-5 text-secondary text-center bg-light">{{ __('Empty') }}</div>
				@endforelse
			</div>
			{{ $searchlist->appends(['k'=>$k])->links('vendor/pagination/bootstrap-5') }}
		</div>
	</div>
</div>
@endsection