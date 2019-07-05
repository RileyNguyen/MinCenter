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
    <div class="inner">
      <section class="info">
        <div class="owl_tieuchi owl-carousel">
          <?php foreach ($tieuchi as $key => $value) { ?>
           <div class="box_tieuchi">
             <div class="img_tieuchi">
               <a href="tieuchi_details.php?tieuchi_details=<?=$value['id']?>">
                <img src="upload/tieuchi/<?=$value['photo']?>" width="250px" height="250px">
              </a>
            </div>
            <div class="detail">
              <a href="tieuchi_details.php?tieuchi_details=<?=$value['id']?>"><h2><?=$value['ten']?></h2></a>
              <p><?=mysubstr(($value['mota']),150)?></p>
            </div>
          </div>
        <?php } ?>
      </div>
      <div class="clear">  </div>
    </section>
  </div>

  <section class="library">
    <div class="inner">
     <div class="highlights">
      <?php foreach ($list as $k => $v) { 
        $sql = "select * from table_danhmuc_lv2 where id_danhmuc_lv1 ='".$v['id']."'";
        $cat = $conn->query($sql);
        ?>
        <div class="category">
          <span><img src="upload/danhmuclv1/<?= $v['photo'] ?>" width="5%"><?=$v['ten']?>
        </span>
        <div class="language">
          <div class="owl_cats owl-carousel" style="width: 100%;">
            <?php foreach ($cat as $k1 => $v1) { ?>
             <div class="each">
              <img src="upload/danhmuclv2/<?= $v1['photo'] ?>">
              <a href="library_cats.php?baigiang_cats=<?= $v1['id']?>"><p><?= $v1['ten'] ?></p></a>
              <div class="trai"></div>
              <div class="phai"></div>
              <div class="tren"></div>
              <div class="duoi"></div>
            </div>
          <?php } ?>
        </div>
      </div>
    </div>
  <?php } ?>
  <div class="clear"></div>
</div>
<div class="read_more"><a href="library.php">Xem Thêm</a></div>
</div>
</section>
<div class="inner">
  <section class="popular">
   <h2>Những Giáo Viên Nổi Bật</h2>
   <hr>
   <div class="top-teacher">
    <div class="slick_imgteacher">
      <?php foreach ($thanhvien as $key => $value){ ?>
        <div class="img_teacher"><img src="upload/thanhvien/<?=$value['photo']?>" width="250px" height="250px"></div>
      <?php } ?>
    </div>
    <div class="slick_motateacher">
      <?php foreach ($thanhvien as $key => $value){ ?>
        <div class="noidung_teacher">
          <div class="name_teacher"><?=$value['ten']?></div>
          <div class="mota_teacher">
            <div class="mota_gv"> <?=$value['mota']?></div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>
</section>
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