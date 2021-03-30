<?php
	include_once "database.php";
 class M_sanpham extends database{
 	public function querysanpham(){
 		$sql = "SELECT * FROM sanpham";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function queryloaisp(){
 		$sql = "SELECT * FROM loaisp";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function querynhasx(){
 		$sql ="SELECT * FROM nhasx";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}
 		// xóa sản phẩm
 	public function queryxoasp($idsp){
 		$sql = "DELETE FROM sanpham WHERE masp = $idsp";
 		$this->setQuery($sql);
 		return $this->loadRow(array($idsp));
 	}

 		// thêm sản phẩm
 	public function querythem($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung){
 		$sql = "INSERT INTO sanpham(tensp, dongia, manhasx, soluong, trangthai, maloai, hinh, noidung) VALUES ('$tensp', '$dongia', $manhasx, $soluong, $trangthai, $maloai, '$hinh', '$noidung')";
 		$this->setQuery($sql);
 		return $this->execute(array($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung));
 	}


 			// sửa sản phẩm
 	public function querysua($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung, $masp){
 		$sql ="UPDATE sanpham SET tensp='$tensp', dongia='$dongia', manhasx=$manhasx, soluong=$soluong, trangthai=$trangthai, maloai=$maloai, hinh='$hinh', noidung='$noidung' WHERE masp = $masp";
 		$this->setQuery($sql);
 		return $this->execute(array($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $hinh, $noidung, $masp));
 	}


//loại sản phẩm


 		//xóa loại sản phẩm
 	public function queryxoaloaisp($idloaisp){
 		$sql = "DELETE FROM loaisp WHERE maloai = $idloaisp";
 		$this->setQuery($sql);
 		return $this->loadRow(array($idloaisp));
 	}

 		// thêm loại sản phẩm
 	public function querythemloaisp($tensp){
 		$sql = "INSERT INTO loaisp(tenloai) VALUES ('$tensp')";
 		$this->setQuery($sql);
 		return $this->execute(array($tensp));
 	}




 	//nhà sản xuất


 		//xóa hãng
 	public function queryxoahang($idhang){
 		$sql = "DELETE FROM nhasx WHERE manhasx = $idhang";
 		$this->setQuery($sql);
 		return $this->loadRow(array($idhang));
 	}

 		// thêm hãng
 	public function querythemhang($tenhang){
 		$sql = "INSERT INTO nhasx(tenhang) VALUES ('$tenhang')";
 		$this->setQuery($sql);
 		return $this->execute(array($tenhang));
 	}



 	 	public function queryPtIndex($spbatdau){
 		$sql = "SELECT * FROM sanpham limit $spbatdau,9";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($spbatdau));
 	}




 }
?>