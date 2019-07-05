-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 06:20 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_baigiang`
--

CREATE TABLE `table_baigiang` (
  `id` int(11) NOT NULL,
  `id_thanhvien` int(11) NOT NULL,
  `id_danhmuc_lv1` int(11) NOT NULL,
  `id_danhmuc_lv2` int(11) NOT NULL,
  `id_baitap` int(11) NOT NULL,
  `ten_baigiang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_baigiang`
--

INSERT INTO `table_baigiang` (`id`, `id_thanhvien`, `id_danhmuc_lv1`, `id_danhmuc_lv2`, `id_baitap`, `ten_baigiang`, `mota`, `noidung`, `photo`, `thumb`, `code`, `video`, `loai`) VALUES
(5, 1, 1, 7, 1, 'Bài giảng HTML', 'HTML là một ...', 'hãy học html thành thạo', '', '', '', '', ''),
(6, 2, 4, 7, 0, 'Bài giảng java 1', 'Java (phiên âm Tiếng Việt: \"Gia-va\") là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp (class)[9]', '', '', '', '', '', ''),
(7, 2, 4, 7, 0, 'Bài giảng java 2', 'Java (phiên âm Tiếng Việt: \"Gia-va\") là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp (class)[9]', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_baitap`
--

CREATE TABLE `table_baitap` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `id_thanhvien` int(11) NOT NULL,
  `id_baigiang` int(11) NOT NULL,
  `loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_baocao_baigiang`
--

CREATE TABLE `table_baocao_baigiang` (
  `id` int(11) NOT NULL,
  `id_nguoibaocao` int(11) NOT NULL,
  `id_baigiang` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_baocao_baitap`
--

CREATE TABLE `table_baocao_baitap` (
  `id` int(11) NOT NULL,
  `id_nguoibaocao` int(11) NOT NULL,
  `id_baitap` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_binhluan`
--

CREATE TABLE `table_binhluan` (
  `id` int(11) NOT NULL,
  `id_nguoibinhluan` int(11) NOT NULL,
  `id_baigiang` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_cauhoi`
--

CREATE TABLE `table_cauhoi` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `cauhoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_a` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_b` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_c` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_d` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_cauhoi`
--

INSERT INTO `table_cauhoi` (`id`, `id_danhmuc`, `cauhoi`, `cau_a`, `cau_b`, `cau_c`, `cau_d`, `dapan`) VALUES
(1, 5, 'Bạn có ăn cơm không?', 'có', 'không', 'không biết', 'hên xui', 'a'),
(2, 4, '1 + 1 = ???', '2', '3', '4', '5', 'a'),
(3, 4, 'abc = xyz ????', '1', '2', '3', '4', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `table_danhmuc_lv1`
--

CREATE TABLE `table_danhmuc_lv1` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_danhmuc_lv1`
--

INSERT INTO `table_danhmuc_lv1` (`id`, `ten`, `icon`) VALUES
(1, 'Web Development', NULL),
(2, 'Databases', NULL),
(3, 'Mobile Development', NULL),
(4, 'Java Technologies', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_danhmuc_lv2`
--

CREATE TABLE `table_danhmuc_lv2` (
  `id` int(11) NOT NULL,
  `id_danhmuc_lv1` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_danhmuc_lv2`
--

INSERT INTO `table_danhmuc_lv2` (`id`, `id_danhmuc_lv1`, `ten`, `mota`, `photo`) VALUES
(1, 1, 'HTML/CSS', 'TML (tiếng Anh, viết tắt cho HyperText Markup Language, hay là \"Ngôn ngữ Đánh dấu Siêu văn bản\") là một ngôn ngữ đánh dấu được thiết kế ra để tạo nên các trang web với các mẩu thông tin được trình bày trên World Wide Web', ''),
(2, 1, 'PHP', '', ''),
(3, 2, 'Sql Server', '', ''),
(4, 2, 'PHP My Sql', '', ''),
(5, 3, 'IOS', '', ''),
(6, 3, 'Android', '', ''),
(7, 4, 'Java 8', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_ketqua`
--

CREATE TABLE `table_ketqua` (
  `id` int(11) NOT NULL,
  `id_thanhvien` int(11) NOT NULL,
  `id_baitap` int(11) NOT NULL,
  `socaudung` int(11) NOT NULL,
  `socausai` int(11) NOT NULL,
  `thoigian_hoanthanh` time NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_phanquyen`
--

CREATE TABLE `table_phanquyen` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_phanquyen`
--

INSERT INTO `table_phanquyen` (`id`, `ten`) VALUES
(1, 'admin'),
(2, 'người dùng'),
(3, 'giáo viên');

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE `table_setting` (
  `id` int(11) NOT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mxh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_thanhvien`
--

CREATE TABLE `table_thanhvien` (
  `id` int(11) NOT NULL,
  `id_quyen` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_thanhvien`
--

INSERT INTO `table_thanhvien` (`id`, `id_quyen`, `ten`, `email`, `matkhau`, `dienthoai`, `ngaysinh`, `diachi`, `photo`, `thumb`, `mota`) VALUES
(1, 1, 'Tân', 'nvt@gmail.com', '123', '', '2019-06-11', '', '', '', ''),
(2, 2, 'Tấn', 'hnt@gmail.com', '123', '', '2019-06-19', '', '', '', ''),
(3, 3, 'Vượng', 'ntv@gmail.com', '123', '', '2019-06-19', '', '', '', 'Nguyễn Trọng Vượng'),
(4, 2, 'Nguyễn Văn Tâm', 'tam@gmail.com', '123', '', '2019-06-18', '', '', '', ''),
(5, 2, 'Nguyễn Văn Tiếng', 'tieng@gmail.com', '123', '', '2019-06-09', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_tieuchi`
--

CREATE TABLE `table_tieuchi` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_tieuchi`
--

INSERT INTO `table_tieuchi` (`id`, `ten`, `mota`, `photo`) VALUES
(1, 'Thư Viện', 'Hệ thống bài giảng đa dạng và phong phú.Cung cấp cho người dùng kiến thức đa dạng.', ''),
(2, 'Kiểm Tra', 'Thử sức với cái bài kiểm tra cơ bản cũng như nâng cao.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_baigiang`
--
ALTER TABLE `table_baigiang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_baitap`
--
ALTER TABLE `table_baitap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_baocao_baigiang`
--
ALTER TABLE `table_baocao_baigiang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_baocao_baitap`
--
ALTER TABLE `table_baocao_baitap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_binhluan`
--
ALTER TABLE `table_binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_cauhoi`
--
ALTER TABLE `table_cauhoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_danhmuc_lv1`
--
ALTER TABLE `table_danhmuc_lv1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_danhmuc_lv2`
--
ALTER TABLE `table_danhmuc_lv2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_ketqua`
--
ALTER TABLE `table_ketqua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_phanquyen`
--
ALTER TABLE `table_phanquyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_thanhvien`
--
ALTER TABLE `table_thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_tieuchi`
--
ALTER TABLE `table_tieuchi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_baigiang`
--
ALTER TABLE `table_baigiang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table_cauhoi`
--
ALTER TABLE `table_cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv1`
--
ALTER TABLE `table_danhmuc_lv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv2`
--
ALTER TABLE `table_danhmuc_lv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table_ketqua`
--
ALTER TABLE `table_ketqua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_phanquyen`
--
ALTER TABLE `table_phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_thanhvien`
--
ALTER TABLE `table_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_tieuchi`
--
ALTER TABLE `table_tieuchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
