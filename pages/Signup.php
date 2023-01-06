<?php
@include '../config/database.php';

$firstname = $lastname = $email = $password = '';
$emailErr = '';

if (isset($_POST['submit'])) {
    $firstname = filter_input(INPUT_POST, 'firstname', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $lastname = filter_input(INPUT_POST, 'lastname', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $user_type = filter_input(INPUT_POST, 'user_type', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $address = filter_input(INPUT_POST, 'address', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $password = md5($_POST['password']);

    $select = "SELECT * FROM `registeredusers` WHERE email='$email' && password='$password'";
    $query = mysqli_query($conn, $select);

    if (mysqli_num_rows($query) > 0) {
        $emailErr = 'User Already Exists';
    } else {
        $v_code = bin2hex(random_bytes(6));
        $sql = "INSERT INTO registeredusers (firstname,lastname,usertype,address,email,password,verification_code,is_verified) VALUES ('$firstname','$lastname','$user_type','$address','$email','$password','$v_code','0')";
        $create = "CREATE TABLE `cart`.`$email` (`id` INT(11) NOT NULL AUTO_INCREMENT,`sl_no` INT(11) NOT NULL , `item_name` VARCHAR(256) NOT NULL , `price` INT(5) NOT NULL , `is_ordered` INT(5) NOT NULL DEFAULT '0' , `payment_status` INT(5) NOT NULL DEFAULT '0' , `order_date` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , `delivery_date` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , `delivery_status` INT NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ;
        ";
        if (mysqli_query($conn, $sql) && mysqli_query($conn3,$create)) {
            header('Location: login.php');
        } else {
            echo 'Error' . mysqli_error($conn);
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/signup.css">
    <title>Document</title>
</head>

<body>
    <main class="container">
        <section class="firstcomp">
            <div class="boldest">The World’s Most </div>
            <div class="boldest">Comfortable Shoes</div>
            <div class="tag">
                Spread comfort and joy with the world’s coziest Shoes.The weather-repellent Mizzle Collection is ready to keep you cozy.GET OUT & GO ALL IN
            </div>
        </section>
        <section class="secondcomp">
            <div>
                <p class="try">Get 30% Discount On Your First Order</p>
                <div class="form">
                    <?php
                    if (!empty($emailErr)) {
                        echo "<h1 class='err'>$emailErr</h1>";
                    }
                    ?>
                    <form method="POST">
                        <input type="text" name="firstname" placeholder="firstname" required />
                        <input type="text" name="lastname" placeholder="lastname" required />
                        <input type="email" name="email" placeholder="email" required />
                        <input type="text" name="address" placeholder="Address" required />
                        <select name="user_type" required>
                            <option value="user">user</option>
                            <option value="admin">admin</option>
                        </select>
                        <input type="password" name="password" placeholder="password" required />
                        <button class="claim" type="submit" name="submit">REGISTER TO CONTINUE SHOPPING</button>

                    </form>
                    <p style="color: black;text-align:center">Already a customer?<a href="login.php">Login</a></p>
                </div>
            </div>
        </section>
    </main>

</body>

</html>