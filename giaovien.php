<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Min Lessons - Trang Cá Nhân</title>
    <link rel="icon" href="image/logo/logo_MIN_Lessons.png">
    <!-- CSS -->
    <link rel="stylesheet" href="scss/profile.css">
    <script language="javascript" type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script src="js/ajax_loaddanhmuc.js"></script>
    <?php include 'database/config.php'; ?>
    <?php include 'database/loadDataAdmin.php'; ?>
    <?php include 'giaovien/code_giaovien.php'; ?>
    <?php include 'giaovien/code_xoa_giaovien.php'; ?>
</head>
<body>
    <header class="header">
        <div class="inner">
            <div class="left_gv">
                <a href="index.php">
                    <img src="image/test/back.png" width="50px" alt="Tro ve">
                    <p>Về Trang Chủ</p>
                </a>
            </div>
            <div class="right_gv">
                <strong>Xin chào giáo viên:</strong>
                <?php echo $_SESSION['name_user']; ?> 
            </div>
            <div class="clear"></div>
        </div>
    </header>
    <div class="main">
        <div class="inner">
            <div class="tab_baigiang">
                <a href="#soantracnghiem" class="item_tab_baigiang active"><h2>Soạn câu hỏi trắc nghiệm</h2></a>
                <a href="#dstracngiem" class="item_tab_baigiang "><h2>Danh sách câu hỏi trắc nghiệm</h2></a>
                <a href="#soanbaigiang" class="item_tab_baigiang "><h2>Soạn bài giảng</h2></a>
                <a href="#dsbaigiang" class="item_tab_baigiang "><h2>Danh sách bài giảng</h2></a>                  
                <div class="clear"></div>        
            </div>
            <div class="clear"></div>
            <div id="soantracnghiem" class="content_tab_baigiang active">
                <form action="giaovien.php" method="POST">
                    <div class="wrap_baigiang">
                        <label>Mã giáo viên</label>
                        <?php echo $_SESSION['id_user'];?>
                    </div>

                    <span>Lĩnh vực</span> 
                    <select name="danhmuc_lv1" id="select" class="load_danhmuc_lv11">
                        <option value="0">Chọn Lĩnh Vực</option>
                        <?php foreach ($list as $key => $value) { ?>
                            <option  value="<?= $value['id'] ?>"><?= $value['ten'] ?></option>
                        <?php } ?>
                    </select><br><br>
                    <span>Ngôn ngữ</span> 
                    <select name="danhmuc_lv2" id="select" class="load_danhmuc_lv22">
                        <option value="0">Nội Dung</option>
                    </select><br><br>
                    <div class="wrap_baigiang">
                        <label>Tên câu hỏi</label>
                        <input id="question_name" type="text" name="cauhoi">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Câu trả lời A:</label>
                        <input type="text" name="cau_a">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Câu trả lời B:</label>
                        <input type="text" name="cau_b">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Câu trả lời C:</label>
                        <input type="text" name="cau_c">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Câu trả lời D:</label>
                        <input type="text" name="cau_d">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Đáp án đúng:</label>
                        <input type="text" name="dapan">
                    </div>
                    <button  type="reset">Làm mới</button>
                    <input id="add" type="submit" name="btnAddtn" value="Thêm">
                </form>
            </div>
            <div id="dstracngiem" class="content_tab_baigiang">
                <table class="box_cauhoi_admin">
                    <tr>
                        <th class="stt_bg">STT</th>
                        <th class="name_ch">Câu hỏi</th>
                        <th class="cau_hoi">A</th>
                        <th class="cau_hoi">B</th>
                        <th class="cau_hoi">C</th>
                        <th class="cau_hoi">D</th>
                        <th class="dapan_ch">Đáp án</th>
                        <th></th>
                    </tr>
                    <?php 
                    $sql = "select * from table_cauhoi where id_thanhvien = '".$_SESSION['id_user']."' and trangthai = 1";
                    $cauhoi_admin = $conn->query($sql);
                    foreach ($cauhoi_admin as $key => $value){ ?>
                        <tr>
                            <td class="stt_bg"><?=$key = $key + 1?></td>
                            <td ><?=$value['cauhoi']?></td>
                            <td class="cau_hoi"><?=$value['cau_a']?></td>
                            <td class="cau_hoi"><?=$value['cau_b']?></td>
                            <td class="cau_hoi"><?=$value['cau_c']?></td>
                            <td class="cau_hoi"><?=$value['cau_d']?></td>
                            <td class="dapan_ch"><?=$value['dapan']?></td>
                            <td class="chuc_nang">
                                <a class="chucnang" href="giaovien.php?id=<?= $value['id'] ?>&&thaotac=xoa">Xóa</a>
                                <a class="chucnang" href="giaovien/code_sua_tracnghiem.php?id=<?= $value['id'] ?>">Sửa</a>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
        <div class="inner">
            <div id="soanbaigiang" class="content_tab_baigiang">
               <section class="info_profile">
                <form method="POST" enctype="multipart/form-data" action="giaovien.php">
                    <div class="wrap_baigiang">
                        <label>Mã giáo viên</label>
                        <?php echo $_SESSION['id_user'];?>
                    </div>

                    <span>Lĩnh vực</span> 
                    <select name="danhmuc_lv1" id="select" class="load_danhmuc_lv1">
                        <option value="0">Chọn Lĩnh Vực</option>
                        <?php foreach ($list as $key => $value) { ?>
                            <option  value="<?= $value['id'] ?>"><?= $value['ten'] ?></option>
                        <?php } ?>
                    </select><br><br>
                    <span>Ngôn ngữ</span> 
                    <select name="danhmuc_lv2" id="select" class="load_danhmuc_lv2">
                        <option value="0">Nội Dung</option>
                    </select><br><br>

                    <div class="wrap_baigiang">
                        <label>Tên bài giảng</label>
                        <input type="text" name="ten_baigiang">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Mô tả bài giảng</label>
                        <input type="text" name="mota">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Hình ảnh</label>
                        <input name="photo" type="file">
                    </div>
                    <div class="wrap_baigiang">
                        <label>Nội dung bài giảng</label>
                        <textarea name="noidung" id="editor1" rows="10" cols="80"></textarea>
                        <script>CKEDITOR.replace('editor1');</script>
                    </div>

                    <button  type="reset">Làm mới</button>
                    <input id="add" type="submit" name="btnAdd" value="Thêm">
                </form>
            </section>
        </div>
    </div>
    <div class="inner">
        <div id="dsbaigiang" class="content_tab_baigiang">
            <table class="dsbaigiang_admin">
                <tr>
                    <th class="stt_bg">STT</th>
                    <th class="name_bg">Tên bài giảng</th>
                    <th class="mota_bg">Mô tả bài giảng</th>
                    <th class="noidung_bg">Nội dung bài giảng</th>
                    <th class="chucnang"></th>
                </tr>
                <?php 
                $sql = "select * from table_baigiang where id_thanhvien = '".$_SESSION['id_user']."' and trangthai = 1";
                $baigiang_admin = $conn->query($sql);
                foreach ($baigiang_admin as $key => $value){ ?>
                    <tr>
                        <td class="stt_bg"><?=$key = $key + 1?></td>
                        <td class="name_bg"><?=$value['ten_baigiang']?></td>
                        <td class="mota_bg"><?=mysubstr(($value['mota']),100)?></td>
                        <td class="noidung_bg"><?=mysubstr(($value['noidung']),100)?></td>
                        <td class="chucnang">
                            <a class="chucnang" href="giaovien.php?id=<?= $value['id'] ?>&&thaotac=xoa">Xóa</a>
                            <a class="chucnang" href="giaovien/code_sua_baigiang.php?id=<?= $value['id'] ?>">Sửa</a>
                        </td>
                    </tr>
                <?php } ?>

            </table>

            <div class="clear"></div>
        </div>
    </div>
</div>
</div>
<?php 
function mysubstr($str,$limit=100){
    if(strlen($str)<=$limit) return $str;
    return mb_substr($str,0,$limit-3,'UTF-8').'...';
} ?>
<script src="js/profile.js"></script>
</body>

</html>