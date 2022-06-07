<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//Trang chủ
Route::get("GioiThieu","KiemTra@getMaster")->name("gioithieu");
Route::post('tim-kiem','KiemTra@search')->name("timkiem");


//
Route::get('danh-muc-san-pham/{category_id}','CategoryProduct@show_category_home')->name("home1");
Route::get('thuong-hieu-san-pham/{brand_id}','BrandProduct@show_brand_home')->name("home2");
Route::get('chi-tiet-san-pham/{product_id}','ProductController@details_product')->name("home3");

//Backend
Route::get("admin","AdminController@index")->name("gioithieu");
Route::get("dashboard","AdminController@show_dashboard")->name("dashboard");
Route::post("admin-dashboard","AdminController@dashboard")->name("login");
Route::get("logout","AdminController@logout")->name("logout");

//category Product
Route::get("add-category-product","CategoryProduct@add_category_product")->name("add");
Route::get("all-category-product","CategoryProduct@all_category_product")->name("all");
Route::get("edit-category-product/{category_product_id}","CategoryProduct@edit_category_product")->name("edit");
Route::get("delete-category-product/{category_product_id}","CategoryProduct@delete_category_product")->name("delete");
Route::post("update-category-product/{category_product_id}","CategoryProduct@update_category_product")->name("update");
Route::get("unactive-category-product/{category_product_id}","CategoryProduct@unactive_category_product")->name("unactive");
Route::get("active-category-product/{category_product_id}","CategoryProduct@active_category_product")->name("active");


Route::post("save-category-product","CategoryProduct@save_category_product")->name("save");

//Brand Product
Route::get("add-brand-product","BrandProduct@add_brand_product")->name("add");
Route::get("all-brand-product","BrandProduct@all_brand_product")->name("all");
Route::get("edit-brand-product/{brand_product_id}","BrandProduct@edit_brand_product")->name("edit");
Route::get("delete-brand-product/{brand_product_id}","BrandProduct@delete_brand_product")->name("delete");
Route::get("unactive-brand-product/{brand_product_id}","BrandProduct@unactive_brand_product")->name("unactive");
Route::get("active-brand-product/{brand_product_id}","BrandProduct@active_brand_product")->name("active");
Route::post("update-brand-product/{brand_product_id}","BrandProduct@update_brand_product")->name("update");
Route::post("save-brand-product","BrandProduct@save_brand_product")->name("save");

//Product
Route::get("add-product","ProductController@add_product")->name("add");
Route::get("all-product","ProductController@all_product")->name("all");
Route::get("edit-product/{product_id}","ProductController@edit_product")->name("edit");
Route::get("delete-product/{product_id}","ProductController@delete_product")->name("delete");
Route::get("unactive-product/{product_id}","ProductController@unactive_product")->name("unactive");
Route::get("active-product/{product_id}","ProductController@active_product")->name("active");
Route::post("update-product/{product_id}","ProductController@update_product")->name("update");
Route::post("save-product","ProductController@save_product")->name("save");


//cart
Route::post('update-cart-quantity','CartController@update_cart_quantity')->name("update");
Route::post('save-cart','CartController@save_cart')->name("save");
Route::get('show-cart','CartController@show_cart')->name("show");
Route::get('delete-to-cart/{rowId}','CartController@delete_to_cart')->name("show");

//Checkout
Route::get('login-checkout','CheckoutController@login_checkout')->name("login");
Route::get('logout-checkout','CheckoutController@logout_checkout')->name("logout");
Route::post('add-customer','CheckoutController@add_customer')->name("add");
Route::post('login-customer','CheckoutController@login_customer')->name("loginC");
Route::post('order-place','CheckoutController@order_place')->name("order");
Route::get('checkout','CheckoutController@checkout')->name("checkout");
Route::get('payment','CheckoutController@payment')->name("payment");
Route::post('save-checkout-customer','CheckoutController@save_checkout_customer')->name("save");

//Order
Route::get('manage-order','CheckoutController@manage_order')->name("manage");
Route::get('view-order/{orderId}','CheckoutController@view_order')->name("view");
Route::get('delete-order/{orderId}','CheckoutController@delete_order')->name("delete");