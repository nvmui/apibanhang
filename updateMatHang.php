<?php
	require('DBConnet.php');
	$MaMH = $_POST['MaMH'];
	$TenMH = $_POST['TenMH'];
	$SL = $_POST['SL'];
	$DonGia = $_POST['DonGia'];
	$DVT = $_POST['DVT'];
	$GhiChu = $_POST['GhiChu'];
	// $MaMH = '1';
	// $TenMH = "aa";
	// $SL = 2;
	// $DonGia = 2000;
	// $DVT = "aa";
	// $GhiChu = "xxx";
	$query = "UPDATE tbl_mathang SET TenMH='$TenMH', SL='$SL',DonGia='$DonGia',DVT='$DVT',GhiChu='$GhiChu' WHERE MaMH='$MaMH'";
	if (mysqli_query($con, $query)) {
	    //insert thành công
	    echo "success";
	} else {
	    //lỗi khi insert
	    echo "error";
	}
?>