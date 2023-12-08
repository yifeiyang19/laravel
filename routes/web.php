<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('index');
// });

Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/', [App\Http\Controllers\IndexController::class, 'index'])->name('index');
Route::get('/home', [App\Http\Controllers\IndexController::class, 'index'])->name('home');
Route::match(['get', 'post'],'/article/create', [App\Http\Controllers\ArticleController::class, 'create'])->name('article.create');
Route::get('/article/{article:id}', [App\Http\Controllers\ArticleController::class, 'show'])->name('article.show');
Route::match(['get', 'post'],'/article/{article:id}/edit', [App\Http\Controllers\ArticleController::class, 'edit'])->name('article.edit');
Route::post('/article/{article:id}/del', [App\Http\Controllers\ArticleController::class, 'del'])->name('article.del');
Route::get('/sort/{sort:id}', [App\Http\Controllers\SortController::class, 'lists'])->name('sort.lists');
Route::get('/search', [App\Http\Controllers\SearchController::class, 'search'])->name('search');
