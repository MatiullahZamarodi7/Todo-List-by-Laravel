<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TodoController;
use App\Models\categoryes;
use Illuminate\Support\Facades\Route;

Route::get('/', [TodoController::class, 'index'])->name('todo.index');
//  tot part
Route::get('/todos/create', [TodoController::class, 'create'])->name('todo.create');
Route::get('/todos/{Todo}', [TodoController::class, 'show'])->name('todo.show');
Route::get('/todos/{Todo}/status', [TodoController::class, 'status'])->name('todo.status');
Route::post('/todos', [TodoController::class, 'store'])->name('todo.store');
Route::get('/todos/{Todo}/edit', [TodoController::class, 'edit'])->name('todo.edit');
Route::PUT('/todos/{Todo}', [TodoController::class, 'update'])->name('todo.update');
Route::delete('/category/{Todo}', [TodoController::class, 'destroy'])->name('todo.destroy');



// categores create
Route::get('/category', [CategoryController::class, 'index'])->name('category.index');
Route::get('/category/create', [CategoryController::class, 'create'])->name('category.create');
Route::post('/category', [CategoryController::class, 'store'])->name('category.store');
Route::get('/category/{catagory}/edit', [CategoryController::class, 'edit'])->name('category.edit');
Route::get('/category/{catagory}', [CategoryController::class, 'update'])->name('category.update');
Route::delete('/category/{catagory}', [CategoryController::class, 'destroy'])->name('category.destroy');
