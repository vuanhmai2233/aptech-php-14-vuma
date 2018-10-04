<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class UserController extends Controller
{
    //
    function index(){
        $users = User::All();
        return View ('index',['users'=>$users]);
    }
    function UserOne($id){
        $user = User::find($id);
        return View ('showOne',['user'=>$user]);
    }
    function Delete($id){
        // $user = User::destroy($id);
        // return View ('index',['user'=>$user]);
        $user = User::find($id);
        $user->delete();
        return  redirect()->route('user.index');
    }
    function edit($id)
    {
        $user = User::find($id);
        return view('edit', ['user' => $user]);
    }

    function update(Request $request, $id)
    {
       
        $user = User::find($id);
        $user->name = $request->name;
        $user->save();
        return redirect()->route('user.index');    
        //update
        // return $request->all();
    
    }

}
