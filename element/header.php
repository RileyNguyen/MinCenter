<?php session_start(); ?>
<?php include 'database/config.php'; ?>
<?php include 'action/login.php'; ?>
<?php include 'database/loadDataIndex.php'; ?>
<?php include 'action/register.php'; ?>
<header class="header">
    <!-- Phần menu -->
    <div class="wrap_header">
        <div class="inner_header">
            <div class="logo">
                <a href="index.php"><img src="image/logo/logo_MIN_Lessons.png" width="60%" height="100%"></a>
            </div>
            <div class="topnav" id="menu">
                <?php if(isset($_SESSION['id_user'])) { ?>
                    <div class="info_user">
                        <div class="name_ss"><?php echo $_SESSION['name_user'] ?></div>
                        <div class="photo_ss"><img src="upload/thanhvien/<?=$_SESSION['photo']?>"></div>
                        <div class="clear"></div>
                    </div>
                <?php } ?>
                <ul id="mymenu">
                    <li><a href="index.php">Trang Chủ</a></li>
                    <li><a href="library.php">Thư Viện</a>
                        <ul id="lv2">
                            <?php foreach ($list as $key => $value) { 
                                $sql = "select * from table_danhmuc_lv2 where id_danhmuc_lv1='".$value['id']."'";
                                $cat = $conn->query($sql);
                                ?>
                                <li><a href="library_list.php?baigiang_lists=<?= $value['id'] ?>"><?=$value['ten']?></a>
                                    <ul>
                                        <?php foreach ($cat as $k => $v) { ?>
                                            <li><a href="library_cats.php?baigiang_cats=<?= $v['id'] ?>"><?=$v['ten']?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            <?php } ?>
                        </ul>
                    </li>
                    <?php if(isset($_SESSION['id_user'])) { ?>
                        <li><a href="test.php">Kiểm Tra</a></li>
                    <?php } ?>
                    <li><a href="essay.php">Thực Hành</a></li>
                    <?php if(isset($_SESSION['id_quyen'])) { 
                        if($_SESSION['id_quyen'] == 3){?>
                            <li><a href="giaovien.php">Giáo viên</a></li>
                        <?php }} ?>
                        <?php if(isset($_SESSION['id_quyen'])) { 
                            if($_SESSION['id_quyen'] == 1){?>
                                <li><a href="admin.php">Admin</a></li>
                            <?php }} ?>
                            <?php if(isset($_SESSION['name_user'])){ ?>
                                <li id='log-out'><a href="action/logout.php">Đăng xuất</a></li>
                            <?php }else{ ?>
                                <li id='sign-in'><a onclick="login()" href="#">Đăng Nhập</a></li>
                                <li id='sign-up'><a onclick='register()' href="#">Đăng Ký</a></li>
                            <?php } ?>
                            <div class="clear"></div>
                        </ul>
                        <div class="clear"></div>
                        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="overlay" id='login'>
                <div class="login-wrapper">
                    <div class="login-content">
                        <div class="tieu_de"><div class="close" onclick="close_modal()"><a href="#">x</a></div>
                        <h3>Đăng Nhập</h3></div>
                        <div class="form_login">
                            <form method="POST">
                                <label>
                                    <input id='email' type="email" required name="email" placeholder="Email" />
                                    <p id='check-email'></p>
                                </label>
                                <label>
                                    <input type="password" required id="password" name="matkhau" placeholder="Mật khẩu" />
                                </label>
                                <label id="checkbox"><input type="checkbox" placeholder="Lưu mật khẩu">Lưu mật khẩu</label>
                                <input type="submit" class="dangnhap" name="btnLogin" value="ĐĂNG NHẬP">
                                <div class="clear"></div>
                            </form>
                        </div>
                        <div class="dang_ki"><p>Bạn chưa có tài khoản ?</p>
                            <a href="#" onclick="change()">ĐĂNG KÍ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overlay" id='register'>
                <div class="register-wrapper">
                    <div class="register-content">
                        <div class="tieu_de"><div class="close-register" onclick="close_register()"><a class="" href="#" >x</a></div>
                        <h3>Đăng Kí</h3></div>
                        <div class="form_register">
                            <form method="POST" enctype="multipart/form-data">
                                <label>
                                    <input name="hoten" required id='register-ho' type="text" placeholder="Họ & tên " />
                                </label>
                                <label>
                                    <input name="email" required id='register-email' type="email" placeholder="Email" />
                                </label>
                                <label>
                                    <input name="dienthoai" required id='register-dienthoai' type="number" placeholder="Số điện thoại" />
                                </label>
                                <label>
                                    <input name="diachi"  required id='register-diachi' type="text" placeholder="Địa chỉ" />
                                </label>
                                <label>
                                    <input name="ngaysinh"  required id='register-ngaysinh' type="date" placeholder="Ngày sinh" />
                                </label>
                                <label>
                                    <input name="gioitinh"  required id='register-gioitinh' type="radio" value="Nam" />Nam
                                    <input name="gioitinh"  required id='register-gioitinh' type="radio" value="Nữ" />Nữ
                                    <input name="gioitinh"  required id='register-gioitinh' type="radio" value="khác" />khác
                                </label>
                                <label>
                                    <input name="matkhau" required type="password" id="register-matkhau" placeholder="Mật khẩu" />
                                </label>
                                <label> Ảnh đại diện:
                                    <input name="photo" required type="file" id="register-photo"/>
                                </label>
                                <label>Giới thiệu bản thân:</label>
                                <label>
                                    <textarea name="mota" id="mota" type="text" cols="64" rows="5"></textarea>
                                </label>
                                <label>Chọn loại tài khoản:</label>
                                <label>
                                    <input name="id_quyen"  required id='register-id_quyen' type="radio" value="2" />Thành Viên
                                    <input name="id_quyen"  required id='register-id_quyen' type="radio" value="3" />Giáo Viên
                                </label>
                                <br>
                                <input type="submit" class="dangnhap" name="btn_submit" value="Đăng ký">

                            </form>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <!-- Kết thúc phần Menu -->
            <div class="content">
                <div class="search">
                    <form method="GET" action="timkiem.php">
                        <input type="text" required name="search" placeholder="Bạn cần tìm gì ?">
                        <input type="submit" name="btntim" value="Tìm kiếm" />
                    </form>
                    <div class="slogan">
                        <h3>Đến với chúng tôi và chúng ta cùng nhau phát triển</h3>
                    </div>
                </div>
            </div>
        </header>

        <script src="js/index.js"></script>
        <script src="js/my_js.js"></script>