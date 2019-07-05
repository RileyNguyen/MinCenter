<?php include 'database/config.php'; ?>
<?php
//Thêm bài giảng
if(!empty($_POST['btnAdd'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
  }else{
    $id_thanhvien = $_SESSION['id_user'];
    $id_danhmuc_lv1 = $_POST['danhmuc_lv1'];
    $id_danhmuc_lv2 = $_POST['danhmuc_lv2'];
    $noidung = $_POST['noidung'];
    $ten_baigiang = $_POST['ten_baigiang']; 
    $mota = $_POST['mota'];
    $photo = $_FILES["photo"]["name"];
    //Thư mục bạn sẽ lưu file upload
    $target_dir    = "upload/baigiang/";
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
      echo "Đây là file ảnh - " . $check["mime"] . ".";
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
    // Check if $uploadOk is set to 0 by an error
    if ($allowUpload) {
      if (move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file)){
        $sql = "insert into table_baigiang (id_thanhvien, id_danhmuc_lv1, id_danhmuc_lv2, ten_baigiang, mota, photo, noidung,trangthai) values('$id_thanhvien', '$id_danhmuc_lv1', '$id_danhmuc_lv2', '$ten_baigiang', '$mota', '$photo', '$noidung',1)";
        if ($conn->query($sql) == TRUE) {
          ?>
          <script>
            alert("Thêm thành công...");
          </script>
          <?php 
        } else {
          ?>
          <script>
            alert("Thêm thất bại...");
          </script>
          <?php 
        }
      }
    }
  }
  $conn->close();
}
?>
<?php 
  //Thêm câu trắc nghiệm
if(!empty($_POST['btnAddtn'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
  }else{
   $id_thanhvien = $_SESSION['id_user'];
   $id_danhmuc_lv2 = $_POST['danhmuc_lv2'];
   $cauhoi = $_POST['cauhoi'];
   $cau_a = $_POST['cau_a']; 
   $cau_b = $_POST['cau_b']; 
   $cau_c = $_POST['cau_c']; 
   $cau_d = $_POST['cau_d']; 
   $dapan = $_POST['dapan'];

   $sql = "insert into table_cauhoi (id_thanhvien,id_danhmuc_lv2,cauhoi,cau_a,cau_b,cau_c,cau_d,dapan,trangthai) values('$id_thanhvien','$id_danhmuc_lv2', '$cauhoi', '$cau_a', '$cau_b', '$cau_c','$cau_d','$dapan',1)";
   if ($conn->query($sql) == TRUE) {
    ?>
    <script>
      alert("Thêm thành công...");
    </script>
    <?php 
  } else {
    ?>
    <script>
      alert("Thêm thất bại...");
    </script>
    <?php 
  }
}
}
?>