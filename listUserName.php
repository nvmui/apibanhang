<?php
	require('DBConnet.php');
	$username=$_POST['username'];
	$password=$_POST['password'];
	// Chuỗi truy vẫn dữ liệu	
	$sql = "SELECT * FROM tbl_username WHERE username='$username' AND password='$password'";
	// Thực hiện truy vẫn dữ iệu
	$result = mysqli_query($con, $sql);
	if (mysqli_num_rows($result) > 0) {
		echo "success";
	} else {
		echo "error";
	}
	mysqli_close($con);
?>