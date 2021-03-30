<?php
	include("model/M_khachhang.php");
	{
		$idkhachhang = $_GET['id'];
		$M_khachhang = new M_khachhang();
		$xoa = $M_khachhang->queryxoakhachhang($idkhachhang);
		header("location:../admin/index.php?quanly=khachhang&cn=qlkhachhang");
		
	}

?>