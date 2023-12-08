<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card bj-whitc">
                <div class="card-header">latest articles</div>
               <div class="card-body">
                  <div class="list-group">
            <?php $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <li class="list-group-item list-group-item-action d-flex align-items-center">
      <span class="me-1 text-black-50"><a href="<?php echo e(route('sort.lists', $article->sort->id)); ?>" class="link-secondary text-decoration-none">[<?php echo e($article->sort->name); ?>]&nbsp;</a></span>
      <a href="<?php echo e(route('article.show',$article->id)); ?>" class="link-dark text-decoration-none"><?php echo e($article->title); ?></a>
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/index.blade.php ENDPATH**/ ?>