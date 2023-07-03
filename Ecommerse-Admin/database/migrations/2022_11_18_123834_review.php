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
        Schema::create('product_review', function (Blueprint $table){
            $table->bigIncrements('id');
            $table->string('product_code',1000);
            $table->string('product_name',1000);
            $table->string('mobile',1000);
            $table->string('reviewer_photo',1000)->nullable();
            $table->string('reviewer_name',1000);
            $table->string('reviewer_rating',1000);
            $table->string('reviewer_comments',1000);

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
