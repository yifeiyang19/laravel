<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use \DB;
 
class Http_log
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
      DB::table('http_log')->insert([
      'name' => 'access timestamp :'.time() .'access address：'.$request->getUri()
    ]);
        return $next($request);
    }
}
