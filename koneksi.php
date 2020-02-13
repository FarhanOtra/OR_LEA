<?php 

 $conn = mysqli_connect("Localhost","root","","rental");

 if(mysqli_connect_errno()){
 	echo "Koneksi Database Gagal : " . mysqli_connect_error();
 } 

 ?>