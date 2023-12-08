<?php $__env->startSection('navtitle',$article->title); ?>

<?php $__env->startSection('content'); ?>
<link rel="stylesheet" href="/vendor/prism/prism.css" />
<script type="text/javascript" src="/vendor/prism/prism.js"></script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header"><?php echo e($article->title); ?></div>
                <div class="card-body">
                   <style>img { max-width: 100%; height: auto; width: auto; width: auto; }</style>
                    <div class="mb-3">
                       <span class="me-2"> <?php echo e($article->author->name); ?></span>
                       <span class="me-2"> <?php echo e($article->created_at); ?></span>
                       <span class="me-2"> published in：<a href="<?php echo e(route('sort.lists', $article->sort_id )); ?>"><?php echo e($article->sort->name); ?></a></span>
                       <span class="me-2"> Number of views：<?php echo e($article->views); ?></span>
                        </div>
                    <?php echo $article->content; ?>

                    <?php if($article->created_at != $article->updated_at): ?>
                    <div class="text-black-50 mt-3">updated on：<?php echo e($article->updated_at); ?></div>
                    <?php endif; ?>
                     
                </div>
                 <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete',$article)): ?>
                 <div class="card-footer">
                   <a href="<?php echo e(route('article.edit',$article->id)); ?>"><button type="button" class="btn btn-primary">修改文章</button></a>
                  
                   <a href="javascript:;" class="text-danger ms-2"  onclick="return sumbit_sure()"><button type="button" class="btn btn-danger">删除</button></a>
                   
                   <!--delete form-->
         <form id="del-form" action="<?php echo e(route('article.del',$article->id)); ?>" method="POST" class="d-none">
         <?php echo csrf_field(); ?> 
           
                <?php endif; ?>
            
             
            </div> 
        </div>
    </div>
</div>
 
 
   <script language="javascript">  
    function sumbit_sure(){  
    var gnl=confirm("Are you sure you want to delete this piece of data?");  
        if (gnl==true){  
        document.getElementById('del-form').submit();    
        }else{  
        return false;  
        }  
    }  
</script>  
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /www/wwwroot/laravel.com/laravel/resources/views/article/show.blade.php ENDPATH**/ ?>