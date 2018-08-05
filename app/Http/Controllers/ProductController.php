<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Image;
use Illuminate\Http\Request;
use App\Brand;
use App\Category;
use App\Product;



class ProductController extends Controller
{
    public function index()
    {
        $categories = Category::where('publication_status', 1)->get();
        $brands = Brand::where('publication_status', 1)->get();

        return view('admin.product.add-product', [
            'categories' => $categories,
            'brands' => $brands
        ]);
    }

    public function validateProductInfo($request)
    {
        $this->validate($request, [

            'product_name' => 'required|regex:/^[\pL\s\-]+$/u|max:20|min:2',
            'product_price' => 'required',
            'product_quantity' => 'required',
            'short_description' => 'required',
            'long_description' => 'required',
            'publication_status' => 'required'
        ]);
    }

    protected function ProductImageUpload($request)
    {
        $productImage = $request->file('product_image');
        $filetype = $productImage->getClientOriginalExtension();
        $imageName = $request->product_name.'.'.$filetype;
        $directory = 'product-images/';
        $imageUrl = $directory . $imageName;
        //$productImage->move($directory, $imageName);
        Image::make($productImage)->resize(200, 200)->save($imageUrl);
        return $imageUrl;
    }

    protected function SaveBasicInfo($request, $imageUrl)
    {
        $product = new Product();
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->product_name = $request->product_name;
        $product->product_price = $request->product_price;
        $product->product_quantity = $request->product_quantity;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->product_image = $imageUrl;
        $product->publication_status = $request->publication_status;
        $product->save();
    }


    public function saveProductInfo(Request $request)
    {
        $this->validateProductInfo($request);
        $imageUrl = $this->ProductImageUpload($request);
        $this->SaveBasicInfo($request, $imageUrl);
        return redirect('/product/add')->with('message', 'Product Info Save Successfully');

    }

    public function manageProductInfo() {
        $products = DB::table('products')
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->join('brands', 'products.brand_id', '=', 'brands.id')
            ->select('products.*', 'categories.category_name', 'brands.brand_name' )
            ->get();

        return view('admin.product.manage-product',['products'=>$products]);
    }



//////////

    public function unpublishedProductinfo($id) {
        $product = Product::find($id);

        $product->publication_status = 0;
        $product->save();

        return redirect('/product/manage')->with('message', 'Product Info unpublished');

    }
    public function publishedProductinfo($id) {
        $product = Product::find($id);

        $product->publication_status = 1;
        $product->save();

        return redirect('/product/manage')->with('message', 'Product Info published');

    }
    public function editProductinfo($id) {
       $product = Product::find($id);
        $categories = Category::where('publication_status', 1)->get();
        $brands = Brand::where('publication_status', 1)->get();

        return view('admin.product.edit-product', [
            'product'=>$product,
            'categories' => $categories,
            'brands' => $brands

        ]);
    }
 public function productBasicInfoUpdate($request, $product, $imageUrl = null){
     $product->category_id = $request->category_id;
     $product->brand_id = $request->brand_id;
     $product->product_name = $request->product_name;
     $product->product_price = $request->product_price;
     $product->product_quantity = $request->product_quantity;
     $product->short_description = $request->short_description;
     $product->long_description = $request->long_description;
     if($imageUrl){
         $product->product_image = $imageUrl;
     }

     $product->publication_status = $request->publication_status;
     $product->save();

 }

    public function updateProductinfo(Request $request) {
        $product = Product::find($request->product_id);
        $productImage = $request->file('product_image');
      if($productImage)  {

          unlink($product->product_image);
          $imageUrl = $this->ProductImageUpload($request);
          $this->productBasicInfoUpdate($request, $product, $imageUrl);

      } else {
          $this->productBasicInfoUpdate($request, $product);
        }
        return redirect('/product/manage')->with('message', 'Product Info Updated Succesfully');

    }


    public function deleteProductinfo ($id) {

        $product = Product::find($id);
        $product->delete();

        return redirect('/product/manage')->with('message', 'Product Info deleted Succesfully');
    }

}

