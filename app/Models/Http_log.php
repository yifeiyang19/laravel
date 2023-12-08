<?php
namespace App\Models;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Database\Eloquent\Model; 
use Illuminate\Database\Eloquent\SoftDeletes; 
use DateTimeInterface;


class Http_log extends Model { 
     //use SoftDeletes;                       
    protected $table = 'http_log'; 
    
     protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }





}


 

?>