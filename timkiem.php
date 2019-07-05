<!DOCTYPE html>
<html lang="en">
<head>
  <?php include 'database/config.php'; ?>
  <?php include 'database/loadDataIndex.php'; ?>
  <?php include 'element/head.php'; ?>
</head>
<body>
	<!-- Phần header -->
  <?php include 'element/header.php'; ?>
  <!-- Kết thúc phần header -->
  <!-- Phần body -->
  <main class="main">
   <div class="library">
    <h1>Kết quả tìm kiếm</h1>
  </div>
  <div class="inner">
    <div class="field_timkiem">
      <div class="essay">
        <?php 
        if (isset($_REQUEST['btntim'])) 
        {
          $search = addslashes($_GET['search']);
          include 'database/config.php';
          $result = $conn->query("select * from table_baigiang where ten_baigiang like '%$search%'");
          // print_r($result);
          if($result){
            // echo "$number ket qua tra ve voi tu khoa <b>$search</b>";
            ?>
            <?php foreach ($result as $key => $value) { 
              $sql = "select * from table_thanhvien where id='".$value['id_thanhvien']."' and trangthai = 1";
              $thanhvien = $conn->query($sql);
              ?>
              <div class="box_essay">
                <div class="img_baigiang1"><img src="upload/baigiang/<?=$value['photo']?>" width = "100%" height = "160px"></div>
                <div class="name_cats">
                  <a href="library_details.php?baigiang_details=<?=$value['id']?>"><?=$value['ten_baigiang']?></a>
                </div>
                <p class="content-essay"><?=mysubstr(($value['mota']),100)?></p>
                <?php foreach ($thanhvien as $k1 => $v1) { ?>
                  <div class="img_giaovien">
                    <div class="name_gv"><a href="#"><?=$v1['ten']?></a></div>
                    <div class="img_gv"><img src="upload/thanhvien/<?=$v1['photo']?>" width = "45px" height = "45px"></div>
                    <div class="clear"></div>
                  </div>
                <?php } ?>                                   
              </div>
            <?php } ?>
          <?php }else{
            echo "K tim thay";
          }      
        }
        ?>
      </div>
    </div>
  </div>

</main>
<!-- Kết thúc body -->
<!-- Phần footer -->
<?php include 'element/footer.php' ?>
<!-- Kết thúc footer -->
<?php include 'element/file_js.php'; ?>
<link rel="stylesheet" href="scss/slick.css">
<link rel="stylesheet" href="scss/slick-theme.css">
<?php 
function mysubstr($str,$limit=100){
  if(strlen($str)<=$limit) return $str;
  return mb_substr($str,0,$limit-3,'UTF-8').'...';
} ?>
</body>
</html>