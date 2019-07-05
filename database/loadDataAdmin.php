<?php // Check connection
if (!$conn) {
	die("Kết nối thất bại: " . mysqli_connect_error());
}else{
	

	$sql = "select * from table_danhmuc_lv1";
	$list = $conn->query($sql);

	$sql = "select * from table_danhmuc_lv2";
	$cat = $conn->query($sql);

	$sql = "select * from table_thanhvien";
	$giaovien = $conn->query($sql);

	$sql = "select * from table_tieuchi where trangthai = 1";
	$tieuchi_admin = $conn->query($sql);

	$sql = "select * from table_danhmuc_lv1 where trangthai = 1";
	$dmlv1_admin = $conn->query($sql);

	$sql = "select * from table_danhmuc_lv2 where trangthai = 1";
	$dmlv2_admin = $conn->query($sql);

	$sql = "select * from table_baigiang where trangthai = 1";
	$baigiang_admin = $conn->query($sql);

	$sql = "select * from table_thanhvien where id_quyen = 3 and trangthai = 1";
	$giaovien_admin = $conn->query($sql);

	$sql = "select * from table_setting";
	$setting = $conn->query($sql);

	$sql = "select * from table_baocao_baigiang";
	$report = $conn->query($sql);

	$sql = "select * from table_ketqua";
	$ketqua = $conn->query($sql);
}
?>