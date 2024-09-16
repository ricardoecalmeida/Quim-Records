<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BandController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AlbumController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AuthController;

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

// Rota Home
Route::get('/', [IndexController::class, 'index'])->name('main.index');

// Rotas de Bandas
Route::get('/bands/all', [BandController::class, 'allBands'])->name('bands.all');
Route::get('/bands/add', [BandController::class, 'addBand'])->name('bands.add');
Route::post('/bands/create', [BandController::class, 'createBand'])->name('bands.create');
Route::post('/bands/update', [BandController::class, 'updateBand'])->name('bands.update');
Route::get('/bands/view/{id}', [BandController::class, 'viewBand'])->name('bands.view');
Route::get('/bands/delete/{id}', [BandController::class, 'deleteBand'])->name('bands.delete');

// Rotas de Álbuns
Route::get('/albums/all/{sortBy?}', [AlbumController::class, 'allAlbums'])->name('albums.all');
Route::get('/albums/add', [AlbumController::class, 'addAlbum'])->name('albums.add');
Route::post('/albums/create', [AlbumController::class, 'createAlbum'])->name('albums.create');
Route::post('/albums/update', [AlbumController::class, 'updateAlbum'])->name('albums.update');
Route::get('/albums/view/{id}', [AlbumController::class, 'viewAlbum'])->name('albums.view');
Route::get('/albums/delete/{id}', [AlbumController::class, 'deleteAlbum'])->name('albums.delete');
Route::get('/albums/byband/{band_id}', [AlbumController::class, 'albumsByBand'])->name('albums.byband');

// Rotas de Users
Route::get('/users/all', [UserController::class, 'allUsers'])->name('users.all')
    ->middleware(['auth']);
    // FALHA DE SEGURANÇA! QUALQUER USER PODE FAZER UM REGISTO, E QUALQUER USER REGISTADO PODE ACEDER A ESTA VIEW E CONSULTAR OS DADOS DOS USERS REGISTADOS
    // DEIXEI FICAR MAS DESABILITEI A FUNCIONALIDADE DE APAGAR USERS, O QUE SÓ PODE SER FEITO PELO ADMIN (USER_TYPE 1)
Route::get('/users/add', [UserController::class,'addUser'])->name('users.add');
Route::post('/users/create', [UserController::class, 'createUser'])->name('users.create');
Route::post('/users/update', [UserController::class, 'updateUser'])->name('users.update');
Route::get('/users/view/{id}', [UserController::class, 'viewUser'])->name('users.view');
Route::get('/users/delete/{id}', [UserController::class, 'deleteUser'])->name('users.delete');

// Rota Dashboard
Route::get('/dashboard/home', [DashboardController::class, 'index'])->name('dashboard.home')
    ->middleware('auth'); // Middleweare de user autenticado

// Rotas Auth
Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout'])->name('logout');
// SISTEMA DE RECUPERAÇÃO DE PASSWORD NÃO DESENVOLVIDO...

// Rota Fallback
Route::fallback(function () {return view('main.fallback');})->name('home.hello');
