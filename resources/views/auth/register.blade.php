<!DOCTYPE html>
<html lang="zxx" class="js">
<head>
    <base href="../../../">
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description"
          content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="assets/images/favicon.png">
    <!-- Page Title  -->
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="assets/css/dashlite.css">
    <link id="skin-default" rel="stylesheet" href="assets/css/theme.css">
    <title>Register | AMDD Admin Template</title>
</head>
<body class="nk-body npc-default pg-auth">
<div class="nk-app-root">
    <div class="nk-main ">
        <div class="nk-wrap nk-wrap-nosidebar">
            <div class="nk-content ">
                <div class="nk-block nk-block-middle nk-auth-body wide-xs">
                    <div class="brand-logo pb-4 text-center">
                        <a href="html/index.html" class="logo-link">
                            <img class="logo-light logo-img logo-img-lg" src="{{ asset('assets/images/logo.png')}}"
                                  alt="logo">
                            <img class="logo-dark logo-img logo-img-lg" src="{{ asset('assets/images/logo-dark.png ')}}"
                                alt="logo-dark">
                        </a>
                    </div>
                    <div class="card card-bordered">
                        <div class="card-inner card-inner-lg">
                            <div class="nk-block-head">
                                <div class="nk-block-head-content">
                                    <h4 class="nk-block-title">Register</h4>
                                    <div class="nk-block-des">
                                        <p>Create New Admin AMDD Account</p>
                                    </div>
                                </div>
                            </div>
                            <form method="POST" action="{{ route('register') }}">
                                @csrf

                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-label" for="status">fname </label>
                                        <input id="name" type="text"
                                               class="form-control @error('name') is-invalid @enderror" name="name"
                                               value="{{ old('name') }}" required autocomplete="name" autofocus
                                               placeholder="Enter your name">

                                        @error('fname')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-label" for="status">lname </label>
                                        <input id="lname" type="text"
                                               class="form-control @error('lname') is-invalid @enderror" name="lname"
                                               value="{{ old('lname') }}" required autocomplete="name" autofocus
                                               placeholder="Enter your lname">

                                        @error('lname')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-label" for="status">gender </label>
                                        <select id="gender" class="form-control @error('gender') is-invalid @enderror"
                                                name="gender" required>
                                            <option value="male" @if(old('gender') == 'male') selected @endif>Male
                                            </option>
                                            <option value="female" @if(old('gender') == 'female') selected @endif>Female
                                            </option>
                                        </select>

                                        @error('gender')
                                        <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                         </span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-label" for="status">status </label>
                                        <input id="status" type="text"
                                               class="form-control @error('status') is-invalid @enderror" name="status"
                                               value="{{ old('status') }}" required autocomplete="status" autofocus
                                               placeholder="Enter your status">

                                        @error('status')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="status">Email </label>
                                    <input id="email" type="email"
                                           class="form-control @error('email') is-invalid @enderror" name="email"
                                           value="{{ old('email') }}" required autocomplete="email"
                                           placeholder="Enter your Email">

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>


                                <div class="form-group">
                                    <label class="form-label" for="status">password </label>
                                    <input id="password" type="password"
                                           class="form-control @error('password') is-invalid @enderror" name="password"
                                           required autocomplete="new-password" placeholder="Enter your password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="status">password_confirmation </label>
                                    <input id="password-confirm" type="password" class="form-control"
                                           name="password_confirmation" required autocomplete="new-password"
                                           placeholder="Enter your password_confirmation">
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-lg btn-primary btn-block">

                                        <a onclick="redirectToChatify()"><strong>Register</strong></a>

                                    </button>


                                </div>
                            </form>
                            <div class="form-note-s2 text-center pt-4"> Already have an account? <a
                                    href=""><strong>Sign in instead</strong></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="nk-footer nk-auth-footer-full">
                    <div class="container wide-lg">
                        <div class="row g-3">
                            <div class="col-lg-6 order-lg-last">
                                <ul class="nav nav-sm justify-content-center justify-content-lg-end">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Terms & Condition</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Privacy Policy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Help</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <div class="nk-block-content text-center text-lg-left">
                                    <p class="text-soft">&copy; 2023 AMDD. All Rights Reserved.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript -->
<script src="assets/js/bundle.js"></script>
<script src="assets/js/scripts.js"></script>
<script>
    function redirectToChatify() {
        // Rediriger vers l'URL souhaitée
        window.location.href = "http://127.0.0.1:8000/chatify/";
    }
</script>


</body>

</html>

