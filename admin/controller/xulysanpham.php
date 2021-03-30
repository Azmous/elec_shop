<?php
include"model/M_sanpham.php";
class xulysanpham
{
	public function sanpham()
	{
		$m_sanpham = new M_sanpham();
		$sanpham = $m_sanpham->querysanpham();
		return array('sanpham'=>$sanpham);
	}

	public function loaisp()
	{
		$m_sanpham = new M_sanpham();
		$loaisp = $m_sanpham->queryloaisp();
		return array('loaisp'=>$loaisp);
	}

	public function nhasx()
	{
		$m_sanpham = new M_sanpham();
		$nhasx = $m_sanpham->querynhasx();
		return array('nhasx'=>$nhasx);
	}


	// public function them($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung){
	// 	$m_sanpham = new M_sanpham();
	// 	$them = $m_sanpham->querythem($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung);
	// 	if($them == true){
	// 	$_SESSION['success'] = "Thêm thành công";
	// 	header("location:../admin/index.php");
	// 	if(isset($_SESSION['error'])){
	// 		unset($_SESSION['error']);
	// 		}
	// 	}
	// 	else{
	// 		$_SESSION['error'] = "Không thành công";
	// 		header("location:../admin/index.php?quanly=sanpham&cn=qlsanpham");
	// 		}
	// 	}


	 // public function them($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung){
	 // 	$m_sanpham = new M_sanpham();
	 // 	$them123 = $m_sanpham->querythem($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung);

	 // }




}
?>