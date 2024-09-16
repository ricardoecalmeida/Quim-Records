<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    /*
    public function index(){
        return view ('dashboard.home')->with('message_admin', 'Conta de Administrador');
    }
    */

    public function index()
    {

        $isAdmin = Auth::user()->user_type  == User::TYPE_ADMIN ? true : false;

        $message = null;

        if ($isAdmin) {
            $message = '';
        }

        return view('dashboard.home', compact('message'));
    }

    // Middleweare de user autenticado. Pode estar aqui ou nas rotas.
    public function __construct()
    {
        $this->middleware(['auth']);
    }
}
