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
            <a href="admin.php">Home</a>
            <a href="logout.php">Log Out</a>
        </div>
    </header>
    <main>

        <?php

        $query = "SELECT * FROM `admincart`";
        $result = mysqli_query($conn3, $query);


        if (mysqli_num_rows($result) > 0) {
            echo "<table>
         <tr>
             <th>Item</th>
             <th>Customer</th>
             <th>Price</th>
             <th>Delivery Address</th>
             <th>Order_date</th>
             <th>Delivery_Date</th>
             <th>Delivery_Status</th>
             <th>Update</th>
         </tr>
         ";
            while ($row = mysqli_fetch_assoc($result)) {
                $id=$row['id'];
                $name = $row['customer'];
                $price = $row['price'];
                $address = $row['address'];
                $order_date = $row['order_date'];
                $item_name = $row['name'];
                $delivery_date = $row['delivery_date'];
                $delivery_status = $row['delivery_status'];
                echo "
                <tr>
                <td>$item_name</td>
                <td>$name</td>
                <td>$price</td>
                <td>$address</td>
                <td>$order_date</td>
                <td>$delivery_date</td>
                <td>$delivery_status</td>
                <td><a href=editadmin.php?id=$id>EDIT</a></td>
                </tr>
                ";
            }
            echo "</table>";
        } else {
            echo "<h1 style='text-align:center;margin-top:10rem'>No Items In the Cart</h1>";
        }



        ?>


    </main>

</body>

</html>