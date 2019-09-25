-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 04:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cthdban`
--

CREATE TABLE `tbl_cthdban` (
  `MaHDB` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `GiaBan` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MucGiamGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cthdnhap`
--

CREATE TABLE `tbl_cthdnhap` (
  `MaHDN` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `GiaNhap` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangnhap`
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
-- Table structure for table `tbl_hoadoanban`
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
-- Table structure for table `tbl_hoadonnhap`
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
-- Table structure for table `tbl_khachhang`
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
-- Table structure for table `tbl_loaihang`
--

CREATE TABLE `tbl_loaihang` (
  `MaLH` int(11) NOT NULL,
  `TenLH` varchar(200) NOT NULL,
  `MoTa` varchar(200) NOT NULL,
  `GhiChu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_loaihang`
--

INSERT INTO `tbl_loaihang` (`MaLH`, `TenLH`, `MoTa`, `GhiChu`) VALUES
(1, 'Máy tính bảng', 'Máy tính hãng Apple', 'x'),
(2, 'Điện thoại', 'Điện thoại di động', 'Bán chạy'),
(3, 'Bia', 'Các loại bia', 'Bia'),
(4, 'Nước đóng chai', 'Các loại nước giải khát đóng chai', 'Nước giải khát'),
(5, 'Kem', 'Các loại kem', ''),
(6, 'Sữa', 'Các loại sữa', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mathang`
--

CREATE TABLE `tbl_mathang` (
  `MaMH` int(11) NOT NULL,
  `TenMH` varchar(50) NOT NULL,
  `SL` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `DVT` varchar(10) NOT NULL,
  `GhiChu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mathang`
--

INSERT INTO `tbl_mathang` (`MaMH`, `TenMH`, `SL`, `DonGia`, `DVT`, `GhiChu`) VALUES
(1, 'Bia Laru xanh', 10, '208000', 'Thung', 'xxx'),
(7, 'Heniken bac', 4, '394000', 'Thung', 'N'),
(8, 'Heniken xanh cao', 2, '394000', 'Thung', 'N'),
(9, 'Bia Huda', 5, '217000', 'Thung', 'N'),
(10, 'Tra xanh thong do', 18, '135000', 'Lon', 'N'),
(11, 'Bia laru xanh', 3, '217000', 'Thung', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhacungcap`
--

CREATE TABLE `tbl_nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `STK` varchar(30) NOT NULL,
  `GhiChu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nhacungcap`
--

INSERT INTO `tbl_nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`, `Email`, `STK`, `GhiChu`) VALUES
(1, 'Thống sen', '220 Nguyễn lương bằng', '0987252442', 'thongsen@gmail.com', '098267514131', ''),
(2, 'A Tứ Pro', '12 Tôn đức thắng', '0982978587', 'atupro@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `GioiTinh` varchar(6) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(30) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Luong` decimal(10,0) NOT NULL,
  `PhuCap` decimal(10,0) NOT NULL,
  `MaCV` int(11) NOT NULL,
  `MatKhau` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_username`
--

CREATE TABLE `tbl_username` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dienthoai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_username`
--

INSERT INTO `tbl_username` (`username`, `password`, `hoten`, `email`, `dienthoai`) VALUES
('muinv', '1234', 'Nguyễn Văn Mùi', 'muicadit@gmail.com', '0935848413');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cthdban`
--
ALTER TABLE `tbl_cthdban`
  ADD PRIMARY KEY (`MaHDB`,`MaMH`);

--
-- Indexes for table `tbl_cthdnhap`
--
ALTER TABLE `tbl_cthdnhap`
  ADD PRIMARY KEY (`MaHDN`,`MaMH`);

--
-- Indexes for table `tbl_dangnhap`
--
ALTER TABLE `tbl_dangnhap`
  ADD PRIMARY KEY (`MaCV`);

--
-- Indexes for table `tbl_hoadoanban`
--
ALTER TABLE `tbl_hoadoanban`
  ADD PRIMARY KEY (`MaHDB`);

--
-- Indexes for table `tbl_hoadonnhap`
--
ALTER TABLE `tbl_hoadonnhap`
  ADD PRIMARY KEY (`MaHDN`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `tbl_loaihang`
--
ALTER TABLE `tbl_loaihang`
  ADD PRIMARY KEY (`MaLH`);

--
-- Indexes for table `tbl_mathang`
--
ALTER TABLE `tbl_mathang`
  ADD PRIMARY KEY (`MaMH`);

--
-- Indexes for table `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `tbl_username`
--
ALTER TABLE `tbl_username`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dangnhap`
--
ALTER TABLE `tbl_dangnhap`
  MODIFY `MaCV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hoadoanban`
--
ALTER TABLE `tbl_hoadoanban`
  MODIFY `MaHDB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hoadonnhap`
--
ALTER TABLE `tbl_hoadonnhap`
  MODIFY `MaHDN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loaihang`
--
ALTER TABLE `tbl_loaihang`
  MODIFY `MaLH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mathang`
--
ALTER TABLE `tbl_mathang`
  MODIFY `MaMH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
