<?php
session_start();
@include '../config/database.php';
$sl_no = $_GET['id'];
$email = $_SESSION['user_email'];
$delete = "DELETE FROM `$email` WHERE id='$sl_no'";
$result = mysqli_query($conn3, $delete);
/* if ($result) {
    $query = "SELECT * FROM `$email`";
    $result2 = mysqli_query($conn3, $query);
    if (mysqli_num_rows($result2) > 0) {

        while ($row = mysqli_fetch_assoc($result2)) {
            if ($row['id'] > $sl_no) {
                $id = ($row['id']) - 1;
                $id_change = $id;
                $update = "UPDATE `$email` SET `id`='$id'";
                $result3 = mysqli_query($conn3, $update);
            }
        }
        $query2 = "SELECT MAX( `id` ) AS max FROM `$email`";
        $result4 = mysqli_query($conn3, $query2);
        $row = mysqli_fetch_assoc($result4);
        $largest = $row['max'];
        $query3 = "ALTER TABLE `$email` AUTO_INCREMENT = $largest";
        $result3 = mysqli_query($conn3, $query3);
    }
} */




header('Location: cart.php');
