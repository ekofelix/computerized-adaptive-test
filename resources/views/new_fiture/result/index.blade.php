@extends('new_fiture.layouts.master')

@section('nav-result')
active
@endsection

@section('content')
<div class="content-wrapper p-4">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h3>
                <b>Hasil</b>
            </h3>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/dashboard">Beranda</a></li>
                <li class="breadcrumb-item active">Hasil</li>
            </ol>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-8"></div>
                <div class="col-4">
                    <form action="">
                        <input type="text" name="search" placeholder="Cari..." class="form-control">
                    </form>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="width: 50px">No</th>
                            <th>Nama Peserta</th>
                            <th>Hasil</th>
                            <th>Tanggal tes</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $index => $x)
                            <tr>
                                <td>{{ ++$index }}</td>
                                <td>{{ $x->name }}</td>
                                <td>
                                    @php
                                        $test_answer = \App\Models\TestAnswer::where('test_id', $x->id)->count();
                                    @endphp
                                    {{ $x->result }}/{{ $test_answer }}
                                </td>
                                <td>{{ date('D, d F y - H:i', strtotime($x->created_at))}}</td>
                                <td>
                                    <a href="{{ route('result_detail',['id'=>$x->id]) }}" class="btn btn-primary btn-sm">
                                        Details
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ $data->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
