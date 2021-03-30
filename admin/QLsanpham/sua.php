<?php
require_once "controller/xulysanpham.php";
$xulysanpham = new xulysanpham();
$loaisp = $xulysanpham->loaisp();
$nhasx = $xulysanpham->nhasx();
$tbloaisp = $loaisp['loaisp'];
$tbnhasx = $nhasx['nhasx'];
?>

<?php 
    $idsp = $_GET['idsp'];


if(isset($_POST['submit']))
{
    $masp = $_POST['masp'];
    $tensp = $_POST['tensp'];
    $dongia = $_POST['gia'];
    $maloai = $_POST['loaisp'];
    $manhasx = $_POST['nhasx'];
    $soluong = $_POST['soluong'];
    $trangthai = $_POST['trangthai'];
   //  $hinh=$_FILES['hinh']['name'];
   // // var_dump($hinh);die;
   //  $hinh_tmp=$_FILES['hinh']['tmp_name'];
   //  move_uploaded_file($hinh_tmp,'uploads/'.$hinh);
    $arrImg = array("image/png", "image/jpeg", "image/bmp", "image/jpg");
    $name ='';
    $err ="";
        if(isset($_FILES["hinh"]["error"]))
        {
            $errFile = $_FILES["hinh"]["error"];
            if ($errFile>0)
                $err .="Lỗi file hình <br>";
            else
            {
                $type = $_FILES["hinh"]["type"];
                if (!in_array($type, $arrImg))
                    $err .="Không phải file hình <br>";
                else
                {   
                    $temp = $_FILES["hinh"]["tmp_name"];
                    $name = $_FILES["hinh"]["name"];
                    if (!move_uploaded_file($temp, "../imgsp/".$name)){
                        $err .="Không thể lưu file<br>";
                    }else{
                        echo "thanh cong";
                    }

                }
            }
        }else{
            echo "khong co hinh";
        }

    $noidung = $_POST['noidung'];
   include_once("model/M_sanpham.php");
    $m_sanpham = new M_sanpham();
    $sua = $m_sanpham->querysua($tensp, $dongia, $manhasx, $soluong, $trangthai, $maloai, $name, $noidung, $masp);

    //header("location:../admin/index.php");
    header("location:../admin/index.php?quanly=sanpham&cn=qlsanpham");

}
?>

<h2>Sửa sản phẩm</h2>
     
         <div class="form">
         <form action="" method="post" class="niceform">
         
                <fieldset>
                    <dl>
                        <dt><label for="email">Mã sản phẩm:</label></dt>
                        <dd><input type="text" name="masp"  size="54" value="<?=$idsp?>" readonly="readonly" /></dd>
                    </dl>
                    <dl>
                        <dt><label for="Tên">Tên sản phẩm:</label></dt>
                        <dd><input type="text" name="tensp" size="54" required="" /></dd>
                    </dl>
                    <dl>
                        <dt><label for="Giá">Đơn giá:</label></dt>
                        <dd><input type="text" name="gia" id="" size="54" required="" /></dd>
                    </dl>
                    <dl>
                        <dt><label for="gender">Loại sản phẩm:</label></dt>
                        <dd>
                            <select size="1" name="loaisp" id="">
                                <?php foreach ($tbloaisp as $value){ ?>
                                <option value="<?=$value->maloai?>"><?=$value->tenloai?></option>
                                <?php } ?>
                            </select>
                        </dd>
                    </dl>
                    <dl>
                        <dt><label for="gender">Hãng sản xuất:</label></dt>
                        <dd>
                            <select size="1" name="nhasx" id="">
                                <?php foreach ($tbnhasx as $value){ ?>
                                <option value="<?=$value->manhasx?>"><?=$value->tenhang?></option>
                                <?php } ?>
                            </select>
                        </dd>
                    </dl>
                    <dl>
                        <dt><label for="interests">Số lượng:</label></dt>
                        <dd>
                            <input type="text" name="soluong" required="">
                        </dd>
                    </dl>
                    
                    <dl>
                        <dt><label for="color">Trạng thái:</label></dt>
                        <dd>
                             <select size="1" name="trangthai" id="">
                                <option value="0">Kích hoạt</option>
                                <option value="1">Không kích hoạt</option>
                            </select>
                        </dd>
                    </dl>
                    
                    
                    
                    <dl>
                        <dt><label for="upload">Hình:</label></dt>
                        <dd><input type="file" name="hinh"  id="upload" required="" /></dd>
                        
                    </dl>
                
                    <dl>
                        <dt><label for="comments">Nội dung:</label></dt>
                        <dd><textarea name="noidung" id="comments" rows="10" cols="40" required=""></textarea></dd>
                    </dl>
                    

                    
                     <dl class="submit">
                    <input type="submit" name="submit"  value="Sửa" />
                     </dl>
                     
                    
                    
                    
                     
                     
                    
                </fieldset>
                
         </form>
         </div>