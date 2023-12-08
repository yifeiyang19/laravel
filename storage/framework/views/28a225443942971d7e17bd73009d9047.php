<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Classification：<?php echo e($sort->name); ?></div>

                <div class="card-body">
                  <div class="list-group">
            <?php $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <li class="list-group-item list-group-item-action d-flex align-items-center">
      <a href="<?php echo e(route('article.show',$article->id)); ?>" class="text-decoration-none"><?php echo e($article->title); ?></a>
      <span class="ms-auto"><?php echo e($article->created_at); ?></span>
  </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     </div>
     <div class="mt-4"> <?php echo e($articles->links('vendor/pagination/bootstrap-5')); ?> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/sort/lists.blade.php ENDPATH**/ ?>