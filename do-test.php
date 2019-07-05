<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS -->
    <link rel="stylesheet" href="scss/do-test.css">
    <!-- Font-awesome -->
    <script src="https://kit.fontawesome.com/b373449ad1.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <title>Min Lessons - Làm Kiểm Tra</title>
</head>
<?php include 'database/config.php'; ?>
<?php include 'database/loadDataIndex.php'; ?>
<body>
    <div class="inner">
        <form action="result.php" enctype="multipart/form-data" method="post" class="frm-result">
            <header class="header">
               <?php if($_SERVER['REQUEST_METHOD'] == "POST"){
                if(isset($_POST['danhmuc_lv2'])){ ?>
                    <?php
                    $sql = "select * from table_danhmuc_lv2 where id='".$_POST['danhmuc_lv2']."'";
                    $kt_cat = $conn->query($sql);
                    foreach ($kt_cat as $key => $value) { ?>
                        <p>Bài kiểm tra trắc nghiệm <?=$value['ten']?></p>
                    <?php } ?>
                <?php } } ?>
                <!-- <button type="submit"><i class="fas fa-check"></i> Hoàn Thành</button> -->
            </header>
            <div class="main">
                <div class="list-question">
                    <div class="title-question">Danh sách câu hỏi</div>
                    <div class="content-question">
                        <?php if($_SERVER['REQUEST_METHOD'] == "POST"){
                            if(isset($_POST['danhmuc_lv2'])){ ?>
                                <input type="hidden" value="<?=$_POST['danhmuc_lv2']?>" name="danhmuc_lv2">
                                <?php 
                                $sql = "select * from table_cauhoi where id_danhmuc_lv2='".$_POST['danhmuc_lv2']."' and trangthai = 1 limit 0,20";
                                $cauhoi = $conn->query($sql);
                                $socau = mysqli_num_rows($cauhoi);
                                foreach ($cauhoi as $key => $value) { ?>
                                    <span data-tab="#question<?=$key?>" class="item-cauhoi <?php if($key==0) echo 'active'; ?>"><?=$key + 1?></span>
                                <?php }
                            }
                        } ?>
                    </div>
                </div>
                <div class="detail-question" id="cauhoi">
                    <?php foreach ($cauhoi as $key => $value){ ?>
                        <div id="question<?=$key?>" class="content-requestion <?php if($key==0) echo 'active'; ?>">
                            <div class="question">
                                <h4><?= $value['cauhoi'] ?></h4>
                            </div>
                            <div class="answers">
                                <div class="item-answers">
                                    <span>A</span>
                                    <div class="radio">
                                        <label><input type="radio" value="a" name="answers<?=$value['id']?>"><?= $value['cau_a'] ?></label>
                                    </div>
                                </div>
                                <div class="item-answers">
                                    <span>B</span>
                                    <div class="radio">
                                        <label><input type="radio" value="b" name="answers<?=$value['id']?>"><?= $value['cau_b'] ?></label>
                                    </div>
                                </div>
                                <div class="item-answers">
                                    <span>C</span>
                                    <div class="radio">
                                        <label><input type="radio" value="c" name="answers<?=$value['id']?>"><?= $value['cau_c'] ?></label>
                                    </div>
                                </div>
                                <div class="item-answers">
                                    <span>D</span>
                                    <div class="radio">
                                        <label><input type="radio" value="d" name="answers<?=$value['id']?>"><?= $value['cau_d'] ?></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>

                </div>

            </div>
            <footer class="footer">
                <div class="time"><input type="text" id="m" name="phut" readonly>:<input type="text" id="s" name="giay" readonly></div>
                <div class="phut_chon"><input type="text" name="time" value="<?=$_POST['minutes']?>"></div>
            </footer>
            <div class="hoanthanh"><button type="submit"><i class="fas fa-check"></i> Hoàn Thành</button></div>
        </form>
    </div>
    <script src="js/do-test.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
