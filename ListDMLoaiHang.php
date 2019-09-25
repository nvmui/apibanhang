<?php
	require('DBConnet.php');	 
	// Chuỗi truy vẫn dữ liệu
	$sql = "SELECT * FROM tbl_loaihang";
	// Thực hiện truy vẫn dữ iệu
	$result = mysqli_query($con,$sql);	 
	if (mysqli_num_rows($result) >0) { 
	 	while($row[] = mysqli_fetch_assoc($result)) { 
	 		$item = $row; 
	 		$outjon = json_encode($item); 
	 	}	 	
	} else {
	 	echo "Không có dữ liệu trả về!";
	}
	//in chuỗi dữ liệu jon
	echo $outjon;
	// foreach ($outjon[] as $key => $value) {
	// 	echo $value->TenLH;
	// 	# code...
	// }
	mysqli_close($con);
?>
