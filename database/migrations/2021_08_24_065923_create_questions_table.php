<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('kelas_id')->references('id')->on('kelases');
            $table->foreignId('topic_id')->references('id')->on('topics');
            $table->foreignId('competency_id')->references('id')->on('competencies');
            $table->foreignId('sub_competency_id')->references('id')->on('sub_competencies');
            $table->text('question_text');
            $table->text('answer_explanation')->nullable();
            $table->string('more_info_link')->nullable();
            $table->float('tingkat_kesulitan');
            // $table->string('option1');
            // $table->string('option2');
            // $table->string('option3');
            // $table->string('option4');
            // $table->string('correct')->nullable();
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
        Schema::dropIfExists('questions');
    }
}
