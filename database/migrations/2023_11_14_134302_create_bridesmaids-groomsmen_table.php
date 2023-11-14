<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBridesmaidsGroomsmenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bridesmaids_groomsmen', function (Blueprint $table) {
            $table->id();
            $table->text('avatar');
            $table->string('name');
            $table->string('google_id')->nullable();
            $table->boolean('status');
            $table->boolean('source_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bridesmaids_groomsmen');
    }
}
