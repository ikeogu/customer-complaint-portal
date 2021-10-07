<?php

namespace App\Http\Controllers;

use App\Models\Complaint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    //

    public function index(){
        if (Auth::user()->current_team_id == 1) {
            # code...
            return view('dashboard');
        } elseif (Auth::user()->current_team_id == 2) {
            # code...
            return view('managerdashboard');
        } else {
                $complaints = Complaint::where('customers_id',auth()->user()->customers_id)->get();
            return view('userdashboard',['complaints'=>$complaints]);
        }

    }


    public function logout(){
        Auth::logout();
        return redirect('/login');
    }
}