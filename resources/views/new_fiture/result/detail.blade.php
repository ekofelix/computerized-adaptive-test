@extends('new_fiture.layouts.master')

@section('nav-result')
active
@endsection

@section('content')
<div class="content-wrapper p-4">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h3>
                <b>Rincian Hasil</b>
            </h3>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/dashboard">Beranda</a></li>
                <li class="breadcrumb-item"><a href="{{ route('result') }}">Hasil</a></li>
                <li class="breadcrumb-item active">Rincian</li>
            </ol>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <div class="table-responsive">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td>Nama</td>
                            <td>:</td>
                            <td>{{ $data['test']->name }}</td>
                            <td></td>
                            <td>Umur / Jenis Kelamin</td>
                            <td>:</td>
                            <td>{{ $data['test']->age }}/{{ $data['test']->gender }}</td>
                        </tr>
                        <tr>
                            <td>NISN</td>
                            <td>:</td>
                            <td>{{ $data['test']->nisn }}</td>
                            <td></td>
                            <td>Sekolah</td>
                            <td>:</td>
                            <td>{{ $data['test']->school }}</td>
                        </tr>
                        <tr>
                            <td>Kelas</td>
                            <td>:</td>
                            <td>{{ $data['test']->kelas_id }}</td>
                            <td></td>
                            <td>Nilai</td>
                            <td>:</td>
                            @php
                                if(count($data['test_answer']) == 0){
                                    $score = 0;
                                }else{
                                    $score = ($data['test']->result/count($data['test_answer']))*100;
                                }
                            @endphp
                            <td><b>{{ number_format($score,2) }} points </b> ({{ $data['test']->result }}/{{ count($data['test_answer']) }})</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="width: 15%">Nomor Soal</th>
                            <th style="width: 20%">Soal</th>
                            <th style="width: 20%">Jawaban</th>
                            <th style="width: 5%" class="text-center">Kelas</th>
                            <th style="width: 5%" class="text-center">Tingkat Kesulitan</th>
                            <th style="width: 35%">Indikator</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (count($data['test_answer']) == 0)
                            <tr>
                                <td colspan="6" class="text-center">Kenapa kamu tidak mengerjakan test sama sekali !</td>
                            </tr>
                        @else
                            @foreach ($data['test_answer'] as $index => $x)
                                <tr>
                                    @php
                                        $question = \App\Models\Question::find($x->question_id);
                                        $questionOption = \App\Models\QuestionOption::find($x->option_id);
                                        $questionOptionAll = \App\Models\QuestionOption::where('question_id',$x->question_id)->get();
                                    @endphp
                                    <td>#Question {{ ++$index }}</td>
                                    <td>{{ $question->question_text }}</td>
                                    <td>
                                        @php
                                            $abjad = ['a).','b).','c).','d).','e).','f).','g).','h).']
                                        @endphp
                                        @foreach ($questionOptionAll as $index => $s)
                                            @php
                                                if($s->option == $questionOption->option && $s->correct == 1){
                                                    $label = '(Your Answer True)';
                                                    $style = 'color:green;font-weight:bold;';
                                                }elseif($s->option == $questionOption->option){
                                                    $label = '(Your Answer)';
                                                    $style = 'color:red;font-weight:bold;';
                                                }elseif($s->correct == 1){
                                                    $label = '(True)';
                                                    $style = 'color:green;font-weight:bold;';
                                                }else{
                                                    $label = '';
                                                    $style = 'color:black';
                                                }
                                            @endphp
                                            <p style="{{ $style }}">{{ $abjad[$index] }} {{ $s->option }} {{ $label }}</p>
                                        @endforeach
                                    </td>
                                    <td class="text-center">
                                        {{ $question->kelas_id }}
                                    </td>
                                    <td class="text-center">
                                        @if ($question->tingkat_kesulitan == 1)
                                            <i class="nav-icon fas fa-star"></i>
                                        @elseif ($question->tingkat_kesulitan == 2)
                                            <i class="nav-icon fas fa-star"></i><i class="nav-icon fas fa-star"></i>
                                        @else
                                            <i class="nav-icon fas fa-star"></i><i class="nav-icon fas fa-star"></i><i class="nav-icon fas fa-star"></i>
                                        @endif
                                    </td>
                                    <td>
                                        @php
                                            $topic = \App\Models\Topic::find($question->topic_id);
                                            $competency = \App\Models\Competency::find($question->competency_id);
                                            $sub_competency = \App\Models\SubCompetency::find($question->sub_competency_id);
                                        @endphp
                                        <p>
                                            <b>Topic :</b> <br>
                                            {{ $topic->title }}
                                            <br><br>
                                            <b>Competency :</b> <br>
                                            {{ $competency->title }}
                                            <br><br>
                                            <b>Sub-Competency :</b> <br>
                                            {{ $sub_competency->title }}
                                        </p>
                                    </td>

                                </tr>
                            @endforeach
                        @endif
                    </tbody>
                </table>
                <a href="{{ route('result') }}" class="btn btn-primary btn-sm">
                    Kembali
                </a>
            </div>
        </div>
    </div>
</div>
@endsection
