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
        Schema::create('shop',function (Blueprint $table){
            $table->bigIncrements('id');
            $table->string('shop_logo',100);
            $table->string('shop_code',100);
            $table->string('shop_name',100);
            $table->string('shop_address',100);
            $table->string('shop_owner',100);
            $table->string('shop_category',100);
            $table->string('shop_username',100);
            $table->string('shop_mobile',100);
            $table->string('shop_email',100);
            $table->string('shop_password',100);
            $table->string('shop_status',100);
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
