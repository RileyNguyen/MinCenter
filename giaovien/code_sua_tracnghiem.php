<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Min Lessons - Trang Cá Nhân</title>
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

				$sql = "select * from table_cauhoi where id = $id";
				$list = $conn->query($sql);
				foreach ($list as $value);
			}

		}
		if(!empty($_POST['btnUpdate'])){
			$cauhoi = $_POST['cauhoi'];
			$cau_a = $_POST['cau_a'];
			$cau_b = $_POST['cau_b'];
			$cau_c = $_POST['cau_c'];
			$cau_d = $_POST['cau_d'];
			$dapan = $_POST['dapan'];
			$sql = "update table_cauhoi set ";

			if(($cauhoi == $value['cauhoi']) && ($cau_a == $value['cau_a']) && ($cau_b == $value['cau_b']) && ($cau_c == $value['cau_c']) && ($cau_d == $value['cau_d']) && ($dapan == $value['dapan'])){
				?>
				<script>
					alert("Bạn không thay đổi gì...");
				</script>
				<?php 
			}else{
				if($cauhoi != $value['cauhoi']){
					$sql = "cauhoi = '".$cauhoi."', ";
				}
				if($cau_a != $value['cau_a']){
					$sql = $sql."cau_a = '".$cau_a."', ";
				}
				if($cau_b != $value['cau_b']){
					$sql = $sql."cau_b = '".$cau_b."', ";
				}
				if($cau_c != $value['cau_c']){
					$sql = $sql."cau_c = '".$cau_c."', ";
				}
				if($cau_d != $value['cau_d']){
					$sql = $sql."cau_d = '".$cau_d."', ";
				}
				if($dapan != $value['dapan']){
					$sql = $sql."dapan = '".$dapan."', ";
				}
				else{
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
								<label>Tên câu hỏi</label>
								<input type="text" name="cauhoi" value="<?= $value['cauhoi'] ?>">
							</div>
							<div class="wrap_baigiang">
								<label>Đáp án câu A</label>
								<input type="text" name="cau_a" value="<?= $value['cau_a'] ?>">
							</div>
							<div class="wrap_baigiang">
								<label>Đáp án câu B</label>
								<input type="text" name="cau_b" value="<?= $value['cau_b'] ?>">
							</div>
							<div class="wrap_baigiang">
								<label>Đáp án câu C</label>
								<input type="text" name="cau_c" value="<?= $value['cau_c'] ?>">
							</div>
							<div class="wrap_baigiang">
								<label>Đáp án câu D</label>
								<input type="text" name="cau_d" value="<?= $value['cau_d'] ?>">
							</div>
							<div class="wrap_baigiang">
								<label>Đáp án đúng</label>
								<input type="text" name="dapan" value="<?= $value['dapan'] ?>">
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
