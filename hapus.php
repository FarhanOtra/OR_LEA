<?php 

include_once("koneksi.php");

$ID_Mobil = $_GET['ID_Mobil'];

$result = mysqli_query($conn, "DELETE FROM mobil WHERE ID_Mobil = '$ID_Mobil'");

header('Location: mobil.php');

 ?>