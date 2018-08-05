<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Brand;

class BrandController extends Controller
{
    public function publishbrandinfo()
    {
        return view('admin.brand.add-brand');
    }

    public function managebrandinfo()
    {
        $brands = Brand::all();
        return view('admin.brand.manage-brand', ['brands'=>$brands]);
    }

    public function savebrandinfo(Request $request){
      $this->validate($request,[

          'brand_name' => 'required|regex:/^[\pL\s\-]+$/u|max:20|min:2',
          'brand_description' => 'required',
          'publication_status' => 'required'
      ]);
         $brand = new Brand();
        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->publication_status = $request->publication_status;
        $brand->save();

        return redirect('/brand/add')->with('message', 'Brand Info Save Successfully');
    }
    public function unpublishedBrandinfo($id) {
        $brand = Brand::find($id);

        $brand->publication_status = 0;
        $brand->save();

        return redirect('/brand/manage')->with('message', 'Brand Info unpublished');

    }
    public function publishedBrandinfo($id) {
        $brand = Brand::find($id);

        $brand->publication_status = 1;
        $brand->save();

        return redirect('/brand/manage')->with('message', 'Brand Info published');

    }
    public function editBrandinfo($id) {
        $brand = Brand::find($id);
        return view('admin.brand.edit-brand', ['brand'=>$brand]);
    }


    public function updateBrandinfo(Request $request) {
        $brand = Brand::find($request->brand_id);

        $brand->brand_name        = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->publication_status   = $request->publication_status;
        $brand->save();

        return redirect('/brand/add')->with('message', 'Brand Info Updated Succesfully');

    }

    public function deleteBrandinfo ($id) {

        $brand = Brand::find($id);
        $brand->delete();

        return redirect('/brand/manage')->with('message', 'Brand Info deleted Succesfully');
    }

}

