<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });
use App\Category;
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('/admin')->namespace('Admin')->group([ 'as'=>'admin.'], function(){
    Route::match(['get', 'POST'], '/', 'AdminController@login')->name('login');

    Route::group(['middleware' => ['admin']], function(){

        Route::get('dashboard', 'AdminController@dashboard')->name('dashboard');
        Route::get('logout', 'AdminController@logout')->name('logout');
        Route::get('settings', 'AdminController@setting')->name('');
        Route::post('check-current-pwd', 'AdminController@chkCurrentPassword')->name('check.current.password');
        Route::post('update-current-pwd', 'AdminController@updateCurrentPassword')->name('update.current.password');
        Route::match(['get', 'post'], 'update-admin-details', 'AdminController@updateAdminDetails')->name('update.admin.details');

        //sections route
        Route::get('sections', 'SectionController@section')->name('sections');
        Route::post('update-section-status', 'SectionController@updateSectionStatus')->name('update.section.status');

        //categories route
        Route::get('categories', 'CategoryController@category')->name('category');
        Route::post('update-category-status', 'CategoryController@updateCategoryStatus')->name('update.category.status');
        Route::match(['get', 'post'], 'add-edit-category/{id?}' , 'CategoryController@addEditCategory')->name('add.edit.category');

        Route::post('append-categories-level', 'CategoryController@appendCategoryLevel')->name('append.category.level');
        Route::get('delete-category-image/{id}', 'CategoryController@deleteCategoryImage')->name('delete.category.image');
        Route::get('delete-category/{id}', 'CategoryController@deleteCategory')->name('delete.category');

        //products route
        Route::get('products', 'ProductsController@product')->name('products');
        Route::post('update-product-status', 'ProductsController@updateProductStatus')->name('update.product.status');
        Route::get('delete-product/{id}', 'ProductsController@deleteProduct')->name('delete.product');
        Route::match(['get', 'post'], 'add-edit-product/{id?}', 'ProductsController@addEditProduct')->name('add.edit.product.status');
        Route::get('delete-product-image/{id}', 'ProductsController@deleteProductImage')->name('delete.product.image');
        Route::get('delete-product-video/{id}', 'ProductsController@deleteProductVideo')->name('delete.product.video');

        //Products Attributes Route
        Route::match(['get', 'post'], 'add-product-attributes/{id}', 'ProductsController@addAttributes')->name('add.product.attribute');
        Route::post('edit-product-attributes/{id}', 'ProductsController@editAttribute')->name('edit.attribute');
        Route::post('update-attribute-status', 'ProductsController@updateProductAttributeStatus')->name('update.attribute.status');
        Route::get('delete-attribute/{id}', 'ProductsController@deleteAttribute')->name('delete.attribute');

        //for product alternative images
        Route::match(['get', 'post'], 'add-images/{id}', 'ProductsController@addImages')->name('add.images');
        Route::post('update-product-image-status', 'ProductsController@updateImageStatus')->name('update.product.image.status');
        Route::get('delete-image/{id}', 'ProductsController@deleteAltImage')->name('delete.image');

        //Brands Routes
        Route::get('brands', 'BrandController@brand')->name('brands');
        Route::post('update-brand-status', 'BrandController@updateBrandStatus')->name('update.brand.status');
        Route::match(['get', 'post'], 'add-edit-brand/{id?}', 'BrandController@addEditBrand')->name('add.edit.brand');
        Route::get('delete-brand/{id}', 'BrandController@deleteBrand')->name('delete.brand');

        //banners Route
        Route::get('banners', 'BannersController@banner')->name('banners');
        Route::post('update-banner-status', 'BannersController@updateBannerStatus')->name('update.banner.status');
        Route::get('delete-banner/{id}', 'BannersController@deleteBanner')->name('delete.banner');
        Route::match(['get', 'post'], 'add-edit-banners/{id?}', 'BannersController@addEditBanner')->name('add.edit.banner');
        Route::get('delete-banner-image/{id}', 'BannersController@deleteBannerImage')->name('delete.banner.image');

        //coupons
        Route::get('/coupons', 'CouponsController@coupons')->name('');
        Route::post('/update-coupon-status', 'CouponsController@updateCouponStatus')->name('');
        Route::get('delete-coupon/{id}', 'CouponsController@deleteCoupon')->name('');
        Route::match(['get', 'post'], 'add-edit-coupons/{id?}', 'CouponsController@addEditCoupon')->name('');
        
        //orders
        Route::get('/orders', 'OrdersController@orders')->name('');
        //order details amdin
        Route::get('/orders/{id}','OrdersController@orderDetails')->name(''); 
        Route::post('/update-order-status', 'OrdersController@updateOrderStatus')->name('');
        //view order invoice
        Route::get('/view-order-invoice/{id}', 'OrdersController@viewOrderInvoice')->name('');
        //print pdf file
        Route::get('/print-pdf-invoice/{id}', 'OrdersController@printPdfInvoice')->name('');
        
        //shipping charges
        Route::get('/shipping-charges', 'ShippingController@shippingCharge')->name('');
        //edit shipping charge
        Route::match(['get', 'post'], '/edit_shipping_charges/{id}', 'ShippingController@editShippingCharge')->name('');
        Route::post('/update-shipping-status', 'ShippingController@updateShippingStatus')->name(''); 
    })->name('');

});

