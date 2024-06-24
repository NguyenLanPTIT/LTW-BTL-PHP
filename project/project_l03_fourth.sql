-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2024 lúc 06:27 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_l03_fourth`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Tên hãng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'CÀ PHÊ'),
(2, 'TRÀ SỮA'),
(3, 'NƯỚC ÉP'),
(4, 'TRÀ'),
(5, 'BÁNH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(3) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cà Phê', 'ca-phe-muoi.jpg', '', 1, '2024-08-02 14:05:46', '2024-08-07 00:09:18'),
(2, 'Các loại nước khác', 'menu do uong chung 1.jpg', '', 1, '2024-08-03 09:59:06', '2024-08-07 00:09:28'),
(3, 'Bánh ngọt', 'banh-ngot-1.jpg', '', 1, '2024-08-05 18:47:26', '2024-08-12 12:43:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `address`, `phone_number`, `email`) VALUES
(3, 'Nguyễn Thành Trung', 'Thường Tín', '0968824797', 'darkprince411999@gmail.com'),
(4, 'BTP', 'Hải Phòng', '0987654321', 'darkprince411999@gmail.com'),
(7, 'Thành Trung', 'Hà Đông', '0968824797', 'darkprince411999@gmail.com'),
(8, 'Thành Trung', 'Hà Đông', '0968824797', 'darkprince411999@gmail.com'),
(9, 'Nguyễn Thành Trung', 'Hà Đông, Hà Nội', '0968824797', 'darkprince411999@gmail.com'),
(10, 'Thành Trung', '134 Đa Sỹ, Hà Đông, Hà Nội', '0968824797', 'darkprince411999@gmail.com'),
(11, 'Bùi Thu Phương', 'Hải Phòng', '0344139959', 'darkprince411999@gmail.com'),
(12, 'NTTrung', '134 Đa Sỹ, Hà Đông, Hà Nội', '0968824797', 'darkprince411999@gmail.com'),
(13, 'Ng Thành Trung', 'Thường Tín', '0968824797', 'darkprince411999@gmail.com'),
(14, 'Ng Thành Trung', 'Thường Tín', '0968824797', 'darkprince411999@gmail.com'),
(15, 'Ng Thành Trung', 'Thường Tín', '0968824797', 'darkprince411999@gmail.com'),
(16, 'Ng Thành Trung', 'Hà Đông, Hà Nội', '0968824797', 'darkprince411999@gmail.com'),
(17, 'Trung', '134 Đa Sỹ, Hà Đông, Hà Nội', '0968824797', 'darkprince411999@gmail.com'),
(18, 'Ng Thành Trung', 'Hà Đông', '0968824797', 'darkprince411999@gmail.com'),
(19, 'Trung Thành Nguyễn', 'Nguyễn Trãi, Thường Tín', '0968824797', 'darkprince411999@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `jobs` varchar(255) DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT 1,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `managers`
--

INSERT INTO `managers` (`id`, `username`, `password`, `fullname`, `avatar`, `jobs`, `level`, `phone_number`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', 'admin', NULL, 'admin', 3, '0963113613', 'admin', 'admin99887766@gmail.com', '2024-08-02 07:45:30', NULL),
(2, 'lan123', '12345', 'Nguyễn Thị Lan',NULL, 'Web Dev', 1, '0968824797', 'Thường Tín', 'darkprince411999@gmail.com', '2024-08-06 04:28:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `fullname`, `avatar`, `phone_number`, `address`, `email`, `created_at`, `updated_at`) VALUES
(3, 'buithuphuong', '12345', 'Bùi Thu Phương', NULL, '0987654321', 'Hải Phòng', '', '2024-08-06 09:28:10', NULL),
(4, 'customer', '12345', 'abc', NULL, '0968824797', 'Thường Tín', 'darkprince411999@gmail.com', '2024-08-15 17:25:54', NULL),
(5, 'trung', 'abcde', 'Trung', NULL, '0968824797', '', 'abc@gmail.com', '2024-08-15 17:33:12', NULL),
(6, 'thanhtrung1999', 'abcde', 'Thành Trung', NULL, '0968824797', '', 'abc@gmail.com', '2024-08-15 17:34:24', NULL),
(7, 'thanhtrung', '112233', 'Trung Thành Nguyễn', NULL, '0968824797', '134 Đa Sỹ, Hà Đông, Hà Nội', 'darkprince411999@gmail.com', '2024-08-16 01:17:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'Id của khách hàng(ko phải là thành viên của shop), là khóa ngoại liên kết với bảng customers',
  `member_id` int(11) DEFAULT NULL COMMENT 'Id của thành viên đã đăng ký tài khoản, là khóa khoại liên kết đến bảng members',
  `price_total` int(11) NOT NULL COMMENT 'Tổng giá trị đơn hàng',
  `order_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Trạng thái đơn hàng: 0-Chưa xử lý, 1-Đã xứ lý',
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú thêm của khách hàng',
  `payment_methods` varchar(255) NOT NULL DEFAULT 'cod',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `member_id`, `price_total`, `order_status`, `note`, `payment_methods`, `created_at`, `updated_at`) VALUES
