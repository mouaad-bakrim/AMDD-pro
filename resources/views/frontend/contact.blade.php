@extends('frontend.layouts.app')
@section('title')
<title>Contact |AMDD</title>
@endsection
@section('content')
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Nous contacter</h2>
        <p>Vous pouvez nous trouver facilement grâce à ces différentes coordonnées là où vous vous trouvez dans le monde, vous êtes les bienvenus. </p>
      </div>
    </div><!-- End Breadcrumbs -->
<style>
  .text-center{
    
    padding: 10px;


  } 
  .text-center button{
    padding :10px;
    width: 20%;
    background-color: var(--primary);
    border-radius: 50px;
    color:white;
    font-size: medium;
    border : 1px solid var(--primary);
     transition: 1s all;
  }
  .text-center button:hover{
    background-color: white;
    color: var(--primary);

  }
  @media (max-width:500px){
    .text-center button{
      width: 50%;
    }
  }
  </style>
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div data-aos="fade-up">
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3324.8103637676722!2d-7.5767354!3d33.5583031!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda632d6d7dc86b9%3A0xa336adae0ee9cb9a!2sCentre%20culturel%20KAMAL%20ZEBDI!5e0!3m2!1sen!2sma!4v1684760501756!5m2!1sen!2sma" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>

      <div class="container" data-aos="fade-up">

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Adresse :</h4>
                <p>Avenue joulan<br>
                  Quartier Sbata<br>
                   Casablanca
                   Maroc</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>direction.amdd@gmail.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Téléphone :</h4>
                <p>+212 760122146</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">
           
            <form method="POST"  action="{{route('contact.mail')}}"  id="form"  >
              {{csrf_field()}}
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="nom" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" id="message" rows="5" placeholder="Message" required></textarea>
              </div>

              <div class="text-center"><button type="submit">Send Message</button></div>

              {{-- @if (session()->has('success'))
                  <div class="my-3">
                      <span class="text-white">
                          {{ session()->get('success') }}
                      </span>
                  </div>
              @endif --}}
             
            </form>

          </div>

        </div>

      </div>
      
    
    </section><!-- End Contact Section -->

</main><!-- End #main -->
<script defer>
  let form = document.getElementById('form');
  let nom= document.getElementById('nom');
  let email= document.getElementById('email');
  let subject= document.getElementById('subject');
  let message= document.getElementById('message');
  form.addEventListener("submit", (event)=>{
    // event.preventDefault();
      // let object = {
      //   'name' : nom.value;
      // 'email' :email.value;
      // 'subject' : subject.value;
      // 'message' : message.value;
      // } 
    console.log(subject.value);
    console.log(message.value);
    Swal.fire(
     
      'Merci de nous contacter!',
      'Votre message sera envoyé dès que possible',
      'success'
       )
  
      })
  </script>
@endsection