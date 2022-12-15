<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-6">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Booking Longue</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href='{{ asset("adminlte/plugins/fontawesome-free/css/all.min.css") }}'>
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href='{{ asset("adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css") }}'>
  <!-- Theme style -->
  <link rel="stylesheet" href='{{ asset("adminlte/dist/css/adminlte.min.css") }}'>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>Booking</b>Lounge</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      @yield('content')
      <!-- /.social-auth-links -->

      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src='{{ asset("adminlte/plugins/jquery/jquery.min.js") }}'></script>
<!-- Bootstrap 4 -->
<script src='{{ asset("adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js") }}'></script>
<!-- AdminLTE App -->
<script src='{{ asset("adminlte/dist/js/adminlte.min.js") }}'></script>
</body>
</html>