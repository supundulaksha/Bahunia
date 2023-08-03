    
  <!-- swiper css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

  <!-- box icons -->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- custom css -->
  <link rel="stylesheet" type="text/css" href="slider.css">

    <h1 class="text-center fw-bold display-10 mb-3">LATEST PRODUCTS</h1>
    <h5 class="text-center display-6 mb-3">Our list of recently added products</h5>
    <div class="box mySwiper">
        <div class="content swiper-wrapper">


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
                    echo '
                    <div class="card swiper-slide">
                        <div class="card-content">
                            <div class="image">
                                <img src="images/' . $p_featured_photo . '" alt="">
                            </div>
                            <div class="card-body">
                            <h3 class="card-title">' . $p_name . '</h3>
                               
                                <div class="price-holder">
                                <p>' . $p_old_price . '</p>
                                <p>Rs.' . $p_new_price . '</p>
                                
                            </div>
                            <div class="view">
                            <button style "--clr:#be01fe">
                            <a href="cartview.php?id='.$p_id.'&catagory=lp">View</a>
                            <button style="--clr:#be01fe" href="cartview.php?id=' . $p_id . '&catagory=lp">View</button>
                            </button>
                        </div>

                        </div>
                    </div>
                    </div>
                    ';
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

        <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

    


        <!-- swiper js -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<!-- custom js -->
<script src="script.js"></script>


