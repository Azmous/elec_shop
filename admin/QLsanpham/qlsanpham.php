<?php 
include_once "controller/xulysanpham.php";
include_once "model/M_sanpham.php";
?>
<?php
if(isset($_GET['page'])){
    $tranghientai = $_GET['page'];
    }else{
        $tranghientai="";
    }
    $M_sanpham= new M_sanpham();
$xulysanpham = new xulysanpham();
$sanpham =$xulysanpham->sanpham();
$tbsanpham = $sanpham['sanpham'];
$tongsotrang = ceil(count($tbsanpham)/9);
    if($tranghientai>$tongsotrang){
        $tranghientai=$tongsotrang;
    }else if($tranghientai<=1){
        $tranghientai=1;
    }
    $spbatdau =($tranghientai-1)*9;
    $phantrangsp = $M_sanpham->queryPtIndex($spbatdau);
//print_r($tbsanpham);
?>
    <h2>Table Sản phẩm</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">Tên sản phẩm</th>
            <th scope="col" class="rounded">Trạng thái</th>
            <th scope="col" class="rounded">Giá</th>
            <th scope="col" class="rounded">Hình</th>
            <th scope="col" class="rounded">Số lượng</th>
            <th scope="col" class="rounded">Sửa</th>
            <th scope="col" class="rounded-q4">Xóa</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($phantrangsp as $value){ 
            //var_dump($tbsanpham);
        ?>
        <form>
    	<tr>
        	<td><input type="checkbox" name="" /></td>
            <td><?=$value->tensp?></td>
            <td><?=$value->trangthai?></td>
            <td><?=$value->dongia?></td>
            <td><?=$value->hinh?></td>
            <td><?=$value->soluong?></td>

            <td><a href="?quanly=qlsanpham&cn=sua&idsp=<?=$value->masp?>"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="?quanly=qlsanpham&cn=xoa&idsp=<?=$value->masp?>" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr></form>
        <?php } ?>

    </tbody>
</table>

	 <a href="?quanly=qlsanpham&cn=them" class="bt_green"><span class="bt_green_lft"></span><strong>Thêm sản phẩm</strong><span class="bt_green_r"></span></a>
     
     
        <div class="pagination">
        <span class="disabled">
            <?php for($i=1;$i<=$tongsotrang;$i++){
                        if($i==$tranghientai){ ?>
                        </span><span class="current"><?=$i?></span>
                        <?php }else{
                         ?>
                        <a href="?quanly=sanpham&cn=qlsanpham&page=<?=$i?>"><?=$i?></a>
                        <?php } } ?>
        </div>