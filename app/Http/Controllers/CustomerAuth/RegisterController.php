<?php

namespace App\Http\Controllers\CustomerAuth;

use App\Customer;
use App\Models\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Auth;
use App\Models\address;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/customer/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('customer.guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        if (app()->getLocale()=='ar') {
            $lang = "/ar/rules.php";
        } else {
            $lang = "/en/rules.php";
        }
        $path = base_path().'/resources/lang'.$lang;
        $CM = include_once $path;
        //dd($data);
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
            'phone'=> 'required|min:11|max:15',
            'floorNumber'=>'required|numeric',
            'buildNumber'=>'required|numeric',
            'flatNumber'=>'required|numeric',
            'address'=>'required',
            'area_id'=>'required'
        ],$CM);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return Customer
     */
    protected function create(array $data)
    {
        //dd($data);
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'phone'=>$data['phone'],
            'address'=>$data['address']
        ]);
        address::create([
            'user_id'=>$user->id,
            'new_address' =>$data['address'],
            'floor_number'=>$data['floorNumber'],
            'build_number'=>$data['buildNumber'],
            'flat_number'=>$data['flatNumber'],
            'area_id'=>$data['area_id'],
            'lat'=>0,
            'long'=>0
        ]);
        return $user;
    }

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showRegistrationForm()
    {
        return view('customer.auth.register');
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard('customer');
    }
}