Route::namespace('Front')->group(function(){
    //home page route
    Route::get('/', 'IndexController@index')->name('index');
    //get category urls
    $catUrls = Category::select('url')->where('status', 1)->get()->pluck('url')->toArray();
    // echo "<pre>"; print_r($catUrls); 
    foreach($catUrls as $url)
    {
        Route::get('/'.$url, 'ProductsController@listing');
        // echo "<pre>"; print_r($url); 
    }
    //product details
    Route::get('/product/{id}', 'ProductsController@details');
    //getting price according to size
    Route::post('/getting-product-price', 'ProductsController@getProductPrice');
    //add to cart
    Route::post('add-to-cart', 'ProductsController@addtoCart');
    //shopping cart rout
    Route::get('/cart', 'ProductsController@cart');
    //update cart item quantity
    Route::post('/update-cart-item-qty', 'ProductsController@updateCartItem');
    //delete cart item
    Route::post('/delete-cart-item', 'ProductsController@deleteCartItem');
    //login/register
    Route::get('/login-register', ['as'=>'login', 'uses'=>'UsersController@loginRegister']);
    //check user email existance
    Route::match(['get', 'post'], '/check-email', 'UsersController@checkEmail');
    //login
    Route::post('/login', 'UsersController@userLogin');
    //register
    Route::post('/register', 'UsersController@userRegister');
    //logout
    Route::get('/logout', 'UsersController@logoutUser');
    //confirm email
    Route::match(['get', 'post'], '/confirm/{code}', 'UsersController@confirmAccount');
    //user forgot password
    Route::match(['get', 'post'], '/forgot-password', 'UsersController@forgotPassword');
    //search products
    Route::get('/search-products', 'ProductsController@listing');
    //middleware auth

    Route::group(['middleware'=>['auth']], function(){
        
        //user account 
        Route::match(['get', 'post'], '/account', 'UsersController@account');
        //orders
        Route::get('/orders', 'OrdersController@orders');
        //view order details
        Route::get('/order-details/{id?}', 'OrdersController@orderDetails');
        //check current password
        Route::post('/check-user-pwd', 'UsersController@checkeUserPwd');
        //update user password
        Route::post('/update-user-pwd', 'UsersController@updateUserPwd');
        //apply coupon\
        Route::post('/apply-coupon', 'ProductsController@applyCoupon');
        //checkout
        Route::match(['get', 'post'], '/checkout', 'ProductsController@checkout');
        //add edit delivery address by user
        Route::match(['get', 'post'], '/add-edit-delivery-address/{id?}', 'ProductsController@addEditDeliveryAddress');
        //delete delivery address
        Route::get('/delete-delivery-address/{id?}', 'ProductsController@deleteDeliveryAddress');
        //thanks page
        Route::get('/thanks', 'ProductsController@thanks');
        //khalti page
        Route::get('/khalti', 'KhaltiController@khalti');
        
    });


});