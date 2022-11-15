<x-app-layout>
    <x-slot name="header">
    </x-slot>
    <div class="content-wrapper p-4">
        <div class="row">
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Kelas</h4>
                </div>
                <div class="card-body text-center">
                    @php
                        $kelas = \App\Models\Kelases::count();
                    @endphp
                    <h6>{{$kelas}}</h6>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Topik</h4>
                </div>
                <div class="card-body text-center">
                    <h6>17</h6>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Kompetensi</h4>
                </div>
                <div class="card-body text-center">
                    <h6>16</h6>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Sub Kompetensi</h4>
                </div>
                <div class="card-body text-center">
                    <h6>16</h6>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Soal</h4>
                </div>
                <div class="card-body text-center">
                    <h6>977</h6>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Pilihan Soal</h4>
                </div>
                <div class="card-body text-center">
                    <h6>3908</h6>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-header text-center">
                    <h4>Jumlah Pengguna</h4>
                </div>
                <div class="card-body text-center">
                    <h6>22</h6>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>