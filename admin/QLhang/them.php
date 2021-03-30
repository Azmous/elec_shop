<?php
	if(isset($_POST['submit1'])){

    $tenhang = $_POST['tenhang'];
     include_once("model/M_sanpham.php");
    $m_sanpham = new M_sanpham();
    $them = $m_sanpham->querythemhang($tenhang);
    header("location:../admin/index.php?quanly=hangsx&cn=qlhang");
	}
?>
<div class="form">
         <form action="" method="POST" class="niceform" enctype="multipart/form-data">
            <caption><h2>Thêm Hãng sản xuất</h2> </caption>
                <fieldset>
                    <dl>
                        <dt><label for="Tên">Tên hãng sản xuất:</label></dt>
                        <dd><input type="text" name="tenhang" size="54" required="" /></dd>
                    </dl>
                    <dl class="submit">
                    <input type="submit" name="submit1"  value="Thêm" />
                     </dl>
                </fieldset>
            </form>
        </div>