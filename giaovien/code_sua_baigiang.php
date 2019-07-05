<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Min Lessons - Giáo viên</title>
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

				$sql = "select * from table_baigiang where id = $id";
				$list = $conn->query($sql);
				foreach ($list as $value);
			}

		}
		if(!empty($_POST['btnUpdate'])){
			$ten_baigiang = $_POST['ten_baigiang'];
			$mota = $_POST['mota'];
			$noidung = $_POST['noidung'];
			$photo = $_FILES["photo"]["name"];
			$sql = "update table_baigiang set ";
			echo $photo;

			if(($ten_baigiang == $value['ten_baigiang']) && ($mota == $value['mota']) && ($noidung == $value['noidung']) && (empty($photo))){
				?>
				<script>
					alert("Bạn không thay đổi gì...");
				</script>
				<?php 
			}else{
				if($ten_baigiang != $value['ten_baigiang']){
					$sql = "ten_baigiang = '".$ten_baigiang."', ";
				}
				if($mota != $value['mota']){
					$sql = $sql."mota = '".$mota."', ";
				}
				if($noidung != $value['noidung']){
					$sql = $sql."noidung = '".$noidung."', ";
				}
				if(!empty($photo)){
					$sql = $sql."photo = '".$photo."', ";
					$sql = $sql." where id = ".$id;
					$sql = str_replace(',', ' ', $sql);
				//Thư mục bạn sẽ lưu file upload
					$target_dir    = "../upload/baigiang/";
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
	if ($conn->query($sql) == TRUE) { ?>
		<script>
			alert("Cập nhật thành công...");
		</script>
		<?php
	} else { ?>
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
						<label>Tên bài giảng</label>
						<input type="text" name="ten_baigiang" value="<?= $value['ten_baigiang'] ?>">
					</div>
					<div class="wrap_baigiang">
						<label>Mô tả bài giảng</label>
						<input type="text" name="mota" value="<?= $value['mota'] ?>">
					</div>
					<div class="wrap_baigiang">
						<label>Hình ảnh hiện tại:</label><br>
						<img src="../upload/baigiang/<?= $value['photo'] ?>"><br>
						<label>Chọn ảnh thay đổi:</label><br>
						<input id="file"name="photo" type="file">
					</div>
					<div class="wrap_baigiang">
						<label>Nội dung bài giảng</label>
						<textarea name="noidung" id="editor1" rows="10" cols="80"><?= $value['noidung'] ?></textarea>
						<script>CKEDITOR.replace('editor1');</script>
					</script>
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
