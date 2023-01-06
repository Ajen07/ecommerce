<?php
@include '../config/database.php';
session_start();
$id=$_GET['id'];
$email=$_SESSION['user_email'];

$query="SELECT * FROM `products` WHERE id='$id'";
$result=mysqli_query($conn2,$query);
if (mysqli_num_rows($result)>0) {
    $row=mysqli_fetch_assoc($result);
    $image = $row['image'];
    $name = $row['name'];
    $price = $row['price'];
    $query2="INSERT INTO `$email` (sl_no,item_name,price) VALUES ('$id','$name','$price')";
    $result2=mysqli_query($conn3,$query2);
    if ($result) {
        echo"<script>alert('Item Added To Cart')</script>";
        header('Location: user.php');
    }
}




?>
