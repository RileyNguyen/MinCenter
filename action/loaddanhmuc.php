<?php include 'database/config.php'; ?>
<?php 
	$danhmuc2 = $_POST['id'];
	$sql = "select * from table_danhmuc_lv2 where id_danhmuc_lv1 = '".$danhmuc2."'";
	$cat_test = $conn->query($sql);
	foreach ($cat_test as $key => $value) { ?>
		<option value="<?=$value['id']?>"><?=$value['ten']?></option>
<?php }  ?>

