<?php
// Start the session if it's not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bahunia";

    // Create a new mysqli connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $cart_id =  $_GET['id'];


    $query = "SELECT * FROM cart WHERE cart_id='$cart_id'";
    $result = mysqli_query($conn, $query);

    if (!$result) {
        echo "Error: " . mysqli_error($conn);
    } else {
        $row = mysqli_fetch_assoc($result);
        $_SESSION["message"] = " Your Payment Successfully Done...!";
    }




    //Set the values from the form data
    $p_name = $row['p_name'];
    $p_featured_photo = $row['p_featured_photo'];
    $p_new_price = $row['p_price'];
    $p_color = $row['colour'];
    $p_size = $row['size'];
    $qty = $row['qty'];
    $p_id = $row['p_id'];
    $customer_id = $_SESSION["customer_id"];



    // Assuming you have a session variable for the customer ID
    $customer_name = $_POST["customerName"];
    $cus_add = $_POST["customerAddress"];
    $card_number = $_POST["cardNumber"];
    $exp_month = $_POST["cardExpMonth"];
    $exp_year = $_POST["cardExpYear"];
    $cvc = $_POST["cardCVC"];

    // Prepare and bind parameters
    $sqlQuery = "INSERT INTO `orders`(`p_name`, `p_featured_photo`, `p_price`, `colour`, `size`, `qty`, `customer_name`, `cus_add`, `card_number`, `exp_month`, `exp_year`, `cvc`) VALUES 
        ('$p_name', '$p_featured_photo','$p_new_price','$p_color','$p_size','$qty','$customer_name','$cus_add','$card_number','$exp_month','$exp_year','$cvc')
    ";

    $sqlp = "UPDATE popular_product SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqlp)) {
        echo "Success";
    };

    $sqli = "UPDATE latest_product SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqli)) {
        echo "Success";
    };

    $sqlk = "UPDATE kids_collection SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqlk)) {
        echo "Success";
    };

    $sqlm = "UPDATE mens_collection SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqlm)) {
        echo "Success";
    };

    $sqlw = "UPDATE womens_collection SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqlw)) {
        echo "Success";
    };

    $sqlf = "UPDATE features_product SET p_qty = p_qty - $qty WHERE p_id = $p_id";

    if (mysqli_query($conn, $sqlf)) {
        echo "Success";
    };

    if (mysqli_query($conn, $sqlQuery)) {
        echo "Success";
    };

    $sqlDelete =  "DELETE FROM cart WHERE cart_id='$cart_id'";


    if (mysqli_query($conn, $sqlDelete)) {
        echo "Success";
    };

    // Redirect to the index page or any other page as per your requirement
    header("Location: cart.php");
    exit();
} else {
    // Redirect to the index page if form is not submitted directly
    header("Location: buy.php");
    exit();
}
