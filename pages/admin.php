<?php
@include '../config/database.php';
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/home.css">
    <title>HOME PAGE</title>
</head>

<body>
    <header class="header">
        <div class="hero">
            <img src="../images/shoe_logo.jpg" alt="logo" class="logo">
            <h2>Shoes</h2>
        </div>
        <nav>
            <ul class="nav-ul">
                <li>Home</li>
                <li>About</li>
                <li>Contact</li>
                <li>FAQs</li>
            </ul>
        </nav>
        <div class="entry">
            <a href="adminorders.php">Orders</a>
            <a href="add.php">Add Item</a>
            <a href="logout.php">Log Out</a>
        </div>
    </header>
    <main class="main">
        <?php

        $select = 'SELECT * FROM `products`';
        $result = mysqli_query($conn2, $select);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $image = $row['image'];
                $name = $row['name'];
                $price = $row['price'];
                $descp = $row['descrip'];
                $rating = $row['rating'];
                $comments = $row['comments'];
                $id=$row['id'];
                echo "<section class='product'>
                    <img src='$image' alt='image'>
                    <div class='prod-info'>
                        <div class='title'>
                        <h3 class='name'>$name</h3>
                        <h4 class='price'>Rs $price</h4>
                        </div>
                        <p>Rating:$rating Stars</p>
                        <div class='ending'>
                            <a href='edit.php?id=$id' class='edit'>Edit</a>
                            <a href='delete.php?id=$id' class='delete'>Delete</a>
                        </div>
                    </div>
                    
                    
                </section>";
            }
        } else {
            echo "<a href='add.php' class='Add'>No Products Available For Sale</a>";
        }




        ?>


    </main>
    

</body>

</html>