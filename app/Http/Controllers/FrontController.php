<?php

namespace App\Http\Controllers;

use App\Models\addones;
use App\Models\AddonesOrder;
use App\Models\Amenitie;
use App\Models\Area;
use App\Models\Booking;
use App\Models\cart;
use App\Models\Categorie;
use App\Models\guest_access;
use App\Models\Itenary;
use App\Models\Order;
use App\Models\OrdersProducts;
use App\Models\Package;
use App\Models\price_includes;
use App\Models\Product;
use App\Models\Products_size;
use App\Models\Program;
use App\Models\Settings;
use App\Models\address;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class FrontController extends Controller
{
    public function registerandlogin(){
        $areas = Area::all();
        return view('front.registerandlogin',compact('areas'));
    }

    public function showprofile($lang,$id){
        $areas = Area::all();
        $customer_address = address::where('user_id',$id)->first();
        $customer = DB::table('users')->where('id',$id)->first();
        return view('front.profile',compact(['customer','areas','customer_address']));
    }

    public function editprofile($lang,$id,Request $request){
        $customer = User::where('id',$id)->first();
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->address = $request->address;
        $customer->area_id = $request->area_id;
        if($request->has('password')){
            $customer->password = Hash::make($request->password);
        }

        if($customer->save()) {
            $customer_address = address::where('user_id', $id)->first();
            $customer_address->new_address = $request->address;

            $customer_address->floor_number = $request->floorNumber;
            $customer_address->build_number = $request->buildNumber;
            $customer_address->flat_number = $request->flatNumber;

            $customer_address->area_id = $request->area_id;
            $customer_address->lat = 0;
            $customer_address->long = 0;
            $customer_address->save();
        }

        return redirect(route('Front.home',['lang'=>(App::isLocale('ar'))? 'ar' : 'en']))->with('successM',__('alert.editSuccess')) ;
    }

    public function getprograms($lang,$id){
        $programs = Program::where('status',1)->where('categorie_id',$id)->get();
        //dd($products);
        return view('front.showprograms',compact(['programs']));
    }
    public function showDestinations(){
        $destinations = DB::table('packages')->where('status',1)->select('destination')->groupBy('destination')->get();
        foreach($destinations as $destination){
            $destination->num_tours = DB::table('packages')->where('destination',$destination->destination)->get()->count();
            $destination->image = DB::table('packages')->where('destination',$destination->destination)->first()->image;
        }
        return view('front.destination',compact(['destinations']));
    }

    public function showTours(){
        $tours = DB::table('categories')->where('status',1)->get();
        //dd($tours);
        foreach($tours as $tour){
            $tour->num_tours = DB::table('programs')->where('categorie_id',$tour->id)->get()->count();
            $images = DB::table('programs')->where('categorie_id', $tour->id)->first()->images;

            $tour->image = json_decode($images)[0];
        }
        return view('front.tours',compact(['tours']));
    }

    public function showGallery(){
        $tours = DB::table('categories')->where('status',1)->get();

        return view('front.gallery',compact(['tours']));
    }
    public function showGalleryPrograms($lang,$id){
        $programs = Program::where('status',1)->where('categorie_id',$id)->get();
        $category_name=Categorie::where('id',$id)->first()->name;
        return view('front.galleryprograms',compact(['programs','category_name']));
    }
    public function showGalleryProgramImages($lang,$id){
        $images = Program::where('id',$id)->where('status',1)->first()->images;
        $program_name = Program::where('id',$id)->where('status',1)->first()->name;
        return view('front.galleryprogramsimages',compact(['images','program_name']));
    }

    public function showProgramsDestination($lang,$name){
        $ids=[];
        $destinations = DB::table('packages')->where('status',1)->where('destination',$name)->get();
        foreach ($destinations as $dest){
            array_push($ids,$dest->id);
        }
        $programs = Program::whereIn('package_id',$ids)->get();
        //dd($programs);
        return view('front.showprograms',compact(['programs']));
    }
    public function getprogram($lang,$id){
        $program = Program::where('status',1)->where('id',$id)->first();
        $package = Package::where('id',$program->package_id)->first();
        $programs = Program::where('status',1)->where('categorie_id',$program->categorie_id)->where('id','!=',$program->id)->get();
        $itenaries = Itenary::where('programid',$id)->get();
        $guestaccess = guest_access::where('programid',$id)->get();
        $price_includes = price_includes::where('programid',$id)->get();
        $amenities = Amenitie::where('programid',$id)->get();
        //dd($products);
        return view('front.showprogram',compact(['program','package','programs','itenaries','guestaccess','price_includes','amenities']));
    }

    public function contactus(){
        return view('front.contactus');
    }

    public function menu(){
        return view('front.menu');
    }

    public function sendmessageContact (Request $request){
            //dd($request->input());
        $data = array('name'=>"Virat Gandhi");

        Mail::send(['html'=>'front.messagecontact'], $request->input(), function($message) {
            $message->to('e.asaadsaad@gmail.com', 'Customer')->subject
            ("MakkaSandwitch : Contact Message");
            $message->from('kasen.saad@gmail.com',"MakkaSandwitch");
        });
            return back();
    }

    public function aboutus(){
        $settings = Settings::first();
        return view('front.aboutus',compact('settings'));
    }

    public function booking($lang,$prog_id){
        $program = Program::where('id',$prog_id)->first();
        $categorie = Categorie::where('id',$program->categorie_id)->first();
        $package = Package::where('id',$program->package_id)->first();
        $countries  =DB::table('countries')->get();

        return view('front.booking',compact(['program','categorie','package','countries']));
    }


    public function saveReserve(Request $request){
        //dd($request->input());
        $request->validate([
            'name'=> 'required',
            'images'=> 'required',
            'country'=> 'required',
            'age'=> 'required',
            'city'=> 'required',
            //'area_id'   => 'required',
            'address'=> 'required',
            'IdNum'=> 'required',
            'program_id'=> 'required'
        ]);
        $data = [];
        if($request->hasFile('images'))
        {
            foreach($request->file('images') as $image)
            {
                $destinationPath = 'files/booking_images/';
                $filename = rand(111,9999999) . '_' . time() . '.' . $image->getClientOriginalName();
                $image->move($destinationPath, $filename);
                $data [] = 'files/booking_images/' . $filename;
            }
        }

        $res = Booking::create([
            'user_id'   => auth()->guard('customer')->user()->id,
            'name'  => $request->name,
            'images'    => json_encode($data),
            'country_id'    => $request->country,
            'age'   => $request->age,
            'city_id'   => $request->city,
            'address'   => $request->address,
            'IdNum' => $request->IdNum,
            'program_id'    => $request->program_id,
            'status'        => $request->status
        ]);
        return back()->with('successM', __('alert.CreationisDone!'));

    }

    public function showcart(){

        $cart = cart::where('user_id',Auth::guard('customer')->user()->id)->where('isAddon',0)->get();
        $addons = cart::where('user_id',Auth::guard('customer')->user()->id)->where('isAddon',1)->get();
        if(count($cart) < 1){
            return redirect(route('Front.home',['lang'=>(App::isLocale('ar'))? 'ar' : 'en']))->withErrors(['msg'=>__('alert.cartempty')]);
        }
        return view('front.showcart' ,compact(['cart','addons']));
    }

    public function creatorder(Request $request,$lang=null){
        $total_Price = 0;
        foreach($request->input('prods') as $key => $value){
//            if(array_key_exists('id',$value)) {
//                $cart = cart::where('id', $value['id'])->first();
//            }
            //dd($value);
            $cart = cart::where('id', $value['id'])->first();
            //dd($value);
            $cart->user_id = Auth::guard('customer')->user()->id;
            $cart->product_id = $value['prod_id'];
            $cart->isAddon = 0;
            $cart->products_size = $value['prod_size'];
            $cart->price = $value['price_prod_hidden'];
            $total_Price += $value['price_prod_hidden'];
            $cart->name =  DB::table('products')->where('id',$value['prod_id'])->first()->name;
            $cart->quantity = $value['qty'];
            $cart->save();
        }
        foreach ($request->input('addon') as $key=>$value){
            if(array_key_exists('status',$value)){
//                if(array_key_exists('id',$value)) {
//                    $cart = cart::where('id', $value['id'])->first();
//                }
                //dd($value);
                $cart = cart::where('id', $value['id'])->first();
                $cart->user_id = Auth::guard('customer')->user()->id;
                //dd($value);
                $cart->product_id = $value['prod_id'];
                $cart->isAddon = 1;
                $cart->products_size = 0;
                $cart->price = $value['subtotal'];
                $cart->name =  DB::table('addones')->where('id',$value['prod_id'])->first()->name;
                $cart->quantity = $value['qty'];
                $total_Price +=  $value['subtotal'];
                $cart->save();
            }
        }
        $order = new Order();
        $order->user_id = Auth::guard('customer')->user()->id;
        $order->payment_method = 1;
        $order->delivery_method = 1;
        $order->name = Auth::guard('customer')->user()->name;
        $order->phone = Auth::guard('customer')->user()->phone;
        $order->price = $total_Price;
        $order->status = 1;
        $order->address_id = address::where('user_id',Auth::guard('customer')->user()->id)->first()->id;
        if($order->save()){
            foreach($request->input('prods') as $key => $value){
                $item = new OrdersProducts();
                $item->order_id = $order->id;
                $item->product_id = $value['prod_id'];
                $item->product_size = $value['prod_size'];
                //dd($value['quantity']);
                $item->quantity = $value['qty'];
                $item->save();
//                cart::destroy([$value['prod_id']]);

            }
            foreach ($request->input('addon') as $key=>$value){
                $item = new AddonesOrder();
                $item->order_id = $order->id;
                $item->addon_id = $value['prod_id'];
                $item->quantity = $value['qty'];

                $item->save();
//                cart::destroy([$value['prod_id']]);
            }
        }
        $_cart=DB::table('cart')->where('user_id',auth($guard='customer')->user()->id)->delete();


        return redirect(route('Front.home',['lang'=>(App::isLocale('ar'))? 'ar' : 'en']))->with('successM',__('alert.checkout'));

    }
    public function deletecart($lang,$id){
        $cart = cart::destroy([$id]);
        return back()->with('SuccessM',__('alert.deletionisdone'));
    }
}
