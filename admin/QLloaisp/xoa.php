<?php
	include("model/M_sanpham.php");
	{
		$idloaisp = $_GET['idloaisp'];
		$m_sanpham = new M_sanpham();
		$xoaloaisp = $m_sanpham->queryxoaloaisp($idloaisp);
		header("location:../admin/index.php?quanly=loaisp&cn=qlloaisp");
		
	}

?>