<?php

@include '../config/database.php';
session_start();
$imgErr = '';
if (isset($_POST['submit']) && isset($_FILES['file'])) {
    echo "Entered";
    $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $descp = filter_input(INPUT_POST, 'descp', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $price = filter_input(INPUT_POST, 'price', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $quant = filter_input(INPUT_POST, 'quant', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $file = $_FILES['file'];
    $img_name = $file['name'];
    $img_size = $file['size'];
    if ($img_size > 125000) {
        $imgErr = 'File is too large';
        echo "$img_size";
    } else {
        $img_ext = strtolower(pathinfo($img_name, PATHINFO_EXTENSION));
        $allowed_ext = array("jpeg", "jpg", "png");
        if (in_array($img_ext, $allowed_ext)) {
            $destinationFile = '../ProductImages/' . $img_name;
            move_uploaded_file($file['tmp_name'], $destinationFile);
            $query = "INSERT INTO `products`(name,price,descrip,quant_avail,image) VALUES ('$name','$price','$descp','$quant','$destinationFile')";
            $result = mysqli_query($conn2, $query);
            if ($result) {
                echo "<script>alert('Item Added Successfully')</script>";
                header('Location: admin.php');
            }
        } else {
            echo "Error 2";
            echo "$img_name";
        }
    }
}


?>


<script src="../config/editorconfig/ckeditor.js"></script>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/add.css">
    <title>Document</title>
</head>

<body>
    <main class="container">
        <?php
        if (!empty($imgErr)) {
            echo "<h1 class='err' style='color:red'>$imgErr</h1>";
        }

        ?>
        <form method="POST" enctype="multipart/form-data">
            <div class="image">
                <label for="file">IMAGE</label>
                <input type="file" name="file" required>
            </div>



            <input type="text" name="price" placeholder="Price" required>
            <input type="text" name="name" placeholder="Name Of The Product" required>
            <input type="text" name="quant" placeholder="Quantity Available" required>
            <label for="descp">Product Description</label>
            <textarea name="descp" id="descp" class='descp' col="50" rows="10"></textarea>
            <button type="submit" name="submit" class="add">ADD</button>
        </form>
    </main>
    <script>
        CKEDITOR.replace('descp');
    </script>

</body>

</html>