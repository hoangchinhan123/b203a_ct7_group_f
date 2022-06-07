<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\SanPham;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();
class KiemTra extends Controller
{
    public function getMaster()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();
        $all_product = DB::table('tbl_product')->where('product_status','0')->orderby('product_id','desc')->limit(6)->get(); 
    	return view("Banhang.trangchu")->with('category',$cate_product)->with('brand',$brand_product)->with('all_product',$all_product);
    }
      public function search(Request $request){

        $keywords = $request->keywords_submit;

        $cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get(); 
        $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get(); 

        $search_product = DB::table('tbl_product')->where('product_name','like','%'.$keywords.'%')->get(); 


        return view('Banhang.sanpham.search')->with('category',$cate_product)->with('brand',$brand_product)->with('search_product',$search_product);

    }
}
