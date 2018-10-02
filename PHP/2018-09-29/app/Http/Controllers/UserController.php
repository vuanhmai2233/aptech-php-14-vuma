<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class UserController extends Controller
{
    //

    function hienThiTatCa(){
        $users = User::All();
        return view('user',['users'=>$users]);
    }
    function hienThiMot($id){
        $hienthimot = User::find($id);
        return view('user',['user'=>$hienthimot]);
    }
    public function xoaNguoiDung($id)
    {
        $xoaNguoiDung = User::destroy($id);
        return 'OK';
    }
}
