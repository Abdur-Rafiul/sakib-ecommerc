<?php

namespace App\Http\Controllers;

use App\Models\CartModel;
use App\Models\directOrderModel;
use App\Models\ProductListModel;
use App\Models\ProductOrderModel;
use App\Models\SettingsModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductOrderController extends Controller
{
    function CartOrder(Request $request)
    {
        $city = $request->input('city');
        $paymentMethod = $request->input('paymentMethod');
        $address = $request->input('deliveryAddress');
        $yourName = $request->input('yourName');
        $email = $request->input('email');
        $invoice_no = $request->input('invoice_no');
        $ShippingPrice = $request->input('ShippingPrice');
        date_default_timezone_set('Asia/Dhaka');
        $request_time = date("h:i:sa");
        $request_date = date("d-m-y");
        $CartList = CartModel::where('email', $email)->get();
        $user = User::where('email', $email)->first();
        $cartInsertDeleteResult = "";
        foreach ($CartList as $CartListItem) {
            $resultInsert = ProductOrderModel::insert([
                'invoice' => "c" . $invoice_no,
                'product_name' => $CartListItem['product_name'],
                'product_code' => $CartListItem['product_code'],
                'shop_name' => 'Fahima Complex',
                'shop_code' => 'c1222',
                'product_info' => $CartListItem['product_info'],
                'product_quantity' => $CartListItem['product_quantity'],
                'unit_price' => $CartListItem['unit_price'],
                'total_price' => $CartListItem['total_price'],
                'email' => $email,
                'name'  => $yourName,
                'payment_method' => $paymentMethod,
                'delivery_address' => $address,
                'city' => $city,
                'delivery_charge' => '60',
                'order_date' => $request_date,
                'order_time' => $request_time,
                'order_status' => 'pending',
            ]);

            if ($resultInsert == 1) {
                $resultDelete = CartModel::where('id', $CartListItem['id'])->delete();
                if ($resultDelete == 1) {
                    $cartInsertDeleteResult = 1;
                } else {
                    $cartInsertDeleteResult = 0;

                }
            }
        }
        return $cartInsertDeleteResult;
    }


    function AddToCart(Request $request)
    {

        $color = $request->input('color');
        $size = $request->input('size');
        $quantity = $request->input('quantity');
        $email = $request->input('email');
        $product_code = $request->input('product_code');
        $ProductDetails = ProductListModel::where('product_code', $product_code)->get();
        $price = $ProductDetails[0]['price'];
        $special_price = $ProductDetails[0]['special_price'];
        if ($special_price == 'NA') {

            $total_price = $price * $quantity;
            $unit_price = $price;
        } else {

            $total_price = $special_price * $quantity;
            $unit_price = $special_price;
        }
        $result = CartModel::insert([
            'img' => $ProductDetails[0]['image'],
            'product_name' => $ProductDetails[0]['title'],
            'product_code' => $product_code,
            'shop_name' => "RFL",                //$ProductDetails[0]['shop_name'],
            'shop_code' => "67",                 //$ProductDetails[0]['shop'],
            'product_info' => 'Color: ' . $color . ' size: ' . $size,
            'product_quantity' => $quantity,
            'unit_price' => $unit_price,
            'total_price' => $total_price,
            'email' => $email,

        ]);
        return $result;

    }


    function CartCount(Request $request)
    {

        $userEmail = $request->email;
        $result = CartModel::Where('email', $userEmail)->count();
        return $result;
    }

    function CartList(Request $request)
    {
        $email = $request->email;
        $result = CartModel::where('email', $email)->get();
        return $result;

    }

    function RemoveCartList(Request $request)
    {
        $id = $request->id;
        $result = CartModel::where('id', $id)->delete();
        return $result;
    }

    function CartItemPlus(Request $request)
    {
        $id = $request->id;
        $quantity = $request->quantity;
        $price = $request->price;
        $newQuantity = $quantity + 1;
        $total_price = $newQuantity * $price;
        $result = CartModel::where('id', $id)->update(['product_quantity' => $newQuantity, 'total_price' => $total_price]);
        return $result;


    }

    function CartItemMinus(Request $request)
    {
        $id = $request->id;
        $quantity = $request->quantity;
        $price = $request->price;
        $newQuantity = $quantity - 1;
        $total_price = $newQuantity * $price;
        $result = CartModel::where('id', $id)->update(['product_quantity' => $newQuantity, 'total_price' => $total_price]);
        return $result;


    }

    function OrderListByUser(Request $request)
    {

        $email = $request->email;
        $result = ProductOrderModel::where('email', $email)->orderBy('id', 'DESC')->get();
        return $result;
    }

    function ProductOrderPage()
    {
//        dd(1);
        return view('Order.ProductOrder');
    }

    function ProductOrderData()
    {
        $result = DB::table('directordermodel')
            ->orderBy('id', 'desc')
            ->get();
//        dd(  $result);
        return $result;



    }

    function ProductOrderDetailsData(Request $request)
    {
        $invoice_no = $request->input('invoice_no');
        $result = ProductOrderModel::where('invoice', '=', $invoice_no)->get();
        return $result;
    }

    function ProductOrderDelete(Request $request)
    {
        $id = $request->input('id');
        $result = ProductOrderModel::where('invoice', '=', $id)->delete();
        if ($result == true) {
            return 1;
        } else {
            return 0;
        }
    }

    function ProductOrderStatusEdit(Request $request)
    {
        $statusID = $request->input('statusID');
        $OrderStatus = $request->input('status');

        $ProductOrderData = ProductOrderModel::where('invoice', $statusID)->get();
        $phone = $ProductOrderData[0]['email'];





        if ($OrderStatus == 'Rejected') {

            $result = ProductOrderModel::where('invoice', $statusID)->update([
                'order_status' => $OrderStatus
            ]);
            return $result;

        } else if ($OrderStatus == 'Accepted') {
            $result = ProductOrderModel::where('invoice', $statusID)->update([
                'order_status' => $OrderStatus
            ]);
            return $result;
        } else if ($OrderStatus == 'Delivered') {
            $result = ProductOrderModel::where('invoice', $statusID)->update([
                'order_status' => $OrderStatus
            ]);
            return $result;
        } else {
            $result = ProductOrderModel::where('invoice', $statusID)->update([
                'order_status' => $OrderStatus
            ]);
            return $result;
        }


    }

    function ProductOrderInvoiceData(Request $request)
    {
        $id = $request->input('id');
        $OrderData = ProductOrderModel::where('invoice', '=', $id)->get();
        $sub_total = 0;
        foreach ($OrderData as $OrderDatas) {
            $total_price_taka = $OrderDatas['total_price'];
            $price_array = explode(" ", $total_price_taka);
            $total_price = $price_array[0];
            $sub_total += $total_price;
        }
        $result = ['order_data' => $OrderData, 'sub_total' => $sub_total];
        return json_encode($result);

    }
}
