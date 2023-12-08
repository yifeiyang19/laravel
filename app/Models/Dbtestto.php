<?php
namespace App\Models;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Database\Eloquent\Model; 
use Illuminate\Database\Eloquent\SoftDeletes; 
 
 
class Dbtestto extends Model
{
       
        protected $table = "test";
}


class Dbtestto extends Model
{
        protected $connection = 'mysql2';
        protected $table = "tel";

}
?>