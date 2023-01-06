<?php
@include_once '../config/database.php';
session_start();
?>

<?php
$emailErr = $passwordErr = $ver_msg = $user_Err = '';
$emailexist = true;
$correctPass = true;
$emailnotfound = 0;
$ver_status = 0;


if (isset($_POST['submit'])) {



    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $password = md5($_POST['password']);
    $user_type = filter_input(INPUT_POST, 'user_type', FILTER_SANITIZE_EMAIL);
    $select = "SELECT * FROM `registeredusers`";
    $result = mysqli_query($conn, $select);
    $count = mysqli_num_rows($result);
    if (mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_assoc($result)) {

            if ($row['email'] == $email && $row['password'] == $password && $row['usertype'] == $user_type  && $row['is_verified'] == 1) {
                $_SESSION['user_name'] = strtoupper($row['firstname']);
                $_SESSION['user_email'] = $row['email'];
                if ($user_type == 'admin') {
                    header('Location: admin.php');
                } else {
                    header('Location: user.php');
                }
            } elseif ($row['email'] == $email && $row['is_verified'] == 0) {
                $ver_msg = 'Email Not Verified';
                $_SESSION['code'] = $row['verification_code'];
                $_SESSION['user_email'] = $email;
            } elseif ($row['email'] == $email && $row['password'] != $password  && $row['is_verified'] == 1) {
                $ver_status = 1;
                $correctPass = false;
                $passwordErr = 'Incorrect password';
            } elseif ($row['email'] != $email) {
                $emailnotfound++;
            }
        }
        if ($emailnotfound == $count) {
            $emailexist = false;
            $emailErr = 'Email is not Registereed';
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
                Spread comfort and joy with the world’s coziest gifts.The weather-repellent Mizzle Collection is ready to keep you cozy.GET OUT & GO ALL IN
            </div>
        </section>
        <section class="secondcomp">
            <div>
                <div class="form">
                    <?php
                    if (isset($_POST['submit'])) {
                        if (!$emailexist) {
                            echo "<h1 class='err'>$emailErr</h1>";
                        } elseif ($ver_status == 1) {
                            if (!$correctPass) {
                                echo "<h1 class='err'>$passwordErr</h1>";
                            }
                        }
                        if (!empty($ver_msg)) {
                            echo "<h1 class='err'>$ver_msg <a style='text-decoration: none;color:blue' href='verify.php?email=$email'>click to verify</a></h1>";
                        }
                    }
                    ?>
                    <form method="POST">
                        <input type="email" name="email" placeholder="email" required />
                        <input type="password" name="password" placeholder="password" required />
                        <select name="user_type" required>
                            <option value="user">user</option>
                            <option value="admin">admin</option>
                        </select>
                        <?php
                        if ($ver_status == 1 && !$correctPass) {

                        echo "<a href='forgot.php' style='text-decoration: none;text-align:center;color:purple'>Forgot Password?</a>";
                        }?>
                        <button class="claim" type="submit" name="submit">LOGIN</button>

                    </form>
                    <p style="color: black;text-align:center">Not a Customer?<a href="Signup.php">Sign Up</a></p>
                </div>
            </div>
        </section>
    </main>

</body>

</html>