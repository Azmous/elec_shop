<?php
if(isset($_GET['xem'])){
	$tam=$_GET['xem'];
}else
{
	$tam = "";
}
if($tam == 'dangki')
{
	include 'public/dangki.php';
}else if($tam=='dangnhap')
{
	include "public/dangnhap.php";
}
else if($tam=='loaisanpham'){
	include "public/loaisanpham.php";
}
else if($tam =='chitietsanpham'){
	include "public/chitietsanpham.php";
}
else if($tam =='hangsanpham'){
	include "public/hangsanpham.php";
}
else if($tam=='lienhe'){
	include "public/lienhe.php";
}
else if($tam=='timkiem'){
	include "public/timkiem.php";
}
else if($tam=='dangxuat'){
	include "public/dangxuat.php";
}
else if($tam=='menu'){
	include "public/loaisanphamvanhasx.php";
}
else
{
	include "public/sanpham.php";
}

	
?>
