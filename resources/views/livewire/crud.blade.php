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
                <li class="breadcrumb-item"><a href="/dashboard">Dashboard</a></li>
                <li class="breadcrumb-item active">Student</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
      <!-- /.content-header -->
    <div class="card">
        <div class="card-header">
            <h3 class="fw-bold">Student</h3> 
            <button wire:click="create()"
            class="btn btn-success btn-md float-right text-white ml-1"class="btn btn-success btn-md float-right text-white ml-1">
                Add
            </button>
            @if($isModalOpen)
            @include('livewire.create')
            @endif
            
        </div>
        <div class="card-body">
            <div class="col-md-12">
                <div class="form-group float-right">
                    <input type="text" class="form-control bg-light"
                    placeholder="search" wire:model="search">
                </div>
                {{-- <select wire:model="orderBy" class="form-control bg-light float-right">
                    <option value="id">ID</option>
                    <option value="name">Name</option>
                    <option value="email">Email</option>
                    <option value="mobile">Mobile</option>
                </select>
                <select wire:model="orderAsc" class="form-control bg-light float-right">
                    <option value="1">Ascending</option>
                    <option value="0">Descending</option>
                </select> --}}
                {{-- <select wire:model="perPage" class="form-control bg-light float-right">
                    <option>10</option>
                    <option>25</option>
                    <option>50</option>
                    <option>100</option>
                </select> --}}
            </div>
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th class="text-center">No.</th>
                        <th class="text-center">Name</th>
                        <th class="text-center">Email</th>
                        <th class="text-center">Mobile</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($student as $item)
                    <tr>
                        <td class="text-center">{{ $loop->iteration }}</td>
                        <td class="text-center">{{ $item->name }}</td>
                        <td class="text-center">{{ $item->email}}</td>
                        <td class="text-center">{{ $item->mobile}}</td>
                        <td class="text-center">
                            <a wire:click="edit({{ $item->id }})"
                                class="btn btn-warning ml-1">Edit</a>
                            <a wire:click="delete({{ $item->id }})"
                                class="btn btn-danger ml-1">Delete</a>
                        </td>
                    </tr>
                    @endforeach
                </tfoot>
            </table>
            {!!$student->links()!!}
        </div>
    </div>
</div>