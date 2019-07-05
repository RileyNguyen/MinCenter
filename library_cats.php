<!DOCTYPE html>
<html lang="en">
<?php include 'database/config.php'; ?>
<?php include 'database/loadDataIndex.php'; ?>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="icon" href="image/logo/logo_MIN_Lessons.png">
    <!-- CSS chung -->
    <link rel="stylesheet" href="scss/all.css">
    <!-- CSS riêng -->
    <link rel="stylesheet" href="scss/library.css">
    <!-- Font-awesome -->
    <script src="https://kit.fontawesome.com/b373449ad1.js"></script>
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- script -->
    <script src="jquery_321/jquery-3.2.1.min.js"></script>
    <title>Min Lessons - Thư Viện</title>
</head>

<body>
    <?php include 'element/header.php'; ?>
    <?php if(isset($_GET['baigiang_cats'])){ ?>
        <?php
        $sql = "select * from table_danhmuc_lv2 where id='".$_GET['baigiang_cats']."'";
        $cat_bg = $conn->query($sql);
        foreach ($cat_bg as $key => $value) {
            $sql = "select * from table_baigiang where id_danhmuc_lv2 = '".$value['id']."' and trangthai = 1";
            $baigiang_cat = $conn->query($sql);
            ?>
            <div class="library">
                <h1>|| <?=$value['ten']?> ||</h1>
            </div>
            <main class="main">
                <div class="inner">
                    <div class="field">
                        <div class="essay">
                            <?php foreach ($baigiang_cat as $k => $v) {
                                $sql = "select * from table_thanhvien where id='".$v['id_thanhvien']."'";
                                $thanhvien = $conn->query($sql);
                                ?>
                                <div class="box_essay1">
                                    <div class="img_baigiang1"><img src="upload/baigiang/<?=$v['photo']?>" width = "270px" height = "200px"></div>
                                    <div class="name_baigiang">
                                        <a href="library_details.php?baigiang_details=<?=$v['id']?>"><?=$v['ten_baigiang']?></a>
                                    </div>
                                    <div class="mota_baigiang"><span><?=mysubstr(($v['mota']),100)?></span></div>
                                    <?php foreach ($thanhvien as $k1 => $v1) { ?>
                                        <div class="img_giaovien">
                                            <div class="name_gv"><a href="#"><?=$v1['ten']?></a></div>
                                            <div class="img_gv"><img src="upload/thanhvien/<?=$v1['photo']?>" width = "45px" height = "45px"></div>
                                            <div class="clear"></div>
                                        </div>
                                    <?php } ?>                                   
                                </div>
                            <?php } ?>                
                        </div>
                    </div>
                </div>
            </main>
        <?php } ?>
    <?php } ?>
    <footer class="footer">
        <?php include 'element/footer.php' ?>
    </footer>
    <?php 
    function mysubstr($str,$limit=100){
      if(strlen($str)<=$limit) return $str;
      return mb_substr($str,0,$limit-3,'UTF-8').'...';
  } ?>
</body>

</html>