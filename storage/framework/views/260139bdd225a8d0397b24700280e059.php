<!doctype html>
<link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

    <title> <?php if (! empty(trim($__env->yieldContent('navtitle')))): ?><?php echo $__env->yieldContent('navtitle'); ?> - <?php endif; ?> <?php echo e(config('app.name', 'Laravel')); ?></title>

   
    <?php echo app('Illuminate\Foundation\Vite')(['resources/sass/app.scss', 'resources/js/app.js']); ?>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="<?php echo e(url('/')); ?>">
                    <?php echo e(config('app.name', 'Laravel')); ?>

                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="<?php echo e(__('Toggle navigation')); ?>">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                                 <li class="nav-item">
                                    <a class="nav-link <?php if(request()->route()->getName() == 'index'): ?> link primary fw-bold <?php endif; ?>" href="/"><?php echo e(__('Home')); ?></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='1'): ?> link primary fw-bold <?php endif; ?>" href="/sort/1"><?php echo e(__('PHP')); ?></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='2'): ?> link primary fw-bold <?php endif; ?>" href="/sort/2"><?php echo e(__('SQL')); ?></a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='3'): ?> link primary fw-bold <?php endif; ?>" href="/sort/3"><?php echo e(__('JS')); ?></a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='4'): ?> link primary fw-bold <?php endif; ?>" href="/sort/4"><?php echo e(__('CSS')); ?></a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='5'): ?> link primary fw-bold <?php endif; ?>" href="/sort/5"><?php echo e(__('HTML')); ?></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link <?php if(@request()->route('sort')->id =='6'): ?> link primary fw-bold <?php endif; ?>" href="/sort/6"><?php echo e(__('Other')); ?></a>
                                </li>
                    </ul>
         
      
          <ul class="hide-phone app-search col ps-3 mb-0">
			<form role="search" action="<?php echo e(route('search')); ?>" method="get">
			       <div class="d-flex align-items-center mx-6">
				<input type="search" name="k" class="form-control top-search w-50" value="" placeholder="search for...">
				 <button class="btn btn-primary ms-2" type="submit"><i class="fa fa-search"></i></button>
				  </div>
			</form>
		</ul>
       
 
		
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        <?php if(auth()->guard()->guest()): ?>
                            <?php if(Route::has('login')): ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo e(route('login')); ?>"><?php echo e(__('Logon')); ?></a>
                                </li>
                            <?php endif; ?>

                            <?php if(Route::has('register')): ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo e(route('register')); ?>"><?php echo e(__('Register')); ?></a>
                                </li>
                            <?php endif; ?>
                        <?php else: ?>
                        <!--加入的发布文章-->
                            <li class="nav-item">
                            <a class="nav-link" href="<?php echo e(route('article.create')); ?>">
                                 <button class="btn btn-primary ms-2" type="submit"> Write</button></a>
                                </li>
                        <!---->
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <?php echo e(Auth::user()->name); ?>

                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <?php echo e(__('Logout')); ?>

                                    </a>

                                    <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                                        <?php echo csrf_field(); ?>
                                    </form>
                                </div>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            <?php echo $__env->yieldContent('content'); ?>
        </main>
    </div>
</body>
</html>

<div class="container py-4">
	<div class="text-center">
	 
		<!--<span class="me-3">Total number of articles</span> -->
	 
	</div>
</div>
<?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/layouts/app.blade.php ENDPATH**/ ?>