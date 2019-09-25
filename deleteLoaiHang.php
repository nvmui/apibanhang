<?php
	require 'DBConnet.php';
	$idloai = $_POST['idloaihang'];
	$query = "DELETE FROM tbl_loaihang WHERE MaLH='$idloai'";
	if (mysqli_query($con, $query)) {
		echo "success";
	}else{
		echo "erorr";
	}
?>