<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('directOrderModel', function (Blueprint $table){
            $table->bigIncrements('id');
            $table->string('invoice',1000);
            $table->string('product_name',1000);
            $table->string('product_code',1000);
            $table->string('shop_name',1000);
            $table->string('shop_code',1000)->nullable();
            $table->string('product_info',1000);
            $table->string('product_quantity',1000);
            $table->string('unit_price',1000);
            $table->string('total_price',1000);
            $table->string('email',1000);
            $table->string('payment_method',1000);
            $table->string('delivery_address',1000);
            $table->string('name',100);
            $table->string('city',255);
            $table->string('delivery_charge',1000);
            $table->string('order_date',1000);
            $table->string('order_time',255);
            $table->string('order_status',255);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
