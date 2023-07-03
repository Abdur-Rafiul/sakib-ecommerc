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
        Schema::create('product_list', function (Blueprint $table){
            $table->bigIncrements('id');
            $table->string('title');
            $table->string('price');
            $table->string('shop_name');
            $table->string('special_price');
            $table->string('image');
            $table->string('category');
            $table->string('subcategory');
            $table->string('remark');
            $table->string('brand');
            $table->string('product_code');
            $table->integer('star');
            $table->string('stock');




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
