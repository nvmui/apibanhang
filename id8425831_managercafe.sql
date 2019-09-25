-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 23, 2019 lúc 09:24 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id8425831_managercafe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flowers_info_list`
--

CREATE TABLE `flowers_info_list` (
  `id` int(11) NOT NULL,
  `flower_name` varchar(255) NOT NULL,
  `flower_image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `flowers_info_list`
--

INSERT INTO `flowers_info_list` (`id`, `flower_name`, `flower_image_url`) VALUES
(1, 'Rose red flower', 'http://192.168.1.5//APIRN//images//rosered.jpeg'),
(2, 'Rose blue flower', 'http://192.168.143.148//APIRN//images//roseblueflower.jpeg'),
(3, 'Sun Flower yellowers', 'http://192.168.143.148//APIRN//images//sunflower-flowers-bright-yellow-46216.jpeg'),
(4, 'Cherry Blossom', 'http://192.168.143.148/APIRN/images/pexels-photo-70069.jpeg'),
(5, 'Impala Lily Flower', 'http://192.168.143.148/APIRN/images/flower-impala-lily-floral-plant-65653.jpeg'),
(6, 'Flower With Butterflies', 'http://192.168.143.148/APIRN/images/flowers-background-butterflies-beautiful-87452.jpeg'),
(7, 'Japanese Cherry Tree', 'http://192.168.143.148/APIRN/images/japanese-cherry-trees-flowers-spring-japanese-flowering-cherry-54630.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_table`
--

CREATE TABLE `products_table` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_number` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products_table`
--

INSERT INTO `products_table` (`product_id`, `product_name`, `product_number`, `product_details`) VALUES
(1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ban`
--

CREATE TABLE `tbl_ban` (
  `idBan` int(11) NOT NULL,
  `tenBan` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ghiChu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_ban`
--

INSERT INTO `tbl_ban` (`idBan`, `tenBan`, `img`, `ghiChu`) VALUES
(1, 'Bàn số 1', 'https://muinv.000webhostapp.com/apirn/images/bancaffe.jpg', 'x'),
(2, 'Bàn số 2', '', 'x'),
(5, 'Ban so 3', '', 'x'),
(6, 'Ban so 4', '', 'x'),
(7, 'Ban so 5', '', 'x');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadon`
--

CREATE TABLE `tbl_chitiethoadon` (
  `idCT` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `giasp` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `tenSP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadonban`
--

CREATE TABLE `tbl_chitiethoadonban` (
  `MaHDB` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `GiaBan` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MucGiamGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadonnhap`
--

CREATE TABLE `tbl_chitiethoadonnhap` (
  `MaHDN` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `GiaNhap` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangnhap`
--

CREATE TABLE `tbl_dangnhap` (
  `MaCV` int(11) NOT NULL,
  `TenCV` varchar(100) NOT NULL,
  `PhanQuyen` varchar(100) NOT NULL,
  `NhanVien` varchar(100) NOT NULL,
  `NhaCungCap` varchar(100) NOT NULL,
  `BanHang` varchar(100) NOT NULL,
  `NhapHang` varchar(100) NOT NULL,
  `ThongKe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hang`
--

CREATE TABLE `tbl_hang` (
  `idHang` int(11) NOT NULL,
  `tenHang` varchar(50) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienThoai` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadoanban`
--

CREATE TABLE `tbl_hoadoanban` (
  `MaHDB` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayBan` datetime NOT NULL,
  `GhiChu` varchar(200) NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `idHD` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `tenKhachHang` varchar(50) NOT NULL,
  `dienThoai` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `ngayDat` date NOT NULL,
  `trangThai` int(11) NOT NULL,
  `hinhthuctt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadonnhap`
--

CREATE TABLE `tbl_hoadonnhap` (
  `MaHDN` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayNhap` datetime NOT NULL,
  `GhiChu` varchar(200) NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaihang`
--

CREATE TABLE `tbl_loaihang` (
  `MaLH` int(11) NOT NULL,
  `TenLH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaihang`
--

INSERT INTO `tbl_loaihang` (`MaLH`, `TenLH`, `MoTa`, `GhiChu`) VALUES
(2, 'Bia', 'Bia các loại', 'Bang chay'),
(3, 'Nước giải khát', 'Nước giải khát các loại', 'Bán chạy'),
(6, 'Cafe', 'Cà phê các loại', 'x'),
(7, 'Bánh kẹo', 'Các loại bánh kẹo', 'x'),
(8, 'Sữa', 'Các loại sữa', 'sữa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaisp`
--

CREATE TABLE `tbl_loaisp` (
  `idLoai` int(11) NOT NULL,
  `tenLoai` varchar(50) NOT NULL,
  `ghiChu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mathang`
--

CREATE TABLE `tbl_mathang` (
  `MaMH` int(11) NOT NULL,
  `MaLH` int(11) NOT NULL,
  `TenMH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `DVT` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TGBH` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mathang`
--

INSERT INTO `tbl_mathang` (`MaMH`, `MaLH`, `TenMH`, `DonGia`, `DVT`, `TGBH`, `GhiChu`, `HinhAnh`) VALUES
(1, 3, 'Bia laru vàng', '208000', 'Thùng', '', '', ''),
(2, 3, 'Bia laru vàng', '10000', 'Lon', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `idsp` int(11) NOT NULL,
  `tenSP` varchar(50) NOT NULL,
  `idLoai` int(11) NOT NULL,
  `idHang` int(11) NOT NULL,
  `giaSP` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `hinhDaiDien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_username`
--

CREATE TABLE `tbl_username` (
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_username`
--

INSERT INTO `tbl_username` (`username`, `password`, `hoten`, `email`, `dienthoai`) VALUES
('muinv', '1234', 'Nguyen Van Mui', 'muicadit@gmail.com', '092826242');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userregistrationtable`
--

CREATE TABLE `userregistrationtable` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `userregistrationtable`
--

INSERT INTO `userregistrationtable` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn Mùi', 'muicadit@gmail.com', '1234'),
(2, 'Nguyễn Văn Minh', 'muicadit@yahoo.com', '1234'),
(3, '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `flowers_info_list`
--
ALTER TABLE `flowers_info_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_ban`
--
ALTER TABLE `tbl_ban`
  ADD PRIMARY KEY (`idBan`);

--
-- Chỉ mục cho bảng `tbl_chitiethoadon`
--
ALTER TABLE `tbl_chitiethoadon`
  ADD PRIMARY KEY (`idCT`);

--
-- Chỉ mục cho bảng `tbl_hang`
--
ALTER TABLE `tbl_hang`
  ADD PRIMARY KEY (`idHang`);

--
-- Chỉ mục cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`idHD`);

--
-- Chỉ mục cho bảng `tbl_loaihang`
--
ALTER TABLE `tbl_loaihang`
  ADD PRIMARY KEY (`MaLH`);

--
-- Chỉ mục cho bảng `tbl_loaisp`
--
ALTER TABLE `tbl_loaisp`
  ADD PRIMARY KEY (`idLoai`);

--
-- Chỉ mục cho bảng `tbl_mathang`
--
ALTER TABLE `tbl_mathang`
  ADD PRIMARY KEY (`MaMH`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `tbl_username`
--
ALTER TABLE `tbl_username`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `userregistrationtable`
--
ALTER TABLE `userregistrationtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `flowers_info_list`
--
ALTER TABLE `flowers_info_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products_table`
--
ALTER TABLE `products_table`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_ban`
--
ALTER TABLE `tbl_ban`
  MODIFY `idBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_chitiethoadon`
--
ALTER TABLE `tbl_chitiethoadon`
  MODIFY `idCT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_hang`
--
ALTER TABLE `tbl_hang`
  MODIFY `idHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_loaihang`
--
ALTER TABLE `tbl_loaihang`
  MODIFY `MaLH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_loaisp`
--
ALTER TABLE `tbl_loaisp`
  MODIFY `idLoai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_mathang`
--
ALTER TABLE `tbl_mathang`
  MODIFY `MaMH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `userregistrationtable`
--
ALTER TABLE `userregistrationtable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
