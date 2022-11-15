@extends('new_fiture.layouts.master')

@section('nav-test-setting')
active
@endsection

@section('content')
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/dashboard">Beranda</a></li>
                <li class="breadcrumb-item active">Manajemen Tes</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <script>
        function remove(){
            $('.alert').remove();
        }
    </script>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            {{ $message }}
            <span>
                <a class="text-decoration-none" onclick="remove()" style="float: right">x</a>
            </span>
        </div>
    @endif
    @if ($message = Session::get('error'))
        <div class="alert alert-danger">
            {{ $message }}
            <span>
                <a class="text-decoration-none" onclick="remove()" style="float: right">x</a>
            </span>
        </div>
    @endif
    <div class="card">
        <div class="card-header">
            <h3 class="fw-bold">Manajemen Tes</h3>
        </div>
        <div class="card-body">
            <form action="{{ route('update_mangement_test',['id'=>$data->id]) }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-12 col-lg-6 col-md-6">
                        <div class="mb-3">
                            <label for="total_qty" class="form-label">Jumlah Soal Tes</label>
                            @php
                                $data_soal = [
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',1)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',2)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',3)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',4)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',5)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',1)->where('kelas_id',6)->count(),

                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',1)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',2)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',3)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',4)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',5)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',2)->where('kelas_id',6)->count(),

                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',1)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',2)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',3)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',4)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',5)->count(),
                                    \App\Models\Question::where('tingkat_kesulitan',3)->where('kelas_id',6)->count(),
                                ];
                            @endphp
                            <input type="number" value="{{ $data->qty_question }}" name="qty_question" min="1" placeholder="0" class="form-control" id="total_qty">
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-md-6">
                        <div class="mb-3">
                            <label for="time_estimation" class="form-label">Durasi Waktu (menit)</label>
                            <input type="number" value="{{ $data->time_estimation }}" name="time_estimation" min="1" placeholder="0" class="form-control" id="time_estimation">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </form>
        </div>
    </div>
</div>
@endsection
