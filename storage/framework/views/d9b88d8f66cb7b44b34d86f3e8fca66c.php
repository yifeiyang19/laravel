<?php $__env->startSection('content'); ?>
<?php echo editor_css(); ?>

<?php echo editor_js(); ?>

 
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header"><?php echo e(__('Article release')); ?></div>
                <div class="card-body">
                <form method="POST">
                    <?php echo csrf_field(); ?>
                    <div class="row mb-3">
                        <div class="col-lg-3"> 
                  <label class="form-label">Classification</label>
                  <select name="sort_id" class="form-select col-lg-3">
                      <?php $__currentLoopData = $sorts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sort): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($sort->id); ?>"><?php echo e($sort->name); ?></option>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  </select>
                  </div>
                  <div class="col-lg-9">
                  <label class="form-label">title</label>
                  <input type="text" name="title" class="form-control <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old("title")); ?>">
<?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?><span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span><?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label>">内容</label>
                        <!--rich txt-->
                    <div id="mdeditor">
  <textarea class="form-control <?php $__errorArgs = ['content'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"  name="content" style="display:none;"><?php echo e(old("content")); ?>   </textarea>
 

  <?php $__errorArgs = ['content'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?><span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span><?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
     
              <?php echo editor_config('mdeditor'); ?>

                        <!--rich txt-->
                     </div>
                     <button type="submit" class="btn btn-primary">submit</button>
                </form>
                </div>    

                   
                </div>
            </div>
        </div>
    </div>
</div>
 

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/article/create.blade.php ENDPATH**/ ?>