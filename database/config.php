<?php
	$servername = "localhost";
	$database = "doantotnghiep";
	$username = "root";
	$password = "";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $database) or die("không thể kết nối tới database");

	mysqli_set_charset($conn,'utf8');
?>