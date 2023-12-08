<?php $__env->startSection('navtitle', __('Search').':'.$k); ?>
<?php $__env->startSection('content'); ?>
<div class="container py-4 my-md-2">
	<div class="row gx-5 justify-content-center">
		<div class="col-lg-12">
			<div class="fs-5 fw-bold mb-2"><?php echo e(__('search for the keyword')); ?>:<span class="text-danger ms-2"><?php echo e($k); ?></span></div>
			<div class="overflow-hidden mb-3">
				<?php $__empty_1 = true; $__currentLoopData = $searchlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
				<div class="row gx-3 align-items-center py-2 hover-shadow">
					<div class="col my-1"><a href="<?php echo e(route('article.show',$article->id)); ?>" class="text-decoration-none link-dark d-block font-15" target="_blank"><?php echo preg_replace("/($k)/i", "<font color=red><b>\\1</b></font>", $article->title); ?></a></div>
					<div class="col-auto my-1">
					 
					</div>
				</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
				<div class="py-5 text-secondary text-center bg-light"><?php echo e(__('Empty')); ?></div>
				<?php endif; ?>
			</div>
			<?php echo e($searchlist->appends(['k'=>$k])->links('vendor/pagination/bootstrap-5')); ?>

		</div>
	</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/search/index.blade.php ENDPATH**/ ?>