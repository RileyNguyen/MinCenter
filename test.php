<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script language="javascript" type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="scss/test.css">
    <!-- Javascript -->
    <script src="js/ajax_loaddanhmuc.js"></script>
    <title>Min Lessons - Kiểm tra</title>
</head>
<?php include 'database/config.php'; ?>
<?php include 'database/loadDataIndex.php'; ?>
<body>
    <header class="header">
        <a href="index.php"><img src="image/test/back.png" width="50px" alt="Tro ve"><p>Trở Về</p></a>
    </header>
    <main class="main">
        <div class="test">
            <div class="heading"><h2>Bạn đã sẵn sàng chưa ?</h2></div>
            <div class="detail">
                <form class="form" method="post" action="do-test.php">
                    <span>Lĩnh vực</span> 
                    <select name="danhmuc_lv1" id="select" class="load_danhmuc_lv1">
                        <option value="0">Chọn Lĩnh Vực</option>
                        <?php foreach ($list as $key => $value) { ?>
                            <option value="<?= $value['id'] ?>"><?= $value['ten'] ?></option>
                        <?php } ?>
                    </select><br><br>
                    <span>Ngôn ngữ</span> 
                    <select name="danhmuc_lv2" id="select" class="load_danhmuc_lv2">
                        <option value="0">Nội Dung</option>
                    </select><br><br>
                    <span>Thời gian</span> <input id="time" type="number" min="15" max="45" step="5" value="15" name="minutes"><span>Phút</span>
                    <br>               
                    <button type="submit" onclick="time_count()">Sẵn sàng</button>
                </form>
            </div>
        </div>
    </main>
    <script src="js/test.js"></script>
</body>
</html>