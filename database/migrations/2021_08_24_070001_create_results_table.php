<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('results', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->references('id')->on('users');
            // $table->foreignId('competency_id')->references('id')->on('competencies');
            $table->foreignId('question_id')->references('id')->on('questions');
            $table->string('correct')->nullable();
            $table->dateTime('date')->nullable();
            // $table->float('b')->nullable();
            // $table->tinyInteger('skor_jawaban')->nullable();
            // $table->float('teta_awal')->nullable();
            // $table->float('teta_akhir')->nullable();
            // $table->float('p')->nullable();
            // $table->float('q')->nullable();
            // $table->float('i')->nullable();
            // $table->float('se')->nullable();
            // $table->float('selisih_se')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->index(['deleted_at']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('results');
    }
}