(4, 4, NULL, 94000, 1, '', 'cod', '2024-08-11 14:58:20', '2024-08-15 01:03:43'),
(7, 7, NULL, 525600, 0, '134 Đa Sỹ, phường Kiến Hưng, Hà Đông, Hà Nội\r\nNhận hàng từ 10h sáng - 5h chiều', 'cod', '2024-08-11 16:22:48', NULL),
(8, 8, NULL, 409700, 1, '', 'cod', '2024-08-11 17:35:33', '2024-08-15 01:02:41'),
(9, 9, NULL, 203350, 0, '', 'cod', '2024-08-11 18:16:26', NULL),
(10, 10, NULL, 116730, 0, '', 'cod', '2024-08-11 18:26:22', NULL),
(11, 11, NULL, 124880, 0, '', 'cod', '2024-08-11 18:38:25', NULL),
(12, 12, NULL, 46970, 0, '', 'cod', '2024-08-12 05:28:11', NULL),
(13, 13, NULL, 0, 0, '', 'cod', '2024-08-14 08:03:00', NULL),
(14, 14, NULL, 0, 0, '', 'cod', '2024-08-14 08:19:09', NULL),
(15, 15, NULL, 0, 0, '', 'cod', '2024-08-14 08:28:02', NULL),
(16, 16, NULL, 544800, 0, '', 'cod', '2024-08-15 06:49:25', NULL),
(17, 17, NULL, 302000, 0, 'Giao hàng nhanh nhất có thể', 'cod', '2024-08-15 06:56:04', NULL),
(18, 18, NULL, 557000, 0, '', 'cod', '2024-08-15 17:21:50', NULL),
(19, 19, NULL, 203800, 0, 'nhận hàng vào 4h chiều', 'cod', '2024-08-15 19:14:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `order_id` int(11) DEFAULT NULL COMMENT 'Khóa ngoại liên kết với bảng orders',
  `product_id` int(11) DEFAULT NULL COMMENT 'Khóa ngoại liên kết với bảng products, là những sản phẩm khách hàng đặt',
  `variant_value_id` int(11) DEFAULT NULL COMMENT 'Khóa ngoại liên kết với bảng variants_value, là những tùy chọn của khách hàng khi đặt hàng (gồm color và size)',
  `amount` int(11) DEFAULT NULL COMMENT 'Số lượng sản phẩm khách hàng đặt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`order_id`, `product_id`, `variant_value_id`, `amount`) VALUES
(4, 40, 2, 1),
(4, 10, 18, 1),
(4, 19, 18, 1),
(4, 18, 2, 2),
(4, 10, 12, 1),
(4, 66, 12, 1),
(4, 55, 12, 1),
(7, 30, 2, 1),
(7, 17, 2, 1),
(7, 31, 18, 2),
(8, 12, 1, 1),
(8, 23, 4, 2),
(9, 13, 14, 1),
(9, 15, 12, 2),
(9, 16, 2, 1),
(9, 16, 18, 1),
(9, 58, 2, 1),
(9, 65, 2, 1),
(9, 12, 1, 1),
(10, 15, 12, 2),
(10, 65, 2, 1),
(10, 56, 2, 1),
(10, 13, 2, 2),
(10, 16, 18, 2),
(11, 13, 14, 1),
(11, 39, 2, 2),
(11, 42, 2, 1),
(11, 12, 11, 1),
(12, 35, 12, 1),
(12, 33, 12, 1),
(12, 14, 2, 1),
(16, 46, 2, 1),
(16, 38, 2, 2),
(16, 63, 1, 1),
(16, 19, 18, 1),
(17, 22, 2, 1),
(17, 11, 2, 2),
(17, 53, 2, 1),
(18, 30, 2, 1),
(18, 33, 12, 2),
(19, 2, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT 'Id của danh mục mà sản phẩm thuộc về, là khóa ngoại liên kết với bảng categories	',
  `brand_id` int(11) NOT NULL COMMENT 'Id của hãng mà sản phẩm thuộc về, là khóa ngoại liên kết với bảng brands',
  `name` varchar(255) NOT NULL COMMENT 'Tên sản phẩm	',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'Tên file ảnh sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'Giá sản phẩm',
  `sell_number` int(11) DEFAULT NULL COMMENT 'Số lượng sp đã bán',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Mô tả ngắn cho sản phẩm',
  `description` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho sản phẩm	',
  `status` tinyint(4) DEFAULT NULL COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `avatar`, `price`,`sell_number`, `summary`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'CÀ PHÊ CAPUCHINO', 'CAPPUCINO.jpg', 59000,6, '', '<p><strong>Size : S M L</strong></p><p>Ly c&agrave; ph&ecirc; sữa đậm đ&agrave; thời thượng! Một ch&uacute;t đậm đ&agrave;&nbsp;hơn&nbsp;so với Latte, Cappuccino&nbsp;của ch&uacute;ng t&ocirc;i bắt đầu với&nbsp;c&agrave; ph&ecirc; espresso, sau đ&oacute; th&ecirc;m một lượng tương đương giữa sữa tươi v&agrave; bọt sữa cho thật hấp dẫn. Bạn c&oacute; thể t&ugrave;y th&iacute;ch lựa chọn uống n&oacute;ng hoặc d&ugrave;ng chung với đ&aacute;.</p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p>', 1, '2024-08-02 14:11:36', '2024-08-02 22:29:58'),
(2, 1, 1, 'CÀ PHÊ MOCHA MACCHIATO ', 'MOCHA MACCHIAT.jpg', 690000,14, '', '<p><strong>Loại:&nbsp;</strong>Cà phê</p><p><strong>Size:&nbsp;</strong>S&nbsp;M&nbsp;L</p><p>Một thức uống yêu thích được kết hợp bởi giữa sốt sô cô la ngọt ngào, sữa tươi và đặc biệt là cà phê espresso đậm đà mang thương hiệu Highlands Coffee. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.</p>', 1, '2024-08-02 14:17:55', '2024-08-02 22:30:15'),
(3, 1, 1, 'CÀ PHÊ SỮA ', '14801.jpg"', 39000,4, '', '<p><strong>Size: S M L</strong></p><p>C&agrave; ph&ecirc; sữa&nbsp;của Việt Nam được pha chế từ hạt c&agrave; ph&ecirc; rang xay th&ocirc; sau đ&oacute; được pha chế v&agrave;o một chiếc t&aacute;ch c&oacute; sữa đặc dưới đ&aacute;y. Sự kết hợp giữa c&agrave; ph&ecirc; v&agrave; sữa l&agrave;m cho m&oacute;n c&agrave; ph&ecirc; sữa c&oacute; vị ngọt ng&agrave;o từ sữa nhưng vẫn giữ được m&ugrave;i thơm v&agrave; vị đắng đặc trưng của c&agrave; ph&ecirc;.</p>', 1, '2024-08-02 14:20:16', '2024-08-03 16:42:29'),
(4, 1, 1, 'CÀ PHÊ BẠC XỈU', 'bac-xiu-da.jpg', 390000,4, '', '<p><strong>Size: S M L</strong></p><p>Bạc xỉu&nbsp;xuất ph&aacute;t từ t&ecirc;n gọi &ldquo;bạc tẩy xỉu ph&eacute;&rdquo; (bạc &ndash; m&agrave;u trắng, tẩy &ndash; ly kh&ocirc;ng, xỉu &ndash; một ch&uacute;t, ph&eacute; &ndash; c&agrave; ph&ecirc;) trong tiếng Quan Thoại của cộng đồng người Hoa chiếm một phần lớn d&acirc;n số S&agrave;i G&ograve;n. Hiểu một c&aacute;ch đơn giản&nbsp;bạc xỉu&nbsp;ch&iacute;nh l&agrave; sữa n&oacute;ng th&ecirc;m ch&uacute;t c&agrave; ph&ecirc;.</p>', 1, '2024-08-02 14:25:40', '2024-08-02 22:32:56'),
(5, 1, 1, 'CÀ PHÊ BẠC XỈU ĐÁ', 'bac-xiu-da.jpg', 28900,4, '', '<p><strong>Size: S M L</strong></p><p>Nếu Phin Sữa Đ&aacute; d&agrave;nh cho c&aacute;c bạn đam m&ecirc; vị đậm đ&agrave;, th&igrave; Bạc Xỉu Đ&aacute; l&agrave; một sự lựa chọn nhẹ &ldquo;đ&ocirc;&quot; c&agrave; ph&ecirc; nhưng vẫn thơm ngon, chất lừ kh&ocirc;ng k&eacute;m!</p>', 1, '2024-08-02 14:27:42', '2024-08-02 22:32:31'),
(6, 1, 1, 'CÀ PHÊ NÂU TRUFLE', 'Phe-Nau-Truffle.png', 590000,4, '', '<p><strong>Size: S M L</strong></p><p>Vị chua nhẹ tự nhi&ecirc;n của hạt Arabica Cầu Đất kết hợp c&ugrave;ng Robusta Gia Lai được tuyển chọn kỹ lưỡng, ho&agrave; quyện th&ecirc;m Nấm Truffle Đen qu&yacute; hiếm, đem đến hương vị đậm mượt v&agrave; độc đ&aacute;o.</p>', 1, '2024-08-02 14:29:21', '2024-08-02 22:33:57'),
(7, 1, 1, 'CÀ PHÊ MACCHIATO', 'macchiato.jpg', 37900,24, '', '', 1, '2024-08-02 14:31:12', '2024-08-02 22:34:12'),
(8, 1, 1, 'CÀ PHÊ LATTE', 'Cafe-latte.jpg', 690000,4, '', '<p><strong>Size: S M L</strong></p><p>Ly c&agrave; ph&ecirc; sữa ngọt ng&agrave;o đến kh&oacute; qu&ecirc;n!&nbsp;Với một ch&uacute;t nhẹ nh&agrave;ng hơn&nbsp;so với&nbsp;Cappuccino, Latte của ch&uacute;ng t&ocirc;i bắt đầu với&nbsp;c&agrave; ph&ecirc; espresso, sau đ&oacute; th&ecirc;m sữa tươi v&agrave; bọt sữa một c&aacute;ch đầy&nbsp;nghệ thuật. Bạn c&oacute; thể t&ugrave;y th&iacute;ch lựa chọn uống n&oacute;ng hoặc d&ugrave;ng chung với đ&aacute;.</p>', 1, '2024-08-02 14:32:30', '2024-08-15 15:08:47'),
(9, 1, 1, 'CÀ PHÊ NÓNG ', 'ca-phe_110730424.jpg', 99000,4, '', '<p><strong>Size: S M L</strong></p><p>C&agrave; ph&ecirc; được pha phin truyền thống kết hợp với sữa đặc tạo n&ecirc;n hương vị đậm đ&agrave;, h&agrave;i h&ograve;a giữa vị ngọt đầu lưỡi v&agrave; vị đắng thanh tho&aacute;t nơi hậu vị.</p>', 1, '2024-08-02 14:36:50', '2024-08-15 17:41:40'),
(10, 1, 1, 'CÀ PHÊ MATCHA LATTE', 'MATCHA-LATTE.jpg', 43000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><p><strong>&nbsp;Matcha Latte</strong>&nbsp;l&agrave; một trải nghiệm ho&agrave;n to&agrave;n th&uacute; vị kh&aacute;c. Với niềm y&ecirc;u mến đặc biệt với những hạt c&agrave; ph&ecirc; chất lượng, ch&uacute;ng t&ocirc;i đem loại hạt được thu h&aacute;i từ sơn nguy&ecirc;n Cầu Đất bổ sung v&agrave;o ly Matcha Latte, để tạo ra&nbsp;<strong>Coffee Matcha Latte</strong>&nbsp;d&agrave;nh ri&ecirc;ng cho c&aacute;c coffee lover (t&iacute;n đồ c&agrave; ph&ecirc;) tại Nh&agrave;. Với 3 tầng nguy&ecirc;n liệu gồm: sữa tươi n&oacute;ng, matcha, c&agrave; ph&ecirc;, vị gi&aacute;c của bạn sẽ được đ&aacute;nh thức từ c&aacute;i nhấp m&ocirc;i đầu ti&ecirc;n.</p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p><div class="ddict_btn" style="top: 58px; left: 60.4531px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-02 14:39:55', '2024-08-02 22:35:34'),
(11, 1, 1, 'CÀ PHÊ MUỐI', 'ca-phe-muoi.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><p>C&agrave; ph&ecirc; muối (salt coffee)&nbsp;<strong>l&agrave; một loại thức uống được l&agrave;m từ những nguy&ecirc;n liệu v&agrave; gia vị cơ bản như c&agrave; ph&ecirc;, sữa đặc, sữa tươi l&ecirc;n men v&agrave; muối tinh</strong></p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p>', 1, '2024-08-02 14:43:04', '2024-08-02 22:35:58'),
(12, 1, 1, 'CÀ PHÊ PHINDI CHOCO', 'PHINDI_CHOCO.jpg', 590000,4, '', '<p><strong>Size: S M L</strong></p><p>PhinDi Choco - C&agrave; ph&ecirc; Phin thế hệ&nbsp;mới với chất Phin &ecirc;m hơn, kết hợp c&ugrave;ng Choco ngọt tan mang đến hương vị mới lạ, kh&ocirc;ng thể hấp dẫn hơn!</p>', 1, '2024-08-02 14:45:03', '2024-08-02 22:36:18'),
(13, 1, 1, 'CÀ PHÊ NÂU LẮC', 'cach-pha-ca-phe-nau-lac-1.jpg', 39000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><p>Đ&acirc;y l&agrave; một thức uống độc đ&aacute;o kết hợp giữa c&agrave; ph&ecirc; v&agrave; sữa đặc. Nếu c&aacute;c bạn đang muốn trải nghiệm hương vị n&acirc;u lắc h&atilde;y theo d&otilde;i b&agrave;i viết sau.&nbsp;<strong><a href="https://simexcodl.com.vn/">Simexcodl</a>&nbsp;</strong>sẽ hướng dẫn chi tiết&nbsp;<em><strong><a href="https://simexcodl.com.vn/cach-pha-ca-phe-nau-lac/">c&aacute;ch pha c&agrave; ph&ecirc; n&acirc;u lắc</a></strong></em>&nbsp;chuẩn vị nhất.</p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p>', 1, '2024-08-02 14:47:03', '2024-08-02 22:36:35'),
(14, 1, 1, 'CÀ PHÊ NÂU ĐÁ', 'ca-phe-nau-da.jpg', 89000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p>', 1, '2024-08-02 14:49:16', '2024-08-02 22:36:59'),
(15, 1, 1, 'CÀ PHÊ LAN NÓNG ', 'Phe-Lan-Nong-scaled.jpg', 90000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><p><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></p>', 1, '2024-08-02 14:51:17', '2024-08-02 22:37:18'),
(16, 2, 3, 'NƯỚC ÉP CAM', '14265.jpg', 39000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:21:04', NULL),
(17, 2, 3, 'NƯỚC ÉP DỨA', '20230420_Nuoc-ep-dua-co-chua-nhieu-vitamin-va-khoang-chat-.jpg', 90000,5, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:22:21', '2024-08-06 02:33:20'),
(18, 2, 3, 'NƯỚC ÉP VIỆT QUẤT', 'viet-quat(1).jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:23:38', '2024-08-03 16:49:09'),
(19, 2, 3, 'NƯỚC ÉP TÁO', 'cach-lam-nuoc-ep-oi-thom-ngon-de-uong-201910300940367150.jpg', 39000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:24:49', NULL),
(20, 2, 3, 'NƯỚC ÉP ỔI', 'cong-thuc-nuoc-ep-oi-hong-1.jpg', 37000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:26:53', NULL),
(21, 2, 3, 'NƯỚC ÉP TRÁI CÂY', 'cong-thuc-pha-che-tra-trai-cay-e1624470423234.jpg', 49000,7, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:31:43', NULL),
(22, 2, 3, 'NƯỚC ÉP CÓC', 'nuoc-ep-coc.jpg', 39000,3, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:35:42', '2024-08-03 16:50:32'),
(23, 2, 3, 'NƯỚC ÉP DƯA HẤU', 'Hình-App_3006021-Ép-Dưa-Hấu.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:38:11', '2024-08-03 16:54:15'),
(24, 2, 3, 'NƯỚC ÉP CẦN TÂY', 'Hub-de-tana-coffee-nuoc-ep-can-tay-tao-xanh.jpg', 36000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:39:53', '2024-08-07 23:54:25'),
(25, 2, 3, 'NƯỚC ÉP CÀ RỐT', 'nuoc-ep-ca-rot-giam-can-tai-nha.jpg', 59000,4, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:41:46', NULL),
(26, 2, 3, 'NƯỚC ÉP LỰU', 'nuoc-ep-luu-co-tac-dung-gi-320231003164302.jpg', 35000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:44:54', '2024-08-03 16:55:17'),
(27, 2, 3, 'NƯỚC ÉP NHO', 'nuoc-ep-nho-xanh-thumbnail.jpg', 35000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:46:56', NULL),
(28, 2, 3, 'NƯỚC ÉP DƯA LEO', 'nuoc-ep-dua-leo-giup-lam-dep-da.jpg', 42900,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:48:00', '2024-08-03 16:55:58'),
(29, 2, 3, 'NƯỚC ÉP TÁO THƠM HẠT CHIA', 'nuoc-ep-tao-thom-hat-chia.jpg', 59000,8, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:49:05', NULL),
(30, 2, 4, 'TRÀ HOA QUẢ', '1-3.jpg', 295900,20, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 08:50:05', NULL),
(31, 2, 4, 'TRÀ ĐÀO CAM XẢ', 'tra-dao-cam-xa.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:51:22', '2024-08-03 16:56:59'),
(32, 2, 4, 'TRÀ ĐÀO', 'tra-dao', 39000,4, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:52:27', NULL),
(33, 2, 4, 'TRÀ Ô LONG', 'TRÀ-Ô-LONG.jpg', 49000,7, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:53:40', NULL),
(34, 2, 4, 'TRÀ VẢI', 'TRÀ-VẢI.jpg', 39000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:55:04', NULL),
(35, 2, 4, 'TRÀ HOA QUẢ NHIỆT ĐỚI', 'CACH-LAM-TRA-HOA-QUA-NHIET-DOI-DON-GIAN-TAI-NHA.jpg', 59000,13, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:56:31', NULL),
(36, 2, 4, 'TRÀ HỒNG TRÀ', 'hong-tra-la-gi.jpg', 49000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:57:30', NULL),
(37, 2, 4, 'TRÀ HỒNG TRÀ SỮA', 'hong-tra-la-gi.jpg', 39000,1, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:58:51', NULL),
(38, 2, 4, 'TRÀ HOA CÚC', 'tra-hoa-cuc-238.jpg', 89000,4, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 08:59:40', NULL),
(39, 2, 4, 'TRÀ XƯA', 'tra-ngon.jpg', 89000,4, '', ' <p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:00:46', NULL),
(40, 2, 4, 'TRÀ XANH TƯƠI', 'uong-tra-xanh-moi-ngay-co-tot-khong-665x400-8524.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 09:02:04', NULL),
(41, 2, 2, 'TRA SỮA HOA NHÀI', 'TRA-SUA.jpg', 79000,25, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 09:03:14', NULL),
(42, 2, 2, 'TRÀ SỮA CHÂN CHÂU ĐƯỜNG ĐEN', 'hinh-anh-tra-sua-tran-chau-duong-den.jpg', 59000,5, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 09:04:28', NULL),
(43, 2, 2, 'TRÀ SỮA Ô LONG ĐÀI LOAN', 'TRÀ-SỮA-Ô-LONG-ĐÀI-LOAN.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:06:06', '2024-08-15 21:42:26'),
(44, 2, 2, 'TRÀ SỮA KEM TRỨNG', 'khoai-mon-tra-sua-kem-trung-FILEminimizer.jpg', 90000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p><div class="ddict_btn" style="top: -9px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:07:03', NULL),
(45, 2, 2, 'TRÀ SỮA KHOAI MÔN KEM TRỨNG NƯỚNG', 'tra-sua-khoai-mon-kem-trung-nuong.jpg', 59000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 0, '2024-08-03 09:09:34', NULL),
(46, 2, 2, 'TRÀ SỮA KHOAI MÔN TRÂN CHÂU ĐƯỜNG ĐEN', 'Tra-Sua-Khoai-Mon-Tran-Chau-Duong-Den-Kem-Trung.jpg', 90000,4, '', '<p><strong>Size: S M L&nbsp;&nbsp;</strong></p>', 1, '2024-08-03 09:10:56', NULL),
(47, 3, 5, 'BÁNH MẬT ONG', 'banh-mat-ong.png', 39000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:11:44', NULL),
(48, 3, 5, 'BÁNH NGỌT', '6-3.jpg', 59000,4, '', ' <p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:12:51', NULL),
(49, 3, 5, 'BÁNH RÁN DORAEEMON', 'anh-2-mon-trang-mieng-471.jpg', 59000,9,'', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div> ', 1, '09:13:45', NULL),
(51, 3, 5, 'BÁNH CACAO', 'b582d2f9-ad59-43e8-b456-17a271c99ab4.jpg', 19000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:14:47', NULL),
(52, 3, 5, 'BÁNH KEM DÂU', 'banh_ngot_la_mon_an_vat_hap_dan_va_giau_nang_luong.jpg', 49000,16, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-03 09:16:12', '2024-08-15 21:43:19'),
(54, 3, 5, 'BÁNH MACARON', 'banh-macaron-nhan-kem-socola-ganache-sieu-de-thuong.jpg', 15000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:28:29', NULL),
(55, 3, 5, 'BÁNH KEM NHIỀU LỚP', 'banhngon2-1471922491.jpg', 35000,5,'','<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:30:03', '2024-08-15 21:44:33'),
(56, 3, 5, 'BÁNH SỪNG BÒ', 'banh-sung-bo-2-1651140812.jpg',25000,4,'', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div> ',  1, '2024-08-05 15:31:22', NULL),
(57, 3, 5, 'BÁNH CUPCAKE', 'BANH-CUPCAKE.jpg',19000,4,'', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div> ', 1, '2024-08-05 15:32:45', '2024-08-15 21:45:26'),
(58, 3, 5, 'BÁNH KEM TRỨNG', 'Cake_1png.jpg', 39000,12, '', ' <p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:34:16', NULL),
(59, 3, 5, 'BÁNH CROP CAKE', 'CROP_Cake_2png.jpg', 32000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:35:02', '2024-08-06 02:32:12'),
(60, 3, 5, 'BÁNH PIZZA', 'CROP_Pizza_Pastapng.jpg', 24000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:36:10', NULL),
(61, 3, 5, 'BÁNH BÔNG LAN TRỨNG MUỐI', 'banh-bong-lan-trung-muoi.jpg', 25000,15'', ' <p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:37:46', NULL),
(63, 3, 5, 'BÁNH GẠO VIÊN', 'gyeongdan-banh-gao-vien-246589.jpg', 45000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:48:56', '2024-08-15 15:51:02'),
(64, 3, 5, 'BÁNH MỨT DÂU', 'images.jpg', 39000,28, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:50:23', '2024-08-06 02:31:44'),
(65, 3, 5, 'BÁNH TRỨNG', 'kv4umGc.jpg', 39000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:51:57', NULL),
(66, 3, 5, 'BÁNH DONUT', 'banh-donut(2).jpg', 19000,21, '', ' <p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:53:24', NULL),
(67, 3, 5, 'BÁNH SẦU RIÊNG', 'recipe31760-cook-step6-636649245945525404.jpg', 59000,30, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:54:41', NULL),
(68, 3, 5, 'BÁNH CHEESE', 'thanhhuong-185910025942-cheese.jpg', 29000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:55:51', NULL),
(69, 3, 5, 'BÁNH SU KEM', 'z4929719537169_f7556a8902d29b450cf77c8d0d7e28ee-min-1000x1250.jpg', 39000,4, '', '<p>&nbsp;</p><div class="ddict_btn" style="top: 24px; left: 1598px;"><img src="chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png" /></div>', 1, '2024-08-05 15:57:11', NULL);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variant`
--

CREATE TABLE `product_variant` (
  `product_id` int(11) NOT NULL COMMENT 'Id của sản phẩm, là khóa ngoại liên kết với bảng products',
  `variant_value_id` int(11) NOT NULL COMMENT 'Id các giá trị của thuộc tính sản phẩm, là khóa ngoại liên kết với bảng variants_value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_variant`
--

INSERT INTO `product_variant` (`product_id`, `variant_value_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 1),
(8, 1),
(10, 1),
(16, 1),
(17, 1),
(19, 1),
(20, 1),
(21, 1),
(24, 1),
(25, 1),
(27, 1),
(29, 1),
(30, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 2),
(48, 2),
(49, 2),
(51, 2),
(52, 2),
(3, 1),
(9, 1),
(18, 1),
(18, 1),
(22, 1),
(22, 1),
(22, 1),
(23, 1),
(23, 1),
(26, 1),
(26, 1),
(26, 1),
(28, 1),
(28, 1),
(31, 1),
(31, 1),
(31, 1),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(63, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'slide_1.png', '', '', '2024-08-10 10:33:39', '2024-08-10 21:07:33'),
(2, 'slide_2.png', '', '', '2024-08-10 10:33:56', '2024-08-10 21:07:38'),
(3, 'slide_3.png', '', '', '2024-08-10 10:34:17', '2024-08-10 21:07:45'),
(4, 'slide_4.png', '', '', '2024-08-10 10:34:42', '2024-08-10 21:07:49');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `variants`
--

INSERT INTO `variants` (`id`, `name`) VALUES
(1, 'Loại'),
(2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants_value`
--

CREATE TABLE `variants_value` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL COMMENT 'Khóa ngoại liên kết với bảng variants',
  `value` varchar(255) NOT NULL COMMENT 'Giá trị của từng thuộc tính sản phẩm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `variants_value`
--

INSERT INTO `variants_value` (`id`, `variant_id`, `value`) VALUES
(1, 1, 'Đồ uống'),
(2, 1, 'Bánh');


--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_customers` (`customer_id`),
  ADD KEY `fk_orders_members` (`member_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD KEY `fk_od_orders` (`order_id`),
  ADD KEY `fk_od_products` (`product_id`),
  ADD KEY `fk_od_variantsValue` (`variant_value_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_brands` (`brand_id`),
  ADD KEY `fk_products_categories` (`category_id`);

--
-- Chỉ mục cho bảng `product_variant`
--
ALTER TABLE `product_variant`
  ADD KEY `fk_pv_products` (`product_id`),
  ADD KEY `fk_pv_variantsValue` (`variant_value_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_variantsValue_variants` (`variant_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_members` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `fk_od_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_od_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_od_variantsValue` FOREIGN KEY (`variant_value_id`) REFERENCES `variants_value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `fk_pv_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pv_variantsValue` FOREIGN KEY (`variant_value_id`) REFERENCES `variants_value` (`id`);

--
-- Các ràng buộc cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  ADD CONSTRAINT `fk_variantsValue_variants` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
