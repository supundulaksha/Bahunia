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
<br><br><br>
        <!--third child-->
        <div class="bg-light mb-4">
            <h3 class ="text-center mb-2">Women's Collection</h3>
            <p class="text-center">Elevate Your Style, Empower Your Identity.</p>
</div>
             <!--fouth child-->
        
             <div class="row">
           <div class="col-md-10">
            <!--products-->
                <div class="row">
                    <?php
      $conn = mysqli_connect("localhost", "root", "", "bahunia");

      // Check if the connection was successful
      if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
      }

      // Create a query to fetch items from the table
      $query = "SELECT * FROM `womens_collection`";

      // Execute the query
      $result = mysqli_query($conn, $query);

      // Check if the query execution was successful
      if ($result) {
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
                        <a href="cartview.php?id=' . $p_id . '&catagory=wc" class="btn btn-primary">View</a>
                      </div>
                    </div>
                  </div>';
              }
          }else {
              // No rows found in the table
              echo "No items found.";
          }
      } else {
          // Query execution failed
          echo "Error: " . mysqli_error($conn);
      }

      // Close the database connection
      mysqli_close($conn);
      ?>
        </div>
    </div>

<!--sidenav-->
    <div class="col-md-2 bg-secondary p-0">
        <ul class="navbar-nav me-auto text-center">
          <li class="nav-item bg-dark">
           <a href="#" class="nav-link text-light"> <h4>Brand Categories</h4></a> 
          </li>
          <li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">POLO</a>
</li>
</li>
          <li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Underamor</a>
</li>
</li>
          <li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Licc</a>
</li>
<li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Vantage</a>
</li>
<li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Emerald</a>
</li>
<li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Addidas</a>
</li>
<li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Moose</a>
</li>
<li class="nav-item bg-info">
            <a href="#" class="nav-link text-light">Tommy Hilfiger</a>
</li>

       
        </ul>
        <!-- second Categories-->
        <div class="col-md-14 mb-2 bg-secondary p-0">
        <ul class="navbar-nav me-auto text-center ">
          <li class="nav-item bg-dark">
           <a href="#" class="nav-link text-light"> <h4>Clothing Categories</h4></a> 
          </li>
          <li class="nav-item bg-info">
            <a href="mens.php" class="nav-link text-light">MEN'S</a>
</li>
</li>
          <li class="nav-item bg-info">
            <a href="womens.php" class="nav-link text-light">Womens</a>
</li>
</li>
          <li class="nav-item bg-info">
            <a href="kids.php" class="nav-link text-light">Kids</a>
</li>
       
        </ul>
</div>
        </div>
</div>
</div>
</div>
   <!--last child-->

   <div class="container-fluid p-0">
        <!--first child-->
        <?php
        require_once("./footer.php")
        ?>


 <!--bootstrap js link-->
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>