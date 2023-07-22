<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use App\Mail\EmployeeCreated;
use Illuminate\Support\Facades\Mail;
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

Route::redirect('/', '/login');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/home', [HomeController::class,'index'])->middleware(['auth', 'verified'])->name('home');

Route::get('companies/trash', [CompanyController::class,'trashed'])->name('companies.trashed');
Route::get('companies/{id}/restore', [CompanyController::class,'restore'])->name('companies.restore');
Route::delete('companies/{id}/force-delete', [CompanyController::class,'forceDelete'])->name('companies.force_delete');
Route::resource('companies', CompanyController::class);

Route::get('employees/trash', [EmployeeController::class,'trashed'])->name('employees.trashed');
Route::get('employees/{id}/restore', [EmployeeController::class,'restore'])->name('employees.restore');
Route::delete('employees/{id}/force-delete', [EmployeeController::class,'forceDelete'])->name('employees.force_delete');
Route::resource('employees', EmployeeController::class);

Route::get('send-mail', function(){
    Mail::send(new EmployeeCreated);
    dd('Mail has been send');
});

require __DIR__.'/auth.php';
