<?php
@include '../config/database.php';
session_start();
$id = $_GET['id'];
$email = $_SESSION['user_email'];
$select="SELECT * FROM `admincart` WHERE id='$id'";
$result=mysqli_query($conn3,$select);
if (mysqli_num_rows($result)>0) {
    $row=mysqli_fetch_assoc($result);
    $idate=$row['delivery_date'];
}
if (isset($_POST['submit'])) {
    $date= filter_input(INPUT_POST, 'date', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $status= filter_input(INPUT_POST, 'status', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    $query="UPDATE `admincart` SET `delivery_date`='$date',`delivery_status`='$status' WHERE id='$id'";
    $result2=mysqli_query($conn3,$query);
    if ($result) {
        header('Location: adminorders.php');
    }
}

?>
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
        <form method="POST" enctype="multipart/form-data">
            <input type="text" name="date" placeholder="Delivery Date" value='<?php echo "$idate" ?>' required>
            <p>DELIVERY STATUS</p>
            <label for="true">Delivered</label>
            <input type="radio" id="true" name="status" value="Delivered" required>
            <label for="false">Not Delivered</label>
            <input type="radio" id="false" name="status" value="Not Delivered" required>
            

            <button type="submit" name="submit" class="add">Save Changes</button>
            <!-- <input type="submit" value="Add" name="submit"> -->
        </form>
    </main>

</body>

</html>