<?php
	require('DBConnet.php');
	// Chuỗi truy vẫn dữ liệu
	$sql = "SELECT * FROM tbl_mathang";
	// Thực hiện truy vẫn dữ iệu
	$result = mysqli_query($con, $sql);
	if (mysqli_num_rows($result) > 0) {
		while ($row[] =  mysqli_fetch_assoc($result)) {
			$outjon = json_encode($row);
		}
	} else {
		echo "Không có dữ liệu trả về!";
	}
	//in chuỗi dữ liệu jon
	echo $outjon;
	mysqli_close($con);
?>