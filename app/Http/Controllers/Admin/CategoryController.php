<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categorie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    public function listCategories(){
        $categories = DB::table('categories')->paginate(10);
        return view('admin.category.index',compact('categories'));
    }

    public function deleteCategory($id){
        $category = DB::table('categories')->where('id','=',$id)->delete();
        return redirect(route('Admin.ViewAllCategories'))->with('successM', __('alert.deletionisdone'));;
    }

    public function createCategory(){
        return view('admin.category.create');
    }

    public function storeCategory(Request $request){
       // dd(count(array(\request()->input('subcode.*'))));
       //   dd(count(array(\request()->input('subcode.*'))));
        $request->validate(
            [
                'nameEn'=>'required',
                'CategoryKeywords'=>'required',
                'image' => 'required',
                'icon'  =>'required'
        ]);
        $category = new Categorie();
        $category->name = $request->nameEn;
        $category->status = $request->status;
        $category->keywords = $request->CategoryKeywords;
        if($request->hasFile('image')){
            if($request->file('image')->isValid()){
                $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('image')->getClientOriginalExtension();
                $request->image->move('files/categories_images/',  $imageName);
                $category->image = 'files/categories_images/'.$imageName;
            }
        }
        if($request->hasFile('icon')){
            if($request->file('icon')->isValid()){
                $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('icon')->getClientOriginalExtension();
                $request->icon->move('files/categories_images/',  $imageName);
                $category->icon = 'files/categories_images/'.$imageName;
            }
        }
    
        $category->save();
        return redirect(route('Admin.AddCategory'))->with('successM', 'Categroy created successfully.');
    }

    public function showCategory($id){
        $category = Categorie::find($id);
        $suCategories = DB::table('categories')->get()->first();
        return view('admin.category.show',compact(['category']));
    }

    public function updateCategory($id){
        $category = Categorie::find($id);
        $suCategories = DB::table('categories')->get();
        return view('admin.category.update',compact(['category','suCategories']));
    }

    public function editCategory(Request $request){
        $request->validate([
            'nameEn'            =>'required',
            'status'            =>'required',
            'categoryKeywords'  =>'required',

        ]);
        $category = Categorie::find($request->input('id'));
        if($category)
        {
            $category->name = $request->nameEn;
            $category->status = \request()->input('status');

            if($request->hasFile('image')){
                if($request->file('image')->isValid()){
                    $validate = $request->validate([
                        'image' => 'mimes:jpeg,png',
                    ]);
                    $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('image')->getClientOriginalExtension();
                    $request->image->move('files/categories_images/',  $imageName);
                    $category->image = 'files/categories_images/'.$imageName;
                }
            }
            if($request->hasFile('icon')){
                if($request->file('icon')->isValid()){
                    $validate = $request->validate([
                        'icon' => 'mimes:jpeg,png',
                    ]);
                    $imageName = rand(111111,999999). '_' . time() . '.'.$request->file('icon')->getClientOriginalExtension();
                    $request->icon->move('files/categories_images/',  $imageName);
                    $category->icon = 'files/categories_images/'.$imageName;
                }
            }
            $category->keywords = $request->categoryKeywords;
            $category->save();

        }else{
            return redirect(route('Admin.ViewAllCategories'))->with('error', __('alert.NotFound'));
        }

        return redirect(route('Admin.ViewAllCategories'))->with('successM', __('alert.editSuccess'));
    }

    public function deleteSub($id){
        $subCategory = Categorie::destroy([$id]);
        return response()->json(array('msg'=> $msg), 200);
    }

}
