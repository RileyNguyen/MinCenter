-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 07:00 PM
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
(1, 3, 1, 1, 'Bài 1: HTML là gì?', 'HTML là chữ viết tắt của Hypertext Markup Language, là ngôn ngữ được sử dụng rộng rãi nhất để viết các trang Web.  Hypertext là cách mà các trang Web (các tài liệu HTML) được kết nối với nhau. Và như thế, đường link có trên trang Web được gọi là Hypertext.', '<ul>\r\n	<li>\r\n	<p>Như t&ecirc;n gọi đ&atilde; gợi &yacute;,&nbsp;<strong>HTML</strong>&nbsp;l&agrave; ng&ocirc;n ngữ đ&aacute;nh dấu bằng thẻ (<strong>Markup Language</strong>), nghĩa l&agrave; bạn sử dụng HTML để đ&aacute;nh dấu một t&agrave;i liệu text bằng c&aacute;c&nbsp;<strong>thẻ (tag)</strong>&nbsp;để n&oacute;i cho tr&igrave;nh duyệt Web c&aacute;ch để cấu tr&uacute;c n&oacute; để hiển thị ra m&agrave;n h&igrave;nh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&uacute;c đầu, HTML được ph&aacute;t triển với mục đ&iacute;ch để x&aacute;c định cấu tr&uacute;c của c&aacute;c t&agrave;i liệu như c&aacute;c ti&ecirc;u đề, c&aacute;c đoạn văn, c&aacute;c danh s&aacute;ch&hellip; v&agrave; tạo sự thuận lợi cho việc chia sẻ th&ocirc;ng tin khoa học giữa c&aacute;c nh&agrave; nghi&ecirc;n cứu.</p>\r\n\r\n<p>B&acirc;y giờ, HTML đ&atilde; được sử dụng rộng r&atilde;i để định dạng c&aacute;c trang Web với sự gi&uacute;p đỡ của c&aacute;c tag kh&aacute;c nhau c&oacute; trong ng&ocirc;n ngữ HTML.</p>\r\n\r\n<h2>V&iacute; dụ một t&agrave;i liệu HTML cơ bản</h2>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một v&iacute; dụ về một trong c&aacute;c mẫu đơn giản nhất của t&agrave;i liệu HTML.</p>\r\n\r\n<pre>\r\n&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;title&gt;Day la tieu de&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;h1&gt;Day la dau de&lt;/h1&gt;\r\n&lt;p&gt;Phan noi dung cua tai lieu ...&lt;/p&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</pre>\r\n\r\n<p>Bạn c&oacute; thể sử dụng t&ugrave;y chọn&nbsp;<strong>Try it</strong>&nbsp;c&oacute; tr&ecirc;n g&oacute;c tr&ecirc;n b&ecirc;n phải của hộp code để kiểm tra kết quả của code HTML n&agrave;y, hoặc bạn lưu n&oacute; v&agrave;o trong file HTML (<strong>test.htm</strong>), sử dụng bộ bi&ecirc;n soạn văn bản m&agrave; bạn th&iacute;ch. Cuối c&ugrave;ng, bạn sử dụng một tr&igrave;nh duyệt Web chẳng hạn như Internet Explore, Google Chrome, hoặc Firefox&hellip; để mở n&oacute;. N&oacute; sẽ hiển thị kết quả sau:</p>\r\n\r\n<p><img alt=\"Ví dụ HTML\" src=\"https://vietjack.com/html/images/vi-du-html.PNG\" /></p>\r\n\r\n<h2>C&aacute;c thẻ trong HTML - Tag trong HTML</h2>\r\n\r\n<p>Như đ&atilde; tr&igrave;nh b&agrave;y ở tr&ecirc;n, HTML l&agrave; ng&ocirc;n ngữ đ&aacute;nh dấu bằng&nbsp;<strong>thẻ (tag)</strong>&nbsp;v&agrave; sử dụng c&aacute;c thẻ kh&aacute;c nhau để định dạng nội dung. Những thẻ n&agrave;y được chứa trong hai dấu ngoặc đơn&nbsp;<strong>&lt;t&ecirc;n thẻ&gt;</strong>. Trừ một v&agrave;i thẻ, hầu hết c&aacute;c thẻ đều c&oacute; c&aacute;c thẻ đ&oacute;ng tương ứng với n&oacute;. V&iacute; dụ, thẻ&nbsp;<strong>&lt;html&gt;</strong>&nbsp;c&oacute; thẻ đ&oacute;ng tương ứng l&agrave;&nbsp;<strong>&lt;/html&gt;</strong>&nbsp;v&agrave; thẻ&nbsp;<strong>&lt;body&gt;</strong>&nbsp;c&oacute; thẻ đ&oacute;ng tương ứng l&agrave;&nbsp;<strong>&lt;/body&gt;</strong>&nbsp;...</p>\r\n\r\n<p>V&iacute; dụ tr&ecirc;n về t&agrave;i liệu HTML đ&atilde; sử dụng c&aacute;c thẻ sau đ&acirc;y:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Tag</th>\r\n			<th>Mi&ecirc;u tả</th>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;!DOCTYPE...&gt;</td>\r\n			<td>C&ograve;n gọi l&agrave; thẻ khai b&aacute;o một t&agrave;i liệu HTML. Thẻ n&agrave;y x&aacute;c định loại t&agrave;i liệu v&agrave; phi&ecirc;n bản HTML.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;html&gt;</td>\r\n			<td>Thẻ n&agrave;y bao phủ c&aacute;c t&agrave;i liệu HTML đầy đủ. C&ograve;n đầu trang t&agrave;i liệu th&igrave; được biểu diễn bởi c&aacute;c thẻ&nbsp;<strong>&lt;head&gt;...&lt;/head&gt;</strong>&nbsp;v&agrave; th&acirc;n t&agrave;i liệu l&agrave; c&aacute;c thẻ&nbsp;<strong>&lt;body&gt;...&lt;/body&gt;</strong>&nbsp;.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;head&gt;</td>\r\n			<td>Thẻ n&agrave;y đại diện cho đầu trang t&agrave;i liệu m&agrave; c&oacute; thể giữ c&aacute;c thẻ HTML như &lt;title&gt;, &lt;link&gt; ...</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;title&gt;</td>\r\n			<td>Thẻ&nbsp;<strong>&lt;title&gt;</strong>&nbsp;được sử dụng trong thẻ &lt;head&gt; chỉ ti&ecirc;u đề t&agrave;i liệu.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;body&gt;</td>\r\n			<td>Thẻ n&agrave;y đại diện cho th&acirc;n t&agrave;i liệu v&agrave; giữ c&aacute;c thẻ như &lt;h1&gt;, &lt;div&gt;, &lt;p&gt; ...</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;h1&gt;</td>\r\n			<td>Thẻ n&agrave;y đại diện cho c&aacute;c ti&ecirc;u đề trang.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;p&gt;</td>\r\n			<td>Thẻ n&agrave;y đại diện cho đoạn văn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Để học HTML, bạn sẽ cần phải học c&aacute;c thẻ kh&aacute;c nhau v&agrave; hiểu c&aacute;ch ch&uacute;ng vận h&agrave;nh trong khi định dạng t&agrave;i liệu thuần văn bản. Học HTML l&agrave; đơn giản khi người sử dụng học được c&aacute;ch sử dụng của c&aacute;c thẻ kh&aacute;c nhau để định dạng văn bản hoặc h&igrave;nh ảnh để tạo c&aacute;c trang Web đẹp.</p>\r\n\r\n<p><strong>World Wide Web Consortium (W3C)</strong>&nbsp;đề nghị sử dụng c&aacute;c thẻ chữ thường bắt đầu từ HTML 4.</p>\r\n\r\n<h2>Cấu tr&uacute;c t&agrave;i liệu HTML</h2>\r\n\r\n<p>Một t&agrave;i liệu HTML đặc trưng c&oacute; cấu tr&uacute;c cơ bản sau:</p>\r\n\r\n<pre>\r\nThẻ khai b&aacute;o &lt;!DOCTYPE&gt;\r\n</pre>\r\n\r\n<pre>\r\n&lt;html&gt;\r\n   &lt;head&gt;\r\n       C&aacute;c thẻ li&ecirc;n quan tới đầu đề t&agrave;i liệu\r\n   &lt;/head&gt;\r\n\r\n   &lt;body&gt;\r\n       C&aacute;c thẻ li&ecirc;n quan tới phần th&acirc;n t&agrave;i liệu\r\n   &lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre>\r\n\r\n<p>Ch&uacute;ng ta sẽ học về c&aacute;c thẻ&nbsp;<strong>&lt;head&gt;</strong>&nbsp;v&agrave; thẻ&nbsp;<strong>&lt;body&gt;</strong>&nbsp;trong c&aacute;c chương tiếp theo, b&acirc;y giờ ch&uacute;ng ta sẽ t&igrave;m hiểu về thẻ khai b&aacute;o trong HTML.</p>\r\n\r\n<h2>Thẻ khai b&aacute;o &lt;!DOCTYPE&gt;</h2>\r\n\r\n<p>Thẻ khai b&aacute;o &lt;!DOCTYPE&gt; được sử dụng để c&aacute;c tr&igrave;nh duyệt Web biết được phi&ecirc;n bản HTML m&agrave; bạn sử dụng. Phi&ecirc;n bản hiện tại của HTML l&agrave; 5 v&agrave; sử dụng thẻ khai b&aacute;o sau:</p>\r\n\r\n<pre>\r\n&lt;!DOCTYPE html&gt;</pre>\r\n\r\n<p>Phụ thuộc v&agrave;o phi&ecirc;n bản của HTML m&agrave; c&oacute; rất nhiều loại thẻ được sử dụng. Ch&uacute;ng ta sẽ t&igrave;m hiểu chi tiết về c&aacute;c thẻ &lt;!DOCTYPE...&gt; n&agrave;y song song với c&aacute;c thẻ HTML kh&aacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'img5.jpg', 1),
(2, 3, 1, 1, 'Bài 2: Các thẻ HTML cơ bản (HTML Tag).', 'Bất kỳ tài liệu nào cũng đều bắt đầu với một đầu đề. Bạn có thể sử dụng các kích cỡ khác nhau cho đầu đề của bạn. HTML cũng có 6 cỡ khác nhau cho đầu đề, sử dụng các thẻ cơ bản. Trong khi hiển thị bất cứ một đầu đề nào, các trình duyệt sẽ thêm (để cách) một dòng trước và một dòng sau đầu đề đó.', '<p>Bất kỳ t&agrave;i liệu n&agrave;o cũng đều bắt đầu với một đầu đề. Bạn c&oacute; thể sử dụng c&aacute;c k&iacute;ch cỡ kh&aacute;c nhau cho đầu đề của bạn. HTML cũng c&oacute; 6 cỡ kh&aacute;c nhau cho đầu đề, sử dụng c&aacute;c thẻ cơ bản l&agrave;&nbsp;<strong>&lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, v&agrave; &lt;h6&gt;</strong>. Trong khi hiển thị bất cứ một đầu đề n&agrave;o, c&aacute;c tr&igrave;nh duyệt sẽ th&ecirc;m (để c&aacute;ch) một d&ograve;ng trước v&agrave; một d&ograve;ng sau đầu đề đ&oacute;.</p>\n\n<h3>V&iacute; dụ:</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Day la tieu de - Vi du dau de&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;h1&gt;Day la dau de 1&lt;/h1&gt;\n&lt;h2&gt;Day la dau de 2&lt;/h2&gt;\n&lt;h3&gt;Day la dau de 3&lt;/h3&gt;\n&lt;h4&gt;Day la dau de 4&lt;/h4&gt;\n&lt;h5&gt;Day la dau de 5&lt;/h5&gt;\n&lt;h6&gt;Day la dau de 6&lt;/h6&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>Khi chạy, code tr&ecirc;n sẽ hiển thị kết quả:</p>\n\n<p><img alt=\"Ví dụ thẻ head trong HTML\" src=\"https://vietjack.com/html/images/vi-du-html-1.PNG\" /></p>\n\n<p>Bạn sẽ thấy rằng độ lớn cũng như mức độ in đậm cho từng đầu đề l&agrave; kh&aacute;c nhau t&ugrave;y cho từng thẻ.</p>\n\n<h2>Thẻ biểu diễn đoạn văn trong HTML - Thẻ p trong HTML</h2>\n\n<p>Thẻ&nbsp;<strong>&lt;p&gt;</strong>, với&nbsp;<strong>p</strong>&nbsp;l&agrave; viết tắt của&nbsp;<strong>Paragraph</strong>, gi&uacute;p cấu tr&uacute;c t&agrave;i liệu HTML của bạn th&agrave;nh c&aacute;c đoạn văn kh&aacute;c nhau. Mỗi một đoạn văn trong t&agrave;i liệu HTML sẽ ở trong một thẻ mở &lt;p&gt; v&agrave; một thẻ đ&oacute;ng &lt;/p&gt; như v&iacute; dụ b&ecirc;n dưới.</p>\n\n<h3>V&iacute; dụ thẻ p trong HTML:</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du the p trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;Day la doan van thu nhat.&lt;/p&gt;\n&lt;p&gt;Day la doan van thu hai.&lt;/p&gt;\n&lt;p&gt;Day la doan van thu ba.&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>Chạy đoạn code n&agrave;y sẽ hiển thị kết quả:</p>\n\n<p>Day la doan van thu nhat.</p>\n\n<p>Day la doan van thu hai.</p>\n\n<p>Day la doan van thu ba.</p>\n\n<h2>Thẻ ngắt d&ograve;ng trong HTML - Thẻ br trong HTML</h2>\n\n<p>Bất cứ khi n&agrave;o bạn sử dụng thẻ&nbsp;<strong>&lt;br /&gt;</strong>&nbsp;th&igrave; c&aacute;c đối tượng theo sau n&oacute; sẽ bắt đầu từ d&ograve;ng tiếp theo. Thẻ n&agrave;y l&agrave; một v&iacute; dụ cho một khoảng trống (<strong>empty</strong>) trong t&agrave;i liệu, tại đ&oacute; bạn kh&ocirc;ng cần c&aacute;c thẻ mở v&agrave; đ&oacute;ng v&igrave; sẽ kh&ocirc;ng c&oacute; g&igrave; trong đ&oacute;.</p>\n\n<p>Thẻ &lt;br /&gt; c&oacute; một khoảng trống giữa hai k&yacute; từ&nbsp;<strong>br</strong>&nbsp;v&agrave; dấu gạch ch&eacute;o theo sau. Nếu bạn bỏ s&oacute;t khoảng trống n&agrave;y, c&aacute;c tr&igrave;nh duyệt cũ hơn sẽ gặp vấn đề trong việc hiển thị sự ngắt d&ograve;ng, trong khi nếu bạn qu&ecirc;n dấu g&aacute;ch ch&eacute;o theo sau v&agrave; chỉ sử dụng &lt;br&gt; th&igrave; sẽ kh&ocirc;ng c&oacute; hiệu lực trong XHTML.</p>\n\n<h3>V&iacute; dụ</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du the br trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;Xin chao tat ca cac ban&lt;br /&gt;\nCam on ban da hoc HTML tai VietJack.&lt;br /&gt;\nChuc cac ban hoc tot!&lt;br /&gt;\nVietJack Team&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>Chạy đoạn code sẽ hiển thị kết quả sau:</p>\n\n<p>Xin chao tat ca cac ban<br />\nCam on ban da hoc HTML tai VietJack.<br />\nChuc cac ban hoc tot!<br />\nVietJack Team</p>\n\n<h2>Căn chỉnh nội dung trung t&acirc;m - Thẻ center trong HTML</h2>\n\n<p>Bạn c&oacute; thể sử dụng thẻ&nbsp;<strong>&lt;center&gt;</strong>&nbsp;để căn chỉnh bất kỳ nội dung v&agrave;o phần trung t&acirc;m của trang hoặc của bất kỳ &ocirc; n&agrave;o trong bảng.</p>\n\n<h3>V&iacute; dụ</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du the center trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;Doan van nay hien thi nhu binh thuong.&lt;/p&gt;\n&lt;center&gt;\n&lt;p&gt;Doan van nay duoc can chinh vao giua.&lt;/p&gt;\n&lt;/center&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>Chạy đoạn code sẽ hiển thị kết quả sau:</p>\n\n<p>Doan van nay hien thi nhu binh thuong.</p>\n\n<p>Doan van nay duoc can chinh vao giua.</p>\n\n<h2>Hiển thị d&ograve;ng ngang trong HTML - Thẻ hr trong HTML</h2>\n\n<p>C&aacute;c đường ngang được sử dụng để ngăn c&aacute;ch c&aacute;c khu vực trong t&agrave;i liệu. Thẻ&nbsp;<strong>&lt;hr&gt;</strong>&nbsp;tạo một d&ograve;ng ngang từ vị tr&iacute; hiện tại trong t&agrave;i liệu đến lề phải v&agrave; do đ&oacute; tạo ra một d&ograve;ng ngắt.</p>\n\n<p>V&iacute; dụ, bạn muốn c&oacute; một d&ograve;ng ngang để ngăn c&aacute;ch 2 paragraph:</p>\n\n<h3>V&iacute; dụ</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du hien thi dong ngang trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;Doan van thu nhat va nam o ben tren&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;Doan van thu hai va nam o ben duoi&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>N&oacute; sẽ hiển thị kết quả sau khi bạn chạy đoạn code tr&ecirc;n:</p>\n\n<p>Doan van thu nhat va nam o ben tren</p>\n\n<hr />\n<p>Doan van thu hai va nam o ben duoi</p>\n\n<p>Thẻ&nbsp;<strong>&lt;hr /&gt;</strong>&nbsp;l&agrave; một v&iacute; dụ cho một&nbsp;<strong>khoảng trống</strong>&nbsp;trong t&agrave;i liệu, tại đ&oacute; bạn kh&ocirc;ng cần c&aacute;c thẻ đ&oacute;ng v&agrave; mở bởi v&igrave; kh&ocirc;ng c&oacute; đối tượng n&agrave;o trong đ&oacute;.</p>\n\n<p>Thẻ &lt;hr /&gt; c&oacute; một khoảng trống giữa 2 k&yacute; tự&nbsp;<strong>hr</strong>&nbsp;v&agrave;&nbsp;<strong>dấu gạch ch&eacute;o</strong>. Nếu bạn bỏ qu&ecirc;n khoảng trống, c&aacute;c tr&igrave;nh duyệt cũ sẽ kh&oacute; khăn trong việc hiển thị c&aacute;c đường ngang, trong khi đ&oacute;, nếu bạn qu&ecirc;n k&yacute; tự dấu gạch ch&eacute;o v&agrave; chỉ sử dụng &lt;hr&gt; th&igrave; sẽ kh&ocirc;ng c&oacute; hiệu lực trong XHTML.</p>\n\n<h2>Giữ nguy&ecirc;n định dạng trong HTML - Thẻ pre trong HTML</h2>\n\n<p>Đ&ocirc;i khi bạn muốn văn bản của bạn được hiển thị như những g&igrave; bạn đ&atilde; viết. Trong những trường hợp n&agrave;y, bạn c&oacute; thể sử dụng thẻ x&aacute;c định định dạng trước l&agrave; &lt;pre&gt;.</p>\n\n<p>Khi đ&oacute;, bất kỳ văn bản n&agrave;o xuất hiện trong thẻ mở &lt;pre&gt; v&agrave; thẻ đ&oacute;ng &lt;/pre&gt; sẽ duy tr&igrave; c&aacute;i định dạng trong t&agrave;i liệu nguồn.</p>\n\n<h3>V&iacute; dụ</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du the pre trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;pre&gt;\nfunction testFunction( strText ){\n   alert (strText)\n}\n&lt;/pre&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n\n<p>Kết quả hiển thị khi bạn chạy đoạn code tr&ecirc;n l&agrave;:</p>\n\n<pre>\nfunction testFunction( strText ){\n   alert (strText)\n}\n</pre>\n\n<p>Bạn thử sử dụng code tương tự m&agrave; kh&ocirc;ng sử dụng 2 thẻ &lt;pre&gt;...&lt;/pre&gt; để so s&aacute;nh sự kh&aacute;c nhau trong kết quả hiển thị.</p>\n\n<h2>Hiển thị c&aacute;c khoảng trống kh&ocirc;ng ngắt trong HTML</h2>\n\n<p>Giả sử bạn muốn sử dụng cụm từ&nbsp;&quot;12 Angry Men.&quot;&nbsp;Bạn kh&ocirc;ng muốn một tr&igrave;nh duyệt Web chia (ngắt) cụm từ tr&ecirc;n th&agrave;nh&nbsp;&quot;12 Angry&quot;&nbsp;v&agrave;&nbsp;&quot;Men&quot;&nbsp;ở hai d&ograve;ng:</p>\n\n<pre>\nSau day la vi du minh hoa cho khoang trong ngat trong HTML. Bo phim co ten goi &quot;12 Angry \nMen.&quot;</pre>\n\n<p>Trong t&igrave;nh huống n&agrave;y bạn kh&ocirc;ng muốn tr&igrave;nh duyệt ngắt văn bản của bạn, bạn n&ecirc;n sử dụng khoảng trống kh&ocirc;ng ngắt&nbsp;<strong>&amp;nbsp;</strong>&nbsp;thay v&igrave; sử dụng một khoảng trống th&ocirc;ng thường. V&iacute; dụ khi g&otilde; code &quot;12 Angry Men&quot; v&agrave;o một paragraph, bạn n&ecirc;n d&ugrave;ng đoạn code tương tự như sau:</p>\n\n<h3>V&iacute; dụ</h3>\n\n<pre>\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Vi du khoang trong khong ngat trong HTML&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;Sau day la vi du minh hoa cho khoang trong ngat trong HTML. Bo phim co ten goi &quot;12&amp;nbsp;Angry&amp;nbsp;Men.&quot;&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;</pre>\n', 'img6.jpg', 1),
(3, 2, 1, 3, 'Bài 1: Giới thiệu về javascript.', 'JavaScript là ngôn ngữ lập trình phổ biến nhất trên thế giới.', '<h2>JavaScript c&oacute; thể thay đổi nội dung HTML</h2>\r\n\r\n<p>Một trong những phương ph&aacute;p HTML l&agrave; &nbsp;<strong>getElementById()</strong>.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; v&iacute; dụ sử dụng phương ph&aacute;p để&nbsp;<strong>&ldquo;t&igrave;m&rdquo;</strong>một phần tử trong HTML (với id=&rdquo;demo&rdquo;<strong>)</strong>, v&agrave; thay đổi nội dung phần tử (<strong>innerHTML</strong>) th&agrave;nh &nbsp;&ldquo;Hello JavaScript&rdquo;.</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>&lt;!DOCTYPE html&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;body&gt;&lt;h1&gt;What Can JavaScript Do?&lt;/h1&gt;&lt;p id=&rdquo;demo&rdquo;&gt;JavaScript can change HTML content.&lt;/p&gt;&lt;button type=&rdquo;button&rdquo;<br />\r\nonclick=&rdquo;document.getElementById(&lsquo;demo&rsquo;).innerHTML = &lsquo;Hello JavaScript!&#39;&rdquo;&gt;<br />\r\nClick Me!&lt;/button&gt;&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n\r\n<hr />\r\n<h2>JavaScript c&oacute; thể thay đổi thuộc t&iacute;nh của HTML</h2>\r\n\r\n<p>Đ&acirc;y l&agrave; v&iacute; dụ thay đổi h&igrave;nh ảnh của HTML, bằng c&aacute;ch thay đổi thuộc t&iacute;nh src của thẻ&nbsp;<strong>&lt;img&gt;</strong>.</p>\r\n\r\n<h3>Code dưới đ&acirc;y:</h3>\r\n\r\n<p>&lt;!DOCTYPE html&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;body&gt;&lt;h1&gt;JavaScript c&oacute; thể thay đổi ảnhs&lt;/h1&gt;&lt;img id=&rdquo;myImage&rdquo; onclick=&rdquo;changeImage()&rdquo; src=&rdquo;pic_bulboff.gif&rdquo; width=&rdquo;100&Prime; height=&rdquo;180&Prime;&gt;&lt;p&gt;K&iacute;ch v&agrave;o b&oacute;ng đ&egrave;n để bật tắt &aacute;nh s&aacute;ng.&lt;/p&gt;&lt;script&gt;<br />\r\nfunction changeImage() {<br />\r\nvar image = document.getElementById(&lsquo;myImage&rsquo;);<br />\r\nif (image.src.match(&ldquo;bulbon&rdquo;)) {<br />\r\nimage.src = &ldquo;pic_bulboff.gif&rdquo;;<br />\r\n} else {<br />\r\nimage.src = &ldquo;pic_bulbon.gif&rdquo;;<br />\r\n}<br />\r\n}<br />\r\n&lt;/script&gt;&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n\r\n<hr />\r\n<h2>JavaScript c&oacute; thể thay đổi Styles HTML (CSS)</h2>\r\n\r\n<p>Thay đổi kiểu của phần tử HTML, l&agrave; một biến thể của việc thay đổi thuộc t&iacute;nh HTML</p>\r\n\r\n<h3>V&iacute; dụ:</h3>\r\n\r\n<p>&lt;!DOCTYPE html&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;body&gt;&lt;h1&gt;What Can JavaScript Do?&lt;/h1&gt;&lt;p id=&rdquo;demo&rdquo;&gt;JavaScript can change the style of an HTML element.&lt;/p&gt;&lt;script&gt;<br />\r\nfunction myFunction() {<br />\r\nvar x = document.getElementById(&ldquo;demo&rdquo;);<br />\r\nx.style.fontSize = &ldquo;25px&rdquo;;<br />\r\nx.style.color = &ldquo;red&rdquo;;<br />\r\n}<br />\r\n&lt;/script&gt;&lt;button type=&rdquo;button&rdquo; onclick=&rdquo;myFunction()&rdquo;&gt;Click Me!&lt;/button&gt;&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n\r\n<h2>JavaScript c&oacute; thể kiểm tra dữ liệu</h2>\r\n\r\n<p>JavaScript thường được sử dụng kiểm tra dữ liệu đầu v&agrave;o:</p>\r\n\r\n<p>Nhập gi&aacute; trị trong khoảng từ 1 tới 10</p>\r\n\r\n<p><br />\r\nSubmit</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&iacute; Dụ:</p>\r\n\r\n<p>&lt;!DOCTYPE html&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;body&gt;&lt;h1&gt;JavaScript c&oacute; thể kiểm tra đầu v&agrave;o&lt;/h1&gt;&lt;p&gt;Nhập v&agrave;o gi&aacute; trị từ 1 tới 10:&lt;/p&gt;&lt;input id=&rdquo;numb&rdquo; type=&rdquo;number&rdquo;&gt;&lt;button type=&rdquo;button&rdquo; onclick=&rdquo;myFunction()&rdquo;&gt;Gửi&lt;/button&gt;&lt;p id=&rdquo;demo&rdquo;&gt;&lt;/p&gt;&lt;script&gt;<br />\r\nfunction myFunction() {<br />\r\nvar x, text;// Get the value of the input field with id=&rdquo;numb&rdquo;<br />\r\nx = document.getElementById(&ldquo;numb&rdquo;).value;// If x is Not a Number or less than one or greater than 10<br />\r\nif (isNaN(x) || x &lt; 1 || x &gt; 10) {<br />\r\ntext = &ldquo;Kh&ocirc;ng nhập đ&uacute;ng y&ecirc;u cầu&rdquo;;<br />\r\n} else {<br />\r\ntext = &ldquo;Nhập đ&uacute;ng y&ecirc;u cầu&rdquo;;<br />\r\n}<br />\r\ndocument.getElementById(&ldquo;demo&rdquo;).innerHTML = text;<br />\r\n}<br />\r\n&lt;/script&gt;&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n\r\n<h2>Bạn c&oacute; biết?</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th><img alt=\"Note\" src=\"http://timoday.edu.vn/wp-content/uploads/2015/09/lamp.jpg\" /></th>\r\n			<td>JavaScript v&agrave; Java l&agrave; hai ng&ocirc;n ngữ ho&agrave;n to&agrave;n kh&aacute;c nhau, cả về kh&aacute;i niệm v&agrave; thiết kế.<br />\r\n			JavaScript được ph&aacute;t minh bởi Brendan Eich v&agrave;o năm 1995, v&agrave; trở th&agrave;nh một ti&ecirc;u chuẩn ECMA v&agrave;o năm&nbsp;1997.<br />\r\n			ECMA-262 l&agrave; t&ecirc;n ch&iacute;nh thức. ECMAScript 6 (ph&aacute;t h&agrave;nh v&agrave;o th&aacute;ng 6 năm 2015) l&agrave; phi&ecirc;n bả ch&iacute;nh thức mới nhất của JavaScript.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'img7.png', 1),
(4, 3, 1, 1, 'Báo cáo', 'báo cáo đồ án tốt nghiệp', '<p>Nhấn <strong>Next</strong> để tiếp tục. <strong><em>V&agrave; chọn I accept the agreement</em></strong>.</p>\r\n\r\n<p><img src=\"data:image/png;base64,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\" style=\"height:388px; width:499px\" /></p>\r\n\r\n<p>H&igrave;nh 1 - 4: Hộp thoại th&ocirc;ng b&aacute;o c&aacute;o điều kiện sử dụng.</p>\r\n', 'sql.png', 1),
(5, 3, 4, 0, 'java technologies', 'java 8', '<p>Java</p>\r\n', 'i1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_baocao_baigiang`
--

CREATE TABLE `table_baocao_baigiang` (
  `id` int(11) NOT NULL,
  `id_nguoibaocao` int(11) NOT NULL,
  `id_baigiang` int(11) NOT NULL,
  `ten_baigiang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_baocao_baigiang`
--

INSERT INTO `table_baocao_baigiang` (`id`, `id_nguoibaocao`, `id_baigiang`, `ten_baigiang`, `noidung`) VALUES
(1, 0, 0, '', 'sdfdsfa'),
(2, 1, 0, '', 'sdfdsfa'),
(3, 1, 2, '', 'sadgdsf'),
(4, 1, 2, '', 'sadgdsf'),
(5, 1, 2, '', 'Văn Tân'),
(6, 1, 2, 'Bài 2: Các thẻ HTML cơ bản (HTML Tag).', 'SDHGF'),
(7, 1, 2, 'Bài 2: Các thẻ HTML cơ bản (HTML Tag).', 'SDHGF');

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
(1, 3, 1, 'HTML là viết tắt bởi cụm từ gì?', ' Hyperlinks and Text Markup Language ', ' Home Tool Markup Language ', ' Hyper Text Markup Language ', ' Hyperlinks and Text Language ', 'a', 1),
(2, 3, 1, 'Thẻ nào là thẻ heading lớn nhất?', 'head', 'h6', 'h1', 'heading', 'a', 1),
(3, 3, 1, 'Thẻ nào để đánh dấu nội dung text là quan trọng?', 'important', 'strong', 'i', 'b', 'a', 1),
(4, 3, 1, 'Thẻ nào để đánh dấu nội dung text mang ý nghĩa nhấn mạnh?', 'i', 'italic', 'strong', 'em', 'a', 1),
(5, 3, 1, 'Đâu là cú pháp để tạo ra thẻ liên kết?', ' <a href=\"http://www.w3schools.com\">W3Schools</a> ', ' <a>http://www.w3schools.com</a> ', ' <a name=\"http://www.w3schools.com\">W3Schools.com</a> ', ' <a url=\"http://www.w3schools.com\">W3Schools.com</a> ', 'a', 1),
(6, 3, 1, 'Đâu là cú pháp để tạo ra một liên kết mở trên một cửa sổ (tab) mới?', ' <a href=\"url\" target=\"new\"> ', ' <a href=\"url\" new> ', '  <a href=\"url\" target=\"_blank\"> ', '  <a href=\"url\" target=\"_tab\"> ', 'a', 0),
(7, 3, 1, 'Thẻ nào là thẻ tạo ra danh sách có thứ tự?', 'ou', 'ul', 'dl', 'list', 'a', 1),
(8, 3, 1, 'Đâu là cú pháp tạo checkbox?', '<checkbox>', ' <input type=\"checkbox\"> ', ' <input type=\"check\"> ', '<check>', 'a', 0),
(9, 3, 1, 'Thuộc tính nào của thẻ img dùng để hiện thị nội dung khi ảnh không tồn tại', 'desc', 'src', 'alt', 'title', 'a', 1),
(10, 3, 1, 'Chọn khai báo doctype khi làm việc với HTML5?', ' !DOCTYPE HTML PUBLIC ', '!DOCTYPE html', '!DOCTYPE HTML5', '!DOCTYPE html version=5.0 ', 'a', 1),
(11, 3, 0, 'Thẻ SVG dùng để làm gì?', 'Hiển thị một video.', 'Hiện thị một slideshow hình ảnh.', 'Hiện thị hình ảnh được lưu dưới định dạng SVG.', ' Biểu diễn đồ họa dạng vector .', 'd', 1),
(12, 3, 1, 'Thẻ nào dùng để phát một video file?', 'media', 'video', 'movie', 'play', 'd', 1),
(13, 3, 1, 'Thuộc tính nào cho phép chỉnh sửa nội dung của một thẻ trực tiếp trên trình duyệt?', 'editable.', ' contenteditable .', 'allowedit.', 'htmleditable.', 'd', 1),
(14, 3, 1, 'Thẻ  canvas  dùng để làm gì?', 'Kết nối với cơ sở dữ liệu.', ' Hiện thị báo cáo dữ liệu .', ' Tạo các thẻ có khả năng kéo thả, di chuyển .', 'Biểu diễn hình ảnh đồ họa.', 'd', 1),
(15, 3, 1, 'Thuộc tính nào để chỉ định nội dung thẻ input cần phải được nhập vào?', 'required.', ' validate .', ' placeholder .', 'important.', 'd', 1),
(16, 3, 1, 'Thẻ  wbr dùng để làm gì?', 'Không có thẻ wbr trong các phiên bản HTML hiện tại.', 'Dùng để ngắt dòng đoạn văn bản dài.', 'Dùng để đánh dấu các điểm có thể ngắt dòng.', 'Dùng để ngăn không cho văn bản bị ngắt dòng.', 'd', 1),
(17, 3, 1, 'Thẻ picture dùng để làm gì?', 'Hiện thị một hình ảnh giống thẻ img.', 'Dùng để hiện thị một hình ảnh mà nội dung thay đổi linh hoạt theo kích thước màn hình dựa trên một tập hợp hình ảnh.', 'Dùng để hiện thị một nhóm nhiều hình ảnh liên quan nhau.', 'Dùng để hiện thị một hoạt ảnh từ một tập hợp hình ảnh.', 'd', 1),
(18, 3, 1, 'Thẻ nào dùng để biểu diễn một phép đo vô hướng (thước)?', 'measurement.', 'meter.', 'range', 'rule', 'd', 1),
(19, 3, 1, 'Thẻ map dùng để làm gì?', 'Để biểu diễn bản đồ google map.', 'Để vẽ bản đồ .', 'Để biểu diễn một bản đồ hình ảnh (image-map) .', 'Để liên kết các hình ảnh với nhau .', 'd', 1),
(20, 3, 1, 'Để tạo một danh sách tùy chọn được định nghĩa trước cho một input ta dùng thẻ nào?', 'list', 'datalist', 'data', 'inputdata', 'd', 1);

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
(1, 'Web Development', 'i.png', 1),
(2, 'Databases', 'i1.png', 1),
(3, 'Mobile Development', 'i3.png', 1),
(4, 'Java Technologies', 'i2.png', 1);

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
(1, 1, 'HTML', 'là một ngôn ngữ đánh dấu được thiết kế ra để tạo nên các trang web với các mẩu thông tin được trình bày trên World Wide Web. Cùng với CSS và JavaScript, HTML tạo ra bộ ba nền tảng kỹ thuật cho World Wide Web.', 'html.png', 1),
(2, 1, 'CSS', ' được dùng để miêu tả cách trình bày các tài liệu viết bằng ngôn ngữ HTML và XHTML.[1] Ngoài ra ngôn ngữ định kiểu theo tầng cũng có thể dùng cho XML, SVG, XUL. Các đặc điểm kỹ thuật của CSS được duy trì bởi World Wide Web Consortium (W3C). Thay vì đặt cá', 'css4.png', 1),
(3, 1, 'Java Script', ' theo phiên bản hiện hành, là một ngôn ngữ lập trình thông dịch được phát triển từ các ý niệm nguyên mẫu. Ngôn ngữ này được dùng rộng rãi cho các trang web (phía người dùng) cũng như phía máy chủ (với Nodejs). Nó vốn được phát triển bởi Brendan Eich tại H', 'js.png', 1),
(4, 1, 'Angular JS 4', 'AngularJs là một Javascript Framework được tạo ra để xây dựng các ứng dụng web động (dynamic web app), nó thường được sử dụng để tạo ra các ứng dụng một trang ( Single Page Application - SPA). Và hoạt động dựa trên việc mở rộng thêm các thuộc tính (attrib', 'an.png', 1),
(5, 1, 'PHP', ' là một ngôn ngữ lập trình kịch bản hay một loại mã lệnh chủ yếu được dùng để phát triển các ứng dụng viết cho máy chủ, mã nguồn mở, dùng cho mục đích tổng quát. Nó rất thích hợp với web và có thể dễ dàng nhúng vào trang HTML. Do được tối ưu hóa cho các ứ', 'php.png', 1),
(6, 1, 'PyThon', 'Python là một ngôn ngữ lập trình bậc cao cho các mục đích lập trình đa năng, do Guido van Rossum tạo ra và lần đầu ra mắt vào năm 1991. Python được thiết kế với ưu điểm mạnh là dễ đọc, dễ học và dễ nhớ. Python là ngôn ngữ có hình thức rất sáng sủa, cấu tr', 'py.png', 1),
(7, 2, 'My SQL', ' là hệ quản trị cơ sở dữ liệu tự do nguồn mở phổ biến nhất thế giới và được các nhà phát triển rất ưa chuộng trong quá trình phát triển ứng dụng. Vì MySQL là cơ sở dữ liệu tốc độ cao, ổn định và dễ sử dụng, có tính khả chuyển, hoạt động trên nhiều hệ điều', 'sql.png', 1),
(8, 2, 'DB2', 'là một trong các dòng phần mềm quản trị cơ sở dữ liệu quan hệ của IBM (RDBMS: relational Database Management System). Có nhiều phiên bản khác nhau của DB2 để chạy trên các loại máy tính từ thiết bị cầm tay đến các máy tính lớn (mainframe). Ở những Công ty', 'sql1.png', 1),
(9, 3, 'Android', 'Android là một hệ điều hành dựa trên nền tảng Linux được thiết kế dành cho các thiết bị di động có màn hình cảm ứng như điện thoại thông minh và máy tính bảng. Ban đầu, Android được phát triển bởi Tổng công ty Android, với sự hỗ trợ tài chính từ Google và', 'androi.png', 1),
(10, 3, 'IOS', 'iOS (trước đây là iPhone OS) là hệ điều hành trên các thiết bị di động của Apple. Đây là hệ điều hành chạy trên các sản phẩm iPhone, iPad, và iPod Touch và là hệ điều hành phổ biến thứ 2 trên toàn cầu, sau Android.', 'ios.png', 1),
(12, 1, 'Ruby', 'Ruby là một ngôn ngữ lập trình hướng đối tượng, có khả năng phản ứng. Theo tác giả, Ruby chịu ảnh hưởng bởi Perl, Smalltalk, Eiffel, Ada và Lisp. Ruby là ngôn ngữ thông dịch và hướng đối tượng.', 'mo.png', 1);

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
(1, 3, 1, 7, 12, 50, 3.68421, 0),
(2, 3, 1, 7, 10, 50, 4.11765, 0),
(3, 3, 1, 0, 17, 28, 0, 0),
(4, 3, 7, 0, 0, 1, 0, 0),
(5, 3, 7, 0, 0, 1, 0, 0),
(6, 3, 1, 0, 17, 2, 0, 0),
(7, 3, 1, 0, 17, 2, 0, 0),
(8, 3, 1, 0, 17, 2, 0, 0),
(9, 3, 1, 4, 13, 22, 2.35294, 0),
(10, 3, 1, 4, 13, 22, 2.35294, 0),
(11, 3, 1, 1, 16, 7, 0.588235, 0),
(12, 3, 1, 1, 16, 7, 0.588235, 0),
(13, 1, 1, 2, 15, 36, 1.17647, 0),
(14, 3, 1, 2, 15, 16, 1.17647, 0),
(15, 1, 1, 0, 17, 1, 0, 0),
(16, 1, 1, 2, 15, 5, 1.17647, 0),
(17, 1, 1, 17, 0, 36, 10, 0),
(18, 1, 1, 2, 15, 7, 1.17647, 0),
(19, 1, 1, 1, 16, 4, 0.588235, 0),
(20, 3, 1, 1, 16, 6, 0.588235, 0),
(21, 3, 1, 1, 16, 120, 0.588235, 0);

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
(6, 3, 'Trần Phương Thái', 'thai@gmail.com', '123', '0369852456', '2012-12-12', 'nam', 'Nghĩa Địa', 'img9.jpg', 'Databases\r\nWeb Development', 1, 0),
(8, 0, 'Nguyễn Minh Cụt', 'sdasd@gmail.com', '123', '0966909307', '1998-02-01', 'Nữ', 'Hồ Chí Minh', 'i1.png', 'dsadzxc', 0, 0),
(9, 0, 'aa', 'a@gmail.com', '123', '0966909307', '1322-02-02', 'Nữ', 'VietNam', 'i1.png', 'fsag', 0, 0);

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
(1, 'Kĩ thuật Mạng', ' Chuyên ngành An toàn Thông tin đào tạo chuyên viên quản trị hệ thống mạng, cung cấp khối lượng kiến thức cần thiết và các kỹ năng thực hành để sinh viên có thể thiết kế và xây dựng các hệ thống mạng đạt tiêu chuẩn cao cho doanh nghiệp và tổ chức ứng dụng', 'aaa.jpg', '<p><strong>Thời gian Đ&agrave;o tạo</strong></p>\r\n\r\n<p>- Tr&igrave;nh độ Cao đẳng: 3 năm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh Đ&agrave;o tạo</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kiến thức cơ sở</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Mạng m&aacute;y t&iacute;nh</p>\r\n\r\n<p>&bull; Kiến tr&uacute;c M&aacute;y t&iacute;nh</p>\r\n\r\n<p>&bull; Kỹ thuật Lập tr&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kiến thức chung của ng&agrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Bảo mật Th&ocirc;ng tin</p>\r\n\r\n<p>&bull; Ph&acirc;n t&iacute;ch v&agrave; Thiết kế mạng</p>\r\n\r\n<p>&bull; Lập tr&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kiến thức chuy&ecirc;n s&acirc;u</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Lập tr&igrave;nh Mạng m&aacute;y t&iacute;nh</p>\r\n\r\n<p>&bull; Hệ điều h&agrave;nh</p>\r\n\r\n<p>&bull; An ninh mạng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kỹ năng Nghề nghiệp</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng lắp r&aacute;p c&agrave;i đặt sửa chữa v&agrave; bảo tr&igrave; m&aacute;y vi t&iacute;nh.</p>\r\n\r\n<p>- Hiểu v&agrave; vận dụng được kiến thức chuy&ecirc;n s&acirc;u về quản trị mạng dịch vụ mạng thực h&agrave;nh an ninh mạng thiết kế mạng mạng kh&ocirc;ng d&acirc;y&hellip; C&oacute; khả năng thiết kế (quy m&ocirc; vừa v&agrave; nhỏ) hệ thống mạng; ph&aacute;t hiện v&agrave; giải quyết c&aacute;c vấn đề thuộc&nbsp;<strong>quản trị mạng</strong> an ninh mạng đường kết nối lưu trữ cơ sở dữ liệu hệ thống backup th&ocirc;ng tin.</p>\r\n\r\n<p>- Thiết kế quản trị v&agrave; vận h&agrave;nh website cho c&aacute;c doanh nghiệp Non - IT.</p>\r\n\r\n<p>- C&oacute; khả năng ph&acirc;n t&iacute;ch độc lập v&agrave; thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan đến mạng v&agrave; truyền th&ocirc;ng; c&oacute; khả năng ph&aacute;t hiện c&aacute;c vấn đề t&igrave;nh huống ph&aacute;t sinh trong qu&aacute; tr&igrave;nh l&agrave;m việc ph&acirc;n t&iacute;ch v&agrave; đề xuất giải ph&aacute;p ph&ugrave; hợp với thực tế để giải quyết. C&oacute; khả năng thiết lập c&aacute;c mục ti&ecirc;u khả thi lập kế hoạch ph&ugrave; hợp với điều kiện thực tế để ho&agrave;n th&agrave;nh c&ocirc;ng việc được giao.</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp x&atilde; hội l&agrave;m việc hợp t&aacute;c l&agrave;m việc nh&oacute;m v&agrave; l&agrave;m việc trong một tổ chức; c&oacute; khả năng vận dụng c&aacute;c kiến thức kỹ năng v&agrave; kinh nghiệm để giải quyết c&aacute;c t&igrave;nh huống nghề nghiệp kh&aacute;c nhau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cơ hội Việc l&agrave;m chuy</strong><strong>&ecirc;n&nbsp;ng&agrave;nh&nbsp;An to&agrave;n Th&ocirc;ng tin</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n Quản trị mạng n&oacute;i chung</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n An ninh mạng</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n pentest hệ thống C&ocirc;ng nghệ Th&ocirc;ng tin</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n Tư vấn &amp; Thiết kế c&aacute;c hệ thống mạng v&agrave; hệ thống An to&agrave;n Th&ocirc;ng tin</p>\r\n\r\n<p>- Giảng vi&ecirc;n nghi&ecirc;n cứu vi&ecirc;n</p>\r\n', 1),
(2, 'Công nghệ Phần mềm', 'Là chuyên ngành được đào tạo tại Khoa Công nghệ thông tin trường Đại học hàng hải Việt Nam với mục tiêu đào tạo kỹ sư CNTT chuyên về lĩnh vực phần mềm. Kỹ sư ra trường có kiến thức và kỹ năng phát triển và quản lý điều hành các dự án phần mềm: Phân tích', 'img2.jpg', '<p><em>Chương tr&igrave;nh đ&agrave;o tạo ng&agrave;nh C&ocirc;ng nghệ phần mềm đ&atilde; khẳng định chất lượng của m&igrave;nh th&ocirc;ng qua c&aacute;c điểm nổi trội dưới đ&acirc;y:</em></p>\r\n\r\n<p><em>Chương tr&igrave;nh đ&agrave;o tạo được x&acirc;y dựng tr&ecirc;n cơ sở tham khảo c&aacute;c chương tr&igrave;nh đ&agrave;o tạo C&ocirc;ng nghệ th&ocirc;ng tin của c&aacute;c trường đại học h&agrave;ng đầu ở Việt Nam v&agrave; thế giới được cập nhật thường xuy&ecirc;n theo đặc th&ugrave; ph&aacute;t triển của ng&agrave;nh</em></p>\r\n\r\n<p><em>M&ocirc;n học v&agrave; gi&aacute;o tr&igrave;nh giảng dạy:</em></p>\r\n\r\n<ul>\r\n	<li><em>Th&ocirc;ng tin chi tiết về m&ocirc;n học t&agrave;i liệu gi&aacute;o tr&igrave;nh được cung cấp đầy đủ cho sinh vi&ecirc;n khi bắt đầu m&ocirc;n học.</em></li>\r\n	<li><em>Nền tảng kiến thức được trang bị b&agrave;i bản</em></li>\r\n	<li><em>Ch&uacute; trọng kỹ năng thực h&agrave;nh năng lực tư duy s&aacute;ng tạo v&agrave; kĩ năng nghề nghiệp.</em></li>\r\n	<li><em>Ph&aacute;t huy khả năng th&iacute;ch ứng với c&ocirc;ng việc khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc theo nh&oacute;m.</em></li>\r\n	<li><em>N&acirc;ng cao khả năng tiếng Anh kĩ năng giao tiếp&hellip;</em></li>\r\n</ul>\r\n\r\n<p><em>Đội ngũ giảng vi&ecirc;n:</em></p>\r\n\r\n<ul>\r\n	<li><em>Đội ngũ giảng vi&ecirc;n cơ hữu tốt nghiệp từ c&aacute;c trường c&oacute; uy t&iacute;n trong nước v&agrave; quốc tế; c&oacute; kinh nghiệm giảng dạy v&agrave; thực tế.</em></li>\r\n	<li><em>Phương ph&aacute;p giảng dạy lấy người học l&agrave;m trung t&acirc;m.</em></li>\r\n</ul>\r\n\r\n<p><em>Hệ thống hạ tầng th&ocirc;ng tin:</em></p>\r\n\r\n<ul>\r\n	<li><em>Hệ thống hạ tầng th&ocirc;ng tin: m&aacute;y t&iacute;nh mạng ph&ograve;ng thực h&agrave;nh m&ocirc; phỏng lu&ocirc;n được bổ sung trang bị hiện đại đ&aacute;p ứng nhu cầu đ&agrave;o tạo v&agrave; đảm bảo tốt chất lượng hiệu quả nghi&ecirc;n cứu khoa học.</em></li>\r\n	<li><em>C&aacute;c c&ocirc;ng ty doanh nghiệp đối t&aacute;c lu&ocirc;n tạo điều kiện để sinh vi&ecirc;n được thực tập tham gia triển khai c&aacute;c ứng dụng thực tế.</em></li>\r\n</ul>\r\n\r\n<p><em>Khả năng thăng tiến trong c&ocirc;ng việc:</em></p>\r\n\r\n<ul>\r\n	<li><em>Sinh vi&ecirc;n c&oacute; khả năng nhận được việc l&agrave;m trong qu&aacute; tr&igrave;nh học.</em></li>\r\n	<li><em>Sinh vi&ecirc;n c&oacute; thể đi l&agrave;m ngay sau khi tốt nghiệp.</em></li>\r\n	<li><em>Khả năng gia tăng thu nhập v&agrave; lương.</em></li>\r\n	<li><em>Cơ hội tham dự v&agrave; nhận học bổng từ c&aacute;c chương tr&igrave;nh học tập giao lưu quốc tế.</em></li>\r\n	<li>\r\n	<p><em>Với nền tảng kiến thức vừa rộng v&agrave; s&acirc;u sau khi tốt nghiệp sinh vi&ecirc;n c&oacute; thể l&agrave;m việc với nhiều vị tr&iacute; kh&aacute;c nhau theo nhu cầu của x&atilde; hội như tại c&aacute;c trường đại học viện nghi&ecirc;n cứu c&aacute;c cơ quan doanh nghiệp trong nước v&agrave; quốc tế.</em></p>\r\n\r\n	<p><em>Sau khi tốt nghiệp sinh vi&ecirc;n c&oacute; thể đảm nhận c&aacute;c c&ocirc;ng việc:&nbsp;</em></p>\r\n	</li>\r\n	<li><em>Kĩ sư phần mềm.</em></li>\r\n	<li><em>Trưởng nh&oacute;m ph&aacute;t triển phần mềm.</em></li>\r\n	<li><em>Bảo tr&igrave; phần mềm.</em></li>\r\n	<li><em>Chuy&ecirc;n vi&ecirc;n kiểm thử phần mềm.</em></li>\r\n	<li><em>Đảm bảo chất lượng phần mềm</em></li>\r\n	<li><em>Quản trị dự &aacute;n phần mềm.a</em></li>\r\n	<li><em>Giảng vi&ecirc;n nghi&ecirc;n cứu vi&ecirc;na</em></li>\r\n</ul>\r\n', 1),
(3, 'Hệ thống Thông tin Quản lý.', 'Hệ thống thông tin quản lý là ngành học về con người, thiết bị và quy trình thu thập, phân tích, đánh giá và phân phối những thông tin chính xác cho những người soạn thảo các quyết định trong tổ chức - doanh nghiệp.', 'img3.png', '<p>Đến thời điểm hiện tại, nhiều tổ chức, doanh nghiệp tại Việt Nam đang c&oacute; nhu cầu cao về nh&acirc;n lực nắm vững kiến tức cơ bản về quản l&yacute; v&agrave; kinh doanh để trợ gi&uacute;p hoạch định v&agrave; tổ chức thực thi c&aacute;c ch&iacute;nh s&aacute;ch, dự &aacute;n về ph&aacute;t triển v&agrave; triển khai ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin trong c&aacute;c tổ chức, doanh nghiệp. Đ&acirc;y ch&iacute;nh l&agrave; cơ hội của c&aacute;c bạn đang theo học trong lĩnh vực&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\">Hệ thống th&ocirc;ng tin quản l&yacute;</a>.</p>\r\n\r\n<p>Sau khi tốt nghiệp&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\"><strong>ng&agrave;nh Hệ thống th&ocirc;ng tin quản l&yacute;</strong></a>, c&aacute;c kỹ sư cử nh&acirc;n c&oacute; thể đảm nhận nhiều vị tr&iacute; c&ocirc;ng việc trong c&aacute;c cơ quan, x&iacute; nghiệp như: thiết kế v&agrave; quản l&yacute; một hệ thống th&ocirc;ng tin kinh tế phục vụ cho c&aacute;c hoạt động quản l&yacute; kinh tế, quản trị kinh doanh; c&aacute;c bạn cũng c&oacute; thể tự tin đứng v&agrave;o vị tr&iacute; chuy&ecirc;n vi&ecirc;n ph&acirc;n t&iacute;ch hệ thống, t&iacute;ch hợp hệ thống; Quản trị vi&ecirc;n hệ thống th&ocirc;ng tin; Nh&acirc;n vi&ecirc;n đ&agrave;o tạo v&agrave; hướng dẫn nh&acirc;n vi&ecirc;n ở c&aacute;c bộ phận quản l&yacute; dự &aacute;n; Nếu đam m&ecirc; lĩnh vực nghi&ecirc;n cứu giảng dạy bạn c&oacute; thể học l&ecirc;n cao để tham gia v&agrave;o c&aacute;c trường đại học cao đẳng c&oacute; đ&agrave;o tạo chuy&ecirc;n ng&agrave;nh n&agrave;y.<br />\r\n&nbsp;<br />\r\nB&agrave;i viết tr&ecirc;n phần n&agrave;o đ&atilde; cung cấp những th&ocirc;ng tin to&agrave;n cảnh về&nbsp;<a href=\"https://www.hutech.edu.vn/tuyensinh/nganh-dao-tao/nganh-he-thong-thong-tin-quan-ly\"><strong>ng&agrave;nh Hệ thống th&ocirc;ng tin quản l&yacute;</strong></a>. Ngo&agrave;i những th&ocirc;ng tin &ldquo;Hệ thống th&ocirc;ng tin quản l&yacute; l&agrave; g&igrave;? Ra trường l&agrave;m g&igrave;?&rdquo; đ&atilde; nhận được từ b&agrave;i viết tr&ecirc;n, c&aacute;c bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m c&aacute;c vấn đề li&ecirc;n quan kh&aacute;c như: ng&agrave;nh Hệ thống th&ocirc;ng tin x&eacute;t tuyển những tổ hợp m&ocirc;n n&agrave;o học những g&igrave;, học ở đ&acirc;u...? để chuẩn bị tốt nhất cho tương lai của m&igrave;nh.</p>\r\n\r\n<p>Ng&agrave;nh Hệ thống th&ocirc;ng tin v&agrave; quản l&yacute; l&agrave; ng&agrave;nh học kết hợp giữa phần cứng, phần mềm v&agrave; mạng truyền th&ocirc;ng, nhằm thu thập, tạo v&agrave; ph&acirc;n phối c&aacute;c dữ liệu th&ocirc;ng tin trong tổ chức, doanh nghiệp. Ng&agrave;nh học n&agrave;y c&oacute; ứng dụng mạnh mẽ trong quản l&yacute; database&nbsp; l&agrave;m cơ sở đ&aacute;nh gi&aacute; v&agrave; ph&acirc;n t&iacute;ch hiệu quả hoạt động của c&aacute;c tổ chức, doanh nghiệp</p>\r\n', 1),
(4, 'Thiết kế Đồ họa/Game', 'Tại Việt Nam, sự phát triển nhanh chóng của truyền thông và quảng cáo khiến Thiết kế Đồ họa trở thành một trong những ngành có sức hút đặc biệt với giới trẻ nhất là những bạn trẻ đam mê sáng tạo và yêu thích sự năng động. Đây là ngành học của nghệ thuật ứ', 'img4.jpg', '<p><strong>Chương tr&igrave;nh Đ&agrave;o tạo</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<a href=\"https://duytan.edu.vn/thiet-ke-do-hoa\"><em><strong>Chương tr&igrave;nh đ&agrave;o tạo Thiết kế đồ họa</strong></em></a>&nbsp;được x&acirc;y dựng tr&ecirc;n cơ sở chương tr&igrave;nh Thiết kế Mỹ thuật C&ocirc;ng nghiệp v&agrave; Đồ họa Truyền th&ocirc;ng của trường Đại học B&aacute;ch khoa Singapore.</p>\r\n\r\n<p>- C&aacute;c lớp học tại&nbsp;<a href=\"https://duytan.edu.vn/\">đại học Duy T&acirc;n</a>&nbsp;được tổ chức theo quy m&ocirc; nhỏ v&agrave; vừa với khoảng 35 sinh vi&ecirc;n/lớp, đảm bảo tỷ lệ dưới 20 sinh vi&ecirc;n/giảng vi&ecirc;n, gi&uacute;p sinh vi&ecirc;n tiếp thu được kiến thức v&agrave; c&oacute; sự tương t&aacute;c tốt nhất với giảng vi&ecirc;n, ph&aacute;t huy được năng lực s&aacute;ng tạo v&agrave; sự chủ động của sinh vi&ecirc;n.</p>\r\n\r\n<p>- Sinh vi&ecirc;n được cung cấp những kiến thức chuy&ecirc;n s&acirc;u về: Nghệ thuật chữ, Nhận diện Thương hiệu, Thiết kế c&aacute;c ấn phẩm, Quảng c&aacute;o, H&igrave;nh ảnh Đồ họa, Thiết kế Bao b&igrave;, Thiết kế Web &amp; Ứng dụng, C&ocirc;ng nghiệp Game, Kỹ xảo Phim ảnh.&nbsp;</p>\r\n\r\n<p>- Được học tập v&agrave; thực h&agrave;nh tại Studio Sản xuất phim Silver Swallows với hệ thống m&aacute;y t&iacute;nh thế hệ mới c&oacute; cấu h&igrave;nh cao, ph&ograve;ng tr&igrave;nh chiếu được trang bị m&agrave;n h&igrave;nh lớn, c&aacute;ch &acirc;m, sử dụng kỹ thuật, kỹ xảo v&agrave; c&aacute;c phần mềm ti&ecirc;n tiến nhất hiện nay như Pro Tools, 3DS Max, 3D Maya, Zbrush...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kỹ năng Nghề nghiệp</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sinh vi&ecirc;n c&oacute; vốn kiến thức vững chắc từ nền tảng nghệ thuật cơ bản đến phương ph&aacute;p thiết kế, c&aacute;c kỹ thuật ứng dụng v&agrave; sử dụng c&ocirc;ng nghệ trong thiết kế đồ họa, xu hướng ph&aacute;t triển c&aacute;c ứng dụng đồ&nbsp; họa tr&ecirc;n thế giới.</p>\r\n\r\n<p>- C&oacute; khả năng vẽ tay, vẽ tốc hoạ nhanh, vẽ k&yacute; hoạ với c&aacute;c chất liệu kh&aacute;c nhau như ch&igrave;, m&agrave;u nước.&nbsp;</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng c&aacute;c phần mềm đồ hoạ ti&ecirc;n tiến đang được &aacute;p dụng cho thiết kế thương hiệu, thiết kế web, thiết kế game, phim, 3D, thiết kế c&aacute;c ứng dụng cho c&aacute;c thiết bị di động&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng kết hợp giữa thiết kế với truyền th&ocirc;ng, mỹ thuật, thương mại để đ&aacute;p ứng tốt những y&ecirc;u cầu của nền c&ocirc;ng nghiệp s&aacute;ng tạo v&agrave; giải tr&iacute; hiện đại.</p>\r\n\r\n<p>- C&oacute; khả năng ph&acirc;n t&iacute;ch xu hướng thẩm mỹ, t&igrave;m kiếm v&agrave; ph&aacute;t triển &yacute; tưởng mới trong&nbsp;<strong>thiết kế đồ họa</strong>.</p>\r\n\r\n<p>- C&oacute; khả năng s&aacute;ng t&aacute;c, ho&agrave;n thiện dự &aacute;n đồ họa c&oacute; t&iacute;nh thẩm mỹ v&agrave; ứng dụng.</p>\r\n\r\n<p>- C&oacute; khả năng ph&acirc;n t&iacute;ch dự &aacute;n đồ họa&nbsp; từ đ&oacute; hoạch định quy tr&igrave;nh thực hiện hiệu quả.</p>\r\n\r\n<p>- C&oacute; kỹ năng tự cập nhật kiến thức để l&agrave;m việc trong m&ocirc;i trường thiết kế chuy&ecirc;n nghiệp tại Việt Nam v&agrave; tr&ecirc;n thế giới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cơ hội Việc l&agrave;m</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Chuy&ecirc;n vi&ecirc;n tư vấn, thiết kế tại c&aacute;c c&ocirc;ng ty quảng c&aacute;o, c&ocirc;ng ty thiết kế, c&ocirc;ng ty truyền th&ocirc;ng v&agrave; tổ chức sự kiện, studio nghệ thuật, t&ograve;a soạn, nh&agrave; xuất bản, cơ quan truyền h&igrave;nh, b&aacute;o ch&iacute;,...</p>\r\n\r\n<p>- Tự th&agrave;nh lập c&ocirc;ng ty thiết kế, dịch vụ studio.</p>\r\n\r\n<p>- Thiết kế tự do (freelancer).</p>\r\n\r\n<p>- Tư vấn - giảng dạy tại c&aacute;c trường học, trung t&acirc;m, c&acirc;u lạc bộ về thiết kế đồ họa.</p>\r\n\r\n<p>- Tham gia c&aacute;c chương tr&igrave;nh đ&agrave;o tạo thạc sĩ thuộc nh&oacute;m ng&agrave;nh mỹ thuật, thiết kế trong v&agrave; ngo&agrave;i nước.</p>\r\n', 1),
(5, 'Big Data & Machine Learning.', 'Với số lượng người dùng Internet và truy cập Internet trên điện thoại di động ngày một tăng mạnh cùng với việc Việt Nam đang là đích ngắm của nhiều nhà cung cấp giải pháp Big Data như Microsoft, IBM, Oracle,… ngành học Big Data hiện đang trở nên “hot” hơn', 'img.jpg', '<p><strong>Thời gian Đ&agrave;o tạo</strong>: 4 năm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh Đ&agrave;o tạo</strong>:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kỹ năng Nghề nghiệp</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tại ĐH Duy T&acirc;n,&nbsp;<a href=\"http://kcntt.duytan.edu.vn/\" target=\"_blank\">C&ocirc;ng nghệ Th&ocirc;ng tin</a>&nbsp;đang l&agrave; ng&agrave;nh học uy t&iacute;n được đ&ocirc;ng đảo sinh vi&ecirc;n theo học. Nh&agrave; trường đ&atilde; ch&uacute; trọng hợp t&aacute;c với nhiều đại học quốc tế, trong đ&oacute; c&oacute; k&yacute; kết với ĐH Carnegie Mellon (CMU) - 1 trong 4 đại học h&agrave;ng đầu về C&ocirc;ng nghệ Th&ocirc;ng tin ở Mỹ (theo U.S. News 2017) để triển khai c&aacute;c chương tr&igrave;nh chuẩn quốc tế về: C&ocirc;ng nghệ Phần mềm, Hệ thống Th&ocirc;ng tin v&agrave; An ninh Mạng,... mang lại sức bật mới trong đ&agrave;o tạo, đưa tỷ lệ sinh vi&ecirc;n c&oacute; việc l&agrave;m đạt mức cao nhất so với c&aacute;c ng&agrave;nh kh&aacute;c (trong đ&oacute; tỷ lệ c&oacute; việc l&agrave;m đ&uacute;ng ng&agrave;nh sau 3 th&aacute;ng tốt nghiệp đạt hơn 94% trong khi c&aacute;c sinh vi&ecirc;n trong Chương tr&igrave;nh Ti&ecirc;n tiến chuẩn CMU đều 100% c&oacute; việc l&agrave;m trước khi tốt nghiệp), đồng thời trang bị tới 12 ph&ograve;ng m&aacute;y t&iacute;nh với cấu h&igrave;nh mạnh v&agrave; đầy đủ c&aacute;c phần mềm phục vụ đ&agrave;o tạo chương tr&igrave;nh th&igrave; việc mở ng&agrave;nh đ&agrave;o tạo mới Big Data &amp; Machine Learning được cam kết đảm bảo sẽ đ&agrave;o tạo ra c&aacute;c kỹ sư thực sự chuẩn tay nghề.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chuy&ecirc;n ng&agrave;nh Big Data &amp; Machine Learning</strong>&nbsp;tại&nbsp;<a href=\"https://duytan.edu.vn/\">Đại học Duy T&acirc;n</a>&nbsp;đ&agrave;o tạo ra c&aacute;c Kỹ sư Dữ liệu c&oacute; c&aacute;c&nbsp; kỹ năng: lập tr&igrave;nh, sử dụng c&aacute;c ph&acirc;n t&iacute;ch dữ liệu v&agrave; thao t&aacute;c cho c&aacute;c mục đ&iacute;ch tiếp thị,&hellip; &nbsp;hoặc c&aacute;c Nh&agrave; Khoa học Dữ liệu (Data Scientist) - những người c&oacute; thể t&iacute;ch hợp Big Data v&agrave;o cả bộ phận IT v&agrave; c&aacute;c chức năng kinh doanh của c&ocirc;ng ty.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cơ hội Việc l&agrave;m</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với khả năng kh&aacute;i qu&aacute;t dữ liệu v&agrave; giải thuật cao cấp, cơ hội việc l&agrave;m của&nbsp;<strong>cử nh&acirc;n&nbsp;chuy&ecirc;n&nbsp;</strong><strong>ng&agrave;nh Big Data &amp; Machine Learning</strong>&nbsp;hiện rất lớn. Sinh vi&ecirc;n tốt nghiệp ng&agrave;nh n&agrave;y c&oacute; thể l&agrave;m tất cả c&ocirc;ng việc của cử nh&acirc;n C&ocirc;ng nghệ Phần mềm v&agrave; Hệ thống Th&ocirc;ng tin trong c&aacute;c c&ocirc;ng ty phần mềm, c&aacute;c c&ocirc;ng ty thu thập v&agrave; ph&acirc;n t&iacute;ch dữ liệu, c&aacute;c tập đo&agrave;n quảng c&aacute;o trực tuyến,&hellip; với cơ hội thăng tiến cao v&agrave; m&ocirc;i trường l&agrave;m việc tốt.</p>\r\n', 1),
(6, 'Sữa chữa lắp ráp máy tính', 'Sinh viên học các kĩ năng về sữa chữa máy tính, cài đặt phần mềm, lắp ráp...', 'py.png', '<p>- Sữa chữa m&aacute;y t&iacute;nh</p>\r\n\r\n<p>- C&agrave;i đặt phần mềm</p>\r\n\r\n<p>- Lắp r&aacute;p m&aacute;y t&iacute;nh</p>\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_baigiang`
--
ALTER TABLE `table_baigiang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_baocao_baigiang`
--
ALTER TABLE `table_baocao_baigiang`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_baocao_baigiang`
--
ALTER TABLE `table_baocao_baigiang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table_binhluan`
--
ALTER TABLE `table_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_cauhoi`
--
ALTER TABLE `table_cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv1`
--
ALTER TABLE `table_danhmuc_lv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_danhmuc_lv2`
--
ALTER TABLE `table_danhmuc_lv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `table_ketqua`
--
ALTER TABLE `table_ketqua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `table_phanquyen`
--
ALTER TABLE `table_phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_thanhvien`
--
ALTER TABLE `table_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_tieuchi`
--
ALTER TABLE `table_tieuchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
