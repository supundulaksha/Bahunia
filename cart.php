<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewpoint" content="width=device-width,initial-scale=1.0">
  <title>Bahunia Clothing Company</title>
   <!--bootstrap CSS link -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <!--bootstrap CSS link -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <!--font awesome link-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!--css file-->
  <link rel="stylesheet" href="cartStyle.css">

</head>

<body>
  <!--navbar-->
  <div class="container-fluid p-0">
    <!--first child-->
    <?php
    require_once("./navbar.php")
    ?>


    <Section id="Bahunia Clothing Company" class="pt-5 mt-5 container">
    <?php
          if (isset($_SESSION["message"]) && $_SESSION["message"] && $_SESSION["message"] == 'failed') {
          ?>
            <div class="alert alert-danger">
              <?php
              echo "Error : Payment failed!";
              $_SESSION["message"] = '';
              ?>
            </div>
          <?php
          } elseif (isset($_SESSION["message"]) && $_SESSION["message"]) {
          ?>
            <div class="alert alert-success">
              <?php
              echo $_SESSION["message"];
              $_SESSION["message"] = '';
              ?>
            </div>
          <?php } ?>
      <h2 class="font-weight bold pt-5">Shopping Cart</h2>
      <hr>
    </section>
    <section id="cart-container" class="container my-5">
      <table width="100%">
        <thead>
          <tr>
            <th>Product</th>
            <th>Image</th>
            <th>Price</th>
            <th>Size</th>
            <th>Color</th>
            <th>Quntatity</th>
            <th>Total</th>
            <th>Delete</th>


          </tr>
        </thead>
        <tbody>
          <?php
          // Check if the item ID and category are set in the URL
         
          $conn = mysqli_connect("localhost", "root", "", "bahunia");

            $query = "SELECT * FROM cart";
            $result = mysqli_query($conn, $query);

            if (!$result) {
              echo "Error: " . mysqli_error($conn);
            } else {
              while ($row = mysqli_fetch_assoc($result)) {
                $carid=$row['cart_id'];
                $p_name = $row['p_name'];
                $p_featured_photo = $row['p_featured_photo'];
                $p_new_price = $row['p_price'];
                $p_color=$row['colour'];
                $p_size=$row['size'];
                $qty=$row['qty'];


                // Display the cart item details
                echo '
              <tr>
                <td>
                  <p>' . $p_name . '</p>
                </td>
                <td>
                  <img src="images/' . $p_featured_photo . '" alt="" style="width: 60px">
                </td>
                <td>
                  <p>' . $p_new_price . '</p>
                </td>
                <td>
                '.$p_size.'</td>
              <td>
             '.$p_color.'
              </td>

              <td>
              <label for="quantity"></label>
              <input type="number" value="'.$qty.'" id="quantity" name="qty"/>
          </td>
          <td class="total-amount" id="total-amount-cell">
              Rs. '.$p_new_price*$qty.'
          </td>
                <td class="delete-button">
                <a href="delete_cart_item.php?cart_id=' . $carid . '" onclick="return confirmDelete();">
                    <i class="fas fa-trash-alt"></i>
                </a>
            </td>


                <td class="Buy-button">
                <a href="buy.php?id='.$carid.'" class="btn btn-info btn-rounded">Buy Now</a>
               
                </div>
              </td>
              </tr>
            ';
              }
            }

            mysqli_close($conn);
      
          ?>
        </tbody>
        <script>
function confirmDelete() {
  return confirm("Are you sure you want to delete this item?");
}
</script>


        <script>
          function updateTotal(input) {
           var quantity = input.value; // Get the updated quantity
            var price = <?php echo $p_new_price; ?>; // Get the price from PHP variable

            // Calculate the total
            var total = quantity * price;

            // Update the total in the HTML
            var totalElement = input.parentNode.nextElementSibling.querySelector('p');
            totalElement.textContent = 'Rs. ' + total;
          }
        </script>


      </table>
    </section>

    <script>
function confirmDelete() {
  return confirm("Are you sure you want to delete this item from the cart?");
}
</script>
<script>
    // Function to calculate and update the total amount
    function updateTotalAmount() {
        // Get the quantity value
        var qty = parseFloat(document.getElementById("quantity").value);

        // Get the price value
        var price = parseFloat('<?php echo $p_new_price; ?>');

        // Calculate the total amount
        var totalAmount = qty * price;

        // Update the total amount cell with the new value
        document.getElementById("total-amount-cell").textContent = "Rs. " + totalAmount;
    }

    // Add an event listener to the quantity input to call the updateTotalAmount function when the quantity changes
    document.getElementById("quantity").addEventListener("change", updateTotalAmount);

    // Call the updateTotalAmount function initially to set the total amount based on the initial quantity value
    updateTotalAmount();
</script>

 <!--bootstrap js link-->
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
     <!--bootstrap js link-->
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
