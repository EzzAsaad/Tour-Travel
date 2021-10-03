<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Amenitie;
use App\Models\guest_access;
use App\Models\Itenary;
use App\Models\price_includes;
use Illuminate\Http\Request;
use App\Models\Categorie;
use App\Models\Package;
use App\Models\Program;
use Illuminate\Support\Facades\DB;

class ProgramController extends Controller
{
    public function create()
    {
        return view('admin.program.create', ['categories'=>Categorie::all(), 'packages'=>Package::all()]);
    }

    public function save(Request $request)
    {
        $request->validate([
            'shortName' => 'required',
            'name'      => 'required',
            'category'  => 'required',
            'package'   => 'required',
            'shortDesc' => 'required',
            'desc'      => 'required',
            'images'    => 'required',
//            'video'    => 'required',
            'daysinfo'=>'required',
            'guestaccessdesc'=>'required',
            'tourrules'=>'required',
            'amenity'=>'required',
            'price_includes'=>'required',
            'guest_access'=>'required'
//            'price_EGP'=> 'required|numeric',
//            'price_US'=> 'required|numeric',
        ]);

        $data = [];
        if($request->hasFile('images'))
        {
            foreach($request->file('images') as $image)
            {
                $destinationPath = 'files/program_images/';
                $filename = rand(111,9999999) . '_' . time() . '.' . $image->getClientOriginalName();
                $image->move($destinationPath, $filename);
                $data [] = 'files/program_images/' . $filename;
            }
        }

        $video = "";
        if($request->hasFile('video'))
        {

            $destinationPath = 'files/program_videos/';
            $filename = rand(111,9999999) . '_' . time() . '.' . $request->video->getClientOriginalName();
            $request->video->move($destinationPath, $filename);
            $video  ='files/program_videos/' . $filename;
        }

        /*
                'name',
        'shortName',
        'desc',
        'shortDesc',
        'categorie_id',
        'package_id',
        'images',
        'videos'
         */
        $program = Program::create([
            'shortName' => $request->shortName,
            'name' => $request->name,
            'shortDesc' => $request->shortDesc,
            'desc' => $request->desc,
            'images' => json_encode($data),
            'videos' =>$video,
            'categorie_id'  => $request->category,
            'package_id'    => $request->package,
            'status'        => $request->status,
            'guestaccessdesc'=>$request->guestaccessdesc,
            'tourrules'=>$request->tourrules,
//            'price_egp'      => $request->price_EGP,
//            'price_us'      => $request->price_US,
//            'discount'      => $request->discount,
        ]);

        if($request->has('daysinfo')){
            $day =1;
            foreach ($request->daysinfo as $key=>$value){
                //dd($value);
                Itenary::create([
                    "daynum"=>$day++,
                    "programid"=>$program->id,
                    "information"=>$value['desc']
                ]);
            }
        }
        if($request->has('amenity')){
            $day =1;
            foreach ($request->amenity as $key=>$value){
                //dd($value);
                Amenitie::create([
                    "programid"=>$program->id,
                    "information"=>$value['desc']
                ]);
            }
        }
        if($request->has('price_includes')){
            $day =1;
            foreach ($request->price_includes as $key=>$value){
                //dd($value);
                price_includes::create([
                    "programid"=>$program->id,
                    "information"=>$value['desc']
                ]);
            }
        }

        if($request->has('guest_access')){
            $day =1;
            foreach ($request->guest_access as $key=>$value){
                //dd($value);
                guest_access::create([
                    "programid"=>$program->id,
                    "information"=>$value['desc']
                ]);
            }
        }


        return redirect(route('Admin.AddNewProgram'))->with('successM', __('alert.CreationisDone!'));



    }

    public function deleteame($id){
        $ame = Amenitie::where('id',$id)->delete();
        return true;
    }
    public function deleteprice_include($id){
        $price_includes = price_includes::where('id',$id)->delete();
        return true;
    }
    public function deleteguest_access($id){
        $guest_access = guest_access::where('id',$id)->delete();
        return true;
    }

