<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTPlayersTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('t_players', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tname');
            $table->string('name');
            $table->string('surname');
            $table->string('birthday');
            $table->string('name2');
            $table->string('surname2');
            $table->string('birthday2');
            $table->string('name3');
            $table->string('surname3');
            $table->string('birthday3');
            $table->string('name4');
            $table->string('surname4');
            $table->string('birthday4');
            $table->string('name5');
            $table->string('surname5');
            $table->string('birthday5');
            $table->string('responsive');
            $table->string('city');
            $table->string('country');
            $table->string('tel');
            $table->string('email');
            $table->string('subscribe');
            $table->string('group');
            $table->timestamps();

            $table->integer('tevent_id')->unsigned()->index()->nullable();
            $table->foreign('tevent_id')->references('id')->on('tevents');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('t_players');
    }
}
