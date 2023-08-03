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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <!-- swiper css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<!-- box icons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>

<body>
<!--navbar-->
<div class="container-fluid p-0">
        <!--first child-->
        <?php
        require_once("./navbar.php")
        ?>
        <!--Carousel slide-->
        <div id="video-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <video class="background-banner" autoplay muted loop>
                        <source src="./video/Bahunia clothing  company slider bar (1) (online-video-cutter.com) (2).mp4" type="video/mp4">
                    </video>
                </div>
                </div>
        </div>


        <script>
            $(document).ready(function() {
                $('#video-carousel').carousel();
            });
        </script>

       
      


           
</body>
</html>