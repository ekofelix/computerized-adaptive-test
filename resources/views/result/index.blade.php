<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/assets/plugins/fontawesome-free/css/all.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased bg-light">
        @include('layouts.navbar')
        <x-jet-banner />
        {{-- @livewire('navigation-menu') --}}
        @include('layouts.sidebar')
        <!-- Page Heading -->
        <header >
            <div class="container">
                @include('layouts.header')
            </div>
        </header>

        <!-- Page Content -->
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
                        <li class="breadcrumb-item active">Results</li>
                      </ol>
                    </div><!-- /.col -->
                  </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
              <!-- /.content-header -->
            <div class="card">
                <div class="card-header">
                    <h3 class="fw-bold">Results</h3> 
                </div>
                <div class="card-body">
                    <table id="example1" class="table table-bordered table-striped">
                        @if(Auth::user()->hasrole('admin'))
                        <thead>
                            <tr>
                                <th class="text-center">No.</th>
                                <th class="text-center">Name</th>
                                <th class="text-center">Created at</th>
                                <th class="text-center">Result</th>
                                <th class="text-center">Detail</th>
                                {{-- <th class="text-center">Action</th> --}}
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($results as $item)
                            <tr>
                                <td class="text-center">{{ $item->id }}</td>
                                <td class="text-center">{{ $item->user_id }}</td>
                                <td class="text-center">{{ $item->created_at }}</td>
                                <td class="text-center">{{ $item->result }}</td>
                                <td class="text-center"><a href="{{ route('result.show',$item->id) }}" class="btn btn-primary">Detail</a></td>
                                
                                {{-- <td class="text-center">
                                    <a wire:click="edit({{ $item->id }})"
                                        class="btn btn-warning ml-1">Edit</a>
                                    <a wire:click="delete({{ $item->id }})"
                                        class="btn btn-danger ml-1">Delete</a>
                                </td> --}}
                            </tr>
                            @endforeach
                        </tfoot>
                        @endif
                    </table>
                </div>
            </div>
        </div>
        

        @include('layouts.footer')
        @include('layouts.control-sidebar')
        @include('layouts.js')

        @stack('scripts')
    </body>
</html>
