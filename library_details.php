<?php error_reporting(0); ?>
<?php session_start(); ?>
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
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
    <!-- script -->
    <script type="text/javascript" src="js/script_facebook.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    <script src="jquery_321/jquery-3.2.1.min.js"></script>
    <?php include 'element/functions.php'; ?>
    <title>Min Lessons - Thư Viện</title>
</head>
<?php 
if(!empty($_POST['btnbaocao'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}else{
   $id_nguoibaocao = $_SESSION['id_user'];  
   $id_baigiang = $_POST['id_baigiang'];
   $ten_baigiang = $_POST['ten_baigiang'];
   $noidung = $_POST['noidung']; 

   $sql = "insert into table_baocao_baigiang (id_nguoibaocao,id_baigiang,ten_baigiang,noidung) values('$id_nguoibaocao','$id_baigiang','$ten_baigiang', '$noidung')";
   if ($conn->query($sql) == TRUE) { ?>
    <script>
        alert("Báo cáo thành công...");
    </script>
    <?php
} else { ?>
    <script>
        alert("Báo cáo thất bại...");
    </script>

    <?php
}
}
}
?>
<body>
    <?php include 'element/header.php'; ?>
    <?php if(isset($_GET['baigiang_details'])) {
        $sql = "select * from table_baigiang where id = '".$_GET['baigiang_details']."'";
        $news_details = $conn->query($sql);
        $row_details = $news_details->fetch_assoc();
        ?>
        <div class="library">
            <h1>|| <?=$row_details['ten_baigiang']?> ||</h1>
        </div>
        <div class="inner_detail">
            <div class="content_details">
                <span><?=$row_details['noidung']?></span>
            </div>
            <div class="bottom_detail">
                <div class="contain_tab">
                    <a href="#binhluan" class="item_tab active">Bình luận</a>
                    <a href="#baocao" class="item_tab">Báo cáo bài viết</a>
                </div>
                <div class="contain_content_tab">
                    <div id="binhluan" class="content_tab active">
                        <div class="text">
                            <div class="fb-comments" data-href="<?=getCurrentPageURL()?>" data-width="100%" data-numposts="5"></div>
                        </div>
                    </div>
                    <div id="baocao" class="content_tab">
                        <div class="text">
                            <form method="post" enctype="multipart/form-data">
                                <input type="text" class="none_bg" name="id_baigiang" value="<?= $row_details['id'] ?>">
                                <input type="text" class="none_bg" name="ten_baigiang" value="<?= $row_details['ten_baigiang'] ?>">
                                <label>Nội dung báo cáo</label>
                                <div class="wrap_tieuchi">
                                    <textarea name="noidung" id="baocao" cols="100" rows="10"></textarea>
                                </div>
                                <button  type="reset">Làm mới</button>
                                <input type="submit" name="btnbaocao" id="baocao" value="Báo cáo">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php }  ?>
    <div class="inner">
        <?php if(isset($row_details['id_danhmuc_lv2'])) {
            $sql = "select * from table_baigiang where id_danhmuc_lv2 = '".$row_details['id_danhmuc_lv2']."' and id <> '".$_GET['baigiang_details']."'";
            $news_other = $conn->query($sql);
            ?>
            <div class="box_news_other">
                <div class="title_news_other">Bài giảng liên quan:</div>
                <div class="list_news_other">
                    <?php foreach ($news_other as $key => $value) { ?>
                       <div class="item_news_other">
                         <div class="name_news_other">
                            <a href="library_details.php?baigiang_details=<?=$value['id']?>" >
                                <i class="fa fa-chevron-circle-right"></i>
                                <span><?=$value['ten_baigiang']?></span></a>
                            </div>
                        </div>
                    <?php } ?> 
                </div>
            </div>
        <?php } ?>
    </div>
    <script type="text/javascript" src="js/js_tab.js"></script>
    <?php include 'element/footer.php' ?>
</body>

</html>