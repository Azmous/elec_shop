<?php 
    include_once "controller/xulysanpham.php";
    $xulysanpham = new xulysanpham();
    $loaisp = $xulysanpham ->loaisp();
    $tbloaisp = $loaisp['loaisp'];

?>
    <h2>Table Loại Sản phẩm</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">Mã loại</th>
            <th scope="col" class="rounded">Tên loại sản phẩm</th>
            <th scope="col" class="rounded-q4">Xóa</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($tbloaisp as$value){ ?>
        <form>
    	<tr>
        	<td><input type="checkbox" name="" /></td>
            <td><?=$value->maloai?></td>
            <td><?=$value->tenloai?></td>
            <td><a href="?quanly=qlloaisp&cn=xoa&idloaisp=<?=$value->maloai?>" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr></form> <?php } ?>

    </tbody>
</table>

	 <a href="?quanly=qlloaisp&cn=them" class="bt_green"><span class="bt_green_lft"></span><strong>Thêm loại sản phẩm</strong><span class="bt_green_r"></span></a>
     
     
        <div class="pagination">
        <span class="disabled"><< prev</span><span class="current">1</span><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a href="">101</a><a href="">next >></a>
        </div> 