

<!DOCTYPE html>
<html>

<head>
  <meta charset='utf-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <title>Page Title</title>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="car.css" />

  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css" rel="stylesheet" />
  <!-- MDB -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.js"></script>


</head>
<style>
  @import '~mdb-ui-kit/css/mdb.min.css';

  #into-jumbotron {
    background: #159957;
    /* fallback for old browsers */
    background: -webkit-linear-gradient(to bottom,
        #283041,
        #0f1420);
    /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to bottom,
        #283041,
        #0f1420);
    /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  }

  @media (max-width: 991.98px) {
    #into-jumbotron .border-right {
      border: none !important;
    }
  }
</style>



<nav class="navbar fixed-top navbar-expand-lg navbar-secondary bg-secondary ">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarLeftAlignExample" aria-controls="navbarLeftAlignExample" aria-expanded="false" aria-label="Toggle navigation">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarLeftAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a href="index.php" class="ms-md-2">
            <img src="./images/Icon.png" height="45" />
          </a>

        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.php">About</a>
        </li>
        <!-- Navbar dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
            Collections
          </a>
          <!-- Dropdown menu -->
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li>
              <a class="dropdown-item" href="mens.php">Mens Collections</a>
            </li>
            <li>
              <a class="dropdown-item" href="womens.php">Womens Collections</a>
            </li>
            <li>
              <a class="dropdown-item" href="kids.php">Kids Collections</a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.php">Contact Us</a>
        </li>
      </ul>
      <div class="col-md-4">
        <form action="search.php" class="d-flex input-group w-auto my-auto mb-3 mb-md-0">
          <input class="form-control mr-sm-0" name="search" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
      <div class="col-md-4 d-flex justify-content-center justify-content-md-end align-items-center">
        <div class="d-flex">
          <!-- Cart -->
          <a class="text-reset me-3" href="cart.php">
            <span><i class="fas fa-shopping-cart"></i></span>
            <span class="badge rounded-pill badge-notification bg-danger">1</span>
          </a>

          <!-- Notification -->
          <div class="dropdown">
            <a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
              <i class="fas fa-bell"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="#">Some news</a></li>
              <li><a class="dropdown-item" href="#">Another news</a></li>
              <li>
                <a class="dropdown-item" href="#">Something else here</a>
              </li>
            </ul>
          </div>

          <!-- Languages -->
          <div class="dropdown">
            <a class="text-reset dropdown-toggle me-3 hidden-arrow" href="#" id="navbarDropdown" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
              <i class="united kingdom flag m-0"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
              <li>
                <a class="dropdown-item" href="#"><i class="united kingdom flag"></i>English
                  <i class="fa fa-check text-success ms-2"></i></a>
              </li>
              <li>
                <hr class="dropdown-divider" />
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="poland flag"></i>Polski</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="china flag"></i>中文</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="japan flag"></i>日本語</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="germany flag"></i>Deutsch</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="france flag"></i>Français</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="spain flag"></i>Español</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="russia flag"></i>Русский</a>
              </li>
              <li>
                <a class="dropdown-item" href="#"><i class="portugal flag"></i>Português</a>
              </li>
            </ul>
          </div>

          <!-- User -->
<?php
          if(!isset($_SESSION['name'])){
            echo'
            
            <div class="dropdown mr-2">
            <div>
              <a href="register.php" class="btn btn-danger my-2 my-sm-0">SignUp</a>
            </div>
            </div>
            <div>
              <a href="logins.php" class="btn btn-success my-2 my-sm-0">Log in</a>
            </div>
       
            ';
          }
          else{
            echo'
            <a href="logout.php" style="text-decoration: none">
            <div class="d-flex gap-1 item-center">
            
              <img src="./images/log.png" style="width: 40px""/>
              <p>'.$_SESSION['name'].'</p>
              
            </div>
            </a>
       
            ';
          }
          ?>

        
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>
  <!-- Left links -->
  </div>
  <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>


<!-- Jumbotron 
  <div id="into-jumbotron" class="p-5 text-center text-white">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex align-items-center justify-content-center border-right">
          <a href="" class="text-reset">
            <h5 class="mb-0">Bahunia Clothing Company</h5>
          </a>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 border-right">
          <span>BAUHINIA is a renowned clothing brand in Sri Lanka, founded in 2018. </span>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 border-right">
          <span>We have established ourselves as a leading provider of high-quality and stylish clothing options for fashion-conscious individuals. 
           </span>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex align-items-center justify-content-center">
          <a class="btn btn-outline-white btn-rounded" href="registration.php" role="button" data-mdb-ripple-color="light">SignUp</a>
        </div>
      </div>
    </div>
  </div>-->
<!-- Jumbotron -->

<!--Main Navigation-->
<script type="text/javascript" src="js/mdb.min.js">

</script>
<script type="text/javascript"></script>
</body>

</html>