<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script language="javascript" type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <title>Min Lessons - admin</title>
    <link rel="icon" href="image/logo/logo_MIN_Lessons.png">
    <!-- CSS -->
    <?php include 'database/config.php'; ?>
    <?php include 'database/loadDataAdmin.php'; ?>
    <?php include 'giaovien/code_admin.php'; ?>
    <?php include 'giaovien/code_xoa_admin.php'; ?>
    <link rel='stylesheet' href='scss/admin.css'>
</head>
<body>
    <div class="header">
        <div class="inner">
            <div class="left">
                <a href="index.php"><img src="image/logo/logo_MIN_Lessons.png" width="150px"></a>
            </div>
            <div class="right">
                <span>Xin chào admin:</span>
                <?php echo $_SESSION['name_user']; ?> 
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="main">
        <div class="inner">
         <div class="left_main">
             <div class="tab_baigiang">
                <a href="#tieuchi" class="item_tab_baigiang active"><h2>Quản lí chuyên ngành</h2></a>
                <a href="#danhmuclv1" class="item_tab_baigiang"><h2>Quản lí danh mục cấp 1</h2></a>             
                <a href="#danhmuclv2" class="item_tab_baigiang"><h2>Quản lí danh mục cấp 2</h2></a>
                <a href="#dsbaigiang" class="item_tab_baigiang"><h2>Danh sách bài giảng</h2></a>
                <a href="#dsgiaovien" class="item_tab_baigiang"><h2>Quản lí giáo viên</h2></a>                        
                <a href="#baocao" class="item_tab_baigiang"><h2>Quản lí báo cáo</h2></a>                       
                <a href="#diemktra" class="item_tab_baigiang"><h2>Quản lí điểm kiểm tra</h2></a>                       
                <a href="#cauhinhchung" class="item_tab_baigiang"><h2>Cấu hình chung</h2></a>                        
            </div>
        </div>
        <div class="right_main">
            <div id="tieuchi" class="content_tab_baigiang active">
                <div class="tab_admin">
                    <a href="#dstieuchi" class="item_tab_admin active"><h2>Danh sách chuyên ngành</h2></a>
                    <a href="#themtieuchi" class="item_tab_admin"><h2>Thêm chuyên ngành</h2></a>
                </div>
                <div class="clear"></div>
                <div class="wrap_tieuchi">
                    <div id="dstieuchi" class="content_tab_admin active">
                        <table class="box_tieuchi">
                            <tr>
                                <th>STT</th>
                                <th>Tên chuyên ngành</th>
                                <th>Mô tả chuyên ngành</th>
                                <!-- <th>Nội dung</th> -->
                                <th>Chức năng</th>

                            </tr>
                            <?php foreach ($tieuchi_admin as $key => $value) { ?>
                                <tr>
                                    <td><?=$key + 1?></td>
                                    <td><?=$value['ten']?></td>
                                    <td><?=mysubstr(($value['mota']),50)?></td>
                                    <!-- <td><?=mysubstr(($value['noidung']),100)?></td> -->
                                    <td>
                                        <a class="chucnang" href="admin.php?id=<?= $value['id'] ?>&&thaotac=xoa">Xóa</a>
                                        <a class="chucnang" href="giaovien/code_sua_tieuchi.php?id=<?= $value['id'] ?>">Sửa</a>
                                    </td>
                                </tr>
                            <?php } ?>
                            <div class="clear"></div>
                        </table>
                    </div>
                    <div id="themtieuchi" class="content_tab_admin">
                        <form action="admin.php" method="post" enctype="multipart/form-data">
                            <div class="wrap_tieuchi">
                                <label>Tên chuyên ngành</label>
                                <input type="text" name="ten">
                            </div>
                            <div class="wrap_tieuchi">
                                <label>Mô tả chuyên ngành</label>
                                <input type="text" name="mota">
                            </div>
                            <div class="wrap_tieuchi">
                                <label>Hình ảnh</label><br>
                                <input type="file" name="photo">
                            </div>
                            <div class="wrap_tieuchi">
                                <label>Nội dung chuyên ngành</label>
                                <textarea name="noidung" id="editor1" rows="10" cols="80"></textarea>
                                <script>CKEDITOR.replace('editor1');</script>
                            </div>
                            <button  type="reset">Làm mới</button>
                            <input type="submit" name="btnAddtc" id="add_tieuchi" value="Thêm">
                        </form>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <!-- end-tieu-chi -->
            <div id="danhmuclv1" class="content_tab_baigiang">
                <div class="tab_admin">
                    <a href="#dsdmlv1" class="item_tab_admin active"><h2>Quản lí danh mục cấp 1</h2></a>
                    <a href="#themdsdmlv1" class="item_tab_admin"><h2>Thêm danh mục cấp 1</h2></a>
                </div>
                <div class="clear"></div>
                <div class="wrap_tieuchi">
                    <div id="dsdmlv1" class="content_tab_admin active">
                        <table class="box_tieuchi">
                            <tr>
                                <th>STT</th>
                                <th>Tên Danh Mục</th>
                                <th>Chức năng</th>
                            </tr>
                            <?php foreach ($dmlv1_admin as $key => $value) { ?>
                                <tr>
                                    <td><?=$key + 1?></td>
                                    <td><?=$value['ten']?></td>
                                    <td>
                                        <a class="chucnang" href="admin.php?id=<?= $value['id'] ?>&&thaotac=xoa">Xóa</a>
                                        <a class="chucnang" href="giaovien/code_sua_dmlv1.php?id=<?= $value['id'] ?>">Sửa</a>
                                    </td>
                                </tr>
                            <?php } ?>
                            <div class="clear"></div>
                        </table>
                    </div>
                    <div id="themdsdmlv1" class="content_tab_admin">
                        <form action="admin.php" method="post" enctype="multipart/form-data">
                            <div class="wrap_tieuchi">
                                <label>Tên danh mục cấp 1</label>
                                <input type="text" name="ten">
                            </div>
                            <div class="wrap_tieuchi">
                                <label>Hình ảnh</label>
                                <input type="file" name="photo">
                            </div>
                            <button  type="reset">Làm mới</button>
                            <input type="submit" name="btnAdd_dmlv1" value="Thêm">
                        </form>
                    </div>
                </div>
            </div>
            <!-- end-danh-muc-lv1 -->
            <div id="danhmuclv2" class="content_tab_baigiang">
             <div class="tab_admin">
                <a href="#dsdmlv2" class="item_tab_admin active"><h2>Quản lí danh mục cấp 2</h2></a>
                <a href="#themdsdmlv2" class="item_tab_admin"><h2>Thêm danh mục cấp 2</h2></a>
            </div>
            <div class="clear"></div>
            <div class="wrap_tieuchi">
                <div id="dsdmlv2" class="content_tab_admin active">
                    <table class="box_tieuchi">
                        <tr>
                            <th>STT</th>
                            <th>Tên danh mục</th>
                            <th>Chức năng</th>
                        </tr>
                        <?php foreach ($dmlv2_admin as $key => $value) { ?>
                            <tr>
                                <td><?=$key + 1?></td>
                                <td><?=$value['ten']?></td>
                                <td>
                                    <a class="chucnang" href="admin.php?id=<?= $value['id'] ?>&&thaotac=xoa">Xóa</a>
                                    <a class="chucnang" href="giaovien/code_sua_dmlv2.php?id=<?= $value['id'] ?>">Sửa</a>
                                </td>
                            </tr>
                        <?php } ?>
                        <div class="clear"></div>
                    </table>
                </div>
                <div id="themdsdmlv2" class="content_tab_admin">
                    <form action="admin.php" method="post" enctype="multipart/form-data">
                        <span>Danh mục cấp 1</span> 
                        <select name="danhmuc_lv1" id="select" class="load_danhmuc_lv1">
                            <option value="0">Chọn danh mục cấp 1</option>
                            <?php foreach ($list as $key => $value) { ?>
                                <option  value="<?= $value['id'] ?>"><?= $value['ten'] ?></option>
                            <?php } ?>
                        </select><br><br>
                        <div class="wrap_tieuchi">
                            <label>Tên danh mục cấp 2</label>
                            <input type="text" name="ten">
                        </div>
                        <div class="wrap_tieuchi">
                            <label>Mô tả danh mục cấp 2</label>
                            <input type="text" name="mota">
                        </div>
                        <div class="wrap_tieuchi">
                            <label>Hình ảnh</label>
                            <input type="file" name="photo">
                        </div>
                        <button  type="reset">Làm mới</button>
                        <input type="submit" name="btnAdd_dmlv2" value="Thêm">
                    </form>
                </div>
            </div> 
        </div>
        <!-- end-danh-muc-lv2 -->
        <div id="dsbaigiang" class="content_tab_baigiang">
            <div class="title_admin"><span>Danh sách bài giảng</span></div>
            <table class="box_tieuchi">
                <tr>
                    <th>STT</th>
                    <th>Mã giáo viên</th>
                    <th>Tên bài giảng</th>
                    <th>Mô tả</th>
                    <!-- <th>Nội dung</th> -->
                    <th>Chức năng</th>

                </tr>
                <?php foreach ($baigiang_admin as $key => $value) { ?>
                    <tr>
                        <td><?=$key + 1?></td>
                        <td><?=$value['id_thanhvien']?></td>
                        <td><?=$value['ten_baigiang']?></td>
                        <td><?=mysubstr(($value['mota']),50)?></td>
                        <!-- <td><?=mysubstr(($value['noidung']),100)?></td> -->
                        <td>
                            <input name="anhien<?=$value['id']?>z" type="radio" value="0" />Ẩn
                            <input name="anhien<?=$value['id']?>z" type="radio" value="1" />Hiện
                            <a class="chucnang" href="library_details.php?baigiang_details=<?=$value['id']?>">Xem</a>
                        </td>
                    </tr>
                <?php } ?> 
                <div class="clear"></div>
            </table>
        </div>
        <!-- end-bai-giang -->
        <div id="dsgiaovien" class="content_tab_baigiang">
            <div class="title_admin"><span>Danh sách giáo viên</span></div>
            <table class="box_tieuchi">
                <tr>
                    <th>STT</th>
                    <th>Tên giáo viên</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Mô tả</th>
                    <th>Chức năng</th>

                </tr>
                <?php foreach ($giaovien_admin as $key => $value) { ?>
                    <tr>
                        <td><?=$key + 1?></td>
                        <td><?=$value['ten']?></td>
                        <td><?=$value['email']?></td>
                        <td><?=$value['dienthoai']?></td>
                        <td><?=mysubstr(($value['mota']),50)?></td>
                        <td>
                            <a class="chucnang" href="admin.php?id=<?= $value['id'] ?>&&thaotac=xoa">Mở</a>
                            <a class="chucnang" href="admin.php?id=<?= $value['id'] ?>&&thaotac=xoa">Khóa</a>
                        </td>
                    </tr>
                <?php } ?> 
                <div class="clear"></div>
            </table>
        </div>
        <!-- end-giao-vien -->
        <div id="baocao" class="content_tab_baigiang">
            <table class="box_tieuchi">
                <tr>
                    <th>STT</th>
                    <th>Mã người báo cáo</th>
                    <th>Tên bài giảng</th>
                    <th>Nội dung báo cáo</th>
                    <th>Chức năng</th>

                </tr>
                <?php foreach ($report as $key => $value) { ?>
                    <tr>
                        <td><?=$key + 1?></td>
                        <td><?=$value['id_nguoibaocao']?></td>
                        <td><?=$value['ten_baigiang']?></td>
                        <td><?=mysubstr(($value['noidung']),100)?></td>
                        <td>
                            <a class="chucnang" href="library_details.php?baigiang_details=<?=$value['id_baigiang']?>">Xem</a>
                        </td>
                    </tr>
                <?php } ?>
                <div class="clear"></div>
            </table>
        </div>
        <!-- end-bao-cao -->
        <div id="diemktra" class="content_tab_baigiang">
            <table class="box_tieuchi">
                <tr>
                    <th>STT</th>
                    <th>Mã người thí sinh</th>
                    <th>Thời gian làm bài</th>
                    <th>Điểm</th>
                    <th>Chức năng</th>

                </tr>
                <?php foreach ($ketqua as $key => $value) { ?>
                    <tr>
                        <td><?=$key + 1?></td>
                        <td><?=$value['id_thanhvien']?></td>
                        <td><?=$value['thoigian_hoanthanh']?></td>
                        <td><?=round($value['diem'],2)?>đ</td>
                        <td>
                            <a class="chucnang" href="#">Xem</a>
                        </td>
                    </tr>
                <?php } ?>
                <div class="clear"></div>
            </table>
        </div>
        <!-- end-kiem-tra  -->
        <!-- <div id="cauhinhchung" class="content_tab_baigiang">
            <?php if(isset($_GET['id'])){
                if (!$conn) {
                    die("Kết nối thất bại: " . mysqli_connect_error());
                }else{
                    $id = $_GET['id'];

                    $sql = "select * from table_setting where id = $id";
                    $setting = $conn->query($sql);
                    foreach ($list as $value);
                }

            }
            if(!empty($_POST['btnUpdate'])){
                $dienthoai = $_POST['dienthoai'];
                $dienthoai2 = $_POST['dienthoai2'];
                $email = $_POST['email'];
                $diachi = $_POST['diachi'];
                $instagram = $_POST['instagram'];
                $facebook = $_POST['facebook'];
                $sql = "update table_setting set ";

                if(($dienthoai == $value['dienthoai']) && ($dienthoai2 == $value['dienthoai2']) && ($email == $value['email']) && ($diachi == $value['diachi']) && ($instagram == $value['instagram']) && ($facebook == $value['facebook'])){ ?>
                    <script>
                        alert("Bạn không chỉnh sửa gì...");
                    </script>
                    <?php
                }else{
                    if($dienthoai != $value['dienthoai']){
                        $sql = "dienthoai = '".$dienthoai."', ";
                    }
                    if($dienthoai2 != $value['dienthoai2']){
                        $sql = $sql."dienthoai2 = '".$dienthoai2."', ";
                    }
                    if($email != $value['email']){
                        $sql = $sql."email = '".$email."', ";
                    }
                    if($diachi != $value['diachi']){
                        $sql = $sql."diachi = '".$diachi."', ";
                    }
                    if($instagram != $value['instagram']){
                        $sql = $sql."instagram = '".$instagram."', ";
                    }
                    if($facebook != $value['facebook']){
                        $sql = $sql."facebook = '".$facebook."', ";
                    }
                    else{
                        $sql = $sql." where id = ". $id;
                        $sql = str_replace(',', ' ', $sql);
                        if ($conn->query($sql) == TRUE) {
                            echo "Update thành công";
                        } else {
                            echo "Lỗi abc";
                        }
                    }
                }
            }
            ?>
            <?php if(!empty($value)){ ?>
                <div id="soanbaigiang" class="content_tab_baigiang">
                    <section class="info_profile">
                        <form method="POST" enctype="multipart/form-data">
                            <div class="wrap_baigiang">
                                <label>Số điện thoại 1:</label>
                                <input type="text" name="dienthoai" value="<?= $value['dienthoai'] ?>">
                            </div>
                            <div class="wrap_baigiang">
                                <label>Số điện thoại 2:</label>
                                <input type="text" name="dienthoai2" value="<?= $value['dienthoai2'] ?>">
                            </div>
                            <div class="wrap_baigiang">
                                <label>Email</label>
                                <input type="text" name="email" value="<?= $value['email'] ?>">
                            </div>
                            <div class="wrap_baigiang">
                                <label>Địa chỉ</label>
                                <input type="text" name="diachi" value="<?= $value['diachi'] ?>">
                            </div>
                            <div class="wrap_baigiang">
                                <label>Instagram</label>
                                <input type="text" name="instagram" value="<?= $value['instagram'] ?>">
                            </div>
                            <div class="wrap_baigiang">
                                <label>Facebook</label>
                                <input type="text" name="facebook" value="<?= $value['facebook'] ?>">
                            </div>

                            <input id="edit" type="submit" name="btnUpdate" value="Cập nhật">
                        </form>
                    </section>
                </div>
            <?php } ?>
        </div> -->
    </div>
</div>
<div class="clear"></div>
</div>  
<!-- Javascript -->
<?php 
function mysubstr($str,$limit=100){
    if(strlen($str)<=$limit) return $str;
    return mb_substr($str,0,$limit-3,'UTF-8').'...';
} ?>
<script src="js/admin.js"></script>
<?php 
function format_period($seconds_input)
{
  $hours = (int)($minutes = (int)($seconds = (int)($milliseconds = (int)($seconds_input * 1000)) / 1000) / 60) / 60;
  return $hours.':'.($minutes%60).':'.($seconds%60).(($milliseconds===0)?'':'.'.rtrim($milliseconds%1000, '0'));
}

echo format_period(1000);
?>
</body>

</html>