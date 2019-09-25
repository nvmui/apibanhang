<?php
	require('DBConnet.php');
	$username = $_POST['username'];
	$password = $_POST['password'];
	// $username = "muinv";
	// $password = "1234";
	$query = "SELECT * FROM tbl_username WHERE username='$username' AND password='$password'";
	$result = mysqli_query($con, $query);
	if (mysqli_num_rows($result) > 0) {
		// while ($row[] =  mysqli_fetch_assoc($result)) {
		// 	$outjon = json_encode($row);
		// }
		//in chuỗi dữ liệu jon
		// echo $outjon;
		echo "success";
	} else {
		// echo "Không có dữ liệu trả về!";
		echo "error";
	}
	mysqli_close($con);
?>