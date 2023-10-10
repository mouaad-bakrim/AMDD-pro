@extends('frontend.layouts.app')
@section('title')
<title>Acceuil |AMDD</title>
@endsection
@section('content')
  <!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
      <h1>Adhérer aujourd'hui,<br>Diriger demain</h1>
      <h2>Un corps professoral et technique au service de société civile de jeunes</h2>
      <a href="{{route('frontend.adhesion')}}" class="btn-get-started">Adhésion</a>
    </div>
</section><!-- End Hero -->
<main id="main">
  <section id="about" class="about">
    <video  width="100%" height="100%" controls loop muted autoplay>
      <source src="{{asset('frontend/videos/presentation.mp4')}}" type="video/mp4">
  </section>
  <!-- End About Section -->
  <style>
    .card-img-top {
      width: 100%;
      height: 100%;
      object-fit: cover;
  }
  @import url(//fonts.googleapis.com/css?family=Montserrat:300,500);
.team4 {
  font-family: "Montserrat", sans-serif;
	color: #8d97ad;
  font-weight: 300;
}

.team4 h1, .team4 h2, .team4 h3, .team4 h4, .team4 h5, .team4 h6 {
  color: #3e4555;
}

.team4 .font-weight-medium {
	font-weight: 500;
}

.team4 h5 {
    line-height: 22px;
    font-size: 18px;
}

.team4 .subtitle {
    color: #8d97ad;
    line-height: 24px;
		font-size: 13px;
}

.team4 ul li a {
  color: #8d97ad;
  padding-right: 15px;
  -webkit-transition: 0.1s ease-in;
  -o-transition: 0.1s ease-in;
  transition: 0.1s ease-in;
}

.team4 ul li a:hover {
  -webkit-transform: translate3d(0px, -5px, 0px);
  transform: translate3d(0px, -5px, 0px);
	color: #316ce8;
}
    </style>

    <!-- ======= Trainers Section ======= -->
<section id="trainers" class="trainers">
          <div class="py-5 team4">
            <div class="container">
              <div class="row justify-content-center mb-4">
                <div class="section-title">
                  <h2>Équipe</h2>
                  <p>Staff Association Marocaine de Développement Digital (AMDD)</p>
                </div>
              </div>
              <div class="row">
                <!-- column  -->
                @foreach($equipes as $equipe)
                <div class="col-lg-4 col-md-6 mb-6">
                  <!-- Row -->
                  <div class="row">
                    <div class="col-md-12">
                      <img src="{{asset('frontend/img/trainers/'. $equipe->image)}}" alt="wrapkit" style="width: 400px; aspect-ratio:1/1;" class="img-fluid rounded-circle" />
                    </div>
                    <div class="col-md-12 text-center">
                      <div class="pt-2">
                        <h5 class="mt-4 font-weight-medium mb-0">{{$equipe->nom}}</h5>
                        <h6 class="subtitle mb-3">{{$equipe->post}}</h6>
                        <p>{{$equipe->description}}</p>
                        @php
                        $links = json_decode($equipe->links);
                        @endphp
                        <div class="social">
                          @php
                          $links = json_decode($equipe->links);
                          @endphp
                          <a href="{{ $links[0] }}"><i class="bi bi-gmail"></i></a>
                          <a href=""><i class="bi bi-facebook"></i></a>
                          <a href=""><i class="bi bi-instagram"></i></a>
                          <a href=""><i class="bi bi-linkedin"></i></a>   
                        </div>
                        {{-- Remaining code --}}
                      </div>
                    </div>
                  </div>
                  <!-- Row -->
                </div>
                
                @endforeach
                
                <!-- column  -->
              </div>
            </div>
          </div>
</section>

  <!-- End Trainers Section -->
    <!-- ======= Counts Section ======= -->
  <section id="counts" class="counts section-bg">
      <div class="container">
        <div class="row counters">
          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="{{$members}}" data-purecounter-duration="1" class="purecounter"></span>
            <p>Membres</p>
          </div>
  
          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="{{$evenements}}" data-purecounter-duration="1" class="purecounter"></span>
            <p>Evénements</p>
          </div>
  
          <div class="col-lg-3 col-6 text-center">
            <span data-purecounter-start="0" data-purecounter-end="{{$activities}}" data-purecounter-duration="1" class="purecounter"></span>
            <p>Activités</p>
          </div>
         
          <div class="col-lg-3 col-6 text-center">
            @php
              $totalVisitors = 0;
              foreach ($visitors as $visitor) {
                $totalVisitors += $visitor->total;
              }
            @endphp
            <span data-purecounter-start="0" data-purecounter-end="{{ $totalVisitors }}" data-purecounter-duration="1" class="purecounter"></span>
            <p>Visiteurs</p>
          </div>
          
        </div>
  
      </div>
   
    </section><!-- End Counts Section -->
        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials">
          <div class="container" data-aos="fade-up">
    
            <div class="section-title">
              <h2>Témoignages</h2>
              <p>QU'EST CE QU'ILS DISENT</p>
            </div>
            <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
              <div class="swiper-wrapper">
               @foreach ($testemonials as $testemonial)
                <div class="swiper-slide">
                  <div class="testimonial-wrap">
                    <div class="testimonial-item">
                      <img src="{{asset('frontend/img/testimonials/' .$testemonial->image)}}" class="testimonial-img" alt="">
                      <h3>{{$testemonial->nom}}</h3>
                      <h4>{{$testemonial->profession}}</h4>
                      <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        {{$testemonial->message}}
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                      </p>
                    </div>
                  </div>
                </div><!-- End testimonial item -->
                @endforeach
              </div>
              <div class="swiper-pagination"></div>
            </div>
    
          </div>
        </section><!-- End Testimonials Section -->
</main><!-- End #main -->
@endsection