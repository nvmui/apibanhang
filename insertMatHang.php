<?php
	require('DBConnet.php');
	$TenMH = $_POST['TenMH'];
	$SL = $_POST['SL'];
	$DonGia = $_POST['DonGia'];
	$DVT = $_POST['DVT'];
	$GhiChu = $_POST['GhiChu'];
	$query = "INSERT INTO tbl_mathang VALUES(null, '$TenMH', '$SL','$DonGia','$DVT','$GhiChu')";
	if (mysqli_query($con, $query)) {
	    //insert thành công
	    echo "success";
	} else {
	    //lỗi khi insert
	    echo "error";
	}
?>