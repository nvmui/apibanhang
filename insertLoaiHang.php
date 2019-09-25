<?php
require('DBConnet.php');
$TenLH = $_POST['TenLH'];
$MoTa = $_POST['MoTa'];
$GhiChu = $_POST['GhiChu'];
$query = "INSERT INTO tbl_loaihang VALUES(null, '$TenLH', '$MoTa','$GhiChu')";
if (mysqli_query($con, $query)) {
    //insert thành công
    echo "success";
} else {
    //lỗi khi insert
    echo "error";
}
