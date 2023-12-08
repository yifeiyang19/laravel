@extends('layouts.app')

@section('content')
{!! editor_css() !!}
{!! editor_js() !!}
 
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">{{ __('Article release') }}</div>
                <div class="card-body">
                <form method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-lg-3"> 
                  <label class="form-label">Classification</label>
                  <select name="sort_id" class="form-select col-lg-3">
                      @foreach ($sorts as $sort)
                      <option value="{{ $sort->id }}">{{ $sort->name }}</option>
                      @endforeach
                  </select>
                  </div>
                  <div class="col-lg-9">
                  <label class="form-label">title</label>
                  <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" value="{{ old("title") }}">
@error('title')<span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>@enderror
                    </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label>">内容</label>
                        <!--rich text-->
                    <div id="mdeditor">
  <textarea class="form-control @error('content') is-invalid @enderror"  name="content" style="display:none;">{{old("content")}}   </textarea>
 

  @error('content')<span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>@enderror
</div>
     
              {!! editor_config('mdeditor') !!}
                        <!--rich text-->
                     </div>
                     <button type="submit" class="btn btn-primary">提交</button>
                </form>
                </div>    

                   
                </div>
            </div>
        </div>
    </div>
</div>
 

@endsection
