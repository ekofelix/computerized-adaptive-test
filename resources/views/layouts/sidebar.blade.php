<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
<!-- Brand Logo -->
<a href="#" class="brand-link">
    <img src="/assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">CAT</span>
</a>

<!-- Sidebar -->
<div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
    <div class="image">
        <img src="/assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
    </div>
    <div class="info">
        <a href="#" class="d-block">{{auth()->user()->name}}</a>
    </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline">
    <div class="input-group" data-widget="sidebar-search">
        <input class="form-control form-control-sidebar" type="search" placeholder="Cari..." aria-label="Search">
        <div class="input-group-append">
        <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
        </button>
        </div>
    </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
        <li class="nav-item">
            <a href="/dashboard" class="nav-link {{ request()->routeIs('dashboard') ? 'active' : null}}">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
               Beranda
                </p>
        </a>
        </li>
        {{-- <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="../../index.html" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Dashboard v1</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="../../index2.html" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Dashboard v2</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="../../index3.html" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Dashboard v3</p>
                    </a>
                </li>
            </ul>
        </li> --}}
        @hasrole('admin')
        <li class="nav-item">
        <a href="/kelas" class="nav-link {{ request()->routeIs('kelas') ? 'active' : null}}">
            <i class="nav-icon fas fa-school"></i>
            <p>
            Kelas
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/topic" class="nav-link {{ request()->routeIs('topic') ? 'active' : null}}">
            <i class="nav-icon fas fa-heading"></i>
            <p>
            Topik
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/competency" class="nav-link {{ request()->routeIs('competency') ? 'active' : null}}">
            <i class="nav-icon fas fa-brain"></i>
            <p>
            Kompetensi
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/sub-competency" class="nav-link {{ request()->routeIs('sub_competency') ? 'active' : null}}">
            <i class="nav-icon fas fa-code-branch"></i>
            <p>
            Sub Kompetensi
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/question" class="nav-link {{ request()->routeIs('question') ? 'active' : null}}">
            <i class="nav-icon fas fa-question-circle"></i>
            <p>
            Soal
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/question-option" class="nav-link {{ request()->routeIs('question_option') ? 'active' : null}}">
            <i class="nav-icon fas fa-list-ol"></i>
            <p>
            Pilihan Soal
            </p>
        </a>
        </li>
        <li class="nav-item">
        <a href="/user" class="nav-link {{ request()->routeIs('user') ? 'active' : null}}">
            <i class="nav-icon fas fa-user-friends"></i>
            <p>
            Manajemen Pengguna
            </p>
        </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('mangement_test') }}" class="nav-link @yield('nav-test-setting')">
                <i class="nav-icon fas fa-cogs"></i>
                <p>
                Manajemen Tes
                </p>
            </a>
        </li>
        {{-- <li class="nav-item">
        <a href="/result" class="nav-link {{ request()->routeIs('result.index') ? 'active' : null}}">
            <i class="nav-icon fas fa-th"></i>
            <p>
            Result
            </p>
        </a>
        </li> --}}
        <li class="nav-item">
            <a href="{{ route('result') }}" class="nav-link @yield('nav-result')">
                <i class="nav-icon fas fa-poll"></i>
                <p>
                    Hasil
                </p>
            </a>
        </li>
        @endhasrole
        {{-- <li class="nav-item">
        <a href="/tests" class="nav-link {{ request()->routeIs('tests.index') ? 'active' : null}}">
            <i class="nav-icon fas fa-th"></i>
            <p>
            Test
            </p>
        </a>
        </li> --}}
        <li class="nav-item">
            <a href="{{ route('test') }}" class="nav-link @yield('nav-test')">
                <i class="nav-icon fas fa-question"></i>
                <p>
                    Tes
                </p>
            </a>
        </li>
    </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>
