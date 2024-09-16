<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function allUsers()
    {

        $users = $this->getAllUsers();

        return view('users.all_users', compact('users'));
    }

    public function viewUser($id)
    {

        $myUser = Db::table('users')
            ->where('users.id', $id)
            ->select('users.*')
            ->first();

        return view('users.view_users', compact('myUser'));
    }
    public function updateUser(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:50',
        ]);

        User::where('id', $request->id)
            ->update([
                'name' => $request->name,
            ]);

        return redirect()->route('users.all')->with('message', 'User updated!!');
    }
    public function addUser()
    {

        $users = DB::table('users')->get();

        return view('users.add_users', compact('users'));
    }
    public function createUser(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:50',
            'email' => 'required|unique:users',
        ]);

        User::insert([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),

        ]);

        return redirect()->route('main.index')->with('message', 'User added!!');
    }

    public function deleteUser($id)
    {
        Db::table('users')
            ->where('id', $id)
            ->delete();

        return back();
    }
    private function getAllUsers()
    {
        $users = DB::table('users')
            ->get();

        return $users;
    }
}
