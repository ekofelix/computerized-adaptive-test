<?php

use App\Http\Controllers\ManagementTestController;
use App\Http\Controllers\TestController;
use Illuminate\Support\Facades\Route;

use App\Http\Livewire\{
    Crud,
    KelasesWire,
    TopicWire,
    UserWire,
    CompetencyWire,
    SubCompetencyWire,
    QuestionWire,
    QuestionOptionWire,
    ResultWire,
    TestWire,
};

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::get('students', Crud::class);
Route::get('kelas', KelasesWire::class)->name('kelas');
Route::get('topic', TopicWire::class)->name('topic');
Route::get('user', UserWire::class)->name('user');
Route::get('competency', CompetencyWire::class)->name('competency');
Route::get('sub-competency', SubCompetencyWire::class)->name('sub_competency');
Route::get('question', QuestionWire::class)->name('question');
Route::get('question-option', QuestionOptionWire::class)->name('question_option');
Route::post('kelas', [KelasesWire::class, 'import'])->name('livewire.kelas.import');
Route::post('topic', [TopicWire::class, 'import'])->name('livewire.topic.import');
Route::post('competency', [CompetencyWire::class, 'import'])->name('livewire.competency.import');
Route::post('sub-competency', [SubCompetencyWire::class, 'import'])->name('livewire.sub-competency.import');
Route::post('question', [QuestionWire::class, 'import'])->name('livewire.question.import');
Route::post('question-option', [QuestionOptionWire::class, 'import'])->name('livewire.question-option.import');
Route::post('user', [UserWire::class, 'import'])->name('livewire.user.import');
Route::resource('tests', TestWire::class);
Route::resource('result', ResultWire::class);

// add new fiture
Route::get('/management-test', [ManagementTestController::class, 'index'])->name('mangement_test');
Route::post('/management-test/{id}/update', [ManagementTestController::class, 'update'])->name('update_mangement_test');

Route::get('/test/time-out/{id}', [TestController::class, 'timeout'])->name('timeout');

Route::get('/test', [TestController::class, 'index'])->name('test');
Route::post('/test/{id}/{id_question}/{id_status}/finish', [TestController::class, 'finish'])->name('finish');
Route::get('/test/start', [TestController::class, 'start_test'])->name('start_test');
Route::get('/test/{id}/{level}/{pilihan_soal}/{count_number}/{id_status}/process', [TestController::class, 'test_page'])->name('test_page');
Route::post('/test/{id}/{id_question}/{count_number}/{id_status}/next', [TestController::class, 'next_test'])->name('next_test');

Route::get('/result', [TestController::class, 'result'])->name('result');
Route::get('/result/{id}/detail', [TestController::class, 'result_detail'])->name('result_detail');
