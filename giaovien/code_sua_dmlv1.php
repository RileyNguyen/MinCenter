<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Min Lessons - Admin</title>
	<link rel="icon" href="../image/logo/logo_MIN_Lessons.png">
	<!-- CSS -->
	<script language="javascript" type="text/javascript" src="../js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" href="../scss/sua.css">
</head>
<body>
	<header class="header">
		<div class="inner">
			<div class="left">
				<a href="../index.php"><img src="../image/logo/logo_MIN_Lessons.png" width="150px"></a>
			</div>
			<div class="clear"></div>
		</div>
	</header>
	<main>
		<?php include '../database/config.php'; ?>
		<?php if(isset($_GET['id'])){
			if (!$conn) {
				die("Kết nối thất bại: " . mysqli_connect_error());
			}else{
				$id = $_GET['id'];

				$sql = "select * from table_danhmuc_lv1 where id = $id";
				$list = $conn->query($sql);
				foreach ($list as $value);
			}
		}
		if(!empty($_POST['btnUpdate'])){
			$ten = $_POST['ten'];
			$photo = $_FILES["photo"]["name"];
			$sql = "update table_danhmuc_lv1 set ";
			echo $photo;

			if(($ten == $value['ten']) && (empty($photo))){
				?>
				<script>
					alert("Bạn không thay đổi gì...");
				</script>
				<?php 
			}else{
				if($ten != $value['ten']){
					$sql = "ten = '".$ten."', ";
				}
				if(!empty($photo)){
					$sql = $sql."photo = '".$photo."', ";
					$sql = $sql." where id = ".$id;
					$sql = str_replace(',', ' ', $sql);
				//Thư mục bạn sẽ lưu file upload
					$target_dir    = "../upload/danhmuclv1/";
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
    		if ($conn->query($sql) == TRUE) {
    			echo "Update thành công";
    		} else {
    			echo "Lỗi";
    		}
    	}
    }
}else{
	$sql = $sql." where id = ". $id;
	$sql = str_replace(',', ' ', $sql);
	if ($conn->query($sql) == TRUE) {
		?>
		<script>
			alert("Cập nhật thành công...");
		</script>
		<?php
	} else {
		?>
		<script>
			alert("Cập nhật thất bại...");
		</script>
		<?php
	}
}
}
}
?>
<?php if(!empty($value)){ ?>
	<div class="inner">
		<div id="soanbaigiang" class="content_tab_baigiang">
			<section class="info_profile">
				<form method="POST" enctype="multipart/form-data">
					<div class="wrap_baigiang">
						<label id="lv1">Tên danh mục cấp 1</label>
						<input type="text" name="ten" value="<?= $value['ten'] ?>">
					</div>
					<div class="wrap_baigiang">
						<label id="lv1">Hình ảnh hiện tại</label><br>
						<img src="../upload/danhmuclv1/<?= $value['photo'] ?>"><br>
						<label id="lv1">Chọn ảnh thay đổi</label><br>
						<input id="file" name="photo" type="file">
					</div>
					<input id="edit" type="submit" name="btnUpdate" value="Cập nhật">
				</form>
			</section>
		</div>
	</div>
<?php } ?>
</main>
<script src="../js/profile.js"></script>
</body>
</html>
