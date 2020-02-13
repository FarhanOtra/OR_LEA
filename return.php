<?php 

include_once("koneksi.php");

$No_Rental = $_GET['No_Rental'];

$result = mysqli_query($conn, "UPDATE rentalmobil SET Status='DONE' WHERE No_Rental=$No_Rental");

$ambil = mysqli_query($conn,"SELECT ID_Mobil FROM rentalmobil WHERE No_Rental = $No_Rental ");

$data = mysqli_fetch_assoc($ambil);

$ID_Mobil = $data['ID_Mobil'];

$result = mysqli_query($conn, "UPDATE mobil SET Status='Ready' WHERE ID_Mobil = '$ID_Mobil'");

header('Location: pengembalian.php');

 ?>