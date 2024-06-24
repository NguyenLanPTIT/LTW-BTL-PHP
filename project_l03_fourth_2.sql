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
(2, 'các loại nước khác', 'menu do uong chung 1.jpg', '', 1, '2024-08-03 09:59:06', '2024-08-07 00:09:28'),
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
(2, 'lan123', '12345', 'Nguyễn Thị Lan', '1597488478-manager-91795304_2546207752374021_1440680954774421504_n.jpg', 'Web Dev', 1, '0968824797', 'Thường Tín', 'darkprince411999@gmail.com', '2024-08-06 04:28:21', NULL);

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
(1, 1, 1, 'CÀ PHÊ CAPUCHINO', 'CAPPUCINO.jpg', 59000,6, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-1095822</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Cà phê Việt Nam. Dell Inspiron 5584 - Bolt15 N5I5384W - CPU: Intel Core i5 8265U (1.60 upto 3.9GHz, 6MB) - RAM: 8GB DDR4 2400MHz - HDD: 1TB + 1 khe SSD M.2 sata 2280 - VGA: Intel UHD Graphics 620 - Display: 15.6&quot; FHD (1920 x 1080) - OS: Windows 10 Home - Color: Silver Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-02 14:11:36', '2024-08-02 22:29:58'),
(2, 1, 1, 'CÀ PHÊ MOCHA MACCHIAT ', 'MOCHA MACCHIAT.jpg', 690000,14, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-75311</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam Dell Vostro 3490 70211829 - CPU: Intel&reg; Core&trade; i3-10110U (2.10 GHz upto 4.10 GHz, 4MB) - RAM: 4GB (4GBx1) DDR4 2666MHz ( 2 Khe) - Ổ cứng: 256GB SSD M.2 PCIe NVMe + 1 slot 2.5&quot; (HDD/SSD) - VGA: Intel&reg; UHD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920 x 1080) - OS: Windows 10 Home - Pin: 3-Cell, 42 WHr - C&acirc;n nặng: 1.72 Kg - T&iacute;nh năng: Bảo mật v&acirc;n tay Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-02 14:17:55', '2024-08-02 22:30:15'),
(3, 1, 1, 'CÀ PHÊ SỮA ', '14801.jpg"', 39000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>Kho:&nbsp;</strong>C&ograve;n h&agrave;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-734121</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. - CPU : Intel&reg; Core i3-7020U 2.3Ghz, 3MB - RAM : 4GB - HDD : 1TB HDD - VGA : Intel HD Graphics - M&agrave;n h&igrave;nh : 15.6&quot; Full HD WLED - OS : Windows 10 - Color: Silver Made in China. Brand New 100%</p>\r\n', 1, '2024-08-02 14:20:16', '2024-08-03 16:42:29'),
(4, 1, 1, 'CÀ PHÊ BẠC XỈU', 'bac-xiu.jpg', 390000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-1034233</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz upto 3.60 GHz, 6MB) - RAM: 8GB DDR4 - Ổ cứng: 256GB SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 14&quot; FHD (1920*1080) - OS: Windows 10 - Color: Black - Pin: 3 cell - 42Whr - C&acirc;n nặng: 1.8 kg Made in China. Brannew 100%</p>\r\n', 1, '2024-08-02 14:25:40', '2024-08-02 22:32:56'),
(5, 1, 1, 'CÀ PHÊ BẠC XỈU ĐÁ', 'bac-xiu-da-20230720090419-e.jpg', 28900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>Ph&acirc;n phối ch&iacute;nh h&atilde;ng Dell Việt nam: - CPU: Intel&reg; Core&trade; i5-10210U (1.60 GHz upto 4.20GHz, 6MB) - RAM: 8GB DDR4 - Ổ cứng: 256GB SSD - VGA: Intel&reg; UHD Graphics - M&agrave;n h&igrave;nh: 13.3&quot; FHD (1920*1080) - OS: Windows 10 Home + Office 365 - Pin: 4 Cell 52WHr - C&acirc;n nặng: 1.37kg - T&iacute;nh năng: Bảo mật v&acirc;n tay,&hellip;</p>\r\n', 1, '2024-08-02 14:27:42', '2024-08-02 22:32:31'),
(6, 1, 1, 'CÀ PHÊ NÂU TRUFLE', 'Phe-Nau-Truffle.png', 590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-878122</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam Dell Vostro 15 3580 - CPU: Intel&reg; Core&trade; i3-8145U (4MB Cache, up to 3.9 GHz) - RAM: 4GB DDR4 2666MHz - HDD: 1TB HDD 5400rpm - VGA: Intel&reg; UHD Graphics 620 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 - Color: Black -Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-02 14:29:21', '2024-08-02 22:33:57'),
(7, 1, 1, 'CÀ PHÊ ', 'project/backend/assets/uploads/img/portfolio/cafe.jpg.jpg', 37900,24, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-583111</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz upto 3.60 GHz, 6MB) - RAM: 4GB DDR4 - Ổ cứng: 256GB SSD - VGA: Nvidia GeForce MX230 2GB GDDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 - Color: Black - Pin: 3 cell - 42Whr - C&acirc;n nặng: 1.8 kg Made in China. Brannew 100%</p>\r\n', 1, '2024-08-02 14:31:12', '2024-08-02 22:34:12'),
(8, 1, 1, 'CÀ PHÊ LATTE', 'Cafe-latte.jpg', 690000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i5-10210U (1.60GHz upto 4.20GHz, 6MB) - RAM: 8GB DDR4 2466MHz - Ổ cứng: 256GB M.2 PCIe NVMe SSD - VGA: Intel UHD Graphics 620 - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920x1080) - OS: Windows10 Home Plus SL - Pin: 3 cell 51 Wh - C&acirc;n nặng: 1.49kg - T&iacute;nh năng: Bảo mật v&acirc;n tay Made in China, Brannew 100%</p>\r\n', 1, '2024-08-02 14:32:30', '2024-08-15 15:08:47'),
(9, 1, 1, 'CÀ PHÊ NÓNG ', 'ca-phe_110730424.jpg', 99000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>Kho:&nbsp;</strong>C&ograve;n h&agrave;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-1034231</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i7-1065G7 (1.30 GHz upto 3.90 GHz, 8MB) - RAM: 8GB DDR4 - Ổ cứng: 512GB SSD - VGA: NVIDIA(R)GeForce(R) MX230 wit h 2GB GDDR5 - M&agrave;n h&igrave;nh: 14&quot; FHD (1920*1080) - OS: Windows 10 - Color: Silver - Pin: 3 cell - 42Whr - C&acirc;n nặng: 1.8 kg Made in China. Brannew 100%</p>\r\n', 1, '2024-08-02 14:36:50', '2024-08-15 17:41:40'),
(10, 1, 1, 'CÀ PHÊ MATCHA LATTE', 'MATCHA-LATTE.jpg', 43000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam - CPU: Intel&reg; Core&trade; i3-10110U (2.10 GHz upto 4.10 GHz, 4MB) - RAM: 4GB onboard LPDDR3 2133MHz ( kh&ocirc;ng n&acirc;ng cấp được Ram) - Ổ cứng: 128GB PCIe&reg; NVMe&trade; M.2 SSD - VGA: Intel&reg; UHD Graphics - M&agrave;n h&igrave;nh: 13.3-inch FHD (1920 x 1080) TrueLife LED Backlight - OS: Windows 10 Home Single Language English Made in China. Brand New 100%.&nbsp;</p>\r\n', 1, '2024-08-02 14:39:55', '2024-08-02 22:35:34'),
(11, 1, 1, 'CÀ PHÊ MUỐI', 'ca-phe-muoi.jpg', 59000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-7341123</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i3-1005G1(1.2Ghz, Up to 3.4Ghz) - RAM: 4GB DDR4 - Ổ cứng: 256GB SSD - VGA: Intel&reg; UHD Graphics - M&agrave;n h&igrave;nh: 14&quot; FHD (1920*1080) - OS: Windows 10 - Color: Silver - Pin: 3 cell - 42Whr - C&acirc;n nặng: 1.8 kg Made in China. Brannew 100%</p>\r\n', 1, '2024-08-02 14:43:04', '2024-08-02 22:35:58'),
(12, 1, 1, 'CÀ PHÊ PHINDI CHOCO', 'PHINDI_CHOCO.jpg', 590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-815466</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. - CPU: Intel&reg; Core&trade; i7-10510U (1.80GHz upto 4.90GHz, 8MB) - RAM: 16GB onboard LPDDR3 2133MHz - HDD: 512GB M.2 PCIe NVMe SSD - VGA: Nvidia MX250 2GB DDR5 - M&agrave;n h&igrave;nh: 14.0-inch FHD (1920x1080) True Life 300nits 100%sRG B Wide Viewing - Angle LED-Backl it Display - OS: Window 10 Home - Pin: 4Cell, 52Whr - C&acirc;n nặng: 1.4kg - T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-02 14:45:03', '2024-08-02 22:36:18'),
(13, 1, 1, 'CÀ PHÊ NÂU', 'ca-phe-nau.jnp', 39000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam Dell Inspiron 14 3481 030CX2 - Black - CPU: Intel&reg; Core&trade; i3-7020U (2.30GHz, 3MB) - RAM: 4GB DDR4 2666MHz - HDD: 1TB 5400 rpm - VGA: Đồ họa HD Intel&reg; 620 - M&agrave;n h&igrave;nh: 14.0&quot; HD (1366 x 768) - OS: Windows 10 SL -Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-02 14:47:03', '2024-08-02 22:36:35'),
(14, 1, 1, 'CÀ PHÊ NÂU', 'Phe-Nau-Truffle.png', 89000,4, '', '<p>H&agrave;ng ph&acirc;n phối ch&iacute;nh h&atilde;ng Dell Việt nam:<br />\r\n- CPU: Intel&reg; Core&trade; i7-9750H (2.60 GHz upto 4.50 GHz, 12MB)<br />\r\n- RAM: 8GB DDR4<br />\r\n- Ổ cứng: 256GB SSD + HDD 1TB 5400rpm<br />\r\n- VGA: nVidia Geforce GTX1650 4GB GDDR5<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) IPS 144Hz<br />\r\n- OS: Windows 10 SL<br />\r\n- Pin: 4 cell<br />\r\n- T&iacute;nh năng: Bảo mật v&acirc;n tay, LED_KB<br />\r\nMade in China, Brand new 100%</p>\r\n', 1, '2024-08-02 14:49:16', '2024-08-02 22:36:59'),
(15, 1, 1, 'CÀ PHÊ LAN NÓNG ', 'Phe-Lan-Nong-scaled.jpg', 90000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-1034105</p>\r\n\r\n<p>Ph&acirc;n phối Dell Ch&iacute;nh h&atilde;ng Việt Nam: - CPU: Intel&reg; Core&trade; i7-10510U (1.80 GHz upto 4.90 GHz, 8MB) - RAM: 8GB DDR4 - Ổ cứng: 512GB SSD - VGA: NVIDIA GeForce MX230 2GB - M&agrave;n h&igrave;nh: 14&quot; FHD (1920*1080) touch - xoay 360 - OS: Windows 10 Home Made in China, Brannew 100%</p>\r\n', 1, '2024-08-02 14:51:17', '2024-08-02 22:37:18'),
(16, 2, 3, 'NƯỚC ÉP CAM', '14265.jpg', 39000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1251-004-455533</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: Intel Core i5-1035G1 1.0GHz, 6MB - RAM: 4GB DDR4 + 1slot - Ổ cứng: 512GB SSD M.2 2242 NVMe - VGA: Intel&reg; UHD Graphics - M&agrave;n h&igrave;nh: 15.6 FHD (1920x1080) - OS: Windows 10 Home - Pin: 2Cell, 35WH - C&acirc;n nặng: 1.85kg Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:21:04', NULL),
(17, 2, 3, 'NƯỚC ÉP DỨA', '20230420_Nuoc-ep-dua-co-chua-nhieu-vitamin-va-khoang-chat-.jpg', 9900000,5, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1251-004-455510</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: AMD Ryzen&trade; 3 3200U (2.60Ghz upto 3.50Ghz, 4MB) - RAM: 4GB DDR4 + 1slot - Ổ cứng: 256GB SSD M.2 2242 NVMe - VGA: Radeon&trade; Vega 3 Graphics - M&agrave;n h&igrave;nh: 15.6 FHD (1920x1080) - OS: Windows 10 Home - Pin: 2Cell, 35WH - C&acirc;n nặng: 1.85kg Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:22:21', '2024-08-06 02:33:20'),
(18, 2, 3, 'NƯỚC ÉP VIỆT QUẤT', '14941.jpg', 10590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1251-004-431212</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: Intel Core i5-8250 - M&agrave;n h&igrave;nh: 15.6&quot;FHD - RAM: 4GB DDR4 2133MHz - Đồ họa: Intel HD Graphics 620 - Lưu trữ: 256GB SSD - Hệ điều h&agrave;nh: Windows 10 Home SL 64-bit</p>\r\n', 1, '2024-08-03 08:23:38', '2024-08-03 16:49:09'),
(19, 2, 3, 'NƯỚC ÉP TÁO', 'cach-lam-nuoc-ep-oi-thom-ngon-de-uong-201910300940367150.jpg', 7390000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1251-004-431211</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: Intel Core i3-6006U ( 2.0 GHz / 3MB / 2 nh&acirc;n, 4 lu&ocirc;̀ng ) - M&agrave;n h&igrave;nh: 14&quot; ( 1366 x 768 ) , - RAM: 4GB DDR4 2133MHz - Đồ họa: Intel HD Graphics 520 - Lưu trữ: 500GB HDD 5400RPM - Hệ điều h&agrave;nh: Windows 10 Home SL 64-bit - Pin: 2 cell 30 Wh Pin liền , khối lượng: 2.1 kg</p>\r\n', 1, '2024-08-03 08:24:49', NULL),
(20, 2, 3, 'NƯỚC ÉP ỔI', 'cong-thuc-nuoc-ep-oi-hong-1.jpg', 3790000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1251-004-433411</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: Intel&reg; N2840 - RAM: 4GB - Ổ cứng: 500GB HDD (Đổi SSD120 gi&aacute;: 4190K) - VGA: Intel&reg; HD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; HD (1366 x 768) - OS: Windows 7</p>\r\n', 1, '2024-08-03 08:26:53', NULL),
(21, 2, 3, 'NƯỚC ÉP TRÁI CÂY', 'cong-thuc-pha-che-tra-trai-cay-e1624470423234.jpg', 14990000,7, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-004-185411</p>\r\n\r\n<p>H&agrave;ng Ch&iacute;nh H&atilde;ng Lenovo Việt Nam: Lenovo ThinkBook 14-IML (20RV00AGVN) - X&aacute;m - CPU: Intel&reg; Core&trade; i5-10210U (1.60GHz, 6MB) - RAM: 8GB DDR4 - HDD: 512GB SSD - VGA: Intel&reg; UHD Graphics - Display: 14.0&quot; FHD (1920x1080) - Windows 10 Made in China, Brannew 100%</p>\r\n', 1, '2024-08-03 08:31:43', NULL),
(22, 2, 3, 'NƯỚC ÉP CÓC', 'nuoc-ep-coc.jpg', 6390000,3, '', '<p><br />\r\nBảo h&agrave;nh: 12 Th&aacute;ng</p>\r\n\r\n<p>SKU: 0</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam.<br />\r\n- CPU: Intel&reg; Core&trade; Pentium Gold 5405U (2M Cache, 2.30 GHz)<br />\r\n- RAM: 4GB DDR4<br />\r\n- SSD: 256GB<br />\r\n- VGA: Intel HD Graphics<br />\r\n- Display: 15.6Inch FHD<br />\r\n- Pin: 2Cell 30WH<br />\r\n- Color: Grey (X&aacute;m)<br />\r\n- HĐH: Windows 10 Home<br />\r\nBrand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:35:42', '2024-08-03 16:50:32'),
(23, 2, 3, 'NƯỚC ÉP DƯA HẤU', 'Hình-App_3006021-Ép-Dưa-Hấu.jpg', 15800000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-004-185410</p>\r\n\r\n<p>H&agrave;ng Ch&iacute;nh H&atilde;ng Lenovo Việt Nam: Lenovo ThinkPad E590 20NBS07000 - Đen - CPU: Intel&reg; Core&trade; i5-8265U (1.60 upto 3.90GHz, 6MB) - RAM: 4GB DDR4 - HDD: 1TB 5400rpm - VGA: Intel&reg; UHD Graphics 620 - Display: 15.6&quot; HD (1366 x 768) Anti-GlareOS - Free DOS Made in China, Brannew 100%</p>\r\n', 1, '2024-08-03 08:38:11', '2024-08-03 16:54:15'),
(24, 2, 3, 'NƯỚC ÉP CẦN TÂY', 'Hub-de-tana-coffee-nuoc-ep-can-tay-tao-xanh.jpg', 7900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-004-825444</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Lenovo Việt Nam. - CPU: Intel&reg; Core&trade; i3-7020U (2.30GHz) - RAM: 4GB DDR4 - Ổ cứng: HDD 1TB - VGA: Intel&reg; HD Graphics 620 - M&agrave;n h&igrave;nh: 14.0&quot; HD (1366 x 768) - OS: Windows 10 SL Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:39:53', '2024-08-07 23:54:25'),
(25, 2, 3, 'NƯỚC ÉP CÀ RỐT', 'nuoc-ep-ca-rot-giam-can-tai-nha.jpg', 21590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:</strong></p>\r\n\r\n<p>Lenovo Legion Y530-15ICH 81FV00SUVN - CPU: Intel&reg; Core&trade; i7-8750H (2.20GHz upto 4.10GHz, 9MB) - RAM: 8GB DDR4 - HDD: 1TB HDD + 128GB SSD M.2 PCIe 7200rpm - VGA: nVidia Geforce GTX 1050 4GB - M&agrave;n h&igrave;nh: 15.6&quot; Full HD (1920 x 1080) IPS - OS: Free-DOS - Color: Black Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:41:46', NULL),
(26, 2, 3, 'NƯỚC ÉP LỰU', 'nuoc-ep-luu-co-tac-dung-gi-320231003164302.jpg', 9900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-854177</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus X509FA-EJ857T - Bạc - CPU: Intel&reg; Core&trade; i3-8145U (2.1 upto 3.90GHz, 6MB) - RAM: 4GB DDR4 Onboard - HDD: 512GB SSD - VGA: Intel&reg; UHD Graphics 620 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) 60Hz Anti-Glare Panel - OS: Windows 10 Home</p>\r\n', 1, '2024-08-03 08:44:54', '2024-08-03 16:55:17'),
(27, 2, 3, 'NƯỚC ÉP NHO', 'nuoc-ep-nho-xanh-thumbnail.jpg', 175900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-934192</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus TUF FX505GE-BQ052T - CPU: Intel&reg; Core&trade; i5-8300H (2.30GHz upto 4.00GHz, 4 nh&acirc;n, 8 luồng, 8MB) - RAM: 8GB DDR4 2666MHz (C&ograve;n 1 khe) - HDD: 1TB 5400rpm SSH8GB - VGA: NVIDIA GeForce GTX 1050Ti 4GB GDDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) - OS: Windows 10 - Pin: 4Cell 48WHr - C&acirc;n nặng: 2.2 kg - T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:46:56', NULL),
(28, 2, 3, 'NƯỚC ÉP DƯA LEO', 'nuoc-ep-dua-leo-giup-lam-dep-da.jpg', 142900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-815458</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus VivoBook S530FN-BQ134T - Vỏ nh&ocirc;m X&aacute;m - CPU: Intel&reg; Core&trade; i5-8265U (1.60GHz upto 3.90GHz, 4 nh&acirc;n, 8 luồng, 6MB) - RAM: 4GB DDR4 2400MHz - HDD: 512GB SSD - VGA: nVidia GeForce MX150 2GB DDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) - OS: Windows 10 SL - Pin: 3 Cells 42WHrs - C&acirc;n nặng: 1.8kg - T&iacute;nh năng: Bảo mật v&acirc;n tay Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:48:00', '2024-08-03 16:55:58'),
(29, 2, 3, 'NƯỚC ÉP TÁO THƠM HẠT CHIA', 'nuoc-ep-tao-thom-hat-chia.jpg', 159000,8, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-8341599</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối: - CPU: Intel&reg; Core&trade; i5-10210U (1.6 upto 3.90GHz, 2 nh&acirc;n 4 luồng, 4MB) - RAM: 8GB DDR4 2400MHz - ổ cứng: 512GB SSD - VGA: Intel&reg; UHD Graphics - Display: 15.6&quot; FHD (1920x1080) LED - OS: Windows 10 64bit - Color: SILVER Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:49:05', NULL),
(30, 2, 4, 'TRÀ HOA QUẢ', '1-3.jpg', 295900,20, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-835811</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối - CPU: Intel&reg; Core&trade; i5-10210U (1.6 upto 4.2GHz, 4 nh&acirc;n 8 luồng, 6MB) - RAM: 8GB 2133MHz LPDDR3 Onboard - Ổ cứng: 512GB PCIe SSD - VGA: NVIDIA GeForce MX250 2GB GDDR5 - M&agrave;n h&igrave;nh: 14.0&quot; Full HD (1920 x 1080) - OS: Windows 10 SL - Pin: 4-cell 70Whr - C&acirc;n nặng: 1.5kg - T&iacute;nh năng: ScreenPad Plus - M&agrave;n h&igrave;nh cảm ứng FHD 12.6&quot; Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:50:05', NULL),
(31, 2, 4, 'TRÀ ĐÀO CAM XẢ', 'tra-dao-cam-xa.jpg', 185900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834211</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus UX333FA-A4184T - CPU: Intel&reg; Core&trade; i5-8265U (1.60 upto 3.90GHz, 4 nh&acirc;n 8 luồng, 6MB) - RAM: 8GB 2133MHz LPDDR3 - HDD: 256GB SSD PCIe - VGA: Intel&reg; UHD Graphics 620 - Display: 13.3&quot; LED-backlit FHD (1920 x 1080) - OS: Windows 10 SL - Color: Red Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 08:51:22', '2024-08-03 16:56:59'),
(32, 2, 4, 'TRÀ ĐÀO', 'tra-dao', 187900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834304</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S533FA BQ026T - Trắng - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:52:27', NULL),
(33, 2, 4, 'TRÀ Ô LONG', 'TRÀ-Ô-LONG.jpg', 187900,7, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834305</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S533FA BQ025T - Xanh - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:53:40', NULL),
(34, 2, 4, 'TRÀ VẢI', 'TRÀ-VẢI.jpg', 187900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834306</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S533FA BQ011T - Đen - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:55:04', NULL),
(35, 2, 4, 'TRÀ HOA QUẢ NHIỆT ĐỚI', 'CACH-LAM-TRA-HOA-QUA-NHIET-DOI-DON-GIAN-TAI-NHA.jpg', 849000,13, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834300</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S433FA EB054T - Đỏ - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL</p>\r\n', 1, '2024-08-03 08:56:31', NULL),
(36, 2, 4, 'TRÀ HỒNG TRÀ', 'hong-tra-la-gi.jpg', 184900,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834301</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S433FA EB053T - Đen - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:57:30', NULL),
(37, 2, 4, 'TRÀ HỒNG TRÀ SỮA', 'hong-tra-la-gi.jpg', 18790000,1, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834302</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus S433FA EB052T - Trắng - CPU: Intel&reg; Core&trade; i5-10210U Processor (6MB Cache, Up to 4.20GHz) - RAM: 8GB DDR4 2666Mhz - HDD: 512G-PCIE SSD - VGA: Intel UHD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920 x 1080) Anti Glare - OS: Windows 10 SL Made in China. Brand New 100%</p>\r\n', 1, '2024-08-03 08:58:51', NULL),
(38, 2, 4, 'TRÀ HOA CÚC', 'tra-hoa-cuc-238.jpg', 89000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-8341200</p>\r\n\r\n<p>Ph&acirc;n phối Asus Việt Nam: Asus X409FA-EK098T - Gray - CPU: Intel&reg; Core&trade; i3-8145U Processor (4MB Cache, upto 3.90GHz) - RAM: 4GB DDR4 2400MHz onboard - HDD: 1TB SATA3 5400rpm - VGA: Đồ họa UHD Intel&reg; 510 - Display: 14.0&quot; (16:9) LED-backlit FHD (1920x1080) 60Hz - OS: Windows 10 Home Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-03 08:59:40', NULL),
(39, 2, 4, 'TRÀ XƯA', 'tra-ngon.jpg', 89000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834214</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Asus Việt Nam. Asus X507UF-EJ117T - Gold - CPU : Intel&reg; Core&trade; i3 8130U (2.20GHz upto 3.40 GHz, 4MB) - RAM : 4GB 2400MHz DDR4 - HDD : 1TB 5400RPM SATA HDD - VGA : NVIDIA GeForce MX130 2GB GDDR5 VRAM - M&agrave;n h&igrave;nh : 15.6&quot; (16:9) FHD (1920x1080) 60Hz - OS : Windows 10 - Pin : 3 Cell 33 Whrs - C&acirc;n nặng : 1.68 kg Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:00:46', NULL),
(40, 2, 4, 'TRÀ XANH TƯƠI', 'uong-tra-xanh-moi-ngay-co-tot-khong-665x400-8524.jpg', 790000,4, '', '<p><br />\r\nBảo h&agrave;nh: 24 Th&aacute;ng</p>\r\n\r\n<p>SKU: 1151-005-834201</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối<br />\r\nAsus TUF FX505GE-BQ308T<br />\r\n- CPU: Intel&reg; Core&trade; i7 8750H (2.2GHz, 9MB)<br />\r\n- RAM: 8GB DDR4 2666MHz<br />\r\n- HDD: 1TB 5400rpm + 128G PCIE<br />\r\n- VGA: NVIDIA Geforce GTX1050Ti 4GB DDR5<br />\r\n- Display: 15.6&quot; FHD (1920*1080) 144Hz IPS<br />\r\n- OS: Windows 10 SL<br />\r\n- Color: Black<br />\r\nBrand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:02:04', NULL),
(41, 2, 2, 'TRA SỮA HOA NHÀI', 'TRA-SUA.jpg', 790000,25, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-1035469</p>\r\n\r\n<p>Ph&acirc;n phối ch&iacute;nh h&atilde;ng Asus Việt nam: Asus D509DA-EJ167T - Silver - CPU: AMD Ryzen&trade; R5-3500U (2.1GHz upto 3.7GHz, 4MB) - RAM: 4GB DDR4 + 1slot - Ổ cứng: 1TB 5400rpm HDD + 1slot M2 sata - VGA: Radeon&trade; Vega 8 Graphics - M&agrave;n h&igrave;nh: 15.6&quot;FHD TN 200nits Anti-Glare NTSC 45% - OS: Windows 10 - Pin: 2-cell Li-ion - C&acirc;n nặng: 1.9kg - T&iacute;nh năng: Bảo mật v&acirc;n tay</p>\r\n', 1, '2024-08-03 09:03:14', NULL),
(42, 2, 2, 'TRÀ SỮA CHÂN CHÂU ĐƯỜNG ĐEN', 'hinh-anh-tra-sua-tran-chau-duong-den.jpg', 590000,5, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-887855</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus ROG STRIX G531G-AL017T - Đen - CPU: Intel Core i7-9750H (2.6GHz up to 4.5GHz, 12MB) - RAM: 8GB DDR4 2666MHz - SSD: 512GB M.2 NVMe PCIE 3.0 SSD - VGA: NVIDIA Geforce GTX 1650 4GB DDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) IPS, Non-Glare, 120Hz Nanoedge - OS: Windows 10 64bit Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:04:28', NULL),
(43, 2, 2, 'TRÀ SỮA Ô LONG ĐÀI LOAN', 'TRÀ-SỮA-Ô-LONG-ĐÀI-LOAN.jpg', 590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>Ph&acirc;n phối ch&iacute;nh h&atilde;ng Asus Việt nam: Asus D509DA-EJ285T - Silver - CPU: ADM Ryzen&trade; R3-3200U (4MB, Upto 3.50GHz) - RAM: 4GB DDR4 2400 MHz - HDD: 256GB SSD - VGA: AMD Radeon Vega 3 Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920x1080) Anti-Glare - OS: Windows 10 64bit - Pin: 3 cell /42Wh - C&acirc;n nặng: 1.9kg - T&iacute;nh năng: Bảo mật v&acirc;n tay</p>\r\n', 1, '2024-08-03 09:06:06', '2024-08-15 21:42:26'),
(44, 2, 2, 'TRÀ SỮA KEM TRỨNG', 'khoai-mon-tra-sua-kem-trung-FILEminimizer.jpg', 900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834199</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus TUF FX505GE-AL440T - CPU: Intel&reg; Core&trade; i7-8750H (2.20 upto 4.10GHz, 6 nh&acirc;n 12 luồng, 9MB) - RAM: 8GB DDR4 2666MHz - HDD: 512GB PCIe&reg; Gen3 SSD - VGA: NVIDIA Geforce GTX1050Ti 4GB DDR5 - Display: 15.6&quot; FHD (1920*1080) 144Hz IPS - OS: Windows 10 SL - Color: X&aacute;m Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:07:03', NULL),
(45, 2, 2, 'TRÀ SỮA KHOAI MÔN KEM TRỨNG NƯỚNG', 'tra-sua-khoai-mon-kem-trung-nuong.jpg', 690000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-1035440</p>\r\n\r\n<p>Ph&acirc;n phối ch&iacute;nh h&atilde;ng Asus Việt nam: Asus D409DA-EK151T - Silver - CPU: ADM Ryzen&trade; R3-3200U (4MB, Upto 3.50GHz) - RAM: 4GB DDR4 2400 MHz - HDD: 256GB SSD - VGA: AMD Radeon Vega 3 Graphics - M&agrave;n h&igrave;nh: 14.0&quot; FHD (1920x1080) Anti-Glare - OS: Windows 10 64bit - Pin: 3 cell /42Wh - C&acirc;n nặng: 1.9kg - T&iacute;nh năng: Bảo mật v&acirc;n tay</p>\r\n', 0, '2024-08-03 09:09:34', NULL),
(46, 2, 2, 'TRÀ SỮA KHOAI MÔN TRÂN CHÂU ĐƯỜNG ĐEN', 'Tra-Sua-Khoai-Mon-Tran-Chau-Duong-Den-Kem-Trung.jpg', 900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834150</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối: - CPU: Intel&reg; Core&trade; i5-8265U (1.60 GHz upto 3.90 GHz, 6MB ) - RAM: 8GB DDR4 - HDD: 512GB SSD - VGA: NVIDIA GeForce MX250 2GB - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 - Pin: 2-cell, 37WHrs - C&acirc;n nặng: 1.70 kg - Color: Silver Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:10:56', NULL),
(47, 3, 5, 'BÁNH MẬT ONG', '2-banh-mat-ong-yangwa-mang-huong-vi-thanh-tao-lam-hap-dan-du-khach-qua-cai-nhin-dau-tien.jpg', 13900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-8341577</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối: - CPU: Intel&reg; Core&trade; i5-8265U (1.60 GHz upto 3.90 GHz, 6MB ) - RAM: 8GB DDR4 - HDD: 512GB SSD - VGA: NVIDIA GeForce MX250 2GB - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 - Pin: 2-cell, 37WHrs - C&acirc;n nặng: 1.70 kg - Color: Silver Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:11:44', NULL),
(48, 3, 5, 'BÁNH NGỌT', '6-3.jpg', 15590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834192</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối FX505DD-AL182T - CPU: AMD Ryzen 5-3550H(2.10 upto 2.70GHz, 4MB) - RAM: 8GB DDR4 2666MHz - HDD: 512GB PCIe&reg; Gen3 SSD - VGA: NVIDIA Geforce GTX 1050 3GB DDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 Home Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:12:51', NULL),
(49, 3, 5, 'BÁNH RÁN DORAEEMON', 'anh-2-mon-trang-mieng-471.jpg', 1590000,9, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-1153433</p>\r\n\r\n<p>Asus X441UA-WX085T - Đen - CPU: Intel Core i3-6006U (2.0Ghz, 3MB Cache, 2 Cores 4 Threads) - RAM: 4GB DDR4 2400MHz - HDD: 1TB SATA 5400rpm - VGA: Intel HD Graphics 520 - Display: 14&quot; HD LED (1366x768) - OS: Windows 10 Home</p>\r\n', 1, '2024-08-03 09:13:45', NULL),
(51, 3, 5, 'BÁNH  CACAO', 'b582d2f9-ad59-43e8-b456-17a271c99ab4.jpg', 16900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-8341566</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối: - CPU: Intel&reg; Core&trade; i7-8565U (1.80 GHz upto 4.60 GHz, 8MB) - RAM: 8GB DDR4 - Ổ cứng: 512 GB SSD - VGA: Nvidia MX250 2GB DDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: Windows 10 SL - Pin: 2Cell 37WHr - T&iacute;nh năng: Bảo mật v&acirc;n tay Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:14:47', NULL),
(52, 3, 5, 'BÁNH KEM DÂU', 'banh_ngot_la_mon_an_vat_hap_dan_va_giau_nang_luong.jpg', 11900000,16, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>24 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-005-834190</p>\r\n\r\n<p>H&agrave;ng Asus Việt Nam ph&acirc;n phối Asus X509FA-EJ201T - Bạc - CPU: Intel&reg; Core&trade; i5-8265U (1.60 upto 3.90GHz, 6MB) - RAM: 4GB DDR4 Onboard - HDD: 1TB 5400rpm SATA - VGA: Intel&reg; UHD Graphics 620 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) 60Hz Anti-Glare Panel - OS: Windows 10 Home Brand New 100%. Made in China</p>\r\n', 1, '2024-08-03 09:16:12', '2024-08-15 21:43:19'),
(54, 3, 5, 'BÁNH MACARON', 'banh-macaron-nhan-kem-socola-ganache-sieu-de-thuong.jpg', 16590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-727804</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối Ch&iacute;nh h&atilde;ng Dell Việt Nam Dell Latitude 7280 - CPU : Intel Core i7-7600U 2.8 GHz, 4MB - RAM : 8GB - HDD : 512GB SSD - VGA : Intel HD Graphics 620 - M&agrave;n h&igrave;nh : 12.5&quot; (1920 x 1080) diagonal FHD anti-glare WLED-backlit - OS : Windows 10 Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:28:29', NULL),
(55, 3, 5, 'BÁNH KEM NHIỀU LỚP', 'banhngon2-1471922491.jpg', 13150000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-854004</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. Dell Inspiron 5584 - CPU: Intel Core i3-8145U (2.1GHz, 3MB) - RAM: 8GB DDR4 2400MHz - HDD: 1TB - VGA: Intel UHD Graphics 620 - Display: 15.6&quot; FHD (1920 x 1080) - OS: Windows 10 Home - Color: Silver Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:30:03', '2024-08-15 21:44:33'),
(56, 3, 5, 'BÁNH SỪNG BÒ', 'banh-sung-bo-2-1651140812.jpg', 6250000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-685411</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. - CPU: Core Celeron N3205 1.5Ghz, 2MB Cache - RAM: 4096MB - HDD: 500GB - Display: 15.6&quot; HD WLED webcam bluetooth&nbsp; - VGA: Intel HD Graphics VGA - OS: Dos - Weight 2.4 kg - Black Color. Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:31:22', NULL),
(57, 3, 5, 'BÁNH CUPCAKE', 'BANH-CUPCAKE.jpg', 7990000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-7341120</p>\r\n\r\n<p>H&agrave;ng nhập khẩu trực tiếp bảo h&agrave;nh tại kholaptop Dell Inspiron 3480 - CPU: Intel&reg; Core&trade; i3-6006U (2.0GHz, 3MB) - RAM: 4GB - HDD: 500GB 5400rpm - VGA: Intel HD Graphics - M&agrave;n h&igrave;nh: 14.0&quot; HD - OS: Dos -Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:32:45', '2024-08-15 21:45:26'),
(58, 3, 5, 'BÁNH KEM TRỨNG', 'Cake_1png.jpg', 39900000,12, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-978202</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối ch&iacute;nh h&atilde;ng Dell Việt nam: - CPU: Intel&reg; Core&trade; i7-9750H (2.60 GHz upto 4.50 GHz, 12MB) - RAM: 16GB DDR4 - Ổ cứng: 512GB SSD + 1TB HDD - VGA: nVidia Geforce GTX1650 4GB GDDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) IPS 144Hz - OS: Windows 10 SL - Pin: 4 cell - T&iacute;nh năng: Bảo mật v&acirc;n tay, LED_KB Made in China, Brand new 100%</p>\r\n', 1, '2024-08-05 15:34:16', NULL),
(59, 3, 5, 'BÁNH CROP CAKE', 'CROP_Cake_2png.jpg', 32390000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-978201</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối ch&iacute;nh h&atilde;ng Dell Việt nam: - CPU: Intel&reg; Core&trade; i7-9750H (2.60 GHz upto 4.50 GHz, 12MB) - RAM: 8GB DDR4 - Ổ cứng: 256GB SSD + 1TB HDD - VGA: nVidia Geforce GTX1650 4GB GDDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) IPS 144Hz - OS: Windows 10 SL - Pin: 4 cell - T&iacute;nh năng: Bảo mật v&acirc;n tay, LED_KB Made in China, Brand new 100%</p>\r\n', 1, '2024-08-05 15:35:02', '2024-08-06 02:32:12'),
(60, 3, 5, 'BÁNH PIZZA', 'CROP_Pizza_Pastapng.jpg', 24590000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-397810</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. - CPU : Intel&reg; Core i7-8550U 1.8Ghz - RAM : 8GB - SSD : 256GB - VGA : Intel&reg; UHD Graphics 520 - M&agrave;n h&igrave;nh : 13.3&quot; Full HD WLED - OS : Windows 10 - Pin : 4Cell 40WHr - C&acirc;n nặng : 1.66kg - Color: Silver Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:36:10', NULL),
(61, 3, 5, 'BÁNH BÔNG LAN TRỨNG MUỐI', 'banh-bong-lan-trung-muoi.jpg', 6625000,15, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-685411</p>\r\n\r\n<p>H&agrave;ng ph&acirc;n phối của Dell Việt Nam. - CPU: Core Celeron N3205 1.5Ghz, 2MB Cache - RAM: 4096MB - HDD: 500GB - Display: 15.6&quot; HD WLED webcam bluetooth&nbsp; - VGA: Intel HD Graphics VGA - OS: Dos - Weight 2.4 kg - Black Color. Made in China. Brand New 100%.&nbsp;</p>\r\n', 1, '2024-08-05 15:37:46', NULL),
(63, 3, 5, 'BÁNH GẠO VIÊN', 'gyeongdan-banh-gao-vien-246589.jpg', 24500000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-817845</p>\r\n\r\n<p>H&agrave;ng nhập khẩu trực tiếp, bảo h&agrave;nh tại KHOLAPTOP Dell Gaming Inspiron G7 15 N7588 - CPU : Intel&reg; Core&trade; i7-8750H (2.2GHz Upto 4.1GHz, 9MB Cache) - RAM : 8GB DDR4 2666MHz - HDD : 128GB SSD + 1TB HDD 5400rpm - VGA : Geforce GTX 1050Ti 4GB GDDR5 - M&agrave;n h&igrave;nh : 15.6&quot; IPS FHD (1920*1080) - OS : Windows 10 Home - Pin : 4-Cell, 56 Whr - C&acirc;n nặng : 2.63Kg Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:48:56', '2024-08-15 15:51:02'),
(64, 3, 5, 'BÁNH MỨT DÂU', 'images.jpg', 30900000,28, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>H&agrave;ng Nhập khẩu trực tiếp, bảo h&agrave;nh tại kholaptop: - CPU: Intel Core i7-8550U (1.8GHz Upto 4.0GHz, 8MB Cache, 4 Cores 8 Threads) - RAM: 8GB LPDDR3, - HDD: 256GB SSD, - VGA: Intel UHD Graphics 620, - DISPLAY: 13.3&quot; 4K Ultra HD (3840 x 2160) InfinityEdge touch display, - LED Keyboard, FingerPrint, Wlan + Bluetooth, Camera, - PIN: 4 Cell 52WHr, 1.2kg - Windows 10 Home , Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:50:23', '2024-08-06 02:31:44'),
(65, 3, 5, 'BÁNH TRỨNG', 'kv4umGc.jpg', 33900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-878209</p>\r\n\r\n<p>H&agrave;ng Nhập khẩu trực tiếp. bảo h&agrave;nh tại KHOLAPTOP Dell XPS 15 9570 - Bạc - CPU: Intel&reg; Core&trade; i7-8705G (3.10GHz upto 4.10GHz, 8MB) - RAM: 8GB DDR4 2400MHz - HDD: 256GB SSD - VGA: Intel HD Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920x1080) - Pin: 75WHr - C&acirc;n nặng: 2.0Kg - OS: Windows 10 Home Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:51:57', NULL),
(66, 3, 5, 'BÁNH MATCHA KEM CHEESE', 'lovepik-the-fruit-cake-png-image_400754133_wh1200.jpg', 16900000,21, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>0</p>\r\n\r\n<p>H&agrave;ng nhập khẩu trực tiếp. bảo h&agrave;nh tại kholaptop. - CPU: Intel&reg; Core&trade; i7-8550U Processor (8M Cache, up to 4.00 GHz) - RAM: 8GB DDR4 2400MHz - HDD: 1TB - VGA: Intel&reg; UHD Graphics 620 - Display: 15.6&quot; FHD C&oacute; cảm ứng touch screen - Color: Silver - OS: Dos Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:53:24', NULL),
(67, 3, 5, 'BÁNH SẦU RIÊNG', 'recipe31760-cook-step6-636649245945525404.jpg', 15590000,30, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-817844</p>\r\n\r\n<p>H&agrave;ng nhập khẩu trực tiếp, bảo h&agrave;nh tại Kholaptop Dell G3 Gaming Inspiron 3579 - CPU: Intel&reg; Core&trade; i5-8300H (2.30GHz upto 4.00GHz, 8MB) - RAM: 8GB DDR4 2666MHz - HDD: 128GB SSD - VGA: nVidia Geforce GTX 1050 4GB DDR5 - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) - OS: DOS - Color: White - Pin: 4-Cell, 56 Whr - C&acirc;n nặng: 2.53Kg Made in China. Brand New 100%</p>\r\n', 1, '2024-08-05 15:54:41', NULL),
(68, 3, 5, 'BÁNH CHEESE', 'thanhhuong-185910025942-cheese.jpg', 25900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-817838</p>\r\n\r\n<p>H&agrave;ng nhập khẩu trực tiếp, bảo h&agrave;nh tại kholaptop - CPU: Intel&reg; Core&trade; i7-8750H (2.20GHz upto 4.10GHz, 9MB cache) - RAM: 16GB DDR4 - HDD: 128GB SSD + 1TB SATA - VGA: nVidia Geforce GTX 1050 4GB DDR5 - Display: 15.6&quot; FHD (1920*1080) IPS - OS: Ubuntu - Color: Black - C&acirc;n nặng : 2.4Kg Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:55:51', NULL),
(69, 3, 5, 'BÁNH SU KEM', 'z4929719537169_f7556a8902d29b450cf77c8d0d7e28ee-min-1000x1250.jpg', 35900000,4, '', '<p><strong>Bảo h&agrave;nh:&nbsp;</strong>12 Th&aacute;ng</p>\r\n\r\n<p><strong>SKU:&nbsp;</strong>1151-002-878206</p>\r\n\r\n<p>H&agrave;ng Nhập khẩu trực tiếp. bảo h&agrave;nh tại KHOLAPTOP Dell XPS 15 9570 - Bạc - CPU: Intel&reg; Core&trade; i7-8705G (3.10GHz upto 4.10GHz, 8MB) - RAM: 16GB DDR4 2400MHz - HDD: 512GB SSD - VGA: Intel HD Graphics - M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920x1080) - Pin: 75WHr - C&acirc;n nặng: 2.0Kg - OS: Windows 10 Home Made in China. Brand New 100%.</p>\r\n', 1, '2024-08-05 15:57:11', NULL);


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
(2, 2),
(4, 2),
(5, 4),
(6, 2),
(7, 2),
(11, 2),
(12, 1),
(13, 2),
(14, 2),
(15, 2),
(15, 1),
(8, 2),
(10, 1),
(16, 2),
(17, 1),
(19, 2),
(20, 2),
(21, 1),
(24, 2),
(25, 2),
(27, 2),
(29, 1),
(30, 2),
(32, 1),
(33, 11),
(34, 1),
(35, 12),
(36, 1),
(37, 4),
(38, 4),
(39, 4),
(40, 2),
(41, 4),
(42, 2),
(44, 2),
(45, 4),
(46, 4),
(47, 4),
(48, 13),
(49, 2),
(51, 4),
(52, 4),
(3, 1),
(3, 2),
(18, 1),
(18, 2),
(22, 1),
(22, 2),
(22, 4),
(23, 2),
(23, 1),
(26, 1),
(26, 2),
(26, 14),
(28, 14),
(28, 2),
(31, 2),
(31, 1),
(31, 13),
(54, 2),
(55, 1),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 1),
(61, 2),
(63, 2),
(65, 2),
(66, 1),
(67, 4),
(68, 2),
(69, 1);

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
(1, 'Color'),
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
(1, 1, 'SILVER'),
(2, 1, 'black'),
(4, 1, 'white'),
(11, 1, 'green'),
(12, 1, 'red'),
(13, 1, 'brown'),
(14, 1, 'pink'),
(15, 1, 'sliver'),
(17, 1, 'yellow'),
(18, 1, 'blue');

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
