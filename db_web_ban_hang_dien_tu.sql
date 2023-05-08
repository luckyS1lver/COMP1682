-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_web_ban_hang_dien_tu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0988113679', NULL, NULL, NULL, '2023-05-03__mug.jpg', NULL, NULL, NULL),
(3, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$UjezSZlczZoMHu5Xj6rTQ.1KhoWP6pt1D1EYft64t2GjUUw.diQom', '0359020898', NULL, NULL, 'Đại Học Sư Phạm Hà Nội', NULL, NULL, NULL, NULL),
(4, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '$2y$10$Ya6HmT6jswYxjovTaNNMJeX/6k0lizydTki6U52b.6nL0zi1XqBEW', '0928817229', NULL, NULL, 'Hà Nội', '2023-02-19__17082022-2.png', 2, NULL, NULL),
(7, 'nguyen', 'nguyeb@gmail.com', '$2y$10$XNaUkccJbA2ElqNfSUCHde6knVNkXnh/iR/zZ/DgN6MBCSIu1.zxa', '0359020899', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Nguyễn Văn C', 'nguyenvanc@gmail.com', '$2y$10$8yvpDKXJf8XbnCcHKb4JQ.DRDGk33Yigd2NLmA2MWBCcDi1YCOqYS', '01658020888', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(9, 'A', 'nguyenvans@gmail.com', '$2y$10$HIjnKM/YH52AaSU5Qma2wOCkgCM7eggg2ydJBUayA6fvU09d8InRW', '0928817556', NULL, NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(10, 'bc', 'bc@gmail.com', '$2y$10$EcxKhkfOyJUSRKqbYcJiseZBnN02mz4bB6V8t9BsvLGs7A/.oJAdS', '092884567', NULL, NULL, 'Hà nội', NULL, NULL, NULL, '2023-05-03 12:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(255) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(4, 'Chú ý sử dụng thiết bị điện an toàn', 'chu-y-su-dung-thiet-bi-dien-an-toan', 1, 1, 2, 0, 'Các thiết bị điện gia đình trong khi sử dụng có thể gặp sự cố bất cứ lúc nào, những sự cố này nếu không được xử lý kịp thời nhanh chóng hoặc xử lý hiệu quả thì không đảm bảo an toàn cho người sử dụng.', '2021-07-16__chu-y-su-dung-dien-gia-dinh-an-toan.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">C&aacute;c thiết bị điện gia đ&igrave;nh trong khi sử dụng c&oacute; thể gặp sự cố bất cứ l&uacute;c n&agrave;o, những sự cố n&agrave;y nếu kh&ocirc;ng được xử l&yacute; kịp thời nhanh ch&oacute;ng hoặc xử l&yacute; hiệu quả th&igrave; kh&ocirc;ng đảm bảo an to&agrave;n cho người sử dụng. Trong qu&aacute; tr&igrave;nh sử dụng c&aacute;c thiết bị điện gia đ&igrave;nh, ch&iacute;nh c&aacute;c th&agrave;nh vi&ecirc;n trong nh&agrave; cũng g&oacute;p phần v&agrave;o việc đảm bảo an to&agrave;n cho c&aacute;c thiết bị điện v&agrave; người sử dụng bằng c&aacute;ch tu&acirc;n thủ 11 ch&uacute; &yacute; sau:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">1. Lắp thiết bị đ&oacute;ng cắt, bảo vệ</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phải lắp đặt tr&ecirc;n d&acirc;y pha; khuyến kh&iacute;ch lắp đặt thiết bị bảo vệ đ&oacute;ng cắt đồng thời cả d&acirc;y pha v&agrave; d&acirc;y trung t&iacute;nh.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Chọn thiết bị đ&oacute;ng cắt bảo vệ:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Phải ph&ugrave; hợp với c&ocirc;ng suất sử dụng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Phải c&oacute; nắp đậy che k&iacute;n phần mang điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phải lắp đặt thiết bị ở đầu d&acirc;y cấp điện ch&iacute;nh v&agrave; c&aacute;c nh&aacute;nh rẽ ở c&aacute;c tầng nh&agrave;.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Khuyến kh&iacute;ch lắp đặt thiết bị chống r&ograve; điện. đặc biệt v&ugrave;ng ngập nước.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"/ckfinder/userfiles/images/image-20210716001406-1.jpeg\" style=\"height:2000px; width:2000px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">2. Lắp đặt cầu dao, cầu ch&igrave;, c&ocirc;ng tắc, ổ cắm điện ở c&ocirc;ng tŕnh nh&agrave; ở</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phải đặt ở nơi cao r&aacute;o v&agrave; thuận tiện cho việc sử dụng. Ri&ecirc;ng c&aacute;c hộ sử dụng điện c&oacute; trẻ nhỏ hoặc nằm trong v&ugrave;ng c&oacute; thể ngập nước phải đặt cao hơn nền, s&agrave;n nh&agrave; &iacute;t nhất 1,40 m&eacute;t.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">3. Lắp đặt thiết bị điện trong nh&agrave;</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">-&nbsp;</span></span>&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">Nối đất vỏ kim loại c&aacute;c thiết bị d&ugrave;ng điện trong nh&agrave; như: Tủ lạnh, m&aacute;y giặt, bếp điện&hellip;.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Kh&ocirc;ng lắp đặt thiết bị điện tại c&aacute;c nơi ẩm ướt, ngập nước. Trường hợp cần bố tr&iacute; thiết bị th&igrave; phải được bảo vệ bằng c&aacute;ch lắp đặt thiết bị chống r&ograve; điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">4. Kiểm tra</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phải thường xuy&ecirc;n kiểm tra đường d&acirc;y; thiết bị đ&oacute;ng cắt, bảo vệ điện (cầu dao, cầu ch&igrave;, c&ocirc;ng tắc, ổ cắm) v&agrave; c&aacute;c thiết bị sử dụng điện trong nh&agrave;.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- N&ecirc;n ngắt nguồn điện c&aacute;c thiết bị điện khi kh&ocirc;ng sử dụng (cắt cầu dao hoặc r&uacute;t ph&iacute;ch cắm điện).</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Khi d&acirc;y dẫn điện bị đứt, tr&oacute;c c&aacute;ch điện; c&aacute;c thiết bị, đồ d&ugrave;ng điện nếu hư hỏng phải thay thế hoặc sửa chữa xong mới được tiếp tục sử dụng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">5. Khi c&oacute; gi&ocirc;ng s&eacute;t, mưa, băo, ngập nước</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Cắt điện (r&uacute;t ph&iacute;ch cắm) c&aacute;c thiết bị: Ti vi, m&aacute;y t&iacute;nh, &hellip; v&agrave; t&aacute;ch c&aacute;p an-ten ra khỏi ti vi nhằm tr&aacute;nh s&eacute;t lan truyền.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Khi nh&agrave; bị ngập nước, mưa b&atilde;o l&agrave;m tốc m&aacute;i, đổ tường&hellip; n&ecirc;n cắt cầu dao điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">6. Khi cần sửa chữa hoặc lắp đặt điện trong nh&agrave;</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phải ngắt thiết bị đ&oacute;ng cắt điện (cầu dao, cầu ch&igrave;, c&ocirc;ng tắc ) v&agrave; treo tại thiết bị đ&oacute;ng cắt điện biển b&aacute;o: &ldquo;CẤM Đ&Oacute;NG ĐIỆN KHI C&Oacute; NGƯỜI ĐANG L&Agrave;M VIỆC&rdquo;</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">7. Sử dụng c&aacute;c c&ocirc;ng cụ điện cầm tay (m&aacute;y khoan, m&aacute;y m&agrave;i &hellip;)</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Khi sử dụng c&aacute;c thiết bị n&agrave;y phải mang găng tay c&aacute;ch điện để kh&ocirc;ng bị điện giật.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">8. Khi tay ướt hoặc nền, s&agrave;n nh&agrave; ẩm ướt</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Kh&ocirc;ng chạm v&agrave;o bất kỳ dụng cụ sử dụng điện n&agrave;o.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Kh&ocirc;ng đ&oacute;ng cắt cầu dao, c&ocirc;ng tắc hoặc cắm (r&uacute;t) ph&iacute;ch cắm điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- S&agrave;n nh&agrave; ẩm ướt muốn thao t&aacute;c phải đứng tr&ecirc;n vật c&aacute;ch điện (ghế gỗ, nhựa kh&ocirc; &hellip;).</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">9. Khi chưa cắt nguồn điện</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Kh&ocirc;ng được chạm v&agrave;o:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Ổ cắm điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Những chỗ hở của d&acirc;y điện (nơi vỏ c&aacute;ch điện bị nứt, tr&oacute;c, bị bung băng keo c&aacute;ch điện).</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Cầu dao, cầu ch&igrave; kh&ocirc;ng c&oacute; nắp che &hellip;</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">10. Kh&ocirc;ng</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Sử dụng d&acirc;y dẫn điện, thiết bị điện v&agrave; thiết bị sử dụng điện trong nh&agrave; c&oacute; chất lượng k&eacute;m rất dễ chạm chập điện g&acirc;y tai nạn hoặc ch&aacute;y, nổ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Phơi quần &aacute;o; treo, m&oacute;c vật dụng, h&agrave;ng ho&aacute; &hellip; v&agrave;o d&acirc;y dẫn điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Cắm trực tiếp đầu d&acirc;y dẫn điện (kh&ocirc;ng c&oacute; ph&iacute;ch cắm) v&agrave;o ổ cắm điện.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Ph&iacute;ch cắm, ổ cắm phải chắc chắn (ph&iacute;ch cắm l&agrave; ph&iacute;a thiết bị dụng cụ sử dụng điện, ổ cắm l&agrave; ph&iacute;a nguồn điện).</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Khi r&uacute;t ph&iacute;ch cắm điện kh&ocirc;ng nắm d&acirc;y điện k&eacute;o ra, phải nắm v&agrave;o phần nhựa của th&acirc;n ph&iacute;ch cắm.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Để thiết bị điện c&oacute; ph&aacute;t nhiệt (ti vi, b&agrave;n ủi, bếp điện&hellip;) ở gần vật dễ ch&aacute;y.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">11. Kh&ocirc;ng d&ugrave;ng điện để</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Chống trộm.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">- Bẫy chuột.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\"><span style=\"color:#000000\">- R&agrave; (bắt) c&aacute;.</span></span></span></span></span></span></span></p>', '2021-04-17 05:08:01', 1, 1, '2021-07-15 17:19:46'),
(5, 'Nhà mạng MobiFone được Apple mở 5G phiên bản chính thức ngay dịp sinh nhật', 'nha-mang-mobifone-duoc-apple-mo-5g-phien-ban-chinh-thuc-ngay-dip-sinh-nhat', 1, 1, 2, 0, 'Sau thời gian được thử nghiệm 5G trên iPhone 12 thì mới đây, đúng vào dịp sinh nhật lần thứ 28 của MobiFone, Apple đã mở 5G chính thức cho các khách hàng của nhà mạng này.', '2021-04-17__637542522078503055-apple-mo-5g-chinh-thuc-cho-nha-mang-mobifone.jpg', '<p>Cuối th&aacute;ng 2, nh&agrave; mạng MobiFone l&agrave; những người đầu ti&ecirc;n ở Việt Nam được thử trải nghiệm mạng 5G tr&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;iPhone 12 series. Tuy nhi&ecirc;n, tại thời điểm đ&oacute;,&nbsp;<a href=\"https://fptshop.com.vn/apple\">Apple</a>&nbsp;mới chỉ mở băng tần hỗ trợ phi&ecirc;n bản beta. Đặc biệt, v&agrave;o ng&agrave;y 16/4, Apple đ&atilde; mở 5G phi&ecirc;n bản ch&iacute;nh thức cho c&aacute;c thu&ecirc; bao của nh&agrave; mạng MobiFone.</p>\r\n\r\n<p><img alt=\"Apple mở 5G phiên bản chính thức cho nhà mạng Mobifone - Ảnh 1\" src=\"https://images.fpt.shop/unsafe/filters:quality(90):format(webp)/fptshop.com.vn/uploads/images/tin-tuc/134012/Originals/apple-mo-5g-chinh-thuc-cho-nha-mang-mobifone-2.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Phi&ecirc;n bản n&agrave;y c&oacute; đầy đủ t&iacute;nh năng v&agrave; hiệu quả sử dụng cũng tương đồng bản beta trước đ&oacute;. Kh&aacute;ch h&agrave;ng c&oacute; thể trực tiếp update phi&ecirc;n bản ngay tr&ecirc;n chiếc iPhone của m&igrave;nh một c&aacute;ch nhanh ch&oacute;ng v&agrave; tiện lợi.&nbsp;</p>\r\n\r\n<p>T&iacute;nh đến thời điểm hiện tại, tất cả thu&ecirc; bao MobiFone đang sử dụng c&aacute;c thiết bị kh&ocirc;ng chỉ điện thoại&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-12\">iPhone 12</a>&nbsp;đến từ nh&agrave; &ldquo;t&aacute;o khuyết&rdquo; m&agrave; c&ograve;n c&aacute;c d&ograve;ng kh&aacute;c như Samsung Galaxy Note20 Ultra 5G, Galaxy Fold 2, Galaxy S21 series, Oppo Find X2 Pro, Xiaomi 10T Pro... đ&atilde; c&oacute; thể ch&iacute;nh thức sử dụng mạng 5G tại Hồ Ch&iacute; Minh với tốc độ đến từ tương lai, download l&ecirc;n đến 1.7Gbps v&agrave; upload l&ecirc;n đến 95Mbps.&nbsp;</p>', '2021-04-17 05:09:41', 1, 1, '2021-04-17 05:13:07'),
(6, 'Ưu điểm và ứng dụng của ống nhựa HDPE', 'uu-diem-va-ung-dung-cua-ong-nhua-hdpe', 1, 1, 2, 0, 'Ống HDPE được rất nhiều hộ gia đình cũng như các kỹ sư sử dụng vì những ưu điểm vượt trội của nó so với các loại ống khác.', '2021-07-16__cropped-ong-nhua-cap-nuoc-3-1024x748.jpg', '<p>Ống HDPE&nbsp;được rất nhiều hộ gia đ&igrave;nh cũng như c&aacute;c kỹ sư sử dụng v&igrave; những ưu điểm vượt trội của n&oacute; so với c&aacute;c loại ống kh&aacute;c.<br />\r\n<img alt=\"\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2019/12/9.jpg\" style=\"height:727px; width:1379px\" /></p>\r\n\r\n<p>C&Aacute;C ƯU ĐIỂM CỦA ỐNG HDPE</p>\r\n\r\n<ul>\r\n	<li>Ống tưới nước nhựa HDPE được người sử dụng v&agrave; giới chuy&ecirc;n gia đ&aacute;nh gi&aacute; chất lượng xuất sắc, với gần 50 năm ph&aacute;t triển v&agrave; được tin d&ugrave;ng tr&ecirc;n to&agrave;n thế giới.</li>\r\n	<li>● Ống c&oacute; khả năng chịu t&aacute;c động cao v&agrave; khả năng chống vỡ nứt v&ocirc; c&ugrave;ng tốt\r\n	<p>● Ống HDPE c&oacute; sức kh&aacute;ng cao với &aacute;c loại h&oacute;a chất ăn m&ograve;n, g&acirc;y mục n&aacute;t v&agrave; m&agrave;i m&ograve;n.</p>\r\n\r\n	<p>● Độ bền của ống nhựa HDPE cũng cao hơn nhiều so với c&aacute;c loại ống kh&aacute;c</p>\r\n\r\n	<p>● Ống tưới HDPE c&oacute; lợi thế dễ lắp đặt v&agrave; vận chuyển m&agrave; kh&ocirc;ng c&oacute; thiệt hại vật chất.</p>\r\n\r\n	<p>● HDPE chịu được &aacute;nh s&aacute;ng mặt trời khi chiếu trực tiếp (c&oacute; khả năng kh&aacute;ng tia cực t&iacute;m trong thời gian d&agrave;i)</p>\r\n\r\n	<p>● Độ đ&agrave;n hồi của th&agrave;nh ống nhựa HDPE cao, gi&uacute;p ngăn cản sự ph&aacute;t triển của c&aacute;c vết nứt. Độ đ&agrave;n hồi tốt dẫn đến dễ d&agrave;ng lắp đặt.</p>\r\n\r\n	<p>● Phụ kiện nhỏ hơn để kết nối do t&iacute;nh đ&agrave;n hồi cao: ống nhựa PE khi uốn cong c&oacute; b&aacute;n k&iacute;nh bằng khoảng 20-25 lần đường k&iacute;nh ngo&agrave;i của n&oacute;. Cuộn d&acirc;y PE c&oacute; thể được thực hiện tối đa 1000m Đường k&iacute;nh ngo&agrave;i&gt;=1200mm.</p>\r\n\r\n	<p>● &Iacute;t bị ảnh hưởng từ những biến động như sạt lở đất, địa chấn , dư chấn v vv</p>\r\n\r\n	<p>● C&aacute;c mối nối của ống rất ho&agrave;n hảo &ndash; kh&ocirc;ng hề c&oacute; vết nứt &ndash; cũng kh&ocirc;ng hề bị ph&aacute; vỡ hay biến dạng.</p>\r\n\r\n	<p>● Lợi thế của ứng dụng an to&agrave;n trong c&aacute;c bề mặt bất thường như biển, đường s&ocirc;ng, địa h&igrave;nh nhiệt độ thấp.</p>\r\n\r\n	<p>● Sẵn c&oacute; của một số phương ph&aacute;p kết nối như: H&agrave;n nhiệt, nối zoăng, nối ren ph&ugrave; hợp, vvv&hellip;</p>\r\n\r\n	<p>● Bề mặt b&ecirc;n trong l&ograve;ng ống tươi&nbsp;HDPE mịn m&agrave;ng mang lại tiết kiệm đ&aacute;ng kể trong c&aacute;c dịch vụ v&agrave; chi ph&iacute; bảo quản, gi&uacute;p tiết kiệm hao hụt vật liệu được dẫn trong ống</p>\r\n\r\n	<p>● Tuổi thọ rất cao dưới điều kiện thời tiết khắc nghiệt.</p>\r\n\r\n	<p>● Trọng lượng rất nhẹ, dễ d&agrave;ng vận chuyển v&agrave; lắp đặt.</p>\r\n\r\n	<p>● Kh&ocirc;ng độ chai, c&oacute; thể được sử dụng trong thực phẩm v&agrave; ng&agrave;nh c&ocirc;ng nghiệp dược phẩm.</p>\r\n\r\n	<p>● Ống HDPE kh&ocirc;ng t&aacute;c dụng với dung dịch axit, kiềm v&agrave; c&aacute;c hợp chất hữu cơ :rượu b&eacute;o, aceton, &ecirc;teetylic, glicerin,&hellip;.</p>\r\n\r\n	<p>Với những ưu điểm tuyệt vời tr&ecirc;n, người ta thường sử dụng ống HDPE trong rất nhiều lĩnh vực. Vậy lĩnh vực thường sử dụng ống nhựa HDPE l&agrave; g&igrave;?</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2019/11/s%E1%BA%A3n-ph%E1%BA%A9m-n%E1%BB%95i-b%E1%BA%ADt-anh-ong-nhua-thay-the-muc-10-1.jpg\" style=\"height:932px; width:934px\" /></p>\r\n\r\n<p>C&Aacute;C LĨNH VỰC ỨNG DỤNG CỦA ỐNG HDPE</p>\r\n\r\n<p>1, C&ocirc;ng nghiệp nhẹ:</p>\r\n\r\n<p>+ L&agrave;m ống tho&aacute;t nước, ống tưới cỡ lớn</p>\r\n\r\n<p>+ L&agrave;m ống tải nước thải cỡ lớn tại c&aacute;c th&agrave;nh phố lớn, c&aacute;c khu c&ocirc;ng nghiệp</p>\r\n\r\n<p>2, C&ocirc;ng nghiệp khai mỏ:</p>\r\n\r\n<p>+ L&agrave;m ống nước thải trong c&ocirc;ng nghiệp khai th&aacute;c mỏ</p>\r\n\r\n<p>+ L&agrave;m ống ống</p>\r\n\r\n<p>3, C&ocirc;ng nghiệp năng lượng</p>\r\n\r\n<p>+ L&agrave;m ống luồn d&acirc;y c&aacute;p, d&acirc;y điện</p>\r\n\r\n<p>+ L&agrave;m ống sưởi, ống dẫn hơi n&oacute;ng</p>\r\n\r\n<p>+ L&agrave;m ống tho&aacute;t nước</p>\r\n\r\n<p>+ L&agrave;m ống cấp nước lạnh (&aacute;p lực ống từ 4-10kg/cm2)</p>\r\n\r\n<p>+ L&agrave;m ống phục vụ cho ng&agrave;nh bưu điện, c&aacute;p quang (những nơi c&oacute; nhiệt độ thấp hay những nơi c&oacute; băng tuyết)</p>', '2021-04-17 05:10:31', 1, 1, '2021-07-15 17:21:45'),
(7, '6 lý do nên sử dụng cốp pha nhựa Maxcop trong thi công xây dựng', '6-ly-do-nen-su-dung-cop-pha-nhua-maxcop-trong-thi-cong-xay-dung', 1, 1, 2, 0, 'Đại đa số các công trình xây dựng ngày nay đều sử dụng bê tông. Do đó, việc đổ khuôn bê tông sao cho đảm bảo chất lượng và thẩm mỹ là một vấn đề vô cùng quan trọng.', '2021-07-16__tai-xuong-1.jpg', '<p><em>Đại đa số c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng ng&agrave;y nay đều sử dụng b&ecirc; t&ocirc;ng. Do đ&oacute;, việc đổ khu&ocirc;n b&ecirc; t&ocirc;ng sao cho đảm bảo chất lượng v&agrave; thẩm mỹ l&agrave; một vấn đề v&ocirc; c&ugrave;ng quan trọng. So với c&aacute;c loại khu&ocirc;n kh&aacute;c, cốp nha nhựa Maxcop đ&atilde; v&agrave; đang thể hiện nhiều ưu điểm vượt trội v&agrave; l&agrave; xu hướng của sử dụng cốp pha trong c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng lớn v&agrave; d&agrave;i hạn.</em></p>\r\n\r\n<h2>#1: Cốp nha nhựa gi&uacute;p tiết kiệm chi ph&iacute;&nbsp;v&agrave; bảo vệ m&ocirc;i trường</h2>\r\n\r\n<p><img alt=\"cốp pha nhựa Thuận Phát giúp tiết kiệm chi phí cho các công trình đến 20%\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2020/06/90f6dd2453baabe4f2ab-e1607574854342.jpg\" style=\"height:534px; width:800px\" title=\"cốp pha nhựa Thuận Phát giúp tiết kiệm chi phí cho các công trình \" /></p>\r\n\r\n<p><em>Cốp nha nhựa Thuận Ph&aacute;t gi&uacute;p tiết kiệm chi ph&iacute; cho c&aacute;c c&ocirc;ng tr&igrave;nh đến 20%</em></p>\r\n\r\n<p><em>Cốp pha nhựa Maxcop</em>&nbsp;đựa nhiều nh&agrave; thầu thi c&ocirc;ng c&aacute;c c&ocirc;ng tr&igrave;nh lớn lựa chọn bởi số lần t&aacute;i sử dụng đạt hơn 70 lần, c&oacute; khả năng thu hồi chi ph&iacute; l&ecirc;n đến 20% sau khi sử dụng, gi&uacute;p giảm chi ph&iacute; đầu tư ban đầu, giảm chi ph&iacute; nh&acirc;n c&ocirc;ng lắp đặt v&agrave; th&aacute;o dỡ.</p>\r\n\r\n<p>Chi ph&iacute; được tiết kiệm tại đ&acirc;y ch&uacute;ng ta c&oacute; thể n&oacute;i về vật tư l&agrave; cốp pha nhựa c&oacute; thể sử dụng lu&acirc;n phi&ecirc;n nhiều lần cho nhiều c&ocirc;ng tr&igrave;nh, như vậy chi ph&iacute; n&agrave;y sẽ được ph&acirc;n nhỏ hơn. Chi ph&iacute; thứ hai&nbsp; l&agrave; chi ph&iacute; nh&acirc;n c&ocirc;ng, thay v&igrave; chưa sử dụng cốp pha nhựa&nbsp;hay sử dụng c&aacute;c loại th&ocirc; sơ ch&uacute;ng ta sẽ cần nhiều nh&acirc;n c&ocirc;ng l&agrave;m việc trong nhiều ng&agrave;y, việc l&agrave;m nguội bề mặt b&ecirc; t&ocirc;ng rất tốn thời gian, tuy nhi&ecirc;n nếu sử dụng Cốp Pha trong x&acirc;y dựng th&igrave; đ&atilde; giải quyết tất cả. Hơn nữa, cốp pha nhựa c&oacute; thể bảo quản ngo&agrave;i trời, tiết kiệm chi ph&iacute; lưu kho v&agrave; bảo tr&igrave;</p>\r\n\r\n<h2>#2:&nbsp;Tiết kiệm thời gian</h2>\r\n\r\n<p>Việc sử dụng cốp pha nhựa gi&uacute;p đẩy nhanh tiến độ c&ocirc;ng tr&igrave;nh, tiết kiệm thời gian ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh l&agrave; điều kh&ocirc;ng cần phải giải th&iacute;ch v&agrave; b&agrave;n c&atilde;i</p>\r\n\r\n<h2>#3: Dễ d&agrave;ng vận chuyển</h2>\r\n\r\n<p><img alt=\"với trọng lượng nhẹ, cốp pha nhựa Thuận Phát dễ dàng di chuyển trong quá trình thi công\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2020/01/3f8d9a7a1612ee4cb703-edit-e1607575133443.jpg\" style=\"height:600px; width:800px\" title=\"Với trọng lượng nhẹ, cốp pha nhựa Thuận Phát dễ dàng di chuyển trong quá trình thi công\" /></p>\r\n\r\n<p><em>Với trọng lượng nhẹ, cốp pha nhựa Thuận Ph&aacute;t dễ d&agrave;ng di chuyển trong qu&aacute; tr&igrave;nh thi c&ocirc;ng</em></p>\r\n\r\n<p>Vật liệu nhựa của dụng cụ cũng gi&uacute;p ch&uacute;ng nhẹ hơn, từ đ&oacute; việc di chuyển khu&acirc;n vắc ch&uacute;ng trở n&ecirc;n dễ d&agrave;ng, đơn giản nhẹ nh&agrave;ng. Hơn thế nữa, trong qu&aacute; tr&igrave;nh thi c&ocirc;ng, c&ocirc;ng nh&acirc;n c&oacute; thể th&aacute;o dỡ ch&uacute;ng nhanh ch&oacute;ng, sử dụng được cho nhiều c&ocirc;ng tr&igrave;nh, dử dụng được nhiều lần, c&oacute; thể l&ecirc;n đến 100 lần. Một điểm lợi thế nữa l&agrave; c&oacute; thể lưu trữ cốp pha nhựa ngo&agrave;i trời m&agrave; kh&ocirc;ng cần nh&agrave; kho.</p>\r\n\r\n<h2>#4: Bền vững với thời gian</h2>\r\n\r\n<p>Theo thống k&ecirc;, cốp pha nhựa bền hơn 10 lần so với v&aacute;n gỗ &eacute;p v&agrave; gỗ &eacute;p phủ phim, khắc phục được tất cả c&aacute;c nhược điểm của cốp pha truyền thống như:&nbsp; kh&ocirc;ng biến dạng dưới t&aacute;c động m&ocirc;i trường; kh&ocirc;ng thấm nước, kh&ocirc;ng nấm mốc, đặc biệt th&iacute;ch hợp khi sử dụng cho m&ocirc;i trường ngầm v&agrave; ẩm ướt; kh&aacute;ng x&iacute;t v&agrave; kiềm, chống ăn m&ograve;n, rất th&iacute;ch hợp cho c&aacute;c ứng dụng kỹ thuật ở c&aacute;c khu vực ven biển, mỏ, cũng như tường chắn s&oacute;ng</p>\r\n\r\n<h2>#5: Dễ thi c&ocirc;ng v&agrave; th&aacute;o dỡ</h2>\r\n\r\n<p><img alt=\"Cốp pha nhựa Thuận Phát dễ dàng lắp đặt và tháo dỡ, thuận tiện cho thi công\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2020/06/95995978_175182223971735_2628301723503951872_o-e1607575448781.jpg\" style=\"height:601px; width:800px\" /></p>\r\n\r\n<p>Cốp pha nhựa Thuận Ph&aacute;t dễ d&agrave;ng lắp đặt v&agrave; th&aacute;o dỡ, thuận tiện cho thi c&ocirc;ng</p>\r\n\r\n<p>Trong trường hợp thi c&ocirc;ng c&aacute;c cột c&oacute; độ cao lớn, nếu sử dụng những cốp pha th&ocirc;ng thường th&igrave; sẽ rất phức tạp. Sử dụng&nbsp;<em>cốp pha nhựa Maxcop</em>&nbsp;sẽ c&oacute; những ưu điểm sau:</p>\r\n\r\n<ul>\r\n	<li>Dễ thi c&ocirc;ng: Cưa, khoan, đ&oacute;ng đinh đều được. Tấm cốp pha c&oacute; thể được kết hợp theo chiều dọc v&agrave; chiều ngang t&ugrave;y chọn</li>\r\n	<li>Dễ d&agrave;ng lắp đặt v&agrave; th&aacute;o dỡ: Kh&ocirc;ng cần phải qu&eacute;t dầu như c&aacute;c loại cốp pha kh&aacute;c, khi th&aacute;o dỡ cốp nha nhựa sẽ dễ d&agrave;ng rơi ra khỏi b&ecirc; t&ocirc;ng, r&uacute;t ngắn thời gian l&agrave;m việc v&agrave; tăng hiệu quả thi c&ocirc;ng</li>\r\n	<li>Có th&ecirc;̉ rửa sạch bằng nước trước và sau khi thi c&ocirc;ng vì kh&ocirc;ng bị bám dính b&ecirc; t&ocirc;ng nhi&ecirc;̀u</li>\r\n</ul>\r\n\r\n<h2>#6: Khả năng chịu tải trọng lớn</h2>\r\n\r\n<p>Cốp pha Maxcop c&oacute; khả năng chịu tải trọng thi c&ocirc;ng lớn, tạo độ an to&agrave;n tuyệt đối cho c&aacute;c c&ocirc;ng tr&igrave;nh. &nbsp;Để kiểm chứng mức độ chịu tải của sản phẩm bằng những con số cụ thể th&igrave; cần những thiết bị đo đạc chuy&ecirc;n dụng. Tuy nhi&ecirc;n để đơn giản h&oacute;a việc kiểm tra, ch&uacute;ng t&ocirc;i xin l&agrave;m một clip đơn giản kh&ocirc;ng mang nặng kết quả bằng con số ch&iacute;nh x&aacute;c, mang t&iacute;nh thực tiễn để test thử độ cứng của tấm v&aacute;n nhựa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảng so s&aacute;nh cốp nha nhựa Maxcop so với c&aacute;c loại cốp pha kh&aacute;c tr&ecirc;n thị trường</h2>\r\n\r\n<p><img alt=\"Bảng so sánh cốp pha nhưa Thuận Phát với các loại cốp pha khác trên thị trường\" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2020/06/B%E1%BA%A3ng-so-s%C3%A1nh-MAXCOP.png\" style=\"height:433px; width:521px\" title=\"Bảng so sánh cốp pha nhưa Thuận Phát với các loại cốp pha khác trên thị trường\" /></p>\r\n\r\n<p><em>Bảng so s&aacute;nh cốp pha nhưa Thuận Ph&aacute;t với c&aacute;c loại cốp pha kh&aacute;c tr&ecirc;n thị trường</em></p>\r\n\r\n<p>Như vậy, với c&aacute;c đặc t&iacute;nh nổi bật như trọng lượng nhẹ, độ b&ecirc;n cao, độ cứng cao. bề mặt nhẵn, s&aacute;ng v&agrave; sạch, hiệu quả đổ b&ecirc; t&ocirc;ng cao; chịu lực tốt, dẻo dai, c&oacute; thể sử dụng để tạo c&aacute;c h&igrave;nh dạng v&agrave; k&iacute;ch thước kh&aacute;c nhau, khả năng t&aacute;i chế sử dụng tr&ecirc;n 70 lần,&nbsp;cốp nha nhựa&nbsp;Thuận Ph&aacute;t&nbsp; đ&atilde; v&agrave; đang l&agrave; lựa chọn tin cậy của c&aacute;c nh&agrave; thầu, c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng lớn v&agrave; trọng điểm của quốc gia.</p>', '2021-04-17 05:11:19', 1, 1, '2021-07-15 17:20:49'),
(8, 'Kết quả kiểm định cốp pha nhựa Maxcop', 'ket-qua-kiem-dinh-cop-pha-nhua-maxcop', 1, 1, 2, 0, 'Cốp pha nhựa Maxcop của Thuận Phát đã chứng minh được độ bền, chịu lực tốt, dẻo dai qua kiểm chứng thực tế. Mời các bạn theo dõi qua bài viết dưới đây.', '2021-07-16__tai-xuong.jpg', '<p><em>Cốp pha nhựa Maxcop của Thuận Ph&aacute;t đ&atilde; chứng minh được độ bền, chịu lực tốt, dẻo dai qua kiểm chứng thực tế. Mời c&aacute;c bạn theo d&otilde;i qua b&agrave;i viết dưới đ&acirc;y.</em></p>\r\n\r\n<p><strong>Cốp pha&nbsp;</strong>được hiểu l&agrave; một dạng khu&ocirc;n đ&uacute;c b&ecirc; t&ocirc;ng tạo dựng n&ecirc;n kết cấu b&ecirc; t&ocirc;ng v&agrave; b&ecirc; t&ocirc;ng cốt th&eacute;p, ứng dụng trong thi c&ocirc;ng x&acirc;y dựng. Cốp pha c&oacute; thể được l&agrave;m từ nhiều loại vật liệu, phụ thuộc v&agrave;o nguy&ecirc;n vật liệu cấu th&agrave;nh m&agrave; mỗi loại cốp pha c&oacute; những ưu, nhược điểm kh&aacute;c nhau.</p>\r\n\r\n<p>T&iacute;nh năng, chất lượng của cốp pha ảnh hưởng lớn đến chất lượng, mỹ quan , thời gian thi c&ocirc;ng cũng như gi&aacute; th&agrave;nh của c&ocirc;ng tr&igrave;nh. Với mong muốn cho ra đời sản phẩm cốp pha ưu việt, khắc phục được tất cả những nhược điểm của c&aacute;c sản phẩm cốp pha đang c&oacute; tr&ecirc;n thị trường, sau một khoảng thời gian d&agrave;i nghi&ecirc;n cứu, ch&uacute;ng t&ocirc;i đ&atilde; cho ra đời d&ograve;ng sản phẩm cốp pha nhựa Maxcop &ndash; Thế hệ mới nhất.</p>\r\n\r\n<p>H&atilde;y c&ugrave;ng Thuận Ph&aacute;t theo d&otilde;i kết quả kiểm chứng<strong>&nbsp;</strong>cốp pha nhựa Maxcopqua video dưới đ&acirc;y</p>\r\n\r\n<p><em>Video kiểm chứng sản phẩm cốp pha nhựa Maxcop của Thuận Ph&aacute;t INC</em></p>\r\n\r\n<p>Với nguy&ecirc;n liệu ch&iacute;nh từ nhựa tổng hợp được trộn đều c&ugrave;ng nhiều c&aacute;c nguy&ecirc;n liệu phụ gia được đưa v&agrave;o d&acirc;y chuyền sản xuất cốp pha c&ocirc;ng nghệ H&agrave;n Quốc v&agrave; sản xuất ra sản phẩm cốp pha MAXCOP mang những ưu điểm vượt trội như:</p>\r\n\r\n<p>&ndash; Trọng lượng nhẹ, độ bền cao, độ cứng cao</p>\r\n\r\n<p>&ndash; Bề mặt nhẵn, s&aacute;ng v&agrave; sạch, hiệu quả đổ b&ecirc; t&ocirc;ng rất cao, khả năng chống trầy xước tốt</p>\r\n\r\n<p>&ndash; Độ chịu lực tốt, dẻo dai. C&oacute; thể được sử dụng để tạo c&aacute;c h&igrave;nh dạng v&agrave; k&iacute;ch thước kh&aacute;c nhau</p>\r\n\r\n<p>&ndash; Bền hơn 10 lần so với v&aacute;n gỗ &eacute;p v&agrave; gỗ &eacute;p phủ phim &ndash; Kh&ocirc;ng biến dạng dưới t&aacute;c động của m&ocirc;i trường; &ndash; Kh&ocirc;ng thấm nước, kh&ocirc;ng nấm mốc, đặc biệt th&iacute;ch hợp cho m&ocirc;i trường ngầm v&agrave; ẩm ướt</p>\r\n\r\n<p>&ndash; Kh&aacute;ng axit v&agrave; kiềm, chống ăn m&ograve;n, rất th&iacute;ch hợp cho c&aacute;c ứng dụng kỹ thuật ở c&aacute;c khu vực ven biển, mỏ, cũng như tường chắn s&oacute;ng</p>\r\n\r\n<p>&ndash; Dễ thi c&ocirc;ng: cưa, khoan v&agrave; đ&oacute;ng đinh đều được. Tấm cốp pha c&oacute; thể được kết hợp theo chiều dọc v&agrave; chiều ngang t&ugrave;y chọn</p>\r\n\r\n<p>&ndash; Dễ d&agrave;ng lắp đặt: kh&ocirc;ng cần phải qu&eacute;t dầu như c&aacute;c loại cốp pha kh&aacute;c, khi th&aacute;o dỡ cốp pha MAXCOP sẽ dễ d&agrave;ng rơi ra khỏi b&ecirc; t&ocirc;ng. R&uacute;t ngắn thời gian l&agrave;m việc v&agrave; tăng hiệu quả thi c&ocirc;ng</p>\r\n\r\n<p>&ndash; Th&aacute;o dỡ thuận tiện, nhanh ch&oacute;ng v&agrave; an to&agrave;n. Tiết kiệm chi ph&iacute; l&ecirc;n tới 50%. &ndash; Số lần t&aacute;i sử dụng đạt hơn 70 lần, c&oacute; khả năng thu hồi chi ph&iacute; l&ecirc;n đến 20% sau khi sử dụng gi&uacute;p giảm chi ph&iacute; đầu tư.</p>\r\n\r\n<p><img alt=\"Kết quả kiểm định cốp pha nhựa Maxcop từ Viện khoa học và công nghệ giao thông vận tải \" src=\"https://thuanphatgroup.com.vn/wp-content/uploads/2020/12/0001-1.jpg\" style=\"height:1414px; width:1000px\" title=\"Kết quả kiểm định cốp pha nhựa Maxcop từ Viện khoa học và công nghệ giao thông vận tải \" /></p>\r\n\r\n<p>Kết quả kiểm định cốp pha nhựa Maxcop từ Viện khoa học v&agrave; c&ocirc;ng nghệ giao th&ocirc;ng vận tải</p>', '2021-04-17 05:12:12', 1, 1, '2021-07-15 17:18:39');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(9, 'Những tác hại việc sử dụng sai dây và cáp điện kém chất lượng', 'nhung-tac-hai-viec-su-dung-sai-day-va-cap-dien-kem-chat-luong', 1, 1, 2, 0, 'Dây và cáp điện sử dụng rất phổ biến trong các công trình dân dụng, công trình ngoài trời.', '2021-07-16__an-toan-su-dung-dien-day-va-cap-dien-dan-dung-kem-chat-luong.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">D&acirc;y v&agrave; c&aacute;p điện sử dụng rất phổ biến trong c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng, c&ocirc;ng tr&igrave;nh ngo&agrave;i trời. Hoặc trong c&aacute;c nh&agrave; m&aacute;y, khu c&ocirc;ng nghiệp cũng như nh&agrave; xưởng, c&aacute;c dự &aacute;n nh&agrave; chung cư, biệt thự.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Việc sử dụng những d&acirc;y v&agrave; c&aacute;p điện chất lượng k&eacute;m kh&ocirc;ng những g&acirc;y hậu quả nghi&ecirc;m trọng m&agrave; c&ograve;n l&agrave;m thiệt hại về kinh tế cũng như đến sự an to&agrave;n của người vận h&agrave;nh v&agrave; khai th&aacute;c sau n&agrave;y.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">1. Những t&aacute;c hại việc sử dụng d&acirc;y v&agrave; c&aacute;p điện k&eacute;m chất lượng</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">&ndash; Khi ruột đồng k&eacute;m chất lượng hoặc kh&ocirc;ng đủ tiết diện c&oacute; thể g&acirc;y ra c&aacute;c t&aacute;c hại sau:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Dẫn điện k&eacute;m, g&acirc;y sụt &aacute;p tr&ecirc;n đường d&acirc;y l&agrave;m cho thiết bị họat động kh&ocirc;ng hiệu quả, tuổi thọ thiết bị giảm nhanh.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Ph&aacute;t n&oacute;ng qu&aacute; mức tr&ecirc;n đường d&acirc;y, g&acirc;y hư hại lớp c&aacute;ch điện, g&acirc;y chạm chập ch&aacute;y nổ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Ruột đồng k&eacute;m chất lượng rất dễ g&atilde;y, kh&oacute; nối, kh&oacute; lắp v&agrave;o c&aacute;c phụ kiện điện kh&aacute;c.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">&ndash; Khi lớp c&aacute;ch điện k&eacute;m chất lượng c&oacute; thể g&acirc;y ra c&aacute;c t&aacute;c hại sau:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Nứt c&aacute;ch điện, hở ruột dẫn, g&acirc;y điện giật cho người.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Rạn nứt c&aacute;ch điện sau một thời gian ngắn, g&acirc;y r&ograve; điện, tổn thất điện năng, chạm chập ch&aacute;y nổ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Kh&ocirc;ng chịu được nhiệt độ cho ph&eacute;p của ruột dẫn, chảy nh&atilde;o g&acirc;y ra chạm chập ch&aacute;y nổ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Kh&ocirc;ng tự tắt khi bị ph&aacute;t ch&aacute;y bởi t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Mất m&agrave;u sau một thời gian ngắn, g&acirc;y nhầm lẫn c&aacute;c d&acirc;y với nhau khi sửa chữa, thay thế.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">2. Những kinh nghiệm chọn d&acirc;y dẫn điện d&acirc;n dụng trong gia đ&igrave;nh</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Với rất nhiều c&aacute;c loại d&acirc;y điện tr&ecirc;n thị trường hiện nay, tốt c&oacute;, xấu c&oacute;, thật c&oacute;, giả c&oacute;, thậm ch&iacute; c&oacute; khi gặp d&acirc;y chẳng c&oacute; nh&atilde;n m&aacute;c, t&ecirc;n nh&agrave; sản xuất g&igrave; cả. V&igrave; vậy, một người kh&ocirc;ng chuy&ecirc;n th&igrave; việc lựa chọn d&acirc;y n&agrave;o, nh&atilde;n hiệu n&agrave;o m&agrave; c&oacute; thể tin cậy được l&agrave; một việc kh&ocirc;ng dễ d&agrave;ng g&igrave;.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Sau đ&acirc;y l&agrave; 1 v&agrave;i kinh nghiệm để c&aacute;c bạn chọn lựa d&acirc;y tốt hơn:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Kh&ocirc;ng n&ecirc;n chọn d&acirc;y kh&ocirc;ng c&oacute; nh&atilde;n m&aacute;c tr&ecirc;n bao b&igrave;, kh&ocirc;ng c&oacute; t&ecirc;n nh&agrave; sản xuất, kh&ocirc;ng địa chỉ r&otilde; r&agrave;ng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Kh&ocirc;ng n&ecirc;n chọn d&acirc;y m&agrave; tr&ecirc;n d&acirc;y kh&ocirc;ng c&oacute; c&aacute;c th&ocirc;ng tin cơ bản như: nh&atilde;n hiệu, t&ecirc;n loại d&acirc;y, tiết diện, cấu tr&uacute;c ruột dẫn (số sợi v&agrave; đường k&iacute;nh mỗi sợi), ti&ecirc;u chuẩn sản xuất.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ D&acirc;y tốt thường c&oacute; bề ngo&agrave;i của vỏ nhựa b&oacute;ng, l&aacute;ng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Lớp nhựa c&aacute;ch điện của d&acirc;y tốt rất dẻo, khi tuốt ra khỏi ruột dẫn, c&oacute; thể k&eacute;o gi&atilde;n gấp đ&ocirc;i, gấp ba chiều d&agrave;i ban đầu m&agrave; chưa bị đứt. D&acirc;y c&oacute; thể bẻ gập nhiều lần hoặc xoắn g&uacute;t nhưng bề mặt c&aacute;ch điện kh&ocirc;ng bị rạng nứt.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ C&oacute; thể kiểm tra ruột dẫn, bằng c&aacute;ch đếm số sợi nhỏ b&ecirc;n trong so với số sợi được ghi b&ecirc;n ngo&agrave;i. Đường k&iacute;nh của c&aacute;c sợi nhỏ b&ecirc;n trong rất kh&oacute; kiểm tra, v&igrave; phải c&oacute; thước chuy&ecirc;n d&ugrave;ng mới đo được. Tuy nhi&ecirc;n, với một thương hiệu uy t&iacute;n, tr&ecirc;n d&acirc;y c&oacute; ghi cụ thể cấu tr&uacute;c ruột dẫn (số sợi v&agrave; đường k&iacute;nh mỗi sợi) th&igrave; c&oacute; thể tin tưởng được.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ D&acirc;y tốt th&igrave; c&oacute; ruột dẫn s&aacute;ng, b&oacute;ng, nếu l&agrave; d&acirc;y đồng th&igrave; ruột dẫn rất mềm dẻo. Đối với d&acirc;y ruột dẫn đồng c&oacute; nhiều sợi nhỏ th&igrave; c&oacute; thể d&ugrave;ng hai ng&oacute;n tay xoắn ruột dẫn dễ d&agrave;ng m&agrave; c&aacute;c sợi nhỏ kh&ocirc;ng bung, kh&ocirc;ng g&atilde;y, kh&ocirc;ng đ&acirc;m v&agrave;o tay. Đối với d&acirc;y ruột dẫn c&oacute; một sợi th&igrave; c&oacute; thể bẻ gập ruột đồng đến v&agrave;i chục lần m&agrave; kh&ocirc;ng gẫy.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">+ Th&ocirc;ng thường, d&acirc;y tốt c&oacute; gi&aacute; cao hơn d&acirc;y dỏm với c&ugrave;ng cỡ loại.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Muli\">3. C&aacute;c lưu &yacute; cho hệ thống điện d&acirc;n dụng</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">N&ecirc;n chia đường điện ph&acirc;n phối trong nh&agrave; ở th&agrave;nh nhiều nh&aacute;nh để thuận tiện cho việc ngắt điện khi cần sửa chữa, thay thế.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">C&aacute;c d&acirc;y pha (d&acirc;y n&oacute;ng) c&oacute; c&ugrave;ng m&agrave;u v&agrave; tốt nhất l&agrave; m&agrave;u đỏ, m&agrave;u cam hoặc m&agrave;u v&agrave;ng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Khi c&oacute; nhiều nh&aacute;nh đi chung một tuyến m&agrave; k&iacute;ch cỡ giống nhau th&igrave; m&agrave;u của từng nh&aacute;nh n&ecirc;n kh&aacute;c nhau để dễ ph&acirc;n biệt.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">D&acirc;y cho hệ thống nối đất n&ecirc;n c&oacute; m&agrave;u ri&ecirc;ng biệt với tất cả c&aacute;c d&acirc;y kh&aacute;c v&agrave; n&ecirc;n chọn d&acirc;y m&agrave;u xanh- sọc- v&agrave;ng hoặc v&agrave;ng- sọc- xanh.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Khi luồn d&acirc;y trong ống hoặc trong nẹp, phải chọn k&iacute;ch thước ống, nẹp đủ rộng sao cho dễ luồn, dễ r&uacute;t m&agrave; kh&ocirc;ng hư hại đến d&acirc;y dẫn.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Kh&ocirc;ng n&ecirc;n đi d&acirc;y nơi ẩm thấp hoặc qu&aacute; gần c&aacute;c nguồn nhiệt, h&oacute;a chất.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Mối nối d&acirc;y phải chặt, tiếp x&uacute;c tốt để kh&ocirc;ng g&acirc;y ra m&ocirc;-ve nặc lửa khi mang tải.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Kh&ocirc;ng được nối trực tiếp ruột dẫn đồng v&agrave; nh&ocirc;m với nhau.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Đoạn d&acirc;y đi trong ống kh&ocirc;ng n&ecirc;n c&oacute; mối nối.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\">Kh&ocirc;ng n&ecirc;n đi d&acirc;y &acirc;m trong nền của tầng trệt nếu nền kh&ocirc;ng đảm bảo cố định với tường khi nền bị l&uacute;n.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"font-family:Muli\"><span style=\"color:#000000\">Kh&ocirc;ng n&ecirc;n sử dụng d&acirc;y c&oacute; tiết diện nhỏ hơn 0.5mm2.</span></span></span></span></span></span></span></p>', '2021-04-17 05:13:00', 0, 0, '2021-07-15 17:17:15'),
(10, 'Mô hình P2P Lending giúp tiếp cận vốn kinh doanh', 'mo-hinh-p2p-lending-giup-tiep-can-von-kinh-doanh', 0, 1, 1, 0, 'Các Doanh nghiệp vừa và nhỏ và Hộ kinh doanh luôn khó khăn trong việc tiếp cận vốn kinh doanh do không đáp ứng đủ các điều kiện về tài sản thế chấp và điều kiện vay vốn. Lendbiz tạo ra một kênh gọi vốn mới nhanh và hiệu quả cho các Chủ kinh doanh từ cộng đồng các Nhà đầu tư, qua đó tạo công ăn việc làm, góp phần phát triển Kinh tế xã hội.', '2021-09-15__lendbiz.png', '<p>C&aacute;c Doanh nghiệp vừa v&agrave; nhỏ v&agrave; Hộ kinh doanh lu&ocirc;n kh&oacute; khăn trong việc tiếp cận vốn kinh doanh do kh&ocirc;ng đ&aacute;p ứng đủ c&aacute;c điều kiện về t&agrave;i sản thế chấp v&agrave; điều kiện vay vốn. Lendbiz tạo ra một k&ecirc;nh gọi vốn mới nhanh v&agrave; hiệu quả cho c&aacute;c Chủ kinh doanh từ cộng đồng c&aacute;c Nh&agrave; đầu tư, qua đ&oacute; tạo c&ocirc;ng ăn việc l&agrave;m, g&oacute;p phần&nbsp;<strong>ph&aacute;t triển Kinh tế x&atilde; hội.</strong></p>\r\n\r\n<p>C&ocirc;ng ty Cổ phần Lendbiz được th&agrave;nh lập ng&agrave;y 10/10/2017 với mục ti&ecirc;u trở th&agrave;nh Tập đo&agrave;n c&ocirc;ng nghệ t&agrave;i ch&iacute;nh h&agrave;ng đầu trong lĩnh vực P2P Lending tại Việt Nam. Lendbiz l&agrave; cầu nối trung gian gi&uacute;p c&aacute;c Chủ kinh doanh gặp kh&oacute; khăn trong việc tiếp cận nguồn vốn từ c&aacute;c Định chế t&agrave;i ch&iacute;nh huy động được nguồn vốn kinh doanh từ cộng đồng c&aacute;c Nh&agrave; đầu tư. M&ocirc; h&igrave;nh n&agrave;y mang lợi &iacute;ch cho tất cả c&aacute;c b&ecirc;n, đồng thời g&oacute;p phần th&uacute;c đẩy sự ph&aacute;t triển chung của nền kinh tế Việt Nam.</p>', '2021-09-15 14:25:14', 1, 1, NULL),
(11, 'Nguyên liệu và phụ gia thực phẩm PTech', 'nguyen-lieu-va-phu-gia-thuc-pham-ptech', 0, 1, 2, 0, 'Được thành lập từ năm 2005 với sự trợ giúp từ tập đoàn Zuellig Industrial,P Tech đã phát triển vượt bậc để trở thành một trong những nhà phân phối hàng đầu về nguyên liệu và phụ gia thực phẩm,vỏ bọc và bao bì xúc xích các loại tại thị trường Việt Nam.', '2023-04-09__8-10-2022-paypal.png', '<p>Được th&agrave;nh lập từ năm 2005 với sự trợ gi&uacute;p từ tập đo&agrave;n Zuellig Industrial,<br />\r\nP Tech đ&atilde; ph&aacute;t triển vượt bậc để trở th&agrave;nh một trong những nh&agrave; ph&acirc;n phối h&agrave;ng đầu về nguy&ecirc;n liệu v&agrave; phụ gia thực phẩm,<br />\r\nvỏ bọc v&agrave; bao b&igrave; x&uacute;c x&iacute;ch c&aacute;c loại tại thị trường Việt Nam.<br />\r\n<br />\r\nCh&uacute;ng t&ocirc;i đang đại diện cho những nh&agrave; sản xuất h&agrave;ng đầu tr&ecirc;n thế giới về nguy&ecirc;n liệu thực phẩm, phụ gia thực thẩm v&agrave; hải sản,<br />\r\nhương liệu, tr&agrave; v&agrave; thảo dược, vỏ bọc v&agrave; bao b&igrave; x&uacute;c x&iacute;ch c&aacute;c loại.<br />\r\n<br />\r\nSản phẩm của ch&uacute;ng t&ocirc;i phục vụ cho nhiều ph&acirc;n kh&uacute;c của ng&agrave;nh c&ocirc;ng nghiệp thực phẩm, bao gồm chế biến thực phẩm,<br />\r\nchế biến hải sản, chế biến thịt, m&igrave; ăn liền, nước giải kh&aacute;t, sản phẩm từ sữa v&agrave; b&aacute;nh kẹo.</p>\r\n\r\n<p><em>(Chuyển nhượng quyền sử dụng, chuyển giao to&agrave;n phần...)</em></p>', '2021-09-15 14:26:11', 1, 1, '2023-04-09 13:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) NOT NULL,
  `atb_slug` varchar(255) NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_menu_id` bigint(20) DEFAULT NULL,
  `c_slug` varchar(255) NOT NULL,
  `c_avatar` varchar(255) DEFAULT NULL,
  `c_banner` varchar(255) DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_menu_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(14, 'Thiết bị điện Edenki', 0, 3, 'thiet-bi-dien-edenki', '2021-07-17__ed-03.jpg', NULL, NULL, 1, 1, '2021-04-17 03:12:54', '2021-09-01 10:10:45'),
(15, 'Edenki Concept', 14, 3, 'edenki-concept', '2021-07-17__ec-102.jpg', NULL, NULL, 0, 1, '2021-04-17 03:13:18', '2021-09-01 10:15:05'),
(16, 'Edenki Deluxe', 14, 3, 'edenki-deluxe', '2021-07-17__ed-02-300x300.jpg', NULL, NULL, 0, 1, '2021-04-17 03:13:28', '2021-07-17 06:26:24'),
(17, 'Edenki Elegant', 14, 3, 'edenki-elegant', '2021-07-17__ed-c501-480x480.jpg', NULL, NULL, 0, 1, '2021-04-17 03:13:45', '2021-07-17 06:37:26'),
(18, 'Edenki  Luxury', 14, 3, 'edenki-luxury', NULL, NULL, NULL, 0, 1, '2021-04-17 03:13:56', '2021-07-15 16:22:26'),
(19, 'Edenki White', 14, 3, 'edenki-white', NULL, NULL, NULL, 0, 1, '2021-04-17 03:14:03', '2021-07-15 16:24:02'),
(20, 'Đèn TLC', 0, 4, 'den-tlc', '2021-07-17__hm-7-247x296.jpg', NULL, NULL, 0, 1, '2021-04-17 03:14:10', '2021-09-01 11:17:14'),
(21, 'Đèn chiếu sáng 1', 20, 4, 'den-chieu-sang-1', NULL, NULL, NULL, 0, 1, '2021-04-17 03:14:41', '2021-09-01 11:24:44'),
(22, 'Đèn chiếu sáng 2', 20, 4, 'den-chieu-sang-2', NULL, NULL, NULL, 1, 1, '2021-04-17 03:14:59', '2021-09-01 11:25:32'),
(23, 'Consumer Luminaires', 20, NULL, 'consumer-luminaires', NULL, NULL, NULL, 0, 1, '2021-04-17 03:15:23', '2021-07-15 16:26:03'),
(24, 'Ống nhựa', 0, 5, 'ong-nhua', NULL, NULL, NULL, 0, 1, '2021-04-17 03:15:30', '2021-09-01 13:38:27'),
(25, 'Ống nhựa HDPE', 24, NULL, 'ong-nhua-hdpe', NULL, NULL, NULL, 0, 1, '2021-04-17 03:15:38', '2021-07-15 16:26:49'),
(26, 'Ống nhựa PPR', 24, NULL, 'ong-nhua-ppr', NULL, NULL, NULL, 0, 1, '2021-04-17 03:15:44', '2021-07-15 16:27:15'),
(27, 'Ống nhựa u.PVC', 24, NULL, 'ong-nhua-upvc', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:05', '2021-07-15 16:27:32'),
(28, 'Ổ cắm điện', 0, 5, 'o-cam-dien', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:14', '2021-09-01 13:39:01'),
(29, 'Ổ cắm chống va đập', 28, NULL, 'o-cam-chong-va-dap', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:27', '2021-07-15 16:28:19'),
(30, 'Ổ cắm nối dài', 28, NULL, 'o-cam-noi-dai', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:40', '2021-07-15 16:28:35'),
(31, 'Phích cắm chống va đập', 28, NULL, 'phich-cam-chong-va-dap', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:50', '2021-07-15 16:28:55'),
(32, 'Dây & Cáp điện', 0, 5, 'day-cap-dien', NULL, NULL, NULL, 0, 1, '2021-04-17 03:16:58', '2021-09-01 13:39:40'),
(33, 'Cốp pha MAXCOP', 0, NULL, 'cop-pha-maxcop', NULL, NULL, NULL, 0, 1, '2021-04-17 03:17:06', '2021-07-15 16:29:59'),
(44, 'Đèn ROMAN', 0, 4, 'den-roman', NULL, NULL, NULL, 0, 1, '2021-09-01 13:16:23', NULL),
(45, 'Đèn roman chiếu sáng 1', 44, 4, 'den-roman-chieu-sang-1', NULL, NULL, NULL, 0, 1, '2021-09-01 13:17:17', NULL),
(46, 'Đèn ABC', 0, 4, 'den-abc', NULL, NULL, NULL, 0, 1, '2021-09-01 13:35:14', NULL),
(47, 'Đèn chiếu sáng abc 1', 46, 4, 'den-chieu-sang-abc-1', NULL, NULL, NULL, 0, 1, '2021-09-01 13:35:29', NULL),
(48, 'Đèn chiếu sáng abc 2', 46, 4, 'den-chieu-sang-abc-2', NULL, NULL, NULL, 0, 1, '2021-09-01 13:35:43', '2022-07-30 14:01:52'),
(49, 'Đèn roman chiếu sáng 2', 44, 4, 'den-roman-chieu-sang-2', NULL, NULL, NULL, 0, 1, '2021-09-01 13:36:11', '2022-07-30 14:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) DEFAULT NULL,
  `cmt_email` varchar(255) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'GIAMGIATHANG4', 48, NULL, NULL, 30, '2021-04-14 15:35:00', '2023-02-17 13:31:00'),
(2, 'GIAMGIATHANG8', 50, NULL, NULL, 10, '2021-08-03 18:07:48', '2021-08-03 18:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_banner` varchar(255) DEFAULT NULL,
  `e_link` varchar(255) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(7, 'event1', '2021-07-17__banner1.jpg', '/', 1, 0, 0, 0, '2021-07-16 17:28:31', '2021-07-16 17:28:31'),
(8, 'event2', '2021-07-17__banner1.jpg', '/', 0, 0, 1, 0, '2021-07-16 17:29:09', '2021-07-16 17:29:09'),
(9, 'event3', '2021-07-16__banner-slide-1-1.jpg', '/', 0, 1, 0, 0, '2021-07-16 16:15:07', '2021-07-16 16:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) NOT NULL,
  `k_slug` varchar(255) NOT NULL,
  `k_description` varchar(255) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(10, 'Laptop', 'laptop', NULL, 0, '2021-04-17 04:22:32', NULL),
(11, 'Máy tính xách tay', 'may-tinh-xach-tay', NULL, 0, '2021-04-17 04:22:35', NULL),
(12, 'Laptop HP', 'laptop-hp', NULL, 0, '2021-04-17 04:22:40', NULL),
(13, 'Laptop Dell', 'laptop-dell', NULL, 0, '2021-04-17 04:22:46', NULL),
(14, 'Laptop Acer', 'laptop-acer', NULL, 0, '2021-04-17 04:22:56', NULL),
(15, 'Điện thoại chính hãng iPhone', 'dien-thoai-chinh-hang-iphone', NULL, 0, '2021-04-17 04:23:10', NULL),
(16, 'Samsung', 'samsung', NULL, 0, '2021-04-17 04:23:15', NULL),
(17, 'Oppo', 'oppo', NULL, 0, '2021-04-17 04:23:18', NULL),
(18, 'Sony', 'sony', NULL, 0, '2021-04-17 04:23:22', '2023-02-17 13:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) NOT NULL,
  `mn_slug` varchar(255) NOT NULL,
  `mn_avatar` varchar(255) DEFAULT NULL,
  `mn_banner` varchar(255) DEFAULT NULL,
  `mn_description` varchar(255) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `mn_type` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `mn_type`, `created_at`, `updated_at`) VALUES
(1, 'Dự án tiêu biểu', 'du-an-tieu-bieu', NULL, NULL, NULL, 0, 1, 2, '2020-06-19 08:38:59', '2021-09-02 10:40:41'),
(2, 'Tin tức', 'tin-tuc', NULL, NULL, NULL, 0, 1, 2, '2020-06-19 08:39:22', '2021-09-02 10:40:33'),
(3, 'Thiết bị Edenki', 'thiet-bi-edenki', NULL, NULL, NULL, 0, 1, 1, '2021-08-29 11:03:39', '2021-08-29 18:57:11'),
(4, 'Thiết bị đèn', 'thiet-bi-den', NULL, NULL, NULL, 0, 1, 1, '2021-08-29 18:57:39', NULL),
(5, 'Vật tư điện', 'vat-tu-dien', NULL, NULL, NULL, 0, 1, 1, '2021-08-29 18:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1),
(32, '2021_03_14_204259_create_discount_code_table', 2),
(33, '2021_03_30_105937_create_payments_table', 2),
(34, '2021_03_30_190556_add_tst_code_to_transactions_table', 2),
(35, '2021_08_29_173949_add_mn_type_to_menus_table', 3),
(36, '2021_08_30_013336_add_menu_id_to_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) DEFAULT NULL,
  `od_color` varchar(100) DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(17, 17, 50, 5, 1, 11010500, NULL, NULL, NULL, NULL, NULL),
(18, 18, 33, 30, 1, 56000, NULL, NULL, NULL, NULL, NULL),
(19, 19, 49, 0, 2, 130000, NULL, NULL, NULL, NULL, NULL),
(20, 20, 50, 5, 1, 11010500, NULL, NULL, NULL, NULL, NULL),
(21, 21, 32, 15, 1, 131750, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08'),
('nguyenvana@gmail.com', '$2y$10$Ns6BmF0WIiXbzI/YlZeAqOA0pohl1K3Z3UvLC5q.eIv4Ywa2iOuUa', '2023-05-03 12:18:41'),
('kiettv1108@gmail.com', '$2y$10$H7FKoVOHXpABJCFxhMjioukWJUhYX.8m7tNkLIM.ROu0d1HxHmPCy', '2023-05-03 12:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(2, 10, 4, 999999.99, 'dfgdfg', 'NyejqhQ6lVGJslE', '00', '13491813', 'NCB', '2021-04-17 17:02:00', NULL, NULL),
(3, 11, 3, 999999.99, 'asdasd', 'Te9IFf3dhXeHToF', '00', '13543064', 'NCB', '2021-07-12 22:43:00', NULL, NULL),
(4, 16, 9, 118575.00, 'sdfdsf', 'oQj2db5DdLOQGNS', '00', '13557491', 'NCB', '2021-08-04 01:13:00', NULL, NULL),
(5, 19, 11, 182000.00, 'thanh toan', 'ixnjz04Rqm2H5n0', '00', '13940682', 'NCB', '2023-02-17 20:54:00', NULL, NULL),
(6, 20, 3, 999999.99, 'Thanh toan GD: dfgdgdfgdf', '5hrJlIqq3ApNpWu', '00', '14002922', 'NCB', '2023-05-02 21:52:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) NOT NULL,
  `pdr_slug` varchar(255) NOT NULL,
  `pdr_email` varchar(100) NOT NULL,
  `pdr_phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(9, 'Sam Sung', 'sam-sung', 'samsung@gmail.com', '0359020898', '2021-04-17 03:34:52', NULL),
(10, 'Apple', 'apple', 'apple@gmail.com', '0928817228', '2021-04-17 03:35:41', NULL),
(11, 'OPPO', 'oppo', 'oppo@gmail.com', '096586232', '2021-04-17 03:36:08', NULL),
(13, 'Vsmart', 'vsmart', 'vsmart@gmail.com', '09655555555', '2021-04-17 03:36:50', NULL),
(14, 'Model No V1030', 'model-no-v1030', 'xiaomi@gmail.com', 'xiaomi@gmail.com', '2021-04-17 03:37:12', '2021-07-15 17:12:39'),
(15, '11143013', '11143013', 'asus@gmail.com', '091222222222', '2021-04-17 04:21:24', '2021-07-15 17:07:03'),
(16, 'E152134J', 'e152134j', 'dell@gmail.com', '0928814554', '2021-04-17 04:21:46', '2021-07-15 17:02:10'),
(22, 'Panasonic', 'panasonic', 'Panasonic@gmail.com', '0353771333', '2021-07-15 16:37:39', '2022-08-02 14:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(32, 'Mặt nhôm nguyên khối màu vàng – ED-AC', 'mat-nhom-nguyen-khoi-mau-vang-ed-ac', 155000, 0, 15, 0, 15, '2021-07-16__ed-03.jpg', 11, 0, 1, 6, NULL, '<p><strong>EDENKI DELUXE</strong></p>\r\n\r\n<p>Kế thừa n&eacute;t truyền thống trong thiết kế v&agrave; l&agrave;m nổi bật bằng chất liệu mặt viền sang trọng bằng nh&ocirc;m nguy&ecirc;n khối m&agrave;u v&agrave;ng, tạo điểm nhấn v&agrave; sự tinh tế, mới lạ cho kh&ocirc;ng gian nội thất.</p>\r\n\r\n<p>Aluminium champagne</p>\r\n\r\n<p>(Mặt nh&ocirc;m nguy&ecirc;n khối m&agrave;u v&agrave;ng champagne)</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i 20c&aacute;i/ hộp, 160 c&aacute;i/ th&ugrave;ng</p>\r\n\r\n<p><img src=\"/ckfinder/userfiles/images/image-20210716000959-1.jpeg\" style=\"height:100%; width:100%\" /></p>', 1, 5, 5, '2021-04-17 04:33:23', 5000, 15, '2021-09-01 18:42:06'),
(33, 'Ổ cắm điện 3 ổ 1 công tắc', 'o-cam-dien-3-o-1-cong-tac', 80000, 0, 29, 0, 30, '2021-07-16__z2558068542799-a7b0ea00f2b548ce2fdd4bfcb48ad76a.jpg', 4, 0, 1, 1, NULL, '<p><a href=\"https://www.sendo.vn/shop/gongniu-viet-nam/o-cam-dien-gongniu-da-nang-4-o-4-cong-tac-cong-suat-10a2502500w-trang-chinh-hang-28358368.html?context=shop_page\"><em>Ổ cắm điện</em></a>&nbsp;Gongniu đa năng 3 ổ 1 c&ocirc;ng tắc c&aacute;ch điện bền đẹp. L&agrave; ổ cắm điện cao cấp v&agrave; c&oacute; độ an to&agrave;n cao d&ugrave;ng cho c&aacute;c thiết bị điện gia dụng, điện tử sử dụng trong nh&agrave;, trong văn ph&ograve;ng, c&aacute;c thiết bị c&oacute; gi&aacute; trị,&hellip;</p>\r\n\r\n<p><em>Ổ cắm điện</em>&nbsp;Gongniu đ&atilde; đạt được độ an to&agrave;n tối đa cho người sử dụng với 4 cấp bảo hộ:</p>\r\n\r\n<p>&ndash; Ch&acirc;n tiếp x&uacute;c với ph&iacute;ch cắm được l&agrave;m bằng l&aacute; đồng nguy&ecirc;n chất</p>\r\n\r\n<p>&ndash; 5.000 lần cắm r&uacute;t kh&ocirc;ng bị lỏng</p>\r\n\r\n<p>&ndash; Tuổi thọ sử dụng tắt mở l&ecirc;n tới 10.000 lần</p>\r\n\r\n<p>&ndash; Chịu nhiệt, chống ch&aacute;y: 750&ordm;C</p>\r\n\r\n<p>&ndash; Thời gian bảo h&agrave;nh 3 năm (36 th&aacute;ng)</p>', 0, 0, 0, '2021-04-17 04:40:48', 2000, 14, '2021-07-15 17:12:53'),
(34, 'Mặt kính Cristal màu ngọc trai (Cristal Glass Golden) ED-CGG/ED-CGG-V', 'mat-kinh-cristal-mau-ngoc-trai-cristal-glass-golden-ed-cgged-cgg-v', 181000, 0, 16, 0, 0, '2021-07-16__ed-04.jpg', 1, 0, 1, 0, NULL, '<p>Edenki Deluxe&nbsp;</p>\r\n\r\n<p>Kế thừa n&eacute;t truyền thống trong thiết kế v&agrave; l&agrave;m nổi bật bằng những chất liệu mặt viền sang trọng như mặt k&iacute;nh Cristal m&agrave;u ngọc trai gi&uacute;p tạo điểm nhấn v&agrave; sự tinh tế, mới lạ cho kh&ocirc;ng gian nội thất.</p>\r\n\r\n<p>ED-CGG/ED-CGG-V</p>\r\n\r\n<p>Cristal Glass Golden</p>\r\n\r\n<p>Mặt k&iacute;nh Cristal m&agrave;u ngọc trai</p>\r\n\r\n<p>Ddosngs g&oacute;i 20 c&aacute;i/ hộp, 160 c&aacute;i/th&ugrave;ng.</p>\r\n\r\n<p><img src=\"/ckfinder/userfiles/images/image-20210716000838-1.jpeg\" style=\"height:937px; width:1320px\" /></p>', 0, 0, 0, '2021-04-17 04:43:14', 50, 15, '2021-07-15 17:09:14'),
(35, 'RJ45 Cat5e jack', 'rj45-cat5e-jack', 62000, 0, 16, 0, 0, '2021-07-16__ed-c501-480x480.jpg', 0, 0, 1, 0, NULL, '<p>Edenki Deluxe&nbsp;</p>\r\n\r\n<p>Kế thừa n&eacute;t truyền thống trong thiết kế v&agrave; l&agrave;m nổi bật bằng những chất liệu mặt viền sang trọng như mặt k&iacute;nh Cristal m&agrave;u ngọc trai gi&uacute;p tạo điểm nhấn v&agrave; sự tinh tế, mới lạ cho kh&ocirc;ng gian nội thất.</p>\r\n\r\n<p>ED-CGG/ED-CGG-V</p>\r\n\r\n<p>Cristal Glass Golden</p>\r\n\r\n<p>Mặt k&iacute;nh Cristal m&agrave;u ngọc trai</p>\r\n\r\n<p>Ddosngs g&oacute;i 20 c&aacute;i/ hộp, 160 c&aacute;i/th&ugrave;ng.</p>\r\n\r\n<p><img src=\"/ckfinder/userfiles/images/image-20210716000732-1.jpeg\" style=\"height:937px; width:1320px\" /><img src=\"/ckfinder/userfiles/images/image-20210716000732-2.jpeg\" style=\"height:1080px; width:1309px\" /><img src=\"/ckfinder/userfiles/images/image-20210716000732-3.jpeg\" style=\"height:960px; width:1280px\" /><img src=\"/ckfinder/userfiles/images/image-20210716000732-4.jpeg\" style=\"height:868px; width:1280px\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://vinafocus.com/mat-kinh-cristal-mau-ngoc-trai--cristal-glass-golden--ed-cgg-ed-cgg-v#Description\">Chi Tiết Sản Phẩm</a></p>\r\n	</li>\r\n</ul>', 0, 0, 0, '2021-04-17 04:54:18', 0, 15, '2021-07-15 17:08:09'),
(36, 'Đèn LED T8 Tube Thủy Tinh Opple', 'den-led-t8-tube-thuy-tinh-opple', 150000, 0, 21, 0, 20, '2021-07-16__u-tube-1.jpg', 2, 1, 1, 0, NULL, '<h2>Đ&egrave;n LED T8 Tube Thủy Tinh Opple</h2>\r\n\r\n<p>Lợi &iacute;ch:</p>\r\n\r\n<p>&ndash; &Aacute;nh s&aacute;ng m&ocirc;i trường xung quanh miễn ph&iacute;<br />\r\n&ndash; Tiết kiệm tới 60% năng lượng so với ống T8 truyền thống<br />\r\n&ndash; Tiết kiệm hơn 2 lần so với ống T8 th&ocirc;ng thường với hệ thống điện từ</p>\r\n\r\n<p>T&iacute;nh năng, đặc điểm:</p>\r\n\r\n<p>&ndash; Tr&igrave;nh điều khiển miễn ph&iacute; kh&ocirc;ng nhấp nh&aacute;y<br />\r\n&ndash; Tiết kiệm năng lượng<br />\r\n&ndash; Tuổi thọ, c&agrave;i đặt v&agrave; qu&ecirc;n l&acirc;u</p>', 0, 0, 0, '2021-04-17 04:57:04', 250, 16, '2021-07-15 17:05:16'),
(37, 'Đèn LED Nến Vỏ Vàng LED1 Opple', 'den-led-nen-vo-vang-led1-opple', 102000, 0, 21, 0, 10, '2021-07-16__led-utility1-candle-b-1.jpg', 0, 1, 1, 0, NULL, '<h2>Đ&egrave;n LED Nến Vỏ V&agrave;ng LED1 Opple</h2>\r\n\r\n<p>Lợi &iacute;ch:</p>\r\n\r\n<p>&ndash; L&yacute; tưởng để sử dụng trong đ&egrave;n ch&ugrave;m, tạo ra hiệu ứng lấp l&aacute;nh đẹp<br />\r\n&ndash; Dễ d&agrave;ng kết hợp m&agrave;u sắc v&acirc;n v&acirc;n<br />\r\n&ndash; Tiết kiệm tới 85% năng lượng so với nến s&aacute;ng</p>\r\n\r\n<p>T&iacute;nh năng, đặc điểm:</p>\r\n\r\n<p>&ndash; &Aacute;nh s&aacute;ng ph&aacute;t ra qua lăng k&iacute;nh lăng k&iacute;nh<br />\r\n&ndash; Lựa chọn m&agrave;u v&agrave;ng bạc<br />\r\n&ndash; Tiết kiệm năng lượng</p>', 0, 0, 0, '2021-04-17 04:58:18', 5000, 16, '2021-07-15 17:04:28'),
(38, 'Đèn LED bulb hiệu chỉnh Opple', 'den-led-bulb-hieu-chinh-opple', 60000, 0, 21, 0, 20, '2021-07-16__led-bulbs-b.jpg', 0, 1, 1, 0, NULL, '<h2>Đ&egrave;n LED bulb hiệu chỉnh Opple</h2>\r\n\r\n<p>Lợi &iacute;ch:</p>\r\n\r\n<p>&ndash; Kiểm so&aacute;t dễ d&agrave;ng bằng c&aacute;ch chuyển đổi v&agrave; kh&ocirc;ng cần bất kỳ ứng dụng hoặc điều khiển từ xa.<br />\r\n&ndash; C&oacute; tuổi thọ cao hơn 20 lần so với b&oacute;ng đ&egrave;n sợi đốt, l&ecirc;n đến 20 năm tuổi thọ<br />\r\n&ndash; Tiết kiệm 85% năng lượng so với b&oacute;ng đ&egrave;n sợi đốt, 40% so với b&oacute;ng đ&egrave;n CFL</p>\r\n\r\n<p>T&iacute;nh năng, đặc điểm:</p>\r\n\r\n<p>&ndash; Thay đổi CCT từ 6000K đến 3000K v&agrave; 4000K bằng c&aacute;ch bật / tắt?<br />\r\n&ndash; Tuổi thọ d&agrave;i, c&agrave;i đặt v&agrave; qu&ecirc;n<br />\r\n&ndash; Năng lượng điện tử</p>', 0, 0, 0, '2021-04-17 04:59:54', 500, 16, '2021-07-15 17:03:34'),
(39, 'Đèn LED Bulb EcoMax Bulb Dim Opple', 'den-led-bulb-ecomax-bulb-dim-opple', 48000, 0, 21, 0, 10, '2021-07-16__led-ecomax-bulb-dim-b-0-0.jpg', 2, 1, 1, 0, NULL, '<h2>Đ&egrave;n LED Bulb EcoMax Bulb Dim Opple</h2>\r\n\r\n<p>Lợi &iacute;ch:</p>\r\n\r\n<p>&ndash; Điều chỉnh cường độ &aacute;nh s&aacute;ng ph&ugrave; hợp với m&ocirc;i trường hoặc thời gian trong ng&agrave;y<br />\r\n&ndash; &Aacute;nh s&aacute;ng bạn cần<br />\r\n&ndash; Dễ d&agrave;ng trang bị lại c&aacute;c đồ đạc th&ocirc;ng thường với LED<br />\r\n&ndash; Tiết kiệm năng lượng tới 80% so với b&oacute;ng đ&egrave;n sợi đốt, 35% so với b&oacute;ng đ&egrave;n CFL</p>\r\n\r\n<p>T&iacute;nh năng, đặc điểm:</p>\r\n\r\n<p>&ndash; C&oacute; thể thay đổi độ s&aacute;ng từ 10-100%<br />\r\n&ndash; G&oacute;c &aacute;nh s&aacute;ng rộng tới 300 &deg;<br />\r\n&ndash;&nbsp;Chiều&nbsp;rộng wattages v&agrave; mũ<br />\r\n&ndash; Hiệu&nbsp;suất&nbsp;năng lượng</p>', 0, 0, 0, '2021-04-17 05:02:14', 0, 16, '2021-07-15 17:02:43'),
(40, 'Bộ công tắc đơn 2 chiều EC-201', 'bo-cong-tac-don-2-chieu-ec-201', 78000, 0, 15, 0, 10, '2021-07-15__ec-202.jpg', 3, 1, 1, 0, NULL, '<p>EDENKI CONCEPT&nbsp;</p>\r\n\r\n<p>D&ograve;ng sản phẩm với thiết kế trẻ trung, sắc cạnh, c&ugrave;ng với chất liệu nhựa PC cao cấp, tạo n&ecirc;n sản phẩm Edenki Concept đơn giản tinh tế. Sản phẩm được bảo h&agrave;nh 15 năm.</p>', 0, 0, 0, '2021-04-17 05:03:34', 10, 22, '2021-07-15 16:47:38'),
(41, 'Bộ công tắc đơn 20A-EC-120', 'bo-cong-tac-don-20a-ec-120', 166000, 0, 15, 0, 10, '2021-07-15__ec-120.jpg', 0, 0, 1, 0, NULL, '<p>-Thiết bị điện Edenki Hạt c&ocirc;ng tắc đơn 20A Edenki EC-120</p>\r\n\r\n<p>- Thiết kế của Đức</p>\r\n\r\n<p>- Đạt ti&ecirc;u chuẩn chất lượng ISO9001, CE, IEC</p>\r\n\r\n<p>- C&ocirc;ng nghệ, quy tr&igrave;nh sản xuất từ Nhật - Bảo H&agrave;nh 15 năm</p>\r\n\r\n<p>- Giao h&agrave;ng nhanh ch&oacute;ng</p>\r\n\r\n<p>- Chống ch&aacute;y, Ngăn r&ograve; rỉ điện, Kh&oacute;a trẻ em an to&agrave;n</p>', 0, 0, 0, '2021-04-17 05:05:43', 5100, 0, '2021-07-15 16:46:16'),
(42, 'Bộ công tắc dimmer 630KW - EC - D630', 'bo-cong-tac-dimmer-630kw-ec-d630', 29000, 0, 15, 0, 0, '2021-07-15__ec-d630.jpg', 1, 0, 1, 0, NULL, '<p>Master dimmer light 630W</p>\r\n\r\n<p>(Bộ c&ocirc;ng tắc dimmer 630W)</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i 6 c&aacute;i/ hộp, 60 c&aacute;i/ th&ugrave;ng</p>', 0, 0, 0, '2021-04-17 05:19:50', 500, 22, '2021-07-15 16:45:17'),
(43, 'Bộ công tắc trung gian đơn màu trắng - EC - 301', 'bo-cong-tac-trung-gian-don-mau-trang-ec-301', 132000, 0, 15, 0, 0, '2021-07-15__ec-301.jpg', 0, 0, 1, 0, NULL, '<p>💡Thiết kế của Đức</p>\r\n\r\n<p>💡C&ocirc;ng nghệ, quy tr&igrave;nh sản xuất từ Nhật</p>\r\n\r\n<p>💡Đạt ti&ecirc;u chuẩn chất lượng ISO9001, CE, IEC</p>\r\n\r\n<p>💡Bảo H&agrave;nh 15 năm</p>\r\n\r\n<p>💡Chống ch&aacute;y, Ngăn r&ograve; rỉ điện, Kh&oacute;a trẻ em an to&agrave;n</p>\r\n\r\n<p>💡Giao h&agrave;ng nhanh ch&oacute;ng</p>', 0, 0, 0, '2021-04-17 05:20:42', 500, 22, '2021-07-15 16:44:26'),
(44, 'Bộ cắm điện thoại đơn - EC -T01', 'bo-cam-dien-thoai-don-ec-t01', 103000, 0, 15, 0, 0, '2021-07-15__ec-t01.jpg', 2, 0, 1, 0, NULL, '<p>RJ11 phone jack</p>\r\n\r\n<p>(Bộ ổ cắm điện thoại đơn)</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i 8 c&aacute;i/ hộp, 80 c&aacute;i/ th&ugrave;ng</p>', 0, 0, 0, '2021-04-17 05:21:31', 500, 22, '2021-07-15 16:41:51'),
(45, 'Bộ công tắc ba 2 chiều - EC - 203', 'bo-cong-tac-ba-2-chieu-ec-203', 162000, 0, 15, 0, 0, '2021-07-15__ec-203.jpg', 2, 0, 1, 0, NULL, '<p>2-Way Switch 3 Module</p>\r\n\r\n<p>(Bộ c&ocirc;ng tắc ba 2 chiều)</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i 8 c&aacute;i/ hộp, 80 c&aacute;i/ th&ugrave;ng</p>', 0, 0, 0, '2021-04-17 05:22:20', 0, 22, '2021-07-15 16:40:37'),
(46, 'Bộ cắm mạng/tivi - EC - C5TV02', 'bo-cam-mangtivi-ec-c5tv02', 137000, 0, 15, 0, 0, '2021-07-15__ec-c5tv02.jpg', 2, 0, 1, 0, NULL, '<p>💡Thiết kế của Đức</p>\r\n\r\n<p>💡C&ocirc;ng nghệ, quy tr&igrave;nh sản xuất từ Nhật</p>\r\n\r\n<p>💡Đạt ti&ecirc;u chuẩn chất lượng ISO9001, CE, IEC</p>\r\n\r\n<p>💡Bảo H&agrave;nh 15 năm</p>\r\n\r\n<p>💡Chống ch&aacute;y, Ngăn r&ograve; rỉ điện, Kh&oacute;a trẻ em an to&agrave;n</p>\r\n\r\n<p>💡Giao h&agrave;ng nhanh ch&oacute;ng</p>', 0, 0, 0, '2021-04-17 05:23:37', 10, 22, '2021-07-15 16:39:44'),
(47, 'Bộ công tắc bốn 2 chiều - EC240', 'bo-cong-tac-bon-2-chieu-ec240', 177000, 0, 15, 0, 0, '2021-07-15__ec-204.jpg', 5, 0, 1, 0, NULL, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Muli\"><span style=\"color:#000000\">- Kiểu d&aacute;ng: h&igrave;nh vu&ocirc;ng</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- D&ograve;ng điện định mức: 16A</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- Điện &aacute;p định mức: 250VAC</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- Bộ 4 c&ocirc;ng tắc E, 2 chiều, cắm nhanh</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- M&agrave;u sắc: m&agrave;u trắng</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- Ti&ecirc;u chuẩn: JIS Japan</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- Bề mặt mượt m&agrave;</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- H&agrave;i ho&agrave; khi kết hợp với mọi kh&ocirc;ng gian</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\">- Mặt tiếp x&uacute;c lớn, kh&ocirc;ng viền gi&uacute;p người lớn tuổi dễ d&agrave;ng sử dụng.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><span style=\"font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:Muli\"><span style=\"color:#000000\">C&ocirc;ng tắc ổ cắm d&ograve;ng Mineva ng&agrave;y c&agrave;ng trở n&ecirc;n th&ocirc;ng d&ugrave;ng v&agrave; gần gũi hơn với người d&ugrave;ng Việt. Dễ d&agrave;ng bắt gặp c&aacute;c d&ograve;ng c&ocirc;ng tắc ổ cắm Mineva tại những căn hộ mới x&acirc;y hoặc đang được tr&ugrave;ng tu x&acirc;y mới.</span></span></span></span></span></span></span></p>', 1, 5, 5, '2021-04-17 05:25:13', 100, 22, '2021-07-15 16:37:55'),
(48, 'Đèn LED Downlight EcoMax Opple', 'den-led-downlight-ecomax-opple', 300000, 0, 22, 0, 0, '2021-07-16__led-slim-downlight-ecomax-247x296.jpg', 1, 0, 1, 0, NULL, '<ul>\r\n	<li>C&ocirc;ng suất : 18w</li>\r\n	<li>Quang th&ocirc;ng : 1200lm</li>\r\n	<li>Ho&agrave;n m&agrave;u : 80Ra</li>\r\n	<li>Lỗ Kho&eacute;t : 200mm</li>\r\n	<li>Nhiệt độ m&agrave;u : 3000k &ndash; 4000k &ndash; 6000k</li>\r\n</ul>', 0, 0, 0, '2021-07-16 13:24:28', 40, 22, '2021-07-16 13:29:14'),
(49, 'Đèn led downlight Utility 12W R150 OPPLE', 'den-led-downlight-utility-12w-r150-opple', 130000, 0, 22, 0, 0, '2021-07-16__.jpg', 2, 0, 1, 1, NULL, '<h3>Th&ocirc;ng số kĩ thuật :&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng suất : 12w</li>\r\n	<li>Quang th&ocirc;ng : 800lm</li>\r\n	<li>Ho&agrave;n m&agrave;u : 80Ra</li>\r\n	<li>Lỗ Kho&eacute;t : 160mm</li>\r\n	<li>Nhiệt độ m&agrave;u : 3000k &ndash; 4000k &ndash; 6000k</li>\r\n</ul>', 0, 0, 0, '2021-07-16 13:25:56', 30, 22, '2021-07-16 13:29:03'),
(50, 'Máy lạnh Panasonic 1.5 HP CU/CS-N12WKH-8M', 'may-lanh-panasonic-15-hp-cucs-n12wkh-8m', 11590000, 0, 22, 0, 5, '2022-08-02__10045217-may-lanh-panasonic-1-5-hp-cu-cs-n12wkh-8m.jpg', 9, 0, 1, 4, '<ul>\r\n	<li>C&ocirc;ng nghệ lọc nanoe-G loại bỏ bụi nhỏ như PM2.5 hiệu quả</li>\r\n	<li>Chế độ Powerful cho khả năng l&agrave;m lạnh nhanh ngay tức th&igrave;</li>\r\n	<li>Chức năng h&uacute;t ẩm tạo kh&ocirc;ng gian kh&ocirc; r&aacute;o cho căn ph&ograve;ng</li>\r\n	<li>M&ocirc;i chất lạnh R-32 th&acirc;n thiện m&ocirc;i trường, bảo vệ sức khỏe</li>\r\n	<li>Hẹn giờ bật tắt tự động gi&uacute;p kiểm so&aacute;t thời gian tiện lợi</li>\r\n</ul>', '<h3>Thiết kế hiện đại, sang trọng</h3>\r\n\r\n<p><strong><a href=\"https://www.nguyenkim.com/may-lanh-panasonic/\">M&aacute;y lạnh Panasonic</a>&nbsp;1.5 HP CU/CS-N12WKH-8M</strong>&nbsp;c&oacute; thiết kế đơn giản, t&ocirc;ng m&agrave;u trắng hiện đại với c&aacute;c đường bo cong mềm mại&nbsp;mang đến vẻ sang trọng cho kh&ocirc;ng gian nội thất gia đ&igrave;nh bạn. M&aacute;y c&oacute;&nbsp;<a href=\"https://www.nguyenkim.com/may-lanh/?utm_term=%C4%91i%E1%BB%81u+h%C3%B2a+gi%C3%A1+r%E1%BA%BB&amp;utm_content=19509594&amp;features_hash=70-5976\">c&ocirc;ng suất l&agrave;m m&aacute;t 1.5 HP</a>, ph&ugrave; hợp cho c&aacute;c ph&ograve;ng c&oacute; diện t&iacute;ch từ 15 - 20m2 như ph&ograve;ng ngủ, ph&ograve;ng studio nhỏ.</p>\r\n\r\n<p><img alt=\"Thiết kế hiện đại\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/dien-lanh/tu-lanh/Panasonic/may-lanh-panasonic-1.5-hp-cu-cs-n12wkh-8m-thiet-ke-hien-dai-sang-trong.png\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<h3>C&ocirc;ng nghệ Nanoe-G lọc sạch bụi</h3>\r\n\r\n<p>Panasonic trang bị cho chiếc&nbsp;<a href=\"https://www.nguyenkim.com/may-lanh/\">m&aacute;y lạnh</a>&nbsp;c&ocirc;ng nghệ Nanoe-G gi&uacute;p lọc sạch bụi bẩn, mang đến bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh. Nanoe-G giải ph&oacute;ng c&aacute;c hạt ion &acirc;m gi&uacute;p gắn kết c&aacute;c hạt bụi trong kh&ocirc;ng kh&iacute; v&agrave;o ống nạp kh&iacute; của m&aacute;y lạnh. Tại đ&oacute; mang lọc mang điện t&iacute;ch dương sẽ giữ những hạt bụi điện t&iacute;ch &acirc;m n&agrave;y lại v&agrave; v&ocirc; hiệu ho&aacute;, kể cả hạt bụi mịn nhỏ PM2.5, trả lại kh&ocirc;ng gian sạch sẽ, bảo đảm an to&agrave;n cho sức khoẻ gia đ&igrave;nh bạn.</p>\r\n\r\n<p><img alt=\"Công nghệ nanoe-G\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Tin_tuc/Thuy/4311628_Cover_2048x1267.jpg\" style=\"height:100%; width:100%\" /></p>', 1, 1, 1, '2021-07-16 13:26:57', 500, 22, '2022-08-02 14:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(67, 29, 16),
(68, 30, 17),
(71, 34, 18),
(72, 36, 10),
(73, 37, 14),
(74, 38, 10),
(77, 40, 10),
(80, 41, 10),
(81, 39, 10),
(84, 33, 16),
(85, 32, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) DEFAULT NULL,
  `pi_slug` varchar(255) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(4, 4, 47, 5, 0, 'sản phẩm tốt', '2021-04-17 09:54:19', '2021-04-17 09:54:19'),
(5, 6, 32, 5, 0, 'ok', '2021-07-16 13:37:03', '2021-07-16 13:37:03'),
(6, 9, 50, 1, 0, 'Sản phẩm tuyệt vời', '2021-08-03 18:06:05', '2021-08-03 18:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_link` varchar(255) DEFAULT NULL,
  `sd_image` varchar(255) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(7, 'slide 1', '/', '2021-07-16__slide2.jpg', 1, 1, 4, '2021-07-16 16:57:53', '2021-07-16 16:57:53'),
(8, 'slide 2', '/', '2021-07-16__slide1.jpg', 1, 1, 1, '2021-07-16 16:58:37', '2021-07-16 16:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_slug` varchar(255) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn chi tiết mua hàng', NULL, 3, NULL, '<p>dsfsdfdsf</p>', '2021-08-02 12:53:35', NULL),
(3, 'Giới thiệu', NULL, 4, NULL, '<p>Giới thiệu</p>', '2021-09-01 09:36:46', NULL),
(4, 'Dịch vụ tư vấn thiết kế', NULL, 5, NULL, '<pre>\r\nDịch vụ tư vấn thiết kế</pre>', '2021-09-05 03:39:20', NULL),
(5, 'Dịch vụ thi công nội thất', NULL, 6, NULL, '<pre>\r\nDịch vụ thi c&ocirc;ng nội thất</pre>', '2021-09-05 03:39:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) DEFAULT NULL,
  `tst_email` varchar(255) DEFAULT NULL,
  `tst_phone` varchar(255) DEFAULT NULL,
  `tst_address` varchar(255) DEFAULT NULL,
  `tst_note` varchar(255) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tst_code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`, `tst_code`) VALUES
(17, 10, 11010500, 'Nguyên Văn Dung', 'nguyenvandung123@gmail.com', '12345678', 'Hà nội', NULL, 3, 1, '2022-08-02 14:40:43', '2023-02-17 13:28:38', '9Xc8ijNuyWvVTaW'),
(18, 11, 56000, 'Truong Vi Kiet', 'vikiet1456@gmail.com', '0905448732', '05 Võ Đình Tú', NULL, 2, 1, '2023-02-17 13:31:00', '2023-02-17 13:55:00', 'Sksm2pcXbnIKqNV'),
(19, 11, 182000, 'Truong Vi Kiet', 'vikiet1456@gmail.com', '0905448732', '05 Võ Đình Tú', NULL, 3, 1, '2023-02-17 13:40:51', '2023-04-29 14:12:47', NULL),
(20, 3, 11010500, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0359020898', 'Hà Nội', 'ádadasdasd', 3, 1, '2023-05-02 14:52:02', '2023-05-07 07:59:48', NULL),
(21, 3, 131750, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0359020898', 'abcxyz', NULL, 3, 1, '2023-05-07 07:47:54', '2023-05-07 07:59:41', 'TktmUpg52742cWK');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `t_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$TUYvS7G1h5zFAGXIEOznG.ceqFsbEUVgTteENFGW.bv7/Byt93QvS', '0359020898', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-14T15:30:08.955931Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"91.0.4472.124\",\"time\":\"2021-07-12T15:37:14.612766Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.159\",\"time\":\"2021-09-01T18:32:33.812472Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"109.0.0.0\",\"time\":\"2023-02-15T15:50:50.716301Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-02T14:42:43.506546Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-06T10:00:08.049675Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-06T10:00:50.111788Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-07T07:47:40.017456Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-07T17:48:01.566891Z\"}]', 0, NULL, NULL, NULL, '2021-04-14 15:29:39', NULL),
(4, 'Nguyễn Văn B', 'nguyenvanb@gmail.com', NULL, '$2y$10$ZzJK8NR5UKGGgHmI5LKhFuRigDKENjflIIIsuCoPKATK9B1UUbQgq', '0928817228', NULL, 0, NULL, NULL, NULL, '2021-04-17 09:53:20', NULL),
(11, 'Truong Vi Kiet', 'vikiet1456@gmail.com', NULL, '$2y$10$BNyrjwqPpKKoRMw8KhtfpOA0Yps9CoEVqynzOzcI7vwiqyO9rAzJi', '0905448732', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-03T16:58:21.071189Z\"}]', 0, '05 Võ Đình Tú', NULL, NULL, '2023-02-17 13:26:41', NULL),
(12, 'Tran Van Nhan', 'vannhan@gmail.com', NULL, '$2y$10$YcN0uTwt.GrfgALHO2R13.gElJql6Rb/vvsdHd/55DLDbTJbjP5Su', '0906552346', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-03T12:28:12.599036Z\"}]', 0, 'acb', '2023-05-03__takeda-shu2.jpg', NULL, '2023-05-03 12:25:34', '2023-05-03 12:25:59'),
(13, 'Tran Kiet', 'kiettv1108@gmail.com', NULL, '$2y$10$q/o4kS4ozjhU0o75o.sF6eOrFVWgrs1aeSoTMj96WbCw3LczESyJi', '0822312344', NULL, 0, NULL, NULL, NULL, '2023-05-03 12:38:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(5, 32, 6),
(4, 47, 4),
(6, 50, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
