<!DOCTYPE html>
<html lang="zxx" class="js">
<head>
    @include('admin.layouts.login.head')
    @yield('title')
    @yield('stylesheets')
</head>
<body class="nk-body npc-default pg-auth">
    <div class="nk-app-root">
        <div class="nk-main ">
            <div class="nk-wrap nk-wrap-nosidebar">
                <div class="nk-content ">
                    @yield('content')
                    @include('admin.layouts.login.partials.footer')
                </div>
            </div>
        </div>
    </div>
    @include('admin.layouts.login.scripts')
    @yield('javascripts')
</body>           

</html>

