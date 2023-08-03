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
        
        


    <!--bootstrap js link-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
<body>

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
        $p_name = $row['p_name'];
        $p_featured_photo = $row['p_featured_photo'];
        $p_old_price = $row['p_old_price'];
        $p_new_price = $row['p_new_price'];

        // Display the item details
        echo "Product Name: " . $p_name . "<br>";
        echo "Featured Photo: " . $p_featured_photo . "<br>";
        echo "Old Price: " . $p_old_price . "<br>";
        echo "New Price: " . $p_new_price . "<br>";
        echo "<br>";
    }
} else {
    // No rows found in the table
    echo "No items found.";
}

// Close the database connection
mysqli_close($conn);
?>

</body>

</html>