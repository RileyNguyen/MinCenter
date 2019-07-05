<?php
session_start();
if(isset($_SESSION['name_user'])){
	unset($_SESSION['name_user']);
	unset($_SESSION['photo']);
	unset($_SESSION['id_user']);
	unset($_SESSION['id_quyen']);
	header('Location: /doan/');
}
?>