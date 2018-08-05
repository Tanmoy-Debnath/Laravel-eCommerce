<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
  public function index() {
      return view('admin.category.add-category');
}
    public function saveCategory(Request $request) {
        $category = new Category();
        $category->category_name        = $request->category_name;
        $category->category_description = $request->category_description;
        $category->publication_status   = $request->publication_status;
        $category->save();

        return redirect('category/add')->with('message', 'Category Info Save Succesfully');



    }
       public function manageCategory() {
      $categories = Category::all();

      return view('admin.category.manage-category',['categories'=>$categories]);
       }

       public function unpublishedCategoryinfo($id) {
        $category = Category::find($id);

        $category->publication_status = 0;
        $category->save();

        return redirect('/category/manage')->with('message', 'Category Info unpublished');

       }
    public function publishedCategoryinfo($id) {
        $category = Category::find($id);

        $category->publication_status = 1;
        $category->save();

        return redirect('/category/manage')->with('message', 'Category Info published');

    }
    public function editCategoryinfo($id) {
        $category = Category::find($id);
      return view('admin.category.edit-category', ['category'=>$category]);
    }


public function updateCategoryinfo(Request $request) {
      $category = Category::find($request->category_id);

    $category->category_name        = $request->category_name;
    $category->category_description = $request->category_description;
    $category->publication_status   = $request->publication_status;
    $category->save();

    return redirect('category/add')->with('message', 'Category Info Updated Succesfully');

}

public function deleteCategoryinfo ($id) {

      $category = Category::find($id);
      $category->delete();

    return redirect('/category/manage')->with('message', 'Category Info deleted Succesfully');
}

}
