<?php

//FRONT-end Side

Route::get('/', [
  'uses' => 'NewShopController@index',
  'as' => '/'
]);

Route::get('/category-product/{id}', [
  'uses' => 'NewShopController@categoryProduct',
  'as' => 'category-product'
]);
Route::get('/email-us', [
  'uses' => 'NewShopController@mailfunction',
  'as' => 'mail'
]);

Route::get('/checkout', [
  'uses' => 'NewShopController@checkoutfunction',
  'as' => 'checkout'
]);

Route::get('/login', [
  'uses' => 'NewShopController@loginfunction',
  'as' => 'login'
]);

Route::get('/create-account', [
  'uses' => 'NewShopController@accountfunction',
  'as' => 'createac'
]);

Route::get('/men-category', [
  'uses' => 'NewShopController@categorymenfunction',
  'as' => 'men-category'
]);
                //ADMIN Panel
//category Section

Route::get('/category/add', [
    'uses'  =>  'CategoryController@index',
    'as'    =>  'add-category'
]);

Route::post('/category/save', [
    'uses'  =>  'CategoryController@saveCategory',
    'as'    =>  'new-category'
]);
Route::get('/category/manage', [
    'uses'  =>  'CategoryController@manageCategory',
    'as'    =>  'manage-category'
]);

Route::get('/category/unpublished/{id}', [
    'uses'  =>  'CategoryController@unpublishedCategoryinfo',
    'as'    =>  'unpublished-category'
]);

Route::get('/category/published/{id}', [
    'uses'  =>  'CategoryController@publishedCategoryinfo',
    'as'    =>  'published-category'
]);

Route::get('/category/edit/{id}', [
    'uses'  =>  'CategoryController@editCategoryinfo',
    'as'    =>  'edit-category'
]);

Route::post('/category/update', [
    'uses'  =>  'CategoryController@updateCategoryinfo',
    'as'    =>  'update-category'
]);

Route::get('/category/delete/{id}', [
    'uses'  =>  'CategoryController@deleteCategoryinfo',
    'as'    =>  'delete-category'
]);

// Brand Section

Route::get('/brand/add', [
    'uses' => 'BrandController@publishbrandinfo',
    'as' => 'add-brand'
]);

Route::get('/brand/manage', [
    'uses' => 'BrandController@managebrandinfo',
    'as' => 'manage-band'
]);

Route::post('/brand/save', [
    'uses' => 'BrandController@savebrandinfo',
    'as' => 'new-brand'
]);

Route::get('/brand/unpublished/{id}', [
    'uses'  =>  'BrandController@unpublishedBrandinfo',
    'as'    =>  'unpublished-brand'
]);

Route::get('/brand/published/{id}', [
    'uses'  =>  'BrandController@publishedBrandinfo',
    'as'    =>  'published-brand'

]);
Route::get('/brand/edit/{id}', [
    'uses'  =>  'BrandController@editBrandinfo',
    'as'    =>  'edit-brand'
]);

Route::post('/brand/update', [
    'uses'  =>  'BrandController@updateBrandinfo',
    'as'    =>  'brand-update'
]);

Route::get('/brand/delete/{id}', [
    'uses'  =>  'BrandController@deleteBrandinfo',
    'as'    =>  'delete-brand'
]);

//Product Section
Route::get('/product/add', [
    'uses' => 'ProductController@index',
    'as' => 'add-product'
]);

Route::post('/product/save', [
    'uses' => 'ProductController@saveProductInfo',
    'as' => 'new-product'
]);
Route::get('/product/manage', [
    'uses' => 'ProductController@manageProductInfo',
    'as' => 'manage-product'
]);

Route::get('/product/unpublished/{id}', [
    'uses'  =>  'ProductController@unpublishedProductinfo',
    'as'    =>  'unpublished-product'
]);

Route::get('/product/published/{id}', [
    'uses'  =>  'ProductController@publishedProductinfo',
    'as'    =>  'published-product'

]);

Route::get('/product/edit/{id}', [
    'uses'  =>  'ProductController@editProductinfo',
    'as'    =>  'edit-product'
]);

Route::post('/product/update', [
    'uses'  =>  'ProductController@updateProductinfo',
    'as'    =>  'update-product'
]);
Route::get('/product/delete/{id}', [
    'uses'  =>  'ProductController@deleteProductinfo',
    'as'    =>  'delete-product'
]);

Route::get('/product-details/{id}/{name}', [
    'uses'  =>  'NewShopController@detailsProductInfo',
    'as'    =>  'product-details'
]);

Route::post('/cart/add', [
    'uses'  =>  'CartController@addToCart',
    'as'    =>  'add-to-cart'
]);

Route::get('/cart/show', [
    'uses'  =>  'CartController@showCart',
    'as'    =>  'show-cart'
]);

Route::get('/cart/delete/{id}', [
    'uses'  =>  'CartController@deleteCart',
    'as'    =>  'delete-cart-item'
]);

Route::post('/cart/update', [
    'uses'  =>  'CartController@updateCart',
    'as'    =>  'update-cart'
]);

Route::get('/cart/checkout', [
    'uses'  =>  'CheckoutController@index',
    'as'    =>  'checkout'
]);

Route::post('/customer/registration', [
    'uses'  =>  'CheckoutController@customerSignUp',
    'as'    =>  'customer-sign-up'
]);

Route::get('/checkout/shipping', [
    'uses'  =>  'CheckoutController@shippingForm',
    'as'    =>  'checkout-shipping'
]);

Route::post('/shipping/save', [
    'uses'  =>  'CheckoutController@saveShippingInfo',
    'as'    =>  'new-shipping'
]);

Route::get('/checkout/payment', [
    'uses'  =>  'CheckoutController@paymentForm',
    'as'    =>  'checkout-payment'
]);

Route::post('/checkout/order', [
    'uses'  =>  'CheckoutController@newOrder',
    'as'    =>  'new-order'
]);











Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
