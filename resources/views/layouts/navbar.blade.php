<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <x-jet-dropdown-link href="{{ route('logout') }}"
                              onclick="event.preventDefault();
                                      document.getElementById('logout-form').submit();">
            {{ __('Keluar') }}
        </x-jet-dropdown-link>
        <form method="POST" id="logout-form" action="{{ route('logout') }}">
            @csrf
        </form>
      </li>
    </ul>
  </nav>