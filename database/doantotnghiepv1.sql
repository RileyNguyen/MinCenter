-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 06:56 AM
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
  `ten_baigiang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_baigiang`
--

INSERT INTO `table_baigiang` (`id`, `id_thanhvien`, `id_danhmuc_lv1`, `id_danhmuc_lv2`, `ten_baigiang`, `mota`, `noidung`, `photo`, `trangthai`) VALUES
(3, 0, 0, 0, 'java script', 'abc', 'agfdg', 'WIN_20180315_14_51_26_Pro.jpg', 1),
(5, 2, 4, 7, 'Bài giảng HTML', 'HTML là một ...', '1.hãy học html thành thạo.</br>2.Java (phiên âm Tiếng Việt: \"Gia-va\") là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp (class)[9]', '', 0),
(6, 4, 4, 7, 'Bài giảng java 1', 'Java (phiên âm Tiếng Việt: \"Gia-va\") là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp (class)[9]', 'a', '', 0),
(7, 5, 4, 6, 'Bài giảng java 2', 'Java (phiên âm Tiếng Việt: \"Gia-va\") là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp (class)[9]', '', '', 1),
(8, 6, 4, 7, 'hnt', 'jdsgfkjadg', 'agfdg', 'WIN_20181120_10_24_11_Pro.jpg', 0),
(9, 0, 0, 0, 'hnt', 'jdsgfkjadg', 'agfdg', 'WIN_20180315_14_51_28_Pro.jpg', 0),
(10, 3, 0, 0, 'C++', 'jdsgfkjadg', 'agfdg', 'WIN_20180315_14_51_23_Pro.jpg', 0),
(11, 5, 0, 0, 'CSS', 'abc', 'dsasdf', 'WIN_20190623_19_49_50_Pro.jpg', 1),
(12, 3, 0, 0, 'hntasdasfasfd', 'abc', 'àdasf', 'img9.jpg', 0),
(13, 3, 0, 0, 'Ios 1', 'mô tả ioss 1', '<p>học ioss &aacute;dfS</p>\r\n', 'img.jpg', 1),
(14, 3, 3, 6, 'bài giảng android', 'abc', 'cdsahfdbgin', 'WIN_20180315_14_51_28_Pro.jpg', 1),
(15, 5, 1, 1, 'bài giảng 1', 'mô tả 1', 'học html', 'WIN_20190623_19_50_20_Pro.jpg', 1),
(17, 3, 1, 2, 'hnt', 'abc', '<p>&aacute;d</p>\r\n', 'img8.jpg', 0),
(18, 3, 1, 8, 'ád', 'âấd', '<p>sdasd</p>\r\n', 'Schedule.jpg', 0);

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
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
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
  `id_nguoibinhluan` int(11) NOT NULL,
  `id_baigiang` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_binhluan`
--

INSERT INTO `table_binhluan` (`id_nguoibinhluan`, `id_baigiang`, `noidung`, `trangthai`, `id`) VALUES
(1, 6, 'sdfdsg', 1, 2),
(1, 6, 'sdfsdf', 1, 3),
(1, 6, 'cc', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `table_cauhoi`
--

CREATE TABLE `table_cauhoi` (
  `id` int(11) NOT NULL,
  `id_thanhvien` int(11) NOT NULL,
  `id_danhmuc_lv2` int(11) NOT NULL,
  `cauhoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_a` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_b` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_c` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cau_d` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_cauhoi`
--

INSERT INTO `table_cauhoi` (`id`, `id_thanhvien`, `id_danhmuc_lv2`, `cauhoi`, `cau_a`, `cau_b`, `cau_c`, `cau_d`, `dapan`, `trangthai`) VALUES
(1, 0, 7, 'Bạn có ăn cơm không?', 'có', 'không', 'không biết', 'hên xui', 'a', 1),
(2, 0, 7, '1 + 1 = ???', '2', '3', '4', '5', 'a', 1),
(3, 0, 7, 'abc = xyz ????', '1', '2', '3', '4', 'a', 1),
(4, 3, 7, 'Bạn có ăn cá không?', 'có aa', 'không sdfads', 'tùy', 'hên xui a', 'a', 1),
(5, 3, 7, 'Bạn có bạn giá chưa?', 'Rồi.', 'Chưa.', 'Hên xui.', 'Không biết', 'a', 0),
(9, 3, 7, 'Bạn có ăn cá không?', 'Rồi.', 'Chưa.', 'Hên xui.', 'Không biết', 'a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_danhmuc_lv1`
--

