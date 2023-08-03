<?php
session_start();
?>
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
    <!--css file-->
    <link rel="stylesheet" href="style.css"> 
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

                <!-- <div class="carousel-item">
      <video src="./video/Bahunia clothing  company slider bar.mp4" alt="...">
    </div>
    <div class="carousel-item">
      <video src="./video/Bahunia clothing company slider bar 24 hours Customer Support (1).mp4"  alt="...">
    </div> -->
            </div>
        </div>


        <script>
            $(document).ready(function() {
                $('#video-carousel').carousel();
            });
        </script>


        <div class="service bg-gray">
            <div class="container">
                <div class="logo-column">

                    <div class="logo-row">
                        <div class="item">
                            <div class="photo"><img src="./images/service-1.png" width="150px" alt=""></div>
                            <h3>Easy Returns</h3>
                            <p>Return any item before 15 days!</p>
                        </div>
                        <div class="item">
                            <div class="photo"><img src="./images/service-2.png" width="150px" alt=""></div>
                            <h3>Fast Shipping</h3>
                            <p>Items are shipped within 24 hours.</p>
                        </div>
                        <div class="item">
                            <div class="photo"><img src="./images/service-3.png" width="150px" alt=""></div>
                            <h3>Money Back Guarantee</h3>
                            <p>Offer money back guarantee on our products.</p>
                        </div>
                    </div>

                    <div class="logo-row">
                        <div class="item">
                            <div class="photo"><img src="./images/service-4.png" width="150px" alt=""></div>
                            <h3>Secure Checkout</h3>
                            <p>Providing Secure Checkout Options for all.</p>
                        </div>
                        <div class="item">
                            <div class="photo"><img src="./images/service-5.png" width="150px" alt=""></div>
                            <h3>Satisfaction Guarantee</h3>
                            <p>We guarantee you with our quality satisfaction.</p>
                        </div>
                        <div class="item">
                            <div class="photo"><img src="./images/service-6.png" width="150px" alt=""></div>
                            <h3>Free Shipping</h3>
                            <p>Enjoy free shipping inside US.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--1. Ow; Carousel Min.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--2. Ow; Carousel Theme.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

             <section>
            <div class="container-fluid my-4 bg-light">
                <h1 class="text-center fw-bold display-10 mb-3">LATEST PRODUCTS</h1>
                <h5 class="text-center display-6 mb-3 "> Our list of recently added products</h5>
                <div class="row mt-7">
                    <div class="owl-carousel owl-theme">
                        
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "bahunia");

                        // Check if the connection was successful
                        if (!$conn) {
                            die("Connection failed: " . mysqli_connect_error());
                        }

                        // Create a query to fetch items from the table
                        $query = "SELECT * FROM latest_product";

                        // Execute the query
                        $result = mysqli_query($conn, $query);

                        // Check if any rows were returned
                        if (mysqli_num_rows($result) > 0) {
                            // Loop through each row and display the item details
                            while ($row = mysqli_fetch_assoc($result)) {
                                // Access the column values of the current row
                                
                                $p_id = $row["p_id"];
                                $p_name = $row['p_name'];
                                $p_featured_photo = $row['p_featured_photo'];
                                $p_old_price = $row['p_old_price'];
                                $p_new_price = $row['p_new_price'];

                                // Display the item details
                                //echo $p_featured_photo."<br>";

                                echo '
                                <div class="container">
                                <div class="row">
                                <div class="col-lg-4">
                                <div class="card" style="width: 14rem;">
                                  <img src="images/' . $p_featured_photo . '" class="card-img-top" alt="...">
                                  <div class="card-body">
                                    <h6 class="card-title">' . $p_name . '</h6>
                                    <span>Product Price</span>
                                        <div class="price-holder">
                                            <p>' . $p_old_price . '</p> 
                                            <p>Rs.' . $p_new_price . '</p>
                                        </div>  
                                    <a href="cartview.php?id=' . $p_id . '&catagory=lp" class="btn btn-primary">View</a>
                                    
                                  </div>
                                </div>
                              </div>
                              </div>
                              </div>';
                          }
                      }
                                
                       else {
                            // No rows found in the table
                            echo "No items found.";
                        }

                        // Close the database connection
                        mysqli_close($conn);
                        ?>


                    </div>
                </div>
            </div>




            <!--item ends-->
        </section>
 <!--Init Owl Carousel-->
        <script>
            $('.owl-carousel').owlCarousel({
                stagePadding: 50,
                loop: true,
                margin: 8,
                nav: true,
                responsive: {
                    0: {
                        items: 10
                    },
                    600: {
                        items: 10
                    },
                    1000: {
                        items: 10
                    }
                }
            })
        </script>

        <!--1. Ow; Carousel Min.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--2. Ow; Carousel Theme.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
   

        <!--second child-->
        <section>
            <div class="container-fluid my-5 bg-light">
                <h1 class="text-center fw-bold display-10 mb-3">FEATURES PRODUCTS</h1>
                <h5 class="text-center display-6 mb-3 "> Our list of recently added products</h5>
                <div class="row mt-5">
                    <div class="owl-carousel owl-theme">
                        
                        
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "bahunia");

                        // Check if the connection was successful
                        if (!$conn) {
                            die("Connection failed: " . mysqli_connect_error());
                        }

                        // Create a query to fetch items from the table
                        $query = "SELECT * FROM features_product";
                        $sqlQuery="UPDATE `features_product` SET `p_qty` = `p_qty` -6 WHERE `p_id` =1";
                        // Execute the query
                        $result = mysqli_query($conn, $query);

                        // Check if any rows were returned
                        if (mysqli_num_rows($result) > 0) {
                            // Loop through each row and display the item details
                            while ($row = mysqli_fetch_assoc($result)) {
                                // Access the column values of the current row
                                $p_id = $row["p_id"];
                                $p_name = $row['p_name'];
                                $p_featured_photo = $row['p_featured_photo'];
                                $p_old_price = $row['p_old_price'];
                                $p_new_price = $row['p_new_price'];
 
                                // Display the item details
                                //echo $p_featured_photo."<br>";

                                echo '
                                <div class="col-md-4 mb-4">
                                <div class="card" style="width: 18rem;">
                                  <img src="images/' . $p_featured_photo . '" class="card-img-top" alt="...">
                                  <div class="card-body">
                                    <h5 class="card-title">' . $p_name . '</h5>
                                    <span>Product Price</span>
                                        <div class="price-holder">
                                            <p>' . $p_old_price . '</p> 
                                            <p>Rs.' . $p_new_price . '</p>
                                        </div>  
                                    <a href="cartview.php?id=' . $p_id . '&catagory=fp" class="btn btn-primary">View</a>
                                  </div>
                                </div>
                              </div>';
                          }
                      } else {
                            // No rows found in the table
                            echo "No items found.";
                        }

                        // Close the database connection
                        mysqli_close($conn);
                        ?>


                    </div>
                </div>
            </div>




            <!--item ends-->
        </section>

        <!--let's include cdn files-->

        <!--0.Jquery Cdn-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!--1. owl carousel min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!--Init Owl Carousel-->
        <script>
            $('.owl-carousel').owlCarousel({
                stagePadding: 50,
                loop: true,
                margin: 8,
                nav: true,
                responsive: {
                    0: {
                        items: 6
                    },
                    600: {
                        items: 6
                    },
                    1000: {
                        items: 6
                    }
                }
            })
        </script>

        <!--1. Ow; Carousel Min.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--2. Ow; Carousel Theme.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--second child-->
        

        <!--let's include cdn files-->

        <!--0.Jquery Cdn-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!--1. owl carousel min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <section>
            <div class="container-fluid my-5 bg-light">
                <h1 class="text-center fw-bold display-10 mb-3">POPULAR PRODUCTS</h1>
                <h5 class="text-center display-6 mb-3 "> Our list of recently added products</h5>
                <div class="row mt-5">
                    <div class="owl-carousel owl-theme">
                        
                        
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "bahunia");

                        // Check if the connection was successful
                        if (!$conn) {
                            die("Connection failed: " . mysqli_connect_error());
                        }

                        // Create a query to fetch items from the table
                        $query = "SELECT * FROM popular_product";

                        // Execute the query
                        $result = mysqli_query($conn, $query);

                        // Check if any rows were returned
                        if (mysqli_num_rows($result) > 0) {
                            // Loop through each row and display the item details
                            while ($row = mysqli_fetch_assoc($result)) {
                                // Access the column values of the current row
                                $p_id = $row["p_id"];
                                $p_name = $row['p_name'];
                                $p_featured_photo = $row['p_featured_photo'];
                                $p_old_price = $row['p_old_price'];
                                $p_new_price = $row['p_new_price'];

                                // Display the item details
                                //echo $p_featured_photo."<br>";

                                echo '
                                <div class="col-md-4 mb-4">
                                <div class="card" style="width: 18rem;">
                                  <img src="images/' . $p_featured_photo . '" class="card-img-top" alt="...">
                                  <div class="card-body">
                                    <h5 class="card-title">' . $p_name . '</h5>
                                    <span>Product Price</span>
                                        <div class="price-holder">
                                            <p>' . $p_old_price . '</p> 
                                            <p>Rs.' . $p_new_price . '</p>
                                        </div>  
                                    <a href="cartview.php?id=' . $p_id . '&catagory=pp" class="btn btn-primary">View</a>
                                  </div>
                                </div>
                              </div>';
                          }
                      }
                           else {
                            // No rows found in the table
                            echo "No items found.";
                        }

                        // Close the database connection
                        mysqli_close($conn);
                        ?>


                    </div>
                </div>
            </div>




            <!--item ends-->
        </section>

        <!--Init Owl Carousel-->
        <script>
            $('.owl-carousel').owlCarousel({
                stagePadding: 50,
                loop: true,
                margin: 8,
                nav: true,
                responsive: {
                    0: {
                        items: 6
                    },
                    600: {
                        items: 6
                    },
                    1000: {
                        items: 6
                    }
                }
            })
        </script>

        <!--last child-->

        <div class="container-fluid p-0">
        <!--first child-->
        <?php
        require_once("./footer.php")
        ?>


    <!--bootstrap js link-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
     <!--bootstrap js link-->
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>