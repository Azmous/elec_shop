<?php
	include("model/M_sanpham.php");
	{
		$idhang = $_GET['id'];
		$m_sanpham = new M_sanpham();
		$xoa = $m_sanpham->queryxoahang($idhang);
		header("location:../admin/index.php?quanly=hangsx&cn=qlhang");
		
	}

?>