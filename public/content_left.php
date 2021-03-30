<?php
    include_once "controller/xulysanpham.php";
    $xulysanpham = new xulysanpham();
    $loaisp = $xulysanpham->loaisp();
    $nhasx = $xulysanpham->nhasx();
    $allloaisp = $loaisp['loaisp'];
    $allnhasx = $nhasx['nhasx'];
?><!-- ============================================== SIDEBAR ============================================== -->  
        <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
            
            <!-- ================================== TOP NAVIGATION ================================== -->
<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>        
    <nav class="yamm megamenu-horizontal" role="navigation">
        <ul class="nav">
            <?php 
              for($i=0;$i<count($allloaisp);$i++){
            ?>
            <li class="dropdown menu-item" >
                <a href="" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-desktop fa-fw"></i><?=$allloaisp[$i]->tenloai?></a>
                 <ul class="dropdown-menu mega-menu" style=" min-width: 100%">
    <li class="yamm-content">
        <div class="row">
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled"> 
                    <?php
                       for($j=0;$j<count($allnhasx);$j++)
                        {
                    ?>
                    <li><a href="?xem=menu&maloai=<?=$allloaisp[$i]->maloai?>&manhasx=<?=$allnhasx[$j]->manhasx?>"><?=$allnhasx[$j]->tenhang?></a></li>
                    <?php
                        }
                     ?>
                 </ul>
        </div><!-- /.row -->
    </li><!-- /.yamm-content -->                    
</ul><!-- /.dropdown-menu -->            </li><!-- /.menu-item -->
<?php
  }
?>

          
        </ul><!-- /.nav -->
    </nav><!-- /.megamenu-horizontal -->
</div><!-- /.side-menu -->



        </div><!-- /.sidemenu-holder -->