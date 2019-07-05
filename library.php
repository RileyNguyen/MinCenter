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
    <script src="jquery_321/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- script -->
    <title>Min Lessons - Thư Viện</title>
</head>

<body>
    <?php include 'element/header.php'; ?>
    <div class="library">
        <h1>|| Thư Viện ||</h1>
    </div>
    <main class="main">
        <div class="inner_detail">
            <?php foreach ($list as $key => $value) {
                $sql = "select * from table_danhmuc_lv2 where id_danhmuc_lv1 = '".$value['id']."'";
                $cat_news = $conn->query($sql);
                ?>
                <div class="field">
                    <div class="title_list"><span><a href="library_list.php?baigiang_lists=<?= $value['id'] ?>"><?=$value['ten']?></a></span></div>
                    <div class="essay">
                        <?php foreach ($cat_news as $k => $v) { ?>
                            <div class="box_essay">
                                <div class="img_baigiang"><img src="upload/danhmuclv2/<?=$v['photo']?>" witdh="200px"></div>
                                <a href="library_cats.php?baigiang_cats=<?= $v['id'] ?>" class="title"><?=$v['ten']?></a>
                                <p class="content-essay"><?=mysubstr(($v['mota']),150)?></p>
                            </div>
                        <?php } ?>
                        <div class="clear"></div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </main>
    <?php include 'element/footer.php' ?>
    <?php 
    function mysubstr($str,$limit=100){
      if(strlen($str)<=$limit) return $str;
      return mb_substr($str,0,$limit-3,'UTF-8').'...';
  } ?>
</body>
</html>