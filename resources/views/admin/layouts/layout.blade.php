<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
    <base href="../">
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="./images/favicon.png">
    <!-- Page Title  -->
    <title>Analytics Dashboard | DashLite Admin Template</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="./assets/css/dashlite.css?ver=3.0.3">
    <link id="skin-default" rel="stylesheet" href="./assets/css/theme.css?ver=3.0.3">
</head>

<body class="nk-body npc-default has-apps-sidebar has-sidebar ">
    <div class="nk-app-root">
        @include('admin.layouts.sidebar');
        <!-- main @s -->
        <div class="nk-main ">
            <!-- wrap @s -->
            <div class="nk-wrap ">
            @include('admin.layouts.header')
            @include('admin.layouts.sidebar2')
            @yield('content')
            </div>
            <!-- wrap @e -->
        </div>
        <!-- main @e -->
    </div>
    <!-- app-root @e -->
    @include('admin.layouts.header2');
    <!-- JavaScript -->
    <script src="./assets/js/bundle.js?ver=3.0.3"></script>
    <script src="./assets/js/scripts.js?ver=3.0.3"></script>
    <script src="./assets/js/charts/gd-analytics.js?ver=3.0.3"></script>
    <script src="./assets/js/libs/jqvmap.js?ver=3.0.3"></script>
</body>

</html>