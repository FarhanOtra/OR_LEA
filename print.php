<?php

require('fpdf.php');
require('koneksi.php');

$No_Rental = $_GET['No_Rental'];
$ID_Mobil = $_GET['ID_Mobil'];
$ID_Kasir = $_GET['ID_Kasir'];

$pdf = new FPDF('P','mm','A4');

$pdf->AddPage();

$pdf->SetFont('Arial','B',16);

$pdf->Cell(190,7,'RENTAL MOBIL',0,1,'C');
$pdf->SetFont('Arial','B',12);

$pdf->Cell(10,7,'',0,1);
 
$pdf->SetFont('Arial','',10);
 
$result = mysqli_query($conn,"SELECT * from rentalmobil,mobil,admin WHERE rentalmobil.No_Rental = $No_Rental and mobil.ID_Mobil='$ID_Mobil' and admin.Username='$ID_Kasir'");
$row = mysqli_fetch_array($result);

$pdf->Cell(190,7,'No Rental    : ' . $row['No_Rental'],0,1,);
$pdf->Cell(190,7,'Nama Peminjam    : ' . $row['Nama'],0,1,);
$pdf->Cell(190,7,'No KTP    : ' . $row['No_KTP'],0,1,);
$pdf->Cell(190,7,'Alamat    : ' . $row['Alamat'],0,1,);
$pdf->Cell(190,7,'No_HP    : ' . $row['No_HP'],0,1,);
$pdf->Cell(10,7,'',0,1);
$pdf->Cell(190,7,'ID Mobil    : ' . $row['ID_Mobil'],0,1,);
$pdf->Cell(190,7,'Merk Mobil    : ' . $row['Merk'],0,1,);
$pdf->Cell(190,7,'Warna Mobil  : ' . $row['Warna'],0,1,);
$pdf->Cell(190,7,'Nomor Polisi    : ' . $row['NomorPolisi'],0,1,);
$pdf->Cell(190,7,'Harga Sewa (Hari)    : Rp.' . $row['Harga'],0,1,);
$pdf->Cell(190,7,'Lama Peminjaman   : ' . $row['Lama'] . ' Hari',0,1,);
$pdf->Cell(190,7,'Total Harga    : Rp.' . $row['Harga'] * $row['Lama'],0,1,);
$pdf->Cell(10,7,'',0,1);
$pdf->Cell(190,7,'ID Kasir    : ' . $row['Username'],0,1,);
$pdf->Cell(190,7,'Username    : ' . $row['ID_Kasir'],0,1,);
 
$pdf->Output();
?>