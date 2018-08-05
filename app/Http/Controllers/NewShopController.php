<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class NewShopController extends Controller
{
    public function index() {

        $newProducts = Product::where('publication_status', 1)
            ->orderBy('id', 'DESC')
            ->take(8)
            ->get();
        $newArrivals = Product::where('publication_status', 1)
            ->orderBy('id', 'DESC')
            ->take(4)
            ->get();

      return view('front-end.home.home', [
          'newProducts'=>$newProducts,
          'newArrivals'=>$newArrivals

      ]);
    }

    public function categoryProduct($id) {
        $categoryProducts = Product::where('category_id', $id)
            ->where('publication_status', 1)
            ->get();
        $category = Category::all();

         return view('front-end.category.category-content',[
             'categoryProducts' => $categoryProducts,
             'category' => $category

         ]);
    }
    public function mailfunction() {
         return view('front-end.email.mail');
    }
    public function checkoutfunction() {
         return view('front-end.checkout.checkout');
    }
    public function loginfunction() {
         return view('front-end.login.login');
    }
    public function accountfunction() {
         return view('front-end.createacount.createac');
    }
    public function categorymenfunction() {
         return view('front-end.category.category-men');
    }

public function detailsProductInfo($id) {
       $product  = Product::find($id);
        return view('front-end.product.product-details',[
              'product' => $product
        ]);
}
}
