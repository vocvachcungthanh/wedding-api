<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLoveStoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('love_story', function (Blueprint $table) {
            $table->id();
            $table->text('avatar');
            $table->string('title');
            $table->string('date');
            $table->text('desc')->nullable();
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
        Schema::dropIfExists('love_story');
    }
}
