<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Package;
use App\Models\Categorie;
class PackageController extends Controller
{
    public function index()
    {
        return view('admin.packages.list', ['data'=>Package::paginate(10)]);
    }
    public function create()
    {
        return view('admin.packages.create', ['categories'=>Categorie::where('status',1)->get()]);
    }
    public function save(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'image' =>'required',
            'days'  => 'required|numeric|min:0|not_in:0',
            'category'  => 'required',
            'from'=>'required',
            'to'=>'required',
            'destination'=>"required"
        ]);
        $image_name = '';
        if($request->file('image'))
        {
            $image_name = rand(111111,9999999) . '_'. time().'.'. $request->file('image')->getClientOriginalExtension();
            $request->image->move('files/packages_images/', $image_name);
            $image_name = 'files/packages_images/' . $image_name;
        }

        $res = Package::create([
            'name' => $request->name,
            'days'  => $request->days,
            'image' => $image_name,
            'status'=> $request->status,
            'categorie_id' => $request->category,
            'aval_from' => $request->from,
            'aval_to' => $request->to,
            'destination'=>$request->destination
        ]);
        if($res)
        {
            return redirect(route('Admin.createNewPackage'))->with('successM', __('alert.CreationisDone!'));
        }else{
            return redirect(route('Admin.createNewPackage'))->with('error', __('alert.CreationError'));
        }
    }
    public function Delete($id)
    {
        $res = Package::find($id);
        if($res)
        {
            $res->delete();
            return redirect(route('Admin.listAllPackages'))->with('successM', __('alert.deletiondone'));
        }
        return redirect(route('Admin.listAllPackages'))->with('error', __('alert.NotFound'));
    }
    public function edit($id)
    {
        return view('admin.packages.edit', ['data' => Package::find($id), 'categories'=>Categorie::where('status',1)->get()]);
    }
    public function getnumberDaysPackage($id)
    {
        $data = Package::find($id)->days;
        return  $data ;
    }
    public function udpate(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'days'  => 'required|numeric|min:0|not_in:0',
            'from'=>'required',
            'to'=>'required',
            'destination'=>'required'
        ]);

        $res = Package::find($id);
        if($res)
        {
            $res->name = $request->name;
            $res->days = $request->days;
            $res->status = $request->status;
            $res->categorie_id = $request->category;
            $res->aval_from = $request->from;
            $res->aval_to = $request->to;
            $res->destination = $request->destination;
            if($request->file('image'))
            {
                $image_name = rand(111111,9999999) . '_'. time(). $request->file('image')->getClientOriginalExtension();
                $request->image->move('files/packages_images/', $image_name);
                $image_name = 'files/packages_images/' . $image_name;
                $res->image = $image_name;
            }
            $res->save();
            return redirect(route('Admin.EditedPackage',$res->id))->with('successM', __('alert.editSuccess'));
        }else{
            return redirect(route('Admin.ViewAllCategories'))->with('error', __('alert.NotFound'));
        }
    }
}
