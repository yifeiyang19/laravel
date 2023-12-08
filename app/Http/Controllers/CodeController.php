<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Handles\FileEncryption;
use Illuminate\Support\Facades\Storage;
use \DB;
class CodeController extends Controller
{
     

    /**
     * Store a newly created resource in storage.
     */
    public function encryption(Request $request)
    {
        if($request->isMethod('POST')){
            
                $fileCharaters = $request->file('wenjian');
                
             
            foreach($fileCharaters as $fileCharater)
             {
             if ($fileCharater->isValid()) {
    		 //	$old_name= $fileCharater->getClientOriginalName();
                $filename = $fileCharater->getClientOriginalName();
    			$ext = $fileCharater->getClientOriginalExtension();
    			
    			$path = $fileCharater->getRealPath();

    	    	//	$filename = md5(date('Ymdhis')).round(100000,999999).'.'.$ext;
           
    	    	Storage::disk('public')->put($filename, file_get_contents($path));
    	    	DB::table('code_files')->insert(['old'=>$filename,'new'=>$filename]);
    	    	
    	    	 $encrpty = new FileEncryption();
                 $result = $encrpty->en('/www/wwwroot/blog.yaanbbs.net/storage/code/djm/'.$filename,'/www/wwwroot/blog.yaanbbs.net/storage/code/jm/', 'ai5201314!@#$');
    	 
    		    }
            }
         //
        

        }
   
    
      return view('code.encryption');
    }

           public function decrypt(Request $request){
             
                if($request->isMethod('GET')){
                    $wj=$request->wj;
                     
        $encrpty = new FileEncryption();
        $result = $encrpty->de('/www/wwwroot/blog.yaanbbs.net/storage/code/jm/'.$wj, '/www/wwwroot/blog.yaanbbs.net/storage/code/jiemi/', 'ai5201314!@#$');
    }

        
        //the end 
     
        return view("code.decrypt");
           }
}
