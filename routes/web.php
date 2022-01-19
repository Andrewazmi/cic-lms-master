<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CoursesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/', function () {
    return view('welcome');
})->name('frontpage');

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::get('/coursescatalog', function () {
    return view('details');
})->name('coursedetails');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/buycourse', function () {
    return view('buy');
})->name('buy');

Route::get('/terms', function () {
    return view('terms');
})->name('terms');

Route::get('/privacy', function () {
    return view('privacy');
})->name('privacy');

Route::get('/category/{category}', [CoursesController::class, 'category'])->name('category');
Route::get('/course/{course}', [CoursesController::class, 'course'])->name('getcourse');
Route::get('/paymentcomplete', [CoursesController::class, 'createProduct'])->name('create-product');
Route::get('/course/{course}/materials', [CoursesController::class, 'materials'])->name('getmaterials');
Route::get('/course/{course}/material/{material}', [CoursesController::class, 'material'])->name('getmaterial');
