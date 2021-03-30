<?php
	include_once "database.php";
 class M_sanpham extends database{
 	public function querysanpham(){
 		$sql = "SELECT * FROM sanpham";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function querysptulanh(){
 		$sql = "SELECT * FROM sanpham JOIN loaisp ON sanpham.maloai = loaisp.maloai WHERE tenloai LIKE 'Tủ lạnh'";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function querysptivi(){
 		$sql = "SELECT * FROM sanpham JOIN loaisp ON sanpham.maloai = loaisp.maloai WHERE tenloai LIKE 'Tivi'";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function queryspmaygiat(){
 		$sql = "SELECT * FROM sanpham JOIN loaisp ON sanpham.maloai = loaisp.maloai WHERE tenloai LIKE 'Máy giặt'";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function queryspmaylanh(){
 		$sql = "SELECT * FROM sanpham JOIN loaisp ON sanpham.maloai = loaisp.maloai WHERE tenloai LIKE 'Máy lạnh'";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function queryloaisp(){
 		$sql = "SELECT * FROM loaisp";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function querynhasx(){
 		$sql = "SELECT * FROM nhasx";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 		public function queryloaispmn(){
 		$sql = "SELECT * FROM loaisp";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function querynhasxmn(){
 		$sql = "SELECT * FROM nhasx";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}

 	public function queryIDloaisp($id_loaisp){
 		$sql = "SELECT * FROM loaisp join sanpham ON loaisp.maloai = sanpham.maloai WHERE sanpham.maloai=$id_loaisp";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($id_loaisp));
 	}
 	public function queryPtloaisp($id_loaisp,$spbatdau){
 		$sql = "SELECT * FROM loaisp join sanpham ON loaisp.maloai = sanpham.maloai WHERE sanpham.maloai=$id_loaisp LIMIT $spbatdau,12";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($id_loaisp,$spbatdau));
 	}

 	 public function querytenloaisp($id_loaisp){
 		$sql = "SELECT * FROM loaisp WHERE maloai = $id_loaisp";
 		$this->setQuery($sql);
 		return $this->loadRow(array($id_loaisp));
 	}




 	public function queryIDhangsp($id_hangsp){
 		$sql = "SELECT * FROM nhasx join sanpham ON nhasx.manhasx = sanpham.manhasx WHERE sanpham.manhasx= $id_hangsp";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($id_hangsp));
 	}
 	public function queryPtnhasx($id_hangsp,$spbatdau){
 		$sql = "SELECT * FROM nhasx join sanpham ON nhasx.manhasx = sanpham.manhasx WHERE sanpham.manhasx= $id_hangsp LIMIT $spbatdau,12";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($id_hangsp,$spbatdau));
 	}

 	 public function querytenhangsp($id_hangsp){
 		$sql = "SELECT * FROM nhasx WHERE manhasx = $id_hangsp";
 		$this->setQuery($sql);
 		return $this->loadRow(array($id_hangsp));
 	}



 	public function queryidsanpham($id_sanpham){
 		$sql = "SELECT * FROM sanpham WHERE masp = $id_sanpham";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($id_sanpham));
 	}

 	public function querytimkiem($tukhoa){
 		$sql = "SELECT * FROM sanpham WHERE tensp like N'%$tukhoa%'";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($tukhoa));
 	}

 	public function queryPtIndex($spbatdau){
 		$sql = "SELECT * FROM sanpham limit $spbatdau,15";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($spbatdau));
 	}

 	public function querymenu($maloai,$manhasx){
 		$sql ="SELECT * FROM sanpham WHERE sanpham.maloai = $maloai AND sanpham.manhasx=$manhasx";
 		$this->setQuery($sql);
 		return $this->loadAllRows(array($maloai,$manhasx));
 	}

 	

 }
?>