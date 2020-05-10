<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Http\Requests\LoginRequest;

class AuthController extends Controller
{
        
    /**
     * view login page
     *
     * @return void
     */
    public function login()
    {
        return view("backend.login");
    }
    
    /**
     * login request
     *
     * @param  mixed $request
     * @return void
     */
    public function doLogin(LoginRequest $request)
    {
        // authenticate email address and password a
        if(Auth::attempt(['email' => $request->get('email'), 'password' => $request->get('password')]))
        {
			return redirect()->to('/admin/home');
        }
        flash('Invalid email address or password.', 'danger')->important();
        return redirect()->back();
    }
    
    /**
     * logout from dashboard
     *
     * @return void
     */
    public function logout()
    {
        Auth::logout();
        return redirect()->to('/admin/login');
    }
}
