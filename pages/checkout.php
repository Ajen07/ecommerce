<?php
session_start();
@include '../config/database.php';
require('../config/stripe-php-master/init.php');
$publishablekey = "pk_test_51MMwrGSCHTDseoBwJeUGiRYFFtBeciNm0mY00Bm4cND8P9r2i4zD7YNHgxMk4RleYgpFGvIsyosjxYzOoyYo3zJl00MLXWGVwj";
$secretkey = "sk_test_51MMwrGSCHTDseoBwTdf4mj9frQORoMb9Z93pVGovbEqBTYRIFWxGouNAnmjtB1l10sNHgTwkvKReKysANgLXYo1r000riBEugj";
$id = $_GET['id'];
$id2 = $_GET['id2'];
$email = $_SESSION['user_email'];
\Stripe\Stripe::setApiKey($secretkey);
$query = "SELECT * FROM `products` WHERE id='$id'";
$result = mysqli_query($conn2, $query);
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $price = $row['price'] * 100;
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action=<?php echo"checkoutsuccess.php?id=$id2"?> method="POST">
        <script src="https://checkout.stripe.com/checkout.js" class="stripe-button" data-key='<?php echo "$publishablekey" ?>' data-amount='<?php echo "$price" ?>' data-currency="inr" data-email='<?php echo "$email" ?>'>
        </script>
    </form>

</body>

</html>