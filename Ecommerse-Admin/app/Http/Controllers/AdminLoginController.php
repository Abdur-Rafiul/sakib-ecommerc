<?php

namespace App\Http\Controllers;

use App\Models\AdminLoginModel;
use App\Models\adminModel;
use App\Models\ShopModel;
use Illuminate\Http\Request;

class AdminLoginController extends Controller
{


    function SignIn(){
        return view('Login.SignUpSignIn');
    }
    function OnSignIn(Request $request){
        $email=$request->input('email');
        $password=$request->input('password');
        $userCount=AdminLoginModel::where('email','=',$email)->where('password','=',$password)->count();
        $userCount1=adminModel::where('email','=',$email)->where('password','=',$password)->count();
       $userCount2=ShopModel::where('shop_email','=',$email)->where('shop_password','=',$password)->count();

//       dd($userCount2);
        if ($userCount==1 or $userCount1){
            $request->session()->put('email',$email);
            return 1;
        }
        if($userCount2 == 1){
            $request->session()->put('email',$email);
            return 1;
        }
        else{
            return 0;
        }
    }

    function OnLogOut(Request $request){
        $request->session()->flush();
        return redirect('/');
    }

    //password reset
    function resetPage(){
        return view('PasswordReset');
    }

    public function ResetPassword(Request $request){
        $password=$request->input('password');
        $id='1';
        $result= AdminLoginModel::where('id',$id)->update([
            'password'=>$password
        ]);
        return $result;
    }
}
