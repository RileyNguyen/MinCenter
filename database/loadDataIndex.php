<?php // Check connection
if (!$conn) {
	die("Kết nối thất bại: " . mysqli_connect_error());
}else{
	$sql = "select * from table_baigiang where trangthai = 1";
	$baigiang = $conn->query($sql);

	$sql = "select * from table_danhmuc_lv1 where trangthai = 1";
	$list = $conn->query($sql);

	$sql = "select * from table_danhmuc_lv2 where trangthai = 1";
	$cat = $conn->query($sql);

	$sql = "select * from table_thanhvien where id_quyen = 3 and noibat = 1";
	$thanhvien = $conn->query($sql);

	$sql = "select * from table_tieuchi where trangthai = 1";
	$tieuchi = $conn->query($sql);

	$sql = "select * from table_setting";
	$cauhinhchung = $conn->query($sql);
	$row_setting = $cauhinhchung->fetch_assoc();

}
?>