<?php
@include '../config/database.php';
session_start();

$email = $_SESSION['user_email'];

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="../CSS/home.css"> -->
    <link rel="stylesheet" href="../CSS/cart.css">
    <link rel="stylesheet" href="../CSS/order.css">
    <title>HOME PAGE</title>
</head>

<body>
    <header class="header">
        <div class="hero">
            <img src="../images/shoe_logo.jpg" alt="logo" class="logo">
            <h2>Shoes</h2>
        </div>

        <form method="post">
            <input type="text" name="search" placeholder="Search" style="height:2rem;width:100%" required>
            <input type="submit" value="Search" name="submit" class="search-btn">
        </form>

        <div class="entry">
            <a href="user.php">Home</a>
            <a href="logout.php">Log Out</a>
        </div>
    </header>
    <main>
        <?php
        
        
        $query = "SELECT * FROM `$email` WHERE is_ordered='1'";
        $result = mysqli_query($conn3, $query);


        if (mysqli_num_rows($result) > 0) {
            echo "<table>
                <tr>
                    <th>Item</th>
                    <th>Item_name</th>
                    <th>Price</th>
                    <th>Payment_Status</th>
                    <th>Order_Date</th>
                    <th>Delivery_date</th>
                </tr>
                " ;
            while ($row = mysqli_fetch_assoc($result)) {

                $name = $row['item_name'];
                $price = $row['price'];
                $id = $row['id'];
                $sl_no = $row['sl_no'];
                $order_date=$row['order_date'];
                $query2 = "SELECT * FROM `products` WHERE id='$sl_no'";
                $result2 = mysqli_query($conn2, $query2);
                $row2 = mysqli_fetch_assoc($result2);
                $image = $row2['image'];
                echo"
                <tr>
                <td><img src='$image' alt='image'></td>
                <td>$name</td>
                <td>$price</td>
                <td>Paid</td>
                <td>$order_date</td>
                <td></td>
                </tr>
                
                
                ";
            }
            echo "</table>";
        } else {
            echo "<h1 style='text-align:center;margin-top:10rem'>No Orders</h1>";
        }



        ?>


    </main>

</body>

</html>