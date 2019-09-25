<?php
	require 'DBConnet.php';
	$id=$_POST['MaLH'];
	$tenLH=$_POST['TenLH'];
	$moTa=$_POST['MoTa'];
	$ghiChu=$_POST['GhiChu'];
	$query="UPDATE tbl_loaihang SET TenLH='$tenLH', MoTa='$moTa',GhiChu='$ghiChu' WHERE MaLH='$id'";
	if (mysqli_query($con,$query)) {
		//Thành công
		echo "success";
	}else
	{
		//lỗi
		echo "error";
	}
?>