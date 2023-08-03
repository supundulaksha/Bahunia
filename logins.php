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

<div class="container-fluid p-0">
        <!--first child-->
        <?php

        ?>

<?php
  if (isset($_POST['logins'])) {
    $email = $_POST['email'];
    $password = $_POST['passwords'];
   

    // Database connection configuration
    $conn = mysqli_connect("localhost", "root", "", "bahunia");

    // Check the connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    // Prepare the SQL query
    $sql =" SELECT * FROM tbl_customers WHERE email = '$email' AND passwords = '$password'";
 
    

    // Execute the query
    $result = $conn->query($sql);

    // Check if any results were found
    

    if ($result->num_rows > 0) {
      $userData = mysqli_fetch_assoc($result);
      $_SESSION['name'] = $userData['names'];
      // Login successful
      echo '<script>alert("Your Successfully Login..!");</script>';
      // Redirect to index.php
      
      header("Location: index.php");
    } 
        else {
      // Login failed
            echo '<script>alert("Incorrect username or password!");</script>';
        }

    // Close the database connection
    $conn->close();
  }
  ?>
        <!--Second navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-info login-title">
            Welcome to the Login..!
        </nav>
        
        <form method="POST" action="">
            <div class="page">
                <div class="container">
                
                    <div class="row mt-5">
                        
                        <div class="col-md-4">
                            <div class="user-content">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <small id="emailHelp"  class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="passwords" class="form-control" id="exampleInputPassword1">
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <button type="submit" name="logins" class="btn btn-primary">Log in</button>
                                
<!-- Register buttons -->
<div class="text-center">
    <p>Not a member? <a href="registration.php">Sign Up</a></p>
    <p>or sign up with:</p>
    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div>
  </div>
                </div>
            </div>
        </div>
    </div>
        </form>

     

<!--bootstrap js link-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>
