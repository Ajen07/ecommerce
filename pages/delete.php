<?php
session_start();
@include '../config/database.php';
$sl_no = $_GET['id'];
$delete = "DELETE FROM `products` WHERE id='$sl_no'";
$result = mysqli_query($conn2, $delete);
/* if ($result) {
    $query = "SELECT * FROM `products`";
    $result2 = mysqli_query($conn2, $query);
    if (mysqli_num_rows($result2) > 0) {

        while ($row = mysqli_fetch_assoc($result2)) {
            if ((int)$row['id'] > (int)$sl_no) {
                $id = ((int)$row['id']) - 1;
                $id_change=(string)$id;
                $update = "UPDATE `products` SET `id`='$id_change'";
                $result3 = mysqli_query($conn2, $update);
            }
        }
        $query2 = "SELECT MAX( `id` ) AS max FROM `products`";
        $result4 = mysqli_query($conn2, $query2);
        $row = mysqli_fetch_assoc($result4);
        $largest = $row['max'];
        $query3 = "ALTER TABLE `products` AUTO_INCREMENT = $largest";
        $result3 = mysqli_query($conn2, $query3);
    }
} */



header('Location: admin.php');
