<?php 
require_once("database/config.php");
if(isset($_POST["btn_submit"])){
    $id_quyen   = $_POST["id_quyen"];
    $hoten   = $_POST["hoten"];
    $email   = $_POST["email"];
    $dienthoai  = $_POST["dienthoai"];
    $diachi   = $_POST["diachi"];
    $matkhau   = $_POST["matkhau"];
    $ngaysinh   = $_POST["ngaysinh"];
    $gioitinh   = $_POST["gioitinh"];
    $mota   = $_POST["mota"];
    $photo = $_FILES["photo"]["name"];
		//Thư mục bạn sẽ lưu file upload
    $target_dir    = "upload/thanhvien/";
    //Vị trí file lưu tạm trong server
    $target_file   = $target_dir . basename($_FILES["photo"]["name"]);
    $allowUpload   = true;
    //Lấy phần mở rộng của file
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    $maxfilesize   = 800000; //(bytes)
    ////Những loại file được phép upload
    $allowtypes    = array('jpg', 'png', 'jpeg', 'gif');
    //Kiểm tra xem có phải là ảnh
    $check = getimagesize($_FILES["photo"]["tmp_name"]);
    if($check !== false) {
    	echo "" . $check["mime"] . ".";
    	$allowUpload = true;
    } else {
    	echo "Không phải file ảnh.";
    	$allowUpload = false;
    }
    // Kiểm tra nếu file đã tồn tại thì không cho phép ghi đè
    if (file_exists($target_file)) {
    	echo "File đã tồn tại.";
    	$allowUpload = false;
    }
    // Kiểm tra kích thước file upload cho vượt quá giới hạn cho phép
    if ($_FILES["photo"]["size"] > $maxfilesize){
    	echo "Không được upload ảnh lớn hơn $maxfilesize (bytes).";
    	$allowUpload = false;
    }
    // Kiểm tra kiểu file
    if (!in_array($imageFileType,$allowtypes )){
    	echo "Chỉ được upload các định dạng JPG, PNG, JPEG, GIF";
    	$allowUpload = false;
    }
    if($allowUpload){
    	if (move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file)){
    		$sql = "INSERT INTO table_thanhvien(id_quyen,ten,email,dienthoai,diachi,matkhau,ngaysinh,gioitinh,photo,mota,trangthai) VALUES ('$id_quyen','$hoten','$email','$dienthoai','$diachi','$matkhau','$ngaysinh','$gioitinh','$photo','$mota',1)";
    		if ($conn->query($sql) == TRUE) { ?>
    			<script>
                    alert("Đăng kí thành công...");
                </script>
                <?php
            } else { ?>
               <script>
                alert("Đăng kí thất bại...");
            </script>
            <?php
        }
    }
}
}
?>