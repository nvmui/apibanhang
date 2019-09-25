<?php
	require('DBConnet.php');
	$MaMH = $_POST['MaMH'];
	// $MaMH='5';
	$query = "DELETE FROM tbl_mathang WHERE MaMH='$MaMH'";
	if (mysqli_query($con, $query)) {
	    //Delete thành công
	    echo "success";
	} else {
	    //lỗi khi delete
	    echo "error";
	}
	mysqli_close($con);
?>