    public function edit($id)
    {
        $res = Program::find($id);
        $price_includes = price_includes::where('programid',$id)->get();
        $ames = Amenitie::where('programid',$id)->get();
        $guest_access = guest_access::where('programid',$id)->get();
        $ternary = Itenary::where('programid',$id)->get();

        return view('admin.program.edit', ['categories' => Categorie::where('status', 1)->get(),
            'packages' => Package::where('status', 1)->get(), 'data'=>$res,'price_includes'=>$price_includes,'ames'=>$ames
            ,'guest_access'=>$guest_access,'ternary'=>$ternary]);
    }
    public function update($id, Request $request)
    {
        $request->validate([
            'shortName' => 'required',
            'name'      => 'required',
            'category'  => 'required',
            'package'   => 'required',
            'shortDesc' => 'required',
            'desc'      => 'required',
//            'price_EGP'=> 'required|numeric',
//            'price_US'=> 'required|numeric',
        ]);
        $data = [];
        if($request->hasFile('images'))
        {
            foreach($request->file('images') as $image)
            {
                $destinationPath = 'files/program_images/';
                $filename = rand(111,9999999) . '_' . time() . '.' . $image->getClientOriginalName();
                $image->move($destinationPath, $filename);
                $data [] = 'files/program_images/' . $filename;
            }
        }


        if($request->hasFile('video'))
        {

            $destinationPath = 'files/program_videos/';
            $filename = rand(111,9999999) . '_' . time() . '.' . $request->video->getClientOriginalName();
            $request->video->move($destinationPath, $filename);
            $video  ='files/program_videos/' . $filename;
        }

        $res                = Program::find($id);
        $res->shortName     = $request->shortName;
        $res->name          = $request->name;
        $res->shortDesc     = $request->shortDesc;
        $res->desc          = $request->desc;
        //dd($request->guestaccessdesc);
        $res->guestaccessdesc = $request->guestaccessdesc;
        $res->tourrules = $request->tourrules;
        if($request->hasFile('images'))
            $res->images        = json_encode($data);
        if($request->hasFile('video'))
            $res->videos        = $video;
        $res->categorie_id  = $request->category;
        $res->package_id    = $request->package;
        $res->status        = $request->status;
//        $res->price_egp     = $request->price_EGP;
//        $res->price_us     = $request->price_US;
//        if($request->exists('discount'))
//            $res->discount = $request->discount;
        $res->save();
        if($request->has('amenity')){
            $day =1;
            foreach ($request->amenity as $key=>$value){
                //dd($value);
                if(array_has($value,'id')){
                    $ame = Amenitie::where('id',$value['id'])->first();
                    $ame->information = $value['desc'];
                    $ame->save();
                }else{
                    Amenitie::create([
                        "programid" => $id,
                        "information" => $value['desc']
                    ]);
                }
            }
        }
        if($request->has('daysinfo')){
            $day =1;
            foreach ($request->daysinfo as $key=>$value){
                //dd($value);
                if(array_has($value,'id')){
                    $iten = Itenary::where('id',$value['id'])->first();
                    $iten->information = $value['desc'];
                    $iten->save();
                }
                else {
                    Itenary::create([
                        "daynum" => $day++,
                        "programid" => $id,
                        "information" => $value['desc']
                    ]);
                }
            }
        }
        if($request->has('price_includes')){
            $day =1;
            foreach ($request->price_includes as $key=>$value){
                //dd($value);
                if(array_has($value,'id')){
                    $priceinc = price_includes::where('id',$value['id'])->first();
                    $priceinc->information = $value['desc'];
                    $priceinc->save();
                }else{
                    price_includes::create([
                        "programid"=>$id,
                        "information"=>$value['desc']
                    ]);
                }

            }
        }

        if($request->has('guest_access')){
            $day =1;

            foreach ($request->guest_access as $key=>$value){
                //dd($value);
                if(array_has($value,'id')){
                    $guestaccess = guest_access::where('id',$value['id'])->first();
                    $guestaccess->information = $value['desc'];
                    $guestaccess->save();
                }else{
                    guest_access::create([
                        "programid"=>$id,
                        "information"=>$value['desc']
                    ]);
                }

            }
        }

        return redirect(route('Admin.editProgram', $id))->with('successM', __('alert.editSuccess'));

    }
    public function getPackageList(Request $request)
    {
        $cities = DB::table("packages")
        ->where("categorie_id",$request->categorie_id)
        ->where('status', 1)
        ->pluck("name","id");
        return response()->json($cities);
    }
    public function getProgramList(Request $request)
    {
        $cities = DB::table("programs")
        ->where("package_id",$request->package_id)
        ->where('status', 1)
        ->pluck("name","id");
        return response()->json($cities);
    }

    public function getCityList(Request $request)
    {
        $cities = DB::table("cities")
        ->where("country_id",$request->country_id)
        ->pluck("name_en","id");
        return response()->json($cities);
    }

    public function list()
    {
        return view('admin.program.list', ['data' => Program::latest()->paginate(10)]);
    }

    public function delete($id)
    {
        $res = Program::find($id);
        if($res)
        {
            $res->delete();
            return redirect()->back()->with('successM', __('alert.deletiondone'));
        }else{
            return redirect()->back()->with('error', __('alert.NotFound'));

        }
    }
    public function deleteiten($id){
        $itens = Itenary::where('programid',$id)->delete();
        return true;
    }
}
