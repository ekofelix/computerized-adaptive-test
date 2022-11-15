@extends('new_fiture.layouts.master')

@section('nav-test')
active
@endsection

@section('content')
<div class="content-wrapper p-4">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h3>
                <b>Mulai Tes</b>
            </h3>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/dashboard">Beranda</a></li>
                <li class="breadcrumb-item active">Mulai Tes</li>
            </ol>
        </div>
    </div>
    <div class="card w-sm-100 w-lg-50  w-md-60">
        <div class="card-body">
            <h3 class="mb-4"><b>Apa kamu siap untuk memulai tes sekarang ?</b></h3>
            <p>
                <b>Rincian Tes</b><br>
                Jumlah Pertanyaan &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;: {{ $data->qty_question }} Soal <br>
                Estimasi Waktu &nbsp; &nbsp;&nbsp; &nbsp;: {{ $data->time_estimation }} menit
            </p>
            @php
                $status = \App\Models\TestStatus::where('id_user',Auth::user()->id)
                    ->get();
                if(count($status) > 0){
                    $status = $status[0];
                }else{
                    $status = null;
                }
            @endphp
            @if ($status == null)
                <a href="{{ route('start_test') }}" class="btn btn-success">
                    Mulai Tes<i class="nav-icon fas fa-arrow-right ml-3" style="font-size: 13px"></i>
                </a>
            @else
                @if ($status->status == 'progres')
                    <a href="{{ route('test_page', ['id' => $status->id_test, 'level' => $status->level_test, 'pilihan_soal' => $status->pilihan_soal, 'count_number' => $status->count_number, 'id_status' => $status->id]) }}" class="btn btn-warning">
                        Lanjutkan Tes<i class="nav-icon fas fa-arrow-right ml-3" style="font-size: 13px"></i>
                    </a>
                @else
                    <a href="{{ route('start_test') }}" class="btn btn-success">
                        Mulai Tes<i class="nav-icon fas fa-arrow-right ml-3" style="font-size: 13px"></i>
                    </a>
                @endif
            @endif
        </div>
    </div>
</div>
@endsection
