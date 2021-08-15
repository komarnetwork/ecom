<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBlogToBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('blogs', function (Blueprint $table) {
            //
            $table->id();
            $table->integer('category_id');
            $table->string('title');
            $table->string('slug')->unique();
            $table->string('photo')->nullable();
            $table->string('source');
            $table->integer('views')->default(0);
            $table->tinyInteger('status')->default(0);
            $table->text('meta_tag')->nullable();
            $table->text('meta_description')->nullable();
            $table->text('tags')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('blogs', function (Blueprint $table) {
            //
        });
    }
}
