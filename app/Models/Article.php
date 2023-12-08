<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes; 
use App\Observers\ArticleObserver;

class Article extends Model
{
    
    use SoftDeletes;
    public function author()
    {
        return $this->hasOne(User::class,'id','user_id');
    }
    public function sort()
    {
        return $this->hasOne(Sort::class,'id','sort_id');
    }
    //redis
   
    public function hits()
    {
        $redis = app('redis.connection'); 
        $redis_name = $this->table.'_hits'; 
        $redis_key = $this->id; 
        $redis_cache_time = 5; 
        
        if($redis->hexists($redis_name, $redis_key)){
            $data = json_decode($redis->hget($redis_name, $redis_key)); 
            if(time() - $data->dateline > $redis_cache_time){
                $this->increment('views', $data->views+1);
                $redis->hdel($redis_name, $redis_key);
            }else{
                $redis->hset($redis_name, $redis_key, json_encode(['views'=>$data->views+1, 'dateline'=>$data->dateline]));
            }
        }else{
            $redis->hset($redis_name, $redis_key, json_encode(['views'=>1, 'dateline'=>time()]));
        }
    }
    //redis end
    
  public static function booted()
   {
     self::observe(ArticleObserver::class);
   }
   //JIE
}
