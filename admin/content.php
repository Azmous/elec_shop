<?php
if(isset($_GET['quanly'])&&$_GET['cn']){
	$tam=$_GET['quanly'];
	$tam1=$_GET['cn'];
}else
{
	$tam = "";
}
if(($tam == 'sanpham')&&($tam1 == 'qlsanpham'))
{
	include 'QLsanpham/qlsanpham.php';
}else if(($tam=='qlsanpham')&&($tam1 == 'them'))
{
	include "QLsanpham/them.php";
}else if(($tam=='qlsanpham')&&($tam1 == 'sua'))
{
	include "QLsanpham/sua.php";
}else if(($tam=='qlsanpham')&&($tam1='xoa'))
{
	include "QLsanpham/xoaSP.php";
}else if(($tam=='loaisp')&&($tam1 == 'qlloaisp'))
{
	include "QLloaisp/qlloaisp.php";
}else if(($tam=='qlloaisp')&&($tam1 == 'xoa'))
{
	include "QLloaisp/xoa.php";
}else if(($tam=='qlloaisp')&&($tam1 == 'them'))
{
	include "QLloaisp/them.php";
}else if(($tam=='khachhang')&&($tam1 == 'qlkhachhang'))
{
	include "QLkhachhang/qlkhachhang.php";
}else if(($tam=='qlkhachhang')&&($tam1 == 'xoa'))
{
	include "QLkhachhang/xoa.php";
}else if(($tam=='donhang')&&($tam1 == 'qldonhang'))
{
	include "QLdonhang/qldonhang.php";
}else if(($tam=='hangsx')&&($tam1 == 'qlhang'))
{
	include "QLhang/qlhang.php";
}else if(($tam=='qlhang')&&($tam1 == 'xoa'))
{
	include "QLhang/xoa.php";
}else if(($tam=='qlhang')&&($tam1 == 'them'))
{
	include "QLhang/them.php";
}else if(($tam=='tc')&&($tam1 == 'dangxuat'))
{
	include "dangxuat.php";
}else if($tam=='thongtinadmin')
{
	include "thongtinadmin.php";
}


else
{
	include "content_right.php";
}

	
?>