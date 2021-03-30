 <?php include_once "controller/xulykhachhang.php";
        $xulykhachhang = new xulykhachhang();
        $khachhang = $xulykhachhang->khachhang();
        $tbkhachhang = $khachhang['khachhang'];
?>   
    <h2>Table Khách hàng</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">Mã KH</th>
            <th scope="col" class="rounded">Tên khách hàng</th>
            <th scope="col" class="rounded">Email</th>
            <th scope="col" class="rounded">Password</th>
            <th scope="col" class="rounded-q4">Xóa</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($tbkhachhang as $value){ ?>
        <form>
    	<tr>
        	<td><input type="checkbox" name="" /></td>
            <td><?=$value->makh?></td>
            <td><?=$value->tenkh?></td>
            <td><?=$value->email?></td>
            <td><?=$value->pass?></td>


            <td><a href="?quanly=qlkhachhang&cn=xoa&id=<?=$value->makh?>" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr></form><?php } ?>
 
    </tbody>
</table>


     
     
        <div class="pagination">
        <span class="disabled"><< prev</span><span class="current">1</span><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a href="">101</a><a href="">next >></a>
        </div> 