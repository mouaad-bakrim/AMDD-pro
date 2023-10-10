<!-- ======= Header ======= -->
<header id="header" class="fixed-top" >
    <div class="container d-flex align-items-center">
      <h6 class="logo me-auto" >
          <a href="{{ route('frontend.home') }}" class="logo-img me-auto"><img src="{{asset('frontend/img/logo-amdd.png')}}" alt="" class="logo1 img-fluid" ></a>
      </h6>
      <style>
        .logo1{
          width: 150%;
        }
      </style>
      <!-- Uncomment below if you prefer to use an image logo -->
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>

          <li><a class="{{ request()->is('/') ? 'active' : '' }}" href="{{ route('frontend.home') }}">Acceuil</a></li>
          <li><a class="{{ request()->is('association') ? 'active' : '' }}" href="{{ route('frontend.association') }}">Association AMDD</a></li>
          {{-- <li><a class="{{ request()->is('presentation') ? 'active' : '' }}" href="{{ route('frontend.presentation') }}">Présentation</a></li> --}}
          <li  class="dropdown {{ request()->is('presentation') ? 'active' : '' }}"><a href="{{ route('frontend.presentation') }}" >Présentation</a>
            <ul>
              <li><a href="#planning">Planning</a></li>
              <li><a href="#organigramme">Notre organigramme</a></li>
              <li><a href="#comite">Comité et Objectifs</a></li>
              <li><a href="#partenaire">Nos partenaires</a></li>
              <li><a href="#corps">Corps technique et professionnel et associatif</a></li>
            </ul>
          </li>
          <li><a class="{{ request()->is('events') ? 'active' : '' }}" href="{{ route('frontend.events') }}">Evénements</a></li>
          <li><a class="{{ request()->is('contact') ? 'active' : '' }}" href="{{ route('frontend.contact') }}">Contact</a></li>
          <li>      <a href="{{route('frontend.adhesion')}}">Adhesion</a>
          </li>


        </ul>
        {{-- <li class="{{ request()->is('/') ? 'active' : '' }}"><a href="{{ route('frontend.home') }}" ><span class="get-started-btn">Acceuil</span></a>
          <ul>
            <li><a href="{{route('frontend.adhesion.stage')}}">Stage</a></li>
            <li><a href="{{route('frontend.adhesion.preinscription')}}">Membre Association préinscription</a></li>
            <li><a href="{{route('frontend.adhesion.formation')}}">Formation</a></li>
            <li><a href="{{route('frontend.adhesion.paiment')}}">Adhésion avec paiment définitive</a></li>
          </ul>
        </li>  --}}
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      {{-- <a href="courses.html" class="get-started-btn">Adhesion</a> --}}

      @guest
      @if (Route::has('login'))
      <a href="{{ route('login') }}" class="get-started-btn">login</a>
      @endif

      @if (Route::has('register'))
              <a class="get-started-btn" href="{{ route('register') }}">{{ __('Register') }}</a>
      @endif
  @else
      <li class="nav-item dropdown">
          <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
              {{ Auth::user()->name }}
          </a>

          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="{{ route('logout') }}"
                 onclick="event.preventDefault();
                               document.getElementById('logout-form').submit();">
                  {{ __('Logout') }}
              </a>

              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                  @csrf
              </form>
          </div>
      </li>
  @endguest

    </div>
</header><!-- End Header -->
@include('frontend.layouts.partials.socialmedia')
