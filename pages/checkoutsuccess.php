<?php
@include '../config/database.php';
session_start();
$id = $_GET['id'];
$email = $_SESSION['user_email'];

if (isset($_POST['stripetoken'])) {
    \Stripe\Stripe::setVerifySslCerts(false);
    $token = $_POST['stripetoken'];
    $data = \Stripe\Charge::create(array(
        "amount" => $price,
        "currency" => "inr",
        "source" => $token
    ));
}

$query = "UPDATE `$email` SET `is_ordered`='1',`payment_status`='1' WHERE id='$id' ";
$result = mysqli_query($conn3, $query);
if ($result) {
    $query3 = "SELECT * FROM `$email` WHERE is_ordered='1'  AND id='$id'";
    $query4 = "SELECT * FROM `registeredusers` WHERE email='$email'";
    $result3 = mysqli_query($conn, $query4);
    $result2 = mysqli_query($conn3, $query3);
    if (mysqli_num_rows($result2) > 0 && mysqli_num_rows($result3) > 0) {
        $row = mysqli_fetch_assoc($result2);
        $row2 = mysqli_fetch_assoc($result3);
        $name = $row['item_name'];
        $price = $row['price'];
        $order_date = $row['order_date'];
        $address=$row2['address'];
        $query2 = "INSERT INTO `admincart`(`name`,`customer`, `price`, `address`, `order_date`) VALUES ('$name','$email','$price','$address','$order_date')";
        $result4=mysqli_query($conn3,$query2);
        if ($result4) {
            header('Location: cart.php');
        }
    }
    
}
