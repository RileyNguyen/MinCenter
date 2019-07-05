<?php
if(isset($_POST['btnLogin'])){
    if(!isset($_SESSION['name_user'])){
        //Lấy thông tin đăng nhập
        $email = $_POST["email"]; 
        $matkhau = $_POST["matkhau"];

        //làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt
        $email = strip_tags($email); 
        $email = addslashes($email); 
        $matkhau = strip_tags($matkhau); 
        $matkhau = addslashes($matkhau);

    // Check connection
        if (!$conn) {
            die("Kết nối thất bại: " . mysqli_connect_error());
        }else{
       //Đăng nhập
            $sql = "select * from table_thanhvien where email = '$email' and matkhau = '$matkhau' and trangthai = 1";
            $user = $conn->query($sql);
            $row_user = $user->fetch_assoc();

            if(mysqli_num_rows($user) > 0){
                foreach ($user as $value);
                $_SESSION['name_user'] = $value['ten'];
                $_SESSION['photo'] = $value['photo'];
                $_SESSION['id_user'] = $value['id'];
                $_SESSION['id_quyen'] = $value['id_quyen'];
                if($value['id_quyen'] == 1){
                    header('Location: /doan/admin.php');
                }elseif($value['id_quyen'] == 2){ ?>
                    <script>
                        alert("Chào mừng " + "<?php echo $value['ten'] ?>");
                    </script>
                    <?php  
                }
                else{ ?>
                 <script>
                    alert("Chào mừng giáo viên " + "<?php echo $value['ten'] ?>");
                    window.location.replace('/doan/giaovien.php');
                </script>
                <?php
            }
        }else if($row_user['trangthai'] != 1){?>
            <script>
                alert("Tài khoản quý khách bị tạm khóa...");
            </script>
            <?php
        }else{?>
            <script>
                alert("Sai email hoặc mật khẩu...");
            </script>
            <?php
        }
    }
}
}
?>
