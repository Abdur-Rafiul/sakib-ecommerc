<?php

namespace App\Http\Controllers;

use App\Models\adminModel;
use App\Models\contactModel;
use App\Models\CustomOrderModel;
use App\Models\notificationModel;
use App\Models\ProductOrderModel;
use App\Models\visitorModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    function HomePage(){
        return view('index');
    }

    function HomeSummary(Request $request){
        $pending='pending';
        $TotalAdmin=0;
        $TotalContact=contactModel::count();
        $TotalNotification=notificationModel::count();
        $TotalVisitor=visitorModel::count();
        $TotalCustomOrder=0;
        $TotalOrder=ProductOrderModel::count();
        $TotalPendingOrder=ProductOrderModel::where('order_status',$pending)->count();

        $SummaryArray=[
            'TotalAdmin'=>$TotalAdmin,
            'TotalContact'=>$TotalContact,
            'TotalNotification'=>$TotalNotification,
            'TotalVisitor'=>$TotalVisitor,
            'TotalCustomOrder'=>$TotalCustomOrder,
            'TotalOrder'=>$TotalOrder,
            'TotalPendingOrder'=>$TotalPendingOrder,
        ];

//        if (Session::get('email1')) {
//            return json_encode($SummaryArray);
//        }
        return json_encode($SummaryArray);
    }
}
