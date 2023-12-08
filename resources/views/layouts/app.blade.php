<!doctype html>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> @hasSection('navtitle')@yield('navtitle') - @endif {{ config('app.name', 'Laravel') }}</title>

   
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                                 <li class="nav-item">
                                    <a class="nav-link @if(request()->route()->getName() == 'index') link primary fw-bold @endif" href="/">{{ __('Home') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='1') link primary fw-bold @endif" href="/sort/1">{{ __('PHP') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='2') link primary fw-bold @endif" href="/sort/2">{{ __('SQL') }}</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='3') link primary fw-bold @endif" href="/sort/3">{{ __('JS') }}</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='4') link primary fw-bold @endif" href="/sort/4">{{ __('CSS') }}</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='5') link primary fw-bold @endif" href="/sort/5">{{ __('HTML') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link @if(@request()->route('sort')->id =='6') link primary fw-bold @endif" href="/sort/6">{{ __('Other') }}</a>
                                </li>
                    </ul>
         
      
          <ul class="hide-phone app-search col ps-3 mb-0">
			<form role="search" action="{{route('search')}}" method="get">
			       <div class="d-flex align-items-center mx-6">
				<input type="search" name="k" class="form-control top-search w-50" value="" placeholder="search for...">
				 <button class="btn btn-primary ms-2" type="submit"><i class="fa fa-search"></i></button>
				  </div>
			</form>
		</ul>
       
 
		
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Logon') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                        <!--Posted articles added-->
                            <li class="nav-item">
                            <a class="nav-link" href="{{ route('article.create') }}">
                                 <button class="btn btn-primary ms-2" type="submit"> Write</button></a>
                                </li>
                        <!---->
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>

<div class="container py-4">
	<div class="text-center">
	 
		<!--<span class="me-3">Total number of articles</span> -->
	 
	</div>
</div>
