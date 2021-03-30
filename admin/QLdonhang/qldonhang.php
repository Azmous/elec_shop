<?php include_once "controller/xulydathang.php";
        $xulydathang = new xulydathang();
        $donhang = $xulydathang->donhang();
        $tbdonhang = $donhang['donhang'];
 ?> 
    <h2>Table Đơn hàng</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">Mã DH</th>
            <th scope="col" class="rounded">Mã HD</th>
            <th scope="col" class="rounded">Mã sp</th>
            <th scope="col" class="rounded">Mã KH</th>
            <th scope="col" class="rounded">Ngày đặt</th>
            <th scope="col" class="rounded">Ngày nhận</th>
            <th scope="col" class="rounded">Số lượng</th>
            <th scope="col" class="rounded">Đơn giá</th>
            <th scope="col" class="rounded-q4">Xóa</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($tbdonhang as $value){ ?>
        <form>
    	<tr>
        	<td><input type="checkbox" name="" /></td>
            <td><?=$value->madh?></td>
            <td><?=$value->mahd?></td>
            <td><?=$value->masp?></td>
            <td><?=$value->makh?></td>
            <td><?=$value->ngaydathang?></td>
            <td><?=$value->ngaynhanhang?></td>
            <td><?=$value->soluong?></td>
            <td><?=$value->dongia?></td>
            <td><a href="#" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr></form><?php } ?>
   
    </tbody>
</table>


     
     
        <div class="pagination">
        <span class="disabled"><< prev</span><span class="current">1</span><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a href="">101</a><a href="">next >></a>
        </div> 