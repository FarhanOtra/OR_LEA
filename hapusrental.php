<?php 

include_once("koneksi.php");

$No_Rental = $_GET['No_Rental'];

$result = mysqli_query($conn, "DELETE FROM rentalmobil WHERE No_Rental = '$No_Rental'");

header('Location: home.php');

 ?>