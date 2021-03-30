<?php
include_once "model/M_sanpham.php";
class xulysanpham
{
	public function sanpham()
	{
		$m_sanpham = new M_sanpham();
		$sanpham = $m_sanpham->querysanpham();
		return array('sanpham'=>$sanpham);
	}
	public function loaisp(){
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

	public function loaispmn(){
		$m_sanpham = new M_sanpham();
		$loaisp = $m_sanpham->queryloaispmn();
		return array('loaisp'=>$loaisp);
	}
	public function nhasxmn()
	{
		$m_sanpham = new M_sanpham();
		$nhasx = $m_sanpham->querynhasxmn();
		return array('nhasx'=>$nhasx);
	}


	public function maloaisp()
	{
		$id_loaisp = $_GET['id_loaisp'];
		if(isset($_GET['page'])){
			$tranghientai = $_GET['page'];
		}else{
			$tranghientai="";
		}
		$m_sanpham = new M_sanpham();
		$sanpham1loai = $m_sanpham->queryIDloaisp($id_loaisp);
		$title = $m_sanpham->querytenloaisp($id_loaisp);
		$tongsotrang = ceil(count($sanpham1loai)/9);
		if($tranghientai>$tongsotrang){
			$tranghientai=$tongsotrang;
		}else if($tranghientai<=1){
			$tranghientai=1;
		}
		$spbatdau =($tranghientai-1)*9;
		$danhmucsp = $m_sanpham->queryPtloaisp($id_loaisp,$spbatdau);
		return array('danhmucsp'=>$danhmucsp,'title'=>$title,'tongsotrang'=>$tongsotrang,'tranghientai'=>$tranghientai);
	}


	public function mahangsx()
	{
		$id_hangsp = $_GET['id_hangsp'];
		if(isset($_GET['page'])){
			$tranghientai = $_GET['page'];
		}else{
			$tranghientai="";
		}
		$m_sanpham = new M_sanpham();
		$sanpham1hang = $m_sanpham->queryIDhangsp($id_hangsp);
		$title = $m_sanpham->querytenhangsp($id_hangsp);
		$tongsotrang = ceil(count($sanpham1hang)/9);
		if($tranghientai>$tongsotrang){
			$tranghientai=$tongsotrang;
		}else if($tranghientai<=1){
			$tranghientai=1;
		}
		$spbatdau =($tranghientai-1)*9;
		$danhmuchang = $m_sanpham->queryPtnhasx($id_hangsp,$spbatdau);
		return array('danhmuchang'=>$danhmuchang,'title'=>$title,'tongsotrang'=>$tongsotrang,'tranghientai'=>$tranghientai);
	}

	public function masanpham()
	{
		$id_sanpham = $_GET['id_sanpham'];
		$m_sanpham = new M_sanpham();
		$chitietsanpham = $m_sanpham->queryidsanpham($id_sanpham);
		return array('chitietsanpham'=>$chitietsanpham);
	}

	public function timkiem($tukhoa)
	{
		$m_sanpham = new M_sanpham();
		$timkiem = $m_sanpham->querytimkiem($tukhoa);
		return array('timkiem'=>$timkiem);
	}

	public function menu()
	{
		$maloai = $_GET['maloai'];
		$manhasx = $_GET['manhasx'];
		$m_sanpham = new M_sanpham();
		$sanpham = $m_sanpham->querymenu($maloai,$manhasx);
		return array('sanpham'=>$sanpham);
	}

}
?>