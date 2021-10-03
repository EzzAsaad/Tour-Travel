<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\Categorie;
use App\Models\Package;
use App\Models\Program;
use Illuminate\Support\Facades\DB;

class BookingController extends Controller
{
    public function list()
    {
        return view('admin.booking.list', ['data'=>Booking::latest()->paginate(10)]);
    }
    public function create()
    {
        return view('admin.booking.create', [
            'categories'    => Categorie::where('status', 1)->get(),
            'packages'      => Package::where('status', 1)->get(),
            'programs'      => Program::where('status', 1)->get(),
            'countries'     => DB::table('countries')->get(),
        ]);
    }
    public function save(Request $request)
    {
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
            'user_id'   => auth()->user()->id, 
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
        return redirect(route('Admin.createBookings'))->with('successM', __('alert.CreationisDone!'));
    }
    public function edit($id)
    {
        $res = Booking::find($id);
        return view('admin.booking.edit', [
            'data'          => $res,
            'categories'    => Categorie::where('status', 1)->get(),
            'packages'      => Package::where('status', 1)->get(),
            'programs'      => Program::where('status', 1)->get(),
            'countries'     => DB::table('countries')->get(),
            'cities'        => DB::table('cities')->get()
        ]);
    }
    public function update($id, Request $request)
    {
        $request->validate([
            'name'=> 'required',
            //'images'=> 'required',
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
        $res = Booking::find($id);
        $res->user_id       = auth()->user()->id;
        $res->name          = $request->name;
        if($request->hasFile('images'))
            $res->images        = json_encode($data);
        $res->country_id    = $request->country;
        $res->age           = $request->age;
        $res->city_id       = $request->city;
        $res->address       = $request->address;
        $res->IdNum         = $request->IdNum;
        $res->program_id    = $request->program_id;
        $res->status        = $request->status;
        $res->save();
        return redirect(route('Admin.EditBooking', $id))->with('successM', __('alert.editSuccess'));

    }

    public function delete($id)
    {
        $res = Booking::find($id);
        $res->delete();
        return redirect(route('Admin.listBookings'))->with('successM', __('alert.deletionisdone'));
    }
}
