<x-slot name="header">
    {{-- <h2 class="text-center">Laravel 8 Livewire CRUD Demo</h2> --}}
</x-slot>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/dashboard">Beranda</a></li>
                <li class="breadcrumb-item active">Topik</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
      <!-- /.content-header -->
    <div class="card">
        <div class="card-header">
            <h3 class="fw-bold">Topik</h3> 
            <button wire:click="create()"
            class="btn btn-success btn-md float-right text-white ml-1"class="btn btn-success btn-md float-right text-white ml-1">
               Tambah
            </button>
            @if($isModalOpen)
            @include('livewire.topic.create')
            @endif
            <button wire:click="export()" class="btn btn-danger btn-md float-right text-white ml-1" target="_blank">Export</button>
            <a class="btn btn-primary btn-md float-right text-white ml-1" data-toggle="modal" data-target="#importExcel">
                Import
            </a>
       
          <!-- Import Excel -->
            <div class="modal fade" id="importExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                <form method="post" action="{{route('livewire.topic.import')}}" enctype="multipart/form-data">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Import Excel</h5>
                    </div>
                    <div class="modal-body">
        
                        {{ csrf_field() }}
        
                        <label>Pilih file excel</label>
                        <div class="form-group">
                        <input type="file" name="import_file" required="required">
                        </div>
        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Import</button>
                    </div>
                    </div>
                </form>
                </div>
            </div>
            
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-1">
                    <select wire:model="perPage" class="form-control bg-light float-right">
                        <option>10</option>
                        <option>25</option>
                        <option>50</option>
                        <option>100</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <select wire:model="orderBy" class="form-control bg-light float-right">
                        <option value="id">ID</option>
                        <option value="kelas_id">Kelas</option>
                        <option value="title">Topik</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <select wire:model="orderAsc" class="form-control bg-light float-right">
                        <option value="1">Ascending</option>
                        <option value="0">Descending</option>
                    </select>
                </div>
                <div class="col-md-9">
                    <div class="form-group float-right">
                        <input type="text" class="form-control bg-light"
                        placeholder="Cari..." wire:model="search">
                    </div>
                </div>
            </div>
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">No.</th>
                        <th class="text-center">Kelas</th>
                        <th class="text-center">Topik</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($topic as $item)
                    <tr>
                        <td class="text-center">{{ $item->id }}</td>
                        <td class="text-center">{{ $item->kelas->title }}</td>
                        <td class="text-center">{{ $item->title }}</td>
                        <td class="text-center">
                            <a wire:click="edit({{ $item->id }})"
                                class="btn btn-warning ml-1">Edit</a>
                            <a wire:click="delete({{ $item->id }})"
                                class="btn btn-danger ml-1">Hapus</a>
                        </td>
                    </tr>
                    @endforeach
                </tfoot>
            </table>
            {!!$topic->links()!!}
        </div>
    </div>
</div>