CREATE TABLE `table_danhmuc_lv1` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_danhmuc_lv1`
--

INSERT INTO `table_danhmuc_lv1` (`id`, `ten`, `photo`, `trangthai`) VALUES
(1, 'Web Development', 'i1.png', 1),
(2, 'Databases', NULL, 1),
(3, 'Mobile Development', NULL, 1),
(4, 'Java Technologies', NULL, 0),
(5, 'Danh mục cấp 1 test', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_danhmuc_lv2`
--

CREATE TABLE `table_danhmuc_lv2` (
  `id` int(11) NOT NULL,
  `id_danhmuc_lv1` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_danhmuc_lv2`
--

INSERT INTO `table_danhmuc_lv2` (`id`, `id_danhmuc_lv1`, `ten`, `mota`, `photo`, `trangthai`) VALUES
(1, 1, 'HTML/CSS', 'TML (tiếng Anh  viết tắt cho HyperText Markup Language  hay là ', 'i4.png', 1),
(2, 1, 'PHP', '', '', 1),
(3, 2, 'Sql Server', '', '', 1),
(4, 2, 'PHP My Sql', '', 'i3.png', 0),
(5, 3, 'IOS', '', '', 0),
(6, 3, 'Android', '', '', 0),
(7, 4, 'Java 8', '', '', 1),
(8, 0, 'Danh mục cấp 2', 'Mổ tả danh mục cấp 2 a', 'img.jpg', 0),
(9, 1, 'abc', 'xyz', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_ketqua`
--

CREATE TABLE `table_ketqua` (
  `id` int(11) NOT NULL,
  `id_thanhvien` int(11) DEFAULT NULL,
  `id_danhmuc_lv2` int(11) DEFAULT NULL,
  `socaudung` int(11) DEFAULT NULL,
  `socausai` int(11) DEFAULT NULL,
  `thoigian_hoanthanh` int(11) DEFAULT NULL,
  `diem` float DEFAULT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_ketqua`
--

INSERT INTO `table_ketqua` (`id`, `id_thanhvien`, `id_danhmuc_lv2`, `socaudung`, `socausai`, `thoigian_hoanthanh`, `diem`, `trangthai`) VALUES
(1, 2, 7, 3, 0, 22, 10, 1),
(2, 2, 7, 1, 2, 8, 3.33333, 1),
(3, 4, 7, 1, 2, 6, 3.33333, 1),
(4, 1, 7, 2, 3, 14, 4, 1),
(5, 3, 7, 0, 6, 5, 0, 1),
(6, 3, 7, 0, 6, 900, 0, 1),
(7, 1, 7, 0, 6, 137, 0, 1),
(8, 1, 7, 0, 6, 471, 0, 1),
(9, 3, 0, 1, 0, 2, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_phanquyen`
--

CREATE TABLE `table_phanquyen` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_phanquyen`
--

INSERT INTO `table_phanquyen` (`id`, `ten`, `trangthai`) VALUES
(1, 'admin', 1),
(2, 'người dùng', 1),
(3, 'giáo viên', 1);

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
  `mxh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
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
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `noibat` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_thanhvien`
--

INSERT INTO `table_thanhvien` (`id`, `id_quyen`, `ten`, `email`, `matkhau`, `dienthoai`, `ngaysinh`, `gioitinh`, `diachi`, `photo`, `mota`, `noibat`, `trangthai`) VALUES
(1, 2, 'Nguyễn Minh Tân', 'tan@gmail.com', '123', '0978569874', '2000-07-25', 'nam', 'Lạng Sơn', 'img6.jpg', 'Web Development\r\nMobile Development\r\n', 1, 1),
(2, 3, 'Trần Đức Tâm', 'tam@gmail.com', '123', '0948365123', '1999-07-21', 'nữ', 'Cà Mau', 'img7.jpg', 'Mobile Development\r\nJava Technologies\r\nDatabases', 1, 1),
(3, 3, 'Huỳnh Ngọc Tấn', 'hnt@gmail.com', '123', '038225669', '1998-10-28', 'nam', 'Trần Duy Hưng', 'img4.jpg', 'Databases\r\nWeb Development', 1, 1),
(4, 3, 'Đặng Thái Vĩ', 'vi@gamil.com', '123', '0362525659', '2006-02-10', 'nam', 'Điện Biên', 'img8.jpg', 'Web Development', 1, 0),
(5, 1, 'Nguyễn Trọng Vượng', 'vuong@gmail.com', '123', '0326547895', '1991-02-12', 'nam', 'Buôn Mê Thuộc', 'img5.jpg', '', 0, 0),
(6, 3, 'Trần Phương Thái', 'thai@gmail.com', '123', '0369852456', '2012-12-12', 'nam', 'Nghĩa Địa', 'img9.jpg', 'Databases\r\nWeb Development', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_tieuchi`
--

CREATE TABLE `table_tieuchi` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_tieuchi`
--

INSERT INTO `table_tieuchi` (`id`, `ten`, `mota`, `photo`, `noidung`, `trangthai`) VALUES
(1, 'Kĩ thuật Mạng', ' Chuyên ngành An toàn Thông tin đào tạo chuyên viên quản trị hệ thống mạng, cung cấp khối lượng kiến thức cần thiết và các kỹ năng thực hành để sinh viên có thể thiết kế và xây dựng các hệ thống mạng đạt tiêu chuẩn cao cho doanh nghiệp và tổ chức ứng dụng', 'img10.jpeg', '<p>abc sfadsf</p>\r\n', 0),
(2, 'Công nghệ Phần mềm', 'aaLà chuyên ngành được đào tạo tại Khoa Công nghệ thông tin trường Đại học hàng hải Việt Nam với mục tiêu đào tạo kỹ sư CNTT chuyên về lĩnh vực phần mềm. Kỹ sư ra trường có kiến thức và kỹ năng phát triển và quản lý điều hành các dự án phần mềm: Phân tích', 'i2.png', '<p><em>Chương tr&igrave;nh đ&agrave;o tạo ng&agrave;nh C&ocirc;ng nghệ phần mềm đ&atilde; khẳng định chất lượng của m&igrave;nh th&ocirc;ng qua c&aacute;c điểm nổi trội dưới đ&acirc;y:</em></p>\r\n\r\n<p><em>Chương tr&igrave;nh đ&agrave;o tạo được x&acirc;y dựng tr&ecirc;n cơ sở tham khảo c&aacute;c chương tr&igrave;nh đ&agrave;o tạo C&ocirc;ng nghệ th&ocirc;ng tin của c&aacute;c trường đại học h&agrave;ng đầu ở Việt Nam v&agrave; thế giới được cập nhật thường xuy&ecirc;n theo đặc th&ugrave; ph&aacute;t triển của ng&agrave;nh</em></p>\r\n\r\n<p><em>M&ocirc;n học v&agrave; gi&aacute;o tr&igrave;nh giảng dạy:</em></p>\r\n\r\n<ul>\r\n	<li><em>Th&ocirc;ng tin chi tiết về m&ocirc;n học t&agrave;i liệu gi&aacute;o tr&igrave;nh được cung cấp đầy đủ cho sinh vi&ecirc;n khi bắt đầu m&ocirc;n học.</em></li>\r\n	<li><em>Nền tảng kiến thức được trang bị b&agrave;i bản</em></li>\r\n	<li><em>Ch&uacute; trọng kỹ năng thực h&agrave;nh năng lực tư duy s&aacute;ng tạo v&agrave; kĩ năng nghề nghiệp.</em></li>\r\n	<li><em>Ph&aacute;t huy khả năng th&iacute;ch ứng với c&ocirc;ng việc khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc theo nh&oacute;m.</em></li>\r\n	<li><em>N&acirc;ng cao khả năng tiếng Anh kĩ năng giao tiếp&hellip;</em></li>\r\n</ul>\r\n\r\n<p><em>Đội ngũ giảng vi&ecirc;n:</em></p>\r\n\r\n<ul>\r\n	<li><em>Đội ngũ giảng vi&ecirc;n cơ hữu tốt nghiệp từ c&aacute;c trường c&oacute; uy t&iacute;n trong nước v&agrave; quốc tế; c&oacute; kinh nghiệm giảng dạy v&agrave; thực tế.</em></li>\r\n	<li><em>Phương ph&aacute;p giảng dạy lấy người học l&agrave;m trung t&acirc;m.</em></li>\r\n</ul>\r\n\r\n<p><em>Hệ thống hạ tầng th&ocirc;ng tin:</em></p>\r\n\r\n<ul>\r\n	<li><em>Hệ thống hạ tầng th&ocirc;ng tin: m&aacute;y t&iacute;nh mạng ph&ograve;ng thực h&agrave;nh m&ocirc; phỏng lu&ocirc;n được bổ sung trang bị hiện đại đ&aacute;p ứng nhu cầu đ&agrave;o tạo v&agrave; đảm bảo tốt chất lượng hiệu quả nghi&ecirc;n cứu khoa học.</em></li>\r\n	<li><em>C&aacute;c c&ocirc;ng ty doanh nghiệp đối t&aacute;c lu&ocirc;n tạo điều kiện để sinh vi&ecirc;n được thực tập tham gia triển khai c&aacute;c ứng dụng thực tế.</em></li>\r\n</ul>\r\n\r\n<p><em>Khả năng thăng tiến trong c&ocirc;ng việc:</em></p>\r\n\r\n<ul>\r\n	<li><em>Sinh vi&ecirc;n c&oacute; khả năng nhận được việc l&agrave;m trong qu&aacute; tr&igrave;nh học.</em></li>\r\n	<li><em>Sinh vi&ecirc;n c&oacute; thể đi l&agrave;m ngay sau khi tốt nghiệp.</em></li>\r\n	<li><em>Khả năng gia tăng thu nhập v&agrave; lương.</em></li>\r\n	<li><em>Cơ hội tham dự v&agrave; nhận học bổng từ c&aacute;c chương tr&igrave;nh học tập giao lưu quốc tế.</em></li>\r\n	<li>\r\n	<p><em>Với nền tảng kiến thức vừa rộng v&agrave; s&acirc;u sau khi tốt nghiệp sinh vi&ecirc;n c&oacute; thể l&agrave;m việc với nhiều vị tr&iacute; kh&aacute;c nhau theo nhu cầu của x&atilde; hội như tại c&aacute;c trường đại học viện nghi&ecirc;n cứu c&aacute;c cơ quan doanh nghiệp trong nước v&agrave; quốc tế.</em></p>\r\n\r\n	<p><em>Sau khi tốt nghiệp sinh vi&ecirc;n c&oacute; thể đảm nhận c&aacute;c c&ocirc;ng việc:&nbsp;</em></p>\r\n	</li>\r\n	<li><em>Kĩ sư phần mềm.</em></li>\r\n	<li><em>Trưởng nh&oacute;m ph&aacute;t triển phần mềm.</em></li>\r\n	<li><em>Bảo tr&igrave; phần mềm.</em></li>\r\n	<li><em>Chuy&ecirc;n vi&ecirc;n kiểm thử phần mềm.</em></li>\r\n	<li><em>Đảm bảo chất lượng phần mềm</em></li>\r\n	<li><em>Quản trị dự &aacute;n phần mềm.a</em></li>\r\n	<li><em>Giảng vi&ecirc;n nghi&ecirc;n cứu vi&ecirc;na</em></li>\r\n</ul>\r\n', 1),
(3, 'Hệ thống Thông tin Quản lý.', 'Hệ thống thông tin quản lý là ngành học về con người, thiết bị và quy trình thu thập, phân tích, đánh giá và phân phối những thông tin chính xác cho những người soạn thảo các quyết định trong tổ chức - doanh nghiệp.', 'img12.png', '<p>Đến thời điểm hiện tại, nhiều tổ chức, doanh nghiệp tại Việt Nam đang c&oacute; nhu cầu cao về nh&acirc;n lực nắm vững kiến tức cơ bản về quản l&yacute; v&agrave; kinh doanh để trợ gi&uacute;p hoạch định v&agrave; tổ chức thực thi c&aacute;c ch&iacute;nh s&aacute;ch, dự &aacute;n về ph&aacute;t triển v&agrave; triển khai ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin trong c&aacute;c tổ chức, doanh nghiệp. Đ&acirc;y ch&iacute;nh l&agrave; cơ hội của c&aacute;c bạn đang theo học trong lĩnh vực&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\">Hệ thống th&ocirc;ng tin quản l&yacute;</a>.</p>\r\n\r\n<p>Sau khi tốt nghiệp&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\"><strong>ng&agrave;nh Hệ thống th&ocirc;ng tin quản l&yacute;</strong></a>, c&aacute;c kỹ sư cử nh&acirc;n c&oacute; thể đảm nhận nhiều vị tr&iacute; c&ocirc;ng việc trong c&aacute;c cơ quan, x&iacute; nghiệp như: thiết kế v&agrave; quản l&yacute; một hệ thống th&ocirc;ng tin kinh tế phục vụ cho c&aacute;c hoạt động quản l&yacute; kinh tế, quản trị kinh doanh; c&aacute;c bạn cũng c&oacute; thể tự tin đứng v&agrave;o vị tr&iacute; chuy&ecirc;n vi&ecirc;n ph&acirc;n t&iacute;ch hệ thống, t&iacute;ch hợp hệ thống; Quản trị vi&ecirc;n hệ thống th&ocirc;ng tin; Nh&acirc;n vi&ecirc;n đ&agrave;o tạo v&agrave; hướng dẫn nh&acirc;n vi&ecirc;n ở c&aacute;c bộ phận quản l&yacute; dự &aacute;n; Nếu đam m&ecirc; lĩnh vực nghi&ecirc;n cứu giảng dạy bạn c&oacute; thể học l&ecirc;n cao để tham gia v&agrave;o c&aacute;c trường đại học cao đẳng c&oacute; đ&agrave;o tạo chuy&ecirc;n ng&agrave;nh n&agrave;y.<br />\r\n&nbsp;<br />\r\nB&agrave;i viết tr&ecirc;n phần n&agrave;o đ&atilde; cung cấp những th&ocirc;ng tin to&agrave;n cảnh về&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\"><strong>ng&agrave;nh Hệ thống th&ocirc;ng tin quản l&yacute;</strong></a>. Ngo&agrave;i những th&ocirc;ng tin &ldquo;Hệ thống th&ocirc;ng tin quản l&yacute; l&agrave; g&igrave;? Ra trường l&agrave;m g&igrave;?&rdquo; đ&atilde; nhận được từ b&agrave;i viết tr&ecirc;n, c&aacute;c bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m c&aacute;c vấn đề li&ecirc;n quan kh&aacute;c như: ng&agrave;nh Hệ thống th&ocirc;ng tin x&eacute;t tuyển những tổ hợp m&ocirc;n n&agrave;o học những g&igrave;, học ở đ&acirc;u...? để chuẩn bị tốt nhất cho tương lai của m&igrave;nh.</p>\r\n\r\n<p>Ng&agrave;nh Hệ thống th&ocirc;ng tin v&agrave; quản l&yacute; l&agrave; ng&agrave;nh học kết hợp giữa phần cứng, phần mềm v&agrave; mạng truyền th&ocirc;ng, nhằm thu thập, tạo v&agrave; ph&acirc;n phối c&aacute;c dữ liệu th&ocirc;ng tin trong tổ chức, doanh nghiệp. Ng&agrave;nh học n&agrave;y c&oacute; ứng dụng mạnh mẽ trong quản l&yacute; database&nbsp; l&agrave;m cơ sở đ&aacute;nh gi&aacute; v&agrave; ph&acirc;n t&iacute;ch hiệu quả hoạt động của c&aacute;c tổ chức, doanh nghiệp</p>\r\n', 1),
(4, 'Thiết kế Đồ họa/Game/Multimedia', 'Tại Việt Nam, sự phát triển nhanh chóng của truyền thông và quảng cáo khiến Thiết kế Đồ họa trở thành một trong những ngành có sức hút đặc biệt với giới trẻ nhất là những bạn trẻ đam mê sáng tạo và yêu thích sự năng động. Đây là ngành học của nghệ thuật ứ', 'img13.jpg', '<p><strong>Chương tr&igrave;nh Đ&agrave;o tạo</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<a href=\"https://duytan.edu.vn/thiet-ke-do-hoa\"><em><strong>Chương tr&igrave;nh đ&agrave;o tạo Thiết kế đồ họa</strong></em></a>&nbsp;được x&acirc;y dựng tr&ecirc;n cơ sở chương tr&igrave;nh Thiết kế Mỹ thuật C&ocirc;ng nghiệp v&agrave; Đồ họa Truyền th&ocirc;ng của trường Đại học B&aacute;ch khoa Singapore.</p>\r\n\r\n<p>- C&aacute;c lớp học tại&nbsp;<a href=\"https://duytan.edu.vn/\">đại học Duy T&acirc;n</a>&nbsp;được tổ chức theo quy m&ocirc; nhỏ v&agrave; vừa với khoảng 35 sinh vi&ecirc;n/lớp, đảm bảo tỷ lệ dưới 20 sinh vi&ecirc;n/giảng vi&ecirc;n, gi&uacute;p sinh vi&ecirc;n tiếp thu được kiến thức v&agrave; c&oacute; sự tương t&aacute;c tốt nhất với giảng vi&ecirc;n, ph&aacute;t huy được năng lực s&aacute;ng tạo v&agrave; sự chủ động của sinh vi&ecirc;n.</p>\r\n\r\n<p>- Sinh vi&ecirc;n được cung cấp những kiến thức chuy&ecirc;n s&acirc;u về: Nghệ thuật chữ, Nhận diện Thương hiệu, Thiết kế c&aacute;c ấn phẩm, Quảng c&aacute;o, H&igrave;nh ảnh Đồ họa, Thiết kế Bao b&igrave;, Thiết kế Web &amp; Ứng dụng, C&ocirc;ng nghiệp Game, Kỹ xảo Phim ảnh.&nbsp;</p>\r\n\r\n<p>- Được học tập v&agrave; thực h&agrave;nh tại Studio Sản xuất phim Silver Swallows với hệ thống m&aacute;y t&iacute;nh thế hệ mới c&oacute; cấu h&igrave;nh cao, ph&ograve;ng tr&igrave;nh chiếu được trang bị m&agrave;n h&igrave;nh lớn, c&aacute;ch &acirc;m, sử dụng kỹ thuật, kỹ xảo v&agrave; c&aacute;c phần mềm ti&ecirc;n tiến nhất hiện nay như Pro Tools, 3DS Max, 3D Maya, Zbrush...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kỹ năng Nghề nghiệp</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sinh vi&ecirc;n c&oacute; vốn kiến thức vững chắc từ nền tảng nghệ thuật cơ bản đến phương ph&aacute;p thiết kế, c&aacute;c kỹ thuật ứng dụng v&agrave; sử dụng c&ocirc;ng nghệ trong thiết kế đồ họa, xu hướng ph&aacute;t triển c&aacute;c ứng dụng đồ&nbsp; họa tr&ecirc;n thế giới.</p>\r\n\r\n<p>- C&oacute; khả năng vẽ tay, vẽ tốc hoạ nhanh, vẽ k&yacute; hoạ với c&aacute;c chất liệu kh&aacute;c nhau như ch&igrave;, m&agrave;u nước.&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng c&aacute;c phần mềm đồ hoạ ti&ecirc;n tiến đang được &aacute;p dụng cho thiết kế thương hiệu, thiết kế web, thiết kế game, phim, 3D, thiết kế c&aacute;c ứng dụng cho c&aacute;c thiết bị di động&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng kết hợp giữa thiết kế với truyền th&ocirc;ng, mỹ thuật, thương mại để đ&aacute;p ứng tốt những y&ecirc;u cầu của nền c&ocirc;ng nghiệp s&aacute;ng tạo v&agrave; giải tr&iacute; hiện đại.</p>\r\n\r\n<p>- C&oacute; khả năng ph&acirc;n t&iacute;ch xu hướng thẩm mỹ, t&igrave;m kiếm v&agrave; ph&aacute;t triển &yacute; tưởng mới trong&nbsp;<strong>thiết kế đồ họa</strong>.</p>\r\n\r\n<p>- C&oacute; khả năng s&aacute;ng t&aacute;c, ho&agrave;n thiện dự &aacute;n đồ họa c&oacute; t&iacute;nh thẩm mỹ v&agrave; ứng dụng.</p>\r\n\r\n<p>- C&oacute; khả năng ph&acirc;n t&iacute;ch dự &aacute;n đồ họa&nbsp; từ đ&oacute; hoạch định quy tr&igrave;nh thực hiện hiệu quả.</p>\r\n\r\n<p>- C&oacute; kỹ năng tự cập nhật kiến thức để l&agrave;m việc trong m&ocirc;i trường thiết kế chuy&ecirc;n nghiệp tại Việt Nam v&agrave; tr&ecirc;n thế giới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cơ hội Việc l&agrave;m</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n tư vấn, thiết kế tại c&aacute;c c&ocirc;ng ty quảng c&aacute;o, c&ocirc;ng ty thiết kế, c&ocirc;ng ty truyền th&ocirc;ng v&agrave; tổ chức sự kiện, studio nghệ thuật, t&ograve;a soạn, nh&agrave; xuất bản, cơ quan truyền h&igrave;nh, b&aacute;o ch&iacute;,...</p>\r\n\r\n<p>- Tự th&agrave;nh lập c&ocirc;ng ty thiết kế, dịch vụ studio.</p>\r\n\r\n<p>- Thiết kế tự do (freelancer).</p>\r\n\r\n<p>- Tư vấn - giảng dạy tại c&aacute;c trường học, trung t&acirc;m, c&acirc;u lạc bộ về thiết kế đồ họa.</p>\r\n\r\n<p>- Tham gia c&aacute;c chương tr&igrave;nh đ&agrave;o tạo thạc sĩ thuộc nh&oacute;m ng&agrave;nh mỹ thuật, thiết kế trong v&agrave; ngo&agrave;i nước.</p>\r\n', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `table_binhluan`
--
ALTER TABLE `table_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_cauhoi`
--
ALTER TABLE `table_cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv1`
--
ALTER TABLE `table_danhmuc_lv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv2`
--
ALTER TABLE `table_danhmuc_lv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_ketqua`
--
ALTER TABLE `table_ketqua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_phanquyen`
--
ALTER TABLE `table_phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_thanhvien`
--
ALTER TABLE `table_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `table_tieuchi`
--
ALTER TABLE `table_tieuchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
