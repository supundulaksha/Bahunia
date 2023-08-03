<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewpoint" content="width=device-width,initial-scale=1.0">
  <title>Bahunia Clothing Company</title>
  <!--bootstrap CSS link -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <!--font awesome link-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!--css file-->
  <link rel="stylesheet" href="style.css">
  <style>
        #map {
            height: 400px;
            width: 100%;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key="></script>
    <script>
        function initMap() {
            // Specify coordinates for the center of the map
            var center = { lat: 37.7749, lng: -122.4194 };

            // Create a new map object
            var map = new google.maps.Map(document.getElementById('map'), {
                center: center,
                zoom: 12
            });

            // Add a marker to the map
            var marker = new google.maps.Marker({
                position: center,
                map: map,
                title: 'Hello World!'
            });
        }
    </script>

</head>
<body>
  <div class="container-fluid p-0">
    <!--first child-->
    <?php
    require_once("./navbar.php")
    ?>

   <br><br>  
<div class="card rounded-7 shadow-5-strong background-radial-gradient">
  <div class="card-body">
    <h1 class="my-4 display-3 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
      Bahunia <br />
      <span style="color: hsl(218, 81%, 75%)">Clothing Company...</span>
    </h1>
    <p class="mb-4 opacity-70 lead" style="color: hsl(218, 81%, 85%)">
    BAUHINIA is a renowned clothing brand in Sri Lanka, founded in 2018.
    </p>
  </div>
</div>

<style>
  .background-radial-gradient {
    background-color: hsl(218, 41%, 15%);
    background-image: radial-gradient(650px circle at 0% 0%,
        hsl(218, 41%, 35%) 15%,
        hsl(218, 41%, 30%) 35%,
        hsl(218, 41%, 20%) 75%,
        hsl(218, 41%, 19%) 80%,
        transparent 100%),
      radial-gradient(1250px circle at 100% 100%,
        hsl(218, 41%, 45%) 15%,
        hsl(218, 41%, 30%) 35%,
        hsl(218, 41%, 20%) 75%,
        hsl(218, 41%, 19%) 80%,
        transparent 100%);
  }
</style>


<!-- Section: Design Block -->
<section class="text-center mt-4">
  <div class="d-flex justify-content-center ">
    <div class="text-center" style="max-width: 700px">
      <h2 class="fw-bold mb-4 text-center">
        About of<u class="text-primary"> Bahunia Clothing Company</u>
      </h2>
      <p class="text-muted mb-5">
      BAUHINIA is a renowned clothing brand in Sri Lanka, founded in 2018. We have established ourselves as a leading provider of high-quality and stylish clothing options for fashion-conscious individuals. With a wide range of designs and a commitment to customer satisfaction, BAUHINIA has become a preferred choice for many Sri Lankans.
      </p>
    </div>
  </div>
</section>

<section class="text-center mt-4">
  <div class="row gx-lg-5">
    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
      <div class="p-3 badge-primary rounded-circle shadow-2 d-inline-block mb-4">
        <i class="fas fa-headset fa-lg fa-fw"></i>
      </div>
      <h5 class="fw-bold mb-3">Support 24/7</h5>
      <p class="text-muted mb-0">
      Join the Bahunia Clothing Company community today and embrace your individual style with confidence. With our 24/7 support and exceptional fashion offerings, we are here to empower you to look and feel your best, every day, at any hour.
      </p>
    </div>

    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
      <div class="p-3 badge-primary rounded-circle shadow-2 d-inline-block mb-4">
        <i class="fas fa-shield-alt fa-lg fa-fw"></i>
      </div>
      <h5 class="fw-bold mb-3">Safe and solid</h5>
      <p class="text-muted mb-0">
      Bahania Clothing Company is a reputable and well-established fashion brand known for its safe and solid clothing designs. With a commitment to quality and sustainability, Bahania Clothing Company creates stylish and durable garments that prioritize the safety and comfort of its customers.
      </p>
    </div>

    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
      <div class="p-3 badge-primary rounded-circle shadow-2 d-inline-block mb-4">
        <i class="fas fa-shipping-fast fa-lg fa-fw"></i>
      </div>
      <h5 class="fw-bold mb-3">Extremely fast</h5>
      <p class="text-muted mb-0">
      our rapid delivery, Bahunia Clothing Company places a strong emphasis on sustainability. We prioritize eco-friendly materials and ethical practices throughout our supply chain to minimize our environmental impact. Our goal is to create a more sustainable fashion industry without compromising on speed or style.
      </p>
    </div>

    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
      <div class="p-3 badge-primary rounded-circle shadow-2 d-inline-block mb-4">
        <i class="fas fa-chart-pie fa-lg fa-fw"></i>
      </div>
      <h5 class="fw-bold mb-3">Live analytics</h5>
      <p class="text-muted mb-0">
      Bahunia Clothing Company is a vibrant and contemporary fashion brand that specializes in creating stylish and high-quality clothing for both men and women. Founded with a passion for fashion and a commitment to sustainability, Bahunia aims to provide customers with fashionable clothing options while minimizing its environmental impact.
      </p>
    </div>
  </div>
</section>

<div class="container text-bold">
  <h2>Items You Can Buy..</h2>
  <p>We are represented the new designs and styles for our customers</p>
  
  <div class="row">
    <div class="col-md-4 text-center ">
      <div class="thumbnail text-bold">
        <a href="mens.php" target="_blank">
          <img src="./images/pexels-willo-m-3768005.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Mens Collection</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4 text-center">
    
      <div class="thumbnail">
        <a href="womens.php" target="_blank">
        
          <img src="./images/2.jpg" alt="Nature" style="width:100%">
          
          <div class="caption">
            <p>Womens Collection</p>
          </div>
        </a>
      </div>
    
</div>
    <div class="col-md-4 text-center">
      <div class="thumbnail">
        <a href="kids.php" target="_blank">
          <img src="./images/1.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Kids Collection</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
<div class="container text-bold">
<h2>Find Us..</h2>
<div id="map">

</div>
</div>
    <script>
        // Initialize the map when the page has finished loading
        window.onload = function() {
            initMap();
        };
    </script>

<div class="container text-bold mt-4">
 
  <p>BAUHINIA Clothing is a prominent clothing brand in Sri Lanka, founded in 2018. Over the years, BAUHINIA has gained a strong reputation for providing Sri Lankans with exceptional designs and a wide range of clothing options. With a focus on quality and style, BAUHINIA has become a popular choice among fashion enthusiasts.</p>
     
  <p>To streamline their order management process, BAUHINIA currently handles orders through popular social media networks like Facebook and Instagram. Customers can conveniently message BAUHINIA with the details of the desired items, including the item code, size, and quantity. Upon confirming the availability of the requested items, customers are required to provide their delivery address and contact number to finalize the order. BAUHINIA ensures a hassle-free shopping experience by delivering the ordered items right to the customer's doorstep within 3 to 5 working days, with the option to pay cash on delivery.</p>

  <p>As the brand's popularity grew, BAUHINIA faced challenges associated with manual inventory management and paperwork due to the increasing number of orders received through message requests. To address these challenges and streamline their operations, BAUHINIA's Managing Director has made the strategic decision to consult AKL Software (AKL), a renowned software development consultant.</p>
</div>

  <!--last child-->

<div class="container-fluid p-0 mt-4">
        <!--first child-->
        <?php
        require_once("./footer.php")
        ?>
<!-- Section: Design Block -->
<!--bootstrap js link-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>