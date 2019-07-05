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
    <?php if($_SERVER['REQUEST_METHOD'] == "POST"){
        if(isset($_POST['danhmuc_lv2'])){ ?>
            <?php 
            $sql = "select * from table_cauhoi where id_danhmuc_lv2='".$_POST['danhmuc_lv2']."' and trangthai = 1";
            $cauhoi = $conn->query($sql);
            $socau = mysqli_num_rows($cauhoi);
            $socaudung = 0;
                foreach ($cauhoi as $key => $value) { 
                    if(isset($_POST['answers'.$value['id']])){
                        if($value['dapan'] == $_POST['answers'.$value['id']]){
                            $socaudung ++ ;
                        }
                    }
                }
            $socausai = $socau - $socaudung;
            $diem = 10 / $socau * $socaudung;
        }
        $phut_conlai = $_POST['phut'];
        $giay_conlai = $_POST['giay'];
        $tong_phut = $_POST['time'];
        if($phut_conlai > 0){
            $giay_conlai = $giay_conlai + ($phut_conlai * 60);
        }
        $tong_giay = $tong_phut * 60;
        $tonggiay_traloi = $tong_giay - $giay_conlai;
        $phut_traloi = (int)$tonggiay_traloi / 60;
        $giay_traloi = (int)$tonggiay_traloi % 60;
        $id_thanhvien = $_SESSION['id_user'];
        $id_danhmuc_lv2 = $_POST['danhmuc_lv2'];
        $sql = "insert into table_ketqua (id_thanhvien,id_danhmuc_lv2,socaudung,socausai,thoigian_hoanthanh,diem) values('$id_thanhvien','$id_danhmuc_lv2','$socaudung','$socausai','$tonggiay_traloi','$diem')";
        $conn->query($sql);
    } ?>
    <div class="main">
        <div class="wrap_kq">
            <div class="inner">
                <div class="title_kq"><span>Kết quả bài kiểm tra</span></div>
                <div class="content_kq">
                    <div class="caudung">
                        <span>Số câu đúng là :</span><span><?php echo $socaudung ?></span>
                    </div>
                    <div class="causai">
                        <span>Số câu sai là :</span><span><?php echo $socausai ?></span>
                    </div>
                    <div class="diemkt">
                        <span>Điểm đạt được :</span><span><?php echo round($diem , 2) ?> Điểm</span>
                    </div>
                    <div class="thoigianlambai">
                        <span>Thời gian làm bài :</span><span><?php echo round($phut_traloi , 0) ?>  phút  :  <?php echo $giay_traloi; ?>   giây</span>
                    </div>
                </div>
                <div class="do_test"><a href="test.php">Làm bài khác</a></div>
            </div>
        </div>
    </div>
    <!-- Kết thúc body -->
    <!-- Phần footer -->
    <?php include 'element/footer.php' ?>
    <!-- Kết thúc footer -->
    <?php include 'element/file_js.php'; ?>
    <link rel="stylesheet" href="scss/slick.css">
    <link rel="stylesheet" href="scss/slick-theme.css">
</body>
</html>