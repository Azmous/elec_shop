<?php
	if(isset($_POST['submit1'])){

    $tenloaisp = $_POST['tenloaisp'];
     include_once("model/M_sanpham.php");
    $m_sanpham = new M_sanpham();
    $them = $m_sanpham->querythemloaisp($tenloaisp);
    header("location:../admin/index.php?quanly=loaisp&cn=qlloaisp");
	}
?>
<div class="form">
         <form action="" method="POST" class="niceform" enctype="multipart/form-data">
            <caption><h2>Thêm loại Sản phẩm</h2> </caption>
                <fieldset>
                    <dl>
                        <dt><label for="Tên">Tên loại sản phẩm:</label></dt>
                        <dd><input type="text" name="tenloaisp" size="54" required="" /></dd>
                    </dl>
                    <dl class="submit">
                    <input type="submit" name="submit1"  value="Thêm" />
                     </dl>
                </fieldset>
            </form>
        </div>