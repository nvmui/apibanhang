<?php
	require('DBConnet.php');
	$username = $_POST['username'];
	$password = $_POST['password'];
	$query = "SELECT * FROM tbl_username WHERE username='$username' AND password='$password'";
	$result = mysqli_query($con, $query);
	if (mysqli_num_rows($result) > 0) {
		echo "success";
	} else {
		echo "error";
	}
	mysqli_close($con);
?>