@extends('frontend.layouts.app')
@section('title')
<title>Association |AMDD</title>
@endsection
@section('content')
  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Association Maroccaine De Développement Digital (AMDD)</h2>
        <p>L’association AMDD est sans but lucratif, créé en 2022 et domiciliée à Ville . Les fonds de l’association proviennent    essentiellement des cotisations annuelles des membres et des dons des partenaires et bienfaiteurs. </p>
      </div>
    </div><!-- End Breadcrumbs -->
  <style>
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
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">
        <div class="section-title">    
          <p>L’ association AMDD a pour vocation</p>
        </div>
                <ul class="list-group">
                    <li class="list-group-item">Contribuer, par tous les moyens, au développement rapide et harmonieux de la
                        formation et à l’amélioration de l’image du Société Civile AMDD.
                    </li>
                    <li class="list-group-item">
                        Veiller aux intérêts professionnels des étudiants en favorisant des stages au Maroc et à
                        l’étranger pour les étudiants et les lauréats.
                    </li>
                    <li class="list-group-item">
                    Organiser des réunions, conférences, stages, séminaires d'actualisation des
                    connaissances.
                    </li>
                    <li class="list-group-item">
                    Elaborer un bulletin d’information semestriel, qui présente les temps forts de
                    l’Association, les événements auxquels elle participe, les nouveaux Lauréats.
                    </li>
                    <li class="list-group-item">
                    Resserrer les liens d’amitié et de solidarité entre les anciens lauréats et les nouvelles
                    Promotions.
                    </li>
                    <li class="list-group-item">
                    Animer une vie associative pour les lauréats AMDD.
                    </li>
                    <li class="list-group-item">
                    Développer un pôle de compétence Informatique autour de l’expérience des anciens lauréats.  
                    </li>
                    <li class="list-group-item">
                    Impliquer les professionnels du monde de la Digital et Démarche Informatique.
                    </li>  
                </ul>
              <div>
                <br></div> 
                <div class="section-title">    
                  <p>Perspectives  Association AMDD</p>
                </div> 
                <ul class="list-group">
                    <li class="list-group-item">
                           Projet de transition du statut <b>Association AMDD </b>à la <b>Fondation AMDD</b> 
                    </li>
                </ul>
      </div>
  </section><!-- End About Section -->
    <!-- ====== membre association section ======== -->
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
        @foreach($users as $user)
        <div class="col-lg-3 mb-4">
          <!-- Row -->
          <div class="row">
            <div class="col-md-12">
              <div class="row align-items-center">
                <div class="col-md-4">
                  <img src="{{ $user->image ? asset('frontend/img/' . $user->image) : asset('frontend/img/inknown.png') }}" alt="wrapkit" class="img-fluid rounded-circle" />
                </div>
                <div class="col-md-8">
                  <div class="pt-2">
                    <h5 class="mt-4 font-weight-medium mb-0">{{$user->fname}} {{$user->lname}}</h5>
                    <h6 class="subtitle mb-3">{{$user->profession}}</h6>
                    <p>{{$user->ville}}</p>
                  </div>
                </div>
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
  <!-- ====== end membre association section ======== -->
    <!-- ======= activities Section ======= -->
  <section id="courses" class="courses">
      <div class="container" data-aos="fade-up">
        <div class="container" data-aos="fade-up">
          <div class="section-title"> 
            <p>Activités Association AMDD </p>
          </div>
            <div class="row" data-aos="zoom-in" data-aos-delay="100">
              @foreach($activities as $activity)
              <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                <div class="course-item">
                  <img src="{{asset('frontend/img/'. $activity->image)}}" class="img-fluid" alt="...">
                  <div class="course-content">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <h4>{{$activity->start_date}}</h4>
                    </div>
                    @php
                    $link = json_decode($activity->link);
                    @endphp
                    <h3><a href="{{ $link[0] }}">{{$activity->title}}</a></h3>
                    <p>{{$activity->description}}</p>
                  
                  </div>
                </div>
              </div>
              @endforeach
        </div>
      </div>
    </section><!-- End activities Section -->

  </main><!-- End #main -->
@endsection