<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ename');
            $table->string('edesc');
            $table->string('egroup1');
            $table->string('egroup2');
            $table->string('egroup3');
            $table->string('egroup4');
            $table->string('egroup5');
            $table->string('egroup6');
            $table->string('egroup7');
            $table->string('egroup8');
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
        Schema::dropIfExists('events');
    }
}
