	<?php
	include("model/M_sanpham.php");
	{
		$idsp = $_GET['idsp'];
		//var_dump($idsp);die;
		//print_r($idsp);die;
		$m_sanpham = new M_sanpham();
		$xoasp = $m_sanpham->queryxoasp($idsp);
		//header("location:../admin/index.php");
		header("location:../admin/index.php?quanly=sanpham&cn=qlsanpham");
		
	}

?>