-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 05:54 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khoaluan`
--

-- --------------------------------------------------------

--
-- Table structure for table `hop_dong_ld`
--

CREATE TABLE `hop_dong_ld` (
  `ID` int(11) NOT NULL,
  `SOHD` varchar(150) NOT NULL,
  `LOAIHD` varchar(45) NOT NULL,
  `NGAYHIEULUC` datetime NOT NULL,
  `NGAYHETHIEULUC` datetime NOT NULL,
  `CONGVIEC` varchar(45) NOT NULL,
  `MAQL` varchar(45) NOT NULL,
  `TRANGTHAI` tinyint(4) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

CREATE TABLE `luong` (
  `ID` int(11) NOT NULL,
  `MAQL` varchar(45) NOT NULL,
  `TUNGAY` datetime NOT NULL,
  `DENNGAY` datetime NOT NULL,
  `TRANGTHAI` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ID` int(11) NOT NULL,
  `MANV` varchar(45) NOT NULL,
  `HOTEN` varchar(50) NOT NULL,
  `GIOITINH` int(1) NOT NULL,
  `NS` datetime NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `TRANGTHAI` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`ID`, `MANV`, `HOTEN`, `GIOITINH`, `NS`, `EMAIL`, `TRANGTHAI`) VALUES
(1, 'NV001', 'Lương Thị Trang', 0, '1996-02-28 00:00:00', 'trang10031996@gmail.com', 1),
(2, 'NV002', 'Đỗ Đắc Văn ', 1, '1995-10-10 00:00:00', 'vandd@nara.com.vn', 1),
(3, 'NV003', 'Trần Văn Linh ', 1, '1995-12-29 00:00:00', 'linhtv@nara.com.vn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `so_yeu_li_lich`
--

CREATE TABLE `so_yeu_li_lich` (
  `id` int(11) NOT NULL,
  `MAQL` varchar(45) NOT NULL,
  `SDT` varchar(45) NOT NULL,
  `NOISINH` varchar(150) NOT NULL,
  `QUEQUAN` varchar(150) NOT NULL,
  `DANTOC` varchar(45) NOT NULL,
  `TONGIAO` varchar(45) NOT NULL,
  `NOIDKHKTT` varchar(100) NOT NULL,
  `NOIOHN` varchar(45) NOT NULL,
  `ANH` varchar(45) DEFAULT NULL,
  `TRANGTHAI` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_sheet`
--

CREATE TABLE `time_sheet` (
  `ID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `ngayThang` datetime NOT NULL,
  `idLeader` varchar(45) DEFAULT NULL,
  `gioBatDauHC` time NOT NULL,
  `congViec` mediumtext NOT NULL,
  `gioBatDauOt` time NOT NULL,
  `gioKetThucOt` time NOT NULL,
  `trangThai` tinyint(4) DEFAULT '0',
  `gioNghiOt` time NOT NULL,
  `gioKetThucHc` time NOT NULL,
  `nghiTruaHc` int(2) DEFAULT NULL,
  `tongGioHc` int(4) DEFAULT NULL,
  `tongGioOT` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_sheet`
--

INSERT INTO `time_sheet` (`ID`, `username`, `ngayThang`, `idLeader`, `gioBatDauHC`, `congViec`, `gioBatDauOt`, `gioKetThucOt`, `trangThai`, `gioNghiOt`, `gioKetThucHc`, `nghiTruaHc`, `tongGioHc`, `tongGioOT`) VALUES
(1, 'NV001', '2018-10-10 00:00:00', '1', '08:30:00', 'AAAAA', '08:30:00', '08:30:00', 0, '00:00:01', '08:30:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `authority` varchar(1) NOT NULL COMMENT 'S = student\nA = admin',
  `delete_flg` varchar(1) NOT NULL DEFAULT '0' COMMENT '0 = đang sử dụng\n1 = đã xóa',
  `address` varchar(500) NOT NULL,
  `avatar` varchar(500) CHARACTER SET armscii8 NOT NULL,
  `hoten` varchar(45) NOT NULL,
  `sdt` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `quequan` varchar(100) NOT NULL,
  `socmt` varchar(45) NOT NULL,
  `ngaycap` datetime NOT NULL,
  `noicap` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `authority`, `delete_flg`, `address`, `avatar`, `hoten`, `sdt`, `email`, `quequan`, `socmt`, `ngaycap`, `noicap`) VALUES
(0, 'NV001', '$2a$10$biNS3yQ8gDFIFDua8/aHDe.yU2JX...bjDWuF2Z4CFcNZBS60mMry', 'Duong', 'Phong Thanh', 'U', '0', 'HA NOI', 'c:/www/khoaluan/NV001/avatar/1.jpg', 'Lương Thị Trang', '', '', '', '', '2018-10-28 00:00:00', ''),
(1, 'NV002', '$2a$10$biNS3yQ8gDFIFDua8/aHDe.yU2JX...bjDWuF2Z4CFcNZBS60mMry', 'Trang', 'Lương Thị', 'A', '0', 'TrangLT', 'c:/www/khoaluan/NV002/avatar/1.jpg', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(2, 'NV004', '$2a$10$AS33s3E0vyq1xPPOWKuDjObmftlOUpNp7gQwH1bXz1GcVtVxVCeTe', 'Lê', 'Nguyễn Thành', 'A', '0', 'TrangLT', 'c:/www/khoaluan/LeNT/avatar/download.jpg', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(3, 'NV005', '$2a$10$TCqCPDIK7ky7WfGltOlS9uUVhIPsJH3dbtowdPxW5abp3dlHX0ldS', 'Cong', 'Nguyen Chi', 'A', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(6, 'NV006', '$2a$10$Oo6wxVztQJTcim19OnbLTuPOT.3VTzlnDZlQgIiEIXNCVnpxdQX4S', 'Son', 'Nguyễn Trung', 'U', '0', 'TrangLT', 'c:/www/khoaluan/NV006/avatar/download.jpg', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(7, 'NV007', '$2a$10$Oo6wxVztQJTcim19OnbLTuPOT.3VTzlnDZlQgIiEIXNCVnpxdQX4S', 'Trung', 'Đông Văn', 'U', '0', 'TrangLT', 'c:/www/khoaluan/NV007/avatar/1.jpg', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(9, 'NV009', '$2a$10$KcuNnm.29/UwSWpQnRVTQe/5KQmv5i.RD5KwR29n9JmIWKtOR1EKS', 'Trang', 'Trang', 'U', '0', 'TrangLT', 'c:/www/khoaluan/NV009/avatar/5.jpg', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(10, 'NV010', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'Ngo', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(11, 'NV011', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'Nguyen', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(12, 'NV012', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'luong', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(13, 'NV013', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'Do', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(14, 'NV014', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'Bui', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', ''),
(15, 'NV015', '$2a$10$uCwwJ9AdXMA34vFps6tCGuKGU1TIutb1ab0iePgiB9BNw7UmhESGm', 'Trang', 'Trinh', 'U', '0', 'TrangLT', '', '', '', '', '', '', '2018-10-28 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hop_dong_ld`
--
ALTER TABLE `hop_dong_ld`
  ADD PRIMARY KEY (`SOHD`,`username`);

--
-- Indexes for table `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`MAQL`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`MANV`);

--
-- Indexes for table `so_yeu_li_lich`
--
ALTER TABLE `so_yeu_li_lich`
  ADD PRIMARY KEY (`MAQL`);

--
-- Indexes for table `time_sheet`
--
ALTER TABLE `time_sheet`
  ADD PRIMARY KEY (`username`,`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
