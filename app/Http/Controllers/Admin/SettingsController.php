<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\Request;
use App\Models\Settings;
use App\Models\Social;

class SettingsController extends Controller
{
    public function edit()
    {
        $settings = Settings::all()->first();
        return view('admin.setting.edit', ['settings'=>$settings]);
    }

    public function editaboutus(){
        $settigs = Settings::all()->first();
        return view('admin.setting.editaboutus', ['settings'=>$settigs]);

    }

    public function updateaboutus(Request $request){
        $setting = Settings::take(1)->first();
        $setting->aboutDescAr = $request->aboutDescAr;
        $setting->aboutDescEn = $request->aboutDescEn;
        $setting->featureoneEn = $request->featureoneEn;
        $setting->featureoneAr = $request->featureoneAr;

        $setting->featuretwoEn = $request->featuretwoEn;
        $setting->featuretwoAr = $request->featuretwoAr;

        $setting->featurethreeEn = $request->featurethreeEn;
        $setting->featurethreeAr = $request->featurethreeAr;



        $setting->phoneabout = $request->phoneabout;

        if($request->hasFile('Photoone'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('Photoone')->getClientOriginalExtension();
            $request->file('Photoone')->move('files/site_images/', $imageName);
            $setting->Photoone = 'files/site_images/' . $imageName;
        }
        if($request->hasFile('Phototwo'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('Phototwo')->getClientOriginalExtension();
            $request->file('Phototwo')->move('files/site_images/', $imageName);
            $setting->Phototwo = 'files/site_images/' . $imageName;
        }

        $setting->save();
        return back()->with('successM',__('alert.editSuccess'));
    }

    public function update(Request $request)
    {

        $setting = Settings::take(1)->first();
        $setting->nameAr = $request->nameAr;
        $setting->nameEn = $request->nameEn;
        $setting->email = $request->email;
        $setting->phone = $request->phone;
        $setting->phone2 = $request->phone2;
        $setting->ArDescription = $request->ArDesc;
        $setting->EnDescription = $request->EnDesc;
        $setting->ArMetaDescription = $request->ArMetaDesc;
        $setting->EnMetaDescription = $request->EnMetaDesc;
        $setting->ArMetaKeywords = $request->ArMetaKey;
        $setting->EnMetaKeywords = $request->EnMetaKey;
        $setting->status = $request->status;

        $setting->address_companyEN = $request->address_companyEn;
        $setting->address_companyAr = $request->address_companyAr;

        $setting->slider_infoAR = $request->slider_infoAr;
        $setting->slider_infoEn = $request->slider_infoEn;

        $setting->tripadvisorlink = $request->tripadvisorlink;
        $setting->privateguidelink = $request->privateguidelink;

        $setting->bannertitle = $request->bannertitle;
        $setting->bannerdesc = $request->bannerdesc;
        $setting->destinationid = $request->destinationid;

        if($request->hasFile('bannerphoto'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('bannerphoto')->getClientOriginalExtension();
            $request->file('bannerphoto')->move('files/site_images/', $imageName);
            $setting->bannerphoto = 'files/site_images/' . $imageName;
        }
        if($request->hasFile('logo'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('logo')->getClientOriginalExtension();
            $request->file('logo')->move('files/site_images/', $imageName);
            $setting->logo = 'files/site_images/' . $imageName;
        }
        if($request->hasFile('favIcon'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('favIcon')->getClientOriginalExtension();
            $request->file('favIcon')->move('files/site_images/', $imageName);
            $setting->favIcon = 'files/site_images/' . $imageName;
        }
        if($request->hasFile('banner'))
        {
            $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('banner')->getClientOriginalExtension();
            $request->file('banner')->move('files/site_images/', $imageName);
            $setting->banner = 'files/site_images/' . $imageName;
        }


        if($request->hasfile('slider'))
         {

            foreach($request->file('slider') as $image)
            {
                $name=rand(111111,999999). '_' . time() . '.'.$image->getClientOriginalName();
                $image->move('files/site_images/', $name);
                $name  = 'files/site_images/'.$name;
                $data[] = $name;
            }
            $setting->slider=json_encode($data);

         }


        $setting->save();
        session()->flash('success', '???? ?????????? ???????????????? ??????????');
        return redirect(route('Admin.EditSettings'));
    }

    public function addSocial()
    {
        return view('admin.setting.social.add');
    }

    public function storeSocialMedia(Request $request)
    {
        $image = '';
        if ($request->hasFile('icon')) {
            $imageName = rand(11111,99999) . '_' . time() . '.' . $request->file('icon')->getClientOriginalExtension();
            $request->file('icon')->move('files/site_images/', $imageName);
            $image = 'files/site_images/' . $imageName;
        }

        Social::create([
            'name' => $request->name,
            'link' => $request->link,
            'icon' => $image,
            'status' => $request->status,
        ]);
        session()->flash('success', '?????? ?????????????? ??????????.');
        return redirect(route('Admin.AddSocialMedia'));

    }
    public function list()
    {
        $socials = Social::paginate(5);
        return view('admin.setting.social.list', ['socials' => $socials]);
    }
    public function delete($id)
    {
        $res = Social::find($id);
        $res->delete();
        session()->flash('success', '?????? ?????????? ??????????.');
        return redirect(route('Admin.listSocialMedia'));

    }
    public function editSocial($id)
    {
        $res = Social::find($id);
        return view('admin.setting.social.add', ['social' => $res]);

    }

    public function UpdateSocial(Request $request, $id)
    {
        $res = Social::find($id);
        $res->name = $request->name;
        $res->link= $request->link;
        if ($request->hasFile('icon')) {
            $imageName = rand(11111,99999) . '_' . time() . '.' . $request->file('icon')->getClientOriginalExtension();
            $request->file('icon')->move('files/site_images/', $imageName);
            $res->icon = 'files/site_images/' . $imageName;
        }
        $res->status = $request->status;
        $res->save();
        session()->flash('success', '?????? ?????????????? ??????????.');
        return redirect(route('Admin.listSocialMedia'));
    }
    public function addMenu()
    {
        return view('admin.setting.Menus.add');
    }


    public function saveMenu(Request $request)
    {

        Menu::create([
            'name_ar' => $request->nameAr,
            'name_en' => $request->nameEn,
            'menu_id' => $request->menu,
            'link' => $request->link,
            'status' => $request->status,
        ]);
        session()->flash('successM', __('alert.CreationisDone!'));
        return redirect(route('Admin.MenusAdd'));
    }

    public function listMenus()
    {
        return view('admin.setting.Menus.index', ['menus' => Menu::all()]);
    }

    public function DeleteMenu($id)
    {
        $menu = Menu::find($id);
        $menu->delete();
        session()->flash('successM', __('alert.deletionisdone'));
        return redirect(route('Admin.MenuList'));

    }


    public function editeMenu($id)
    {
        $menu = Menu::find($id);
        return view('admin.setting.Menus.edit', ['menu' => $menu]);
    }
    public function savaEdited(Request $request, $id)
    {
        $menu = Menu::find($id);
        $menu->name_ar = $request->nameAr;
        $menu->name_en = $request->nameEn;
        $menu->menu_id = $request->menu;
        $menu->link = $request->link;
        $menu->status =$request->status;
        $menu->save();
        session()->flash('successM', __('alert.editSuccess'));
        return redirect(route('Admin.MenuList'));


    }
    public function test()
    {
        return view('admin.setting.test');
    }
}
