<?php
@include '../config/database.php';
session_start()

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

        <form method="post">
            <input type="text" name="search" placeholder="Search" style="height:2rem;width:100%" required>
            <input type="submit" value="Search" name="submit" class="search-btn">
        </form>

        <div class="entry">
            <a href="cart.php">My Cart</a>
            <a href="orders.php">Orders</a>
            <a href="logout.php">Log Out</a>
        </div>
    </header>
    <main class="main">
        <?php
        if (isset($_POST['submit'])) {
            $titles = $_POST['search'];
            $query = "SELECT * FROM `products` WHERE name like '%$titles%' ";
            $result = mysqli_query($conn2, $query);
            if (mysqli_num_rows($result) > 0) {

                while ($row = mysqli_fetch_assoc($result)) {
                    $image = $row['image'];
                    $name = $row['name'];
                    $price = $row['price'];
                    $descp = $row['descrip'];
                    $rating = $row['rating'];
                    $comments = $row['comments'];
                    $id = $row['id'];
                    echo "<section class='product'>
                        <img src='$image' alt='image'>
                        <div class='prod-info'>
                            <div class='title'>
                            <h3 class='name'>$name</h3>
                            <h4 class='price'>Rs $price</h4>
                            </div>
                            <p>Rating:$rating Stars</p>
                            <div class='ending'>
                                <a href='addtocart.php?id=$id' class='cart'>Add to Cart</a>
                            </div>
                        </div>
                        
                        
                    </section>";
                }
            } else {
                echo "<div style='background-color:rgb(248, 248, 156)'>
                    <h1 style='text-align:center'> No Matching Notes Found </h1> 
                </div>";
            }
        } else {

            $select = "SELECT * FROM `products`";
            $result = mysqli_query($conn2, $select);
            $limit = 6;
            $total_pages = ceil(mysqli_num_rows($result) / $limit);
            $curr_page = 1;
            if (isset($_GET['page'])) {
                $curr_page = $_GET['page'];
            }

            $start = ($curr_page - 1) * $limit;
            $query2 = "SELECT * FROM `products` LIMIT $start,$limit";
            $result2 = mysqli_query($conn2, $query2);
            if (mysqli_num_rows($result2) > 0) {
                while ($row = mysqli_fetch_assoc($result2)) {
                    $image = $row['image'];
                    $name = $row['name'];
                    $price = $row['price'];
                    $descp = $row['descrip'];
                    $rating = $row['rating'];
                    $comments = $row['comments'];
                    $id = $row['id'];
                    echo "<section class='product'>
                    <img src='$image' alt='image'>
                    <div class='prod-info'>
                        <div class='title'>
                        <h3 class='name'>$name</h3>
                        <h4 class='price'>Rs $price</h4>
                        </div>
                        <p>Rating:$rating Stars</p>
                        <div class='ending'>
                            <a href='addtocart.php?id=$id' class='cart'>Add to Cart</a>
                        </div>
                    </div>
                    
                    
                </section>";
                }
            } else {
                echo "<a href='add.php' class='Add'>No Products Available For Sale</a>";
            }
        }
        ?>



    </main>
    <footer class="footer">
        <?php

        if (!isset($_POST['submit'])) {
            echo "<p> Pages-</p>";
            for ($i = 1; $i <= $total_pages; $i++) {
                echo "<a  href='user.php?page=$i'>$i</a>";
            }
        }




        ?>
    </footer>

</body>

</html>