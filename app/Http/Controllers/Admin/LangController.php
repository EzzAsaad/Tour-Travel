<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LangController extends Controller
{
    public function getData($fileName){
        // Reading Files
        $path_ar = base_path().'/resources/lang/ar/'.$fileName.'.php';
        $path_en = base_path().'/resources/lang/en/'.$fileName.'.php';
        $arr_ar = include $path_ar;
        $arr_en = include $path_en;
        return view('admin.setting.lang',compact(['arr_ar','arr_en','fileName']));
    }
    protected function save($lang,$fileName,$data){
        $path = base_path().'/resources/lang/'.$lang.'/'.$fileName.'.php';
        $content = "<?php\n\nreturn\n[\n";
        foreach ($data as $key => $value)
        {
            $content .= "\t'".$key."' => '".$value."',\n";
        }
        $content .= "];";
        file_put_contents($path, $content);
    }
    public function setData($fileName,Request $request){

        $this->save('ar',$fileName,$request->arWords);
        $this->save('en',$fileName,$request->enWords);

        return back()->with('successM',__('alert.editSuccess'));
    }

    static public function getAllFiles(){
        return array_diff(scandir(base_path().'/resources/lang/ar/'), array('.', '..'));
    }
}