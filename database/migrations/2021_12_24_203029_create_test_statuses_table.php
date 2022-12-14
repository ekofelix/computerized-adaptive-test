<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestStatusesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('test_statuses', function (Blueprint $table) {
            $table->id();
            $table->string('id_test');
            $table->string('id_user');
            $table->string('level_test');
            $table->string('pilihan_soal');
            $table->string('count_number');
            $table->string('start_time');
            $table->string('end_time');
            $table->string('status');
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
        Schema::dropIfExists('test_statuses');
    }
}
