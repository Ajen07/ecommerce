<?php

$conn=mysqli_connect('localhost','root','','users');

if ($conn->connect_error) {
    die('Connection Failed' . $conn->connect_error);
}
$conn2=mysqli_connect('localhost','root','','products');

if ($conn2->connect_error) {
    die('Connection Failed' . $conn2->connect_error);
}
$conn3=mysqli_connect('localhost','root','','cart');

if ($conn3->connect_error) {
    die('Connection Failed' . $conn3->connect_error);
}
  

?>