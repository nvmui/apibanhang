<?php
	require 'DBConnet.php';
	$username=$_POST['username'];
	$password=$_POST['password'];
	$passwordNew=$_POST['passwordNew'];
	$query="UPDATE tbl_username SET password='$passwordNew'
	WHERE password ='$password' and username='$username'";
	if (mysqli_query($con,$query)) {
		//Thành công
		echo "success";
	}else
	{
		//lỗi
		echo "error";
	}
?>