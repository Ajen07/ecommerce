<?php
@include '../config/database.php';

$id = $_GET['id'];
$id2=$_GET['id2'];

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/home.css">
    <link rel="stylesheet" href="../CSS/buy.css">
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
            <a href="logout.php">Login Out</a>
        </div>
    </header>
    <main class='main'>
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
                                <a href='buy.php?id=$id' class='edit'>BUY</a>
                                <a href='details.php?id=$id' class='cart'>Add to Cart</a>
                            </div>
                        </div>
                        
                        
                    </section>";
                }
            }
        } else {
            $select = "SELECT * FROM `products` WHERE id='$id'";
            $result = mysqli_query($conn2, $select);
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                $image = $row['image'];
                $descp = htmlspecialchars_decode($row['descrip']);
                echo "
                    <img src='$image' alt='image' class='prod-img'>
                    <div class='prod'>
                        <h1 class='prod-hd'>Product Details</h1>
                        <p class='prod-descp'>$descp</p>
                    </div>
                    

                
            ";
            echo"<div class='checkout'><a  href='checkout.php?id=$id&&id2=$id2'>Procced To Checkout<a></div>";
            }
        }
        ?>

    </main>


</body>

</html>