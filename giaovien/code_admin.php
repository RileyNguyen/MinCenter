<?php include 'database/config.php'; ?>
<?php
/*Tiêu chí*/
//Thêm tiêu chí
if(!empty($_POST['btnAddtc'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
  }else{
    $noidung = $_POST['noidung'];
    $ten = $_POST['ten']; 
    $mota = $_POST['mota'];
    $photo = $_FILES["photo"]["name"];
    //Thư mục bạn sẽ lưu file upload
    $target_dir    = "upload/tieuchi/";
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
        $sql = "insert into table_tieuchi(ten, mota, photo, noidung, trangthai) values('$ten', '$mota', '$photo', '$noidung',1)";
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
/*Danh mục cấp 1*/
//Thêm danh mục cấp 1
if(!empty($_POST['btnAdd_dmlv1'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
  }else{
    $ten = $_POST['ten']; 
    $photo = $_FILES["photo"]["name"];
    //Thư mục bạn sẽ lưu file upload
    $target_dir    = "upload/danhmuclv1/";
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
        $sql = "insert into table_danhmuc_lv1(ten,photo,trangthai) values('$ten', '$photo',1)";
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
/*Danh mục cấp 2*/
//Thêm danh mục cấp 2
if(!empty($_POST['btnAdd_dmlv2'])){
  if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
  }else{
    $danhmuc_lv1 = $_POST['danhmuc_lv1'];
    $ten = $_POST['ten']; 
    $mota = $_POST['mota']; 
    $photo = $_FILES["photo"]["name"];
    //Thư mục bạn sẽ lưu file upload
    $target_dir    = "upload/danhmuclv2/";
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
        $sql = "insert into table_danhmuc_lv2(id_danhmuc_lv1,ten,mota,photo,trangthai) values('$danhmuc_lv1','$ten','$mota', '$photo',1)";
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