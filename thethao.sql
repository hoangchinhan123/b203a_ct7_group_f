-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2022 at 12:28 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_31_044702_create_tbl_admin_table', 1),
(5, '2020_12_31_092213_create_tbl_category-product', 2),
(6, '2020_12_31_095216_create_tbl_category_product', 3),
(7, '2020_12_31_165334_create_tbl_brand_product', 4),
(8, '2021_01_01_040247_create_tbl_product', 5),
(9, '2021_01_05_162457_tbl_customer', 6),
(10, '2021_01_05_165827_tbl_shipping', 7),
(11, '2021_01_05_174555_tbl_payment', 8),
(12, '2021_01_05_174716_tbl_order', 8),
(13, '2021_01_05_174830_tbl_order_details', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'tansy7711@gmail.com', '123', 'tansi', '0947774929', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(4, 'DeWalt', 'DeWalt is', 0, NULL, NULL),
(5, 'Black & Decker', 'Black & Decker is', 0, NULL, NULL),
(6, 'Bosch', 'Bosch is', 0, NULL, NULL),
(7, 'Makita', 'Makita is', 0, NULL, NULL),
(8, 'Ryobi', 'Ryobi is', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

DROP TABLE IF EXISTS `tbl_category_product`;
CREATE TABLE IF NOT EXISTS `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(7, 'Mũi khoan', 'aaaaaa', 0, NULL, NULL),
(8, 'Máy bắt vít', 'aaaaa', 0, NULL, NULL),
(9, 'Cưa', 'aaaa', 0, NULL, NULL),
(10, 'Búa', 'aaaaa', 0, NULL, NULL),
(11, 'Tua vít', 'aaaaa', 0, NULL, NULL),
(12, 'Máy mài', 'aaaa', 0, NULL, NULL),
(13, 'Khoan bê tông', 'aaaaaa', 0, NULL, NULL),
(14, 'Máy bắn đinh', 'aaaaa', 0, NULL, NULL),
(16, 'Thước', 'aaaaa', 0, NULL, NULL),
(17, 'Đục', 'aaaaaa', 0, NULL, NULL),
(19, 'Hộp công cụ', 'aaaaa', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'minhduy', 'minhduy89@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', NULL, NULL),
(2, 'nguyễn minh duy', 'minhduy90@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', NULL, NULL),
(3, 'tansi', 'tansy7711@gmail.com', '202cb962ac59075b964b07152d234b70', '0947774525', NULL, NULL),
(4, 'tansi', 'tansii7711@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', NULL, NULL),
(5, 'tansiaa', 'tansy77111@gmail.com', 'e034fb6b66aacc1d48f445ddfb08da98', '09477745251', NULL, NULL),
(6, 'tansinguyen', 'si7@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123456789', NULL, NULL),
(7, 'nguyensi', 'nguyensi@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '01254879632', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, '13,444.31', 'Đang chờ xử lý', NULL, NULL),
(3, 3, 4, 3, '18,755,000.00', 'Đang chờ xử lý', NULL, NULL),
(15, 7, 19, 15, '60,500.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'xbox122', 11111, 1, NULL, NULL),
(2, 2, 15, 'xbox122', 11111, 1, NULL, NULL),
(9, 12, 31, 'giày nike đen', 1200000, 1, NULL, NULL),
(10, 13, 31, 'giày nike đen', 1200000, 1, NULL, NULL),
(11, 13, 35, 'giày vàng', 10000000, 1, NULL, NULL),
(12, 14, 34, 'giày sĩ xanh dương', 15000000, 4, NULL, NULL),
(13, 15, 27, 'bóng xanh', 50000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '2', 'Đang chờ xử lý', NULL, NULL),
(3, '3', 'Đang chờ xử lý', NULL, NULL),
(4, '1', 'Đang chờ xử lý', NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL),
(7, '1', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '2', 'Đang chờ xử lý', NULL, NULL),
(10, '2', 'Đang chờ xử lý', NULL, NULL),
(11, '1', 'Đang chờ xử lý', NULL, NULL),
(12, '1', 'Đang chờ xử lý', NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL),
(14, '2', 'Đang chờ xử lý', NULL, NULL),
(15, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(40, 8, 4, 'Máy bắn vít dewalt vạn năng', 'Máy bắn vít dewalt vạn năng được mệnh danh là \"ông Vua\" trong việc khoan đóng, mở tất cả các loại vít. Điểm cuốn hút người sử dụng tin dùng Máy bắn vít dewalt vạn năng này chính là kiểu thiết kế tiện lợi, cầm chắc tay và không hề khó khăn trong việc sử dụng với nhiều ưu điểm. Máy bắn vít dewalt vạn năng được làm bằng chất liệu cao cấp, không bị hoen ố, gỉ sét trong suốt quá trình sử dụng, và luôn được đánh giá cao về cả thẩm mỹ lẫn chất lượng. Máy bắn vít dewalt vạn năng có trang bị đèn Led hỗ trợ ở những nơi thiếu ánh sáng. Máy bắn vít dewalt vạn năng có tay cầm được làm từ cao su cách điện, an toàn khi sử dụng. Các đầu mũi khoan Máy bắn vít dewalt vạn năng được thiết kế phù hợp, dễ dàng thay đổi để sử dụng hợp lý. Máy bắn vít dewalt vạn năng có kích thước nhỏ gọn, tiện lợi sử dụng mọi lúc mọi nơi. Máy bắn vít dewalt vạn năng được thiết kế hiện đại với khả năng xoay 180 độ. Máy bắn vít dewalt vạn năng sở hữu thiết kế tối ưu, gọn nhẹ trong bàn tay, sử dụng được ngay cả ở những không gian chật hẹp. Máy bắn vít dewalt vạn năng có nút đảo chiều giúp bạn xoay chiều dễ dàng từ cầm ngang sang cầm thẳng. Máy bắn vít dewalt vạn năng là trợ thủ đắc lực cho mọi nhà, bất kì ai cũng sử dụng được. Mua ngay Máy bắn vít dewalt vạn năng để nhận được quà từ Quá Đẹp. Máy khoan vít vạn năng 45 trong 1 là sự lựa chọn khuyên dùng số 1 của cánh mài râu trên thế giới. Máy khoan vít vạn năng 45 trong 1 được bình chọn là dòng sản phẩm chất lượng cao và an toàn tuyệt đối, nên đây là sự lựa chọn hàng đầu của bạn cũng như món quà ý nghĩa dành cho bạn bè, đồng nghiệp và người thân của mình. Quadep.vn chuyên cung cấp sản phẩm chính hãng và sản phẩm chất lượng cao đến tay người tiêu dùng', 'dể sữ dụng', 489000, 'shopping.jpg', 0, NULL, NULL),
(41, 19, 8, 'Hộp dụng cụ (nhựa) 460x340x640mm Dewalt DWST83343-1 Dewalt', 'Thông số kĩ thuật: - Mã sản phẩm: DWST83343-1 - Nhà sản xuất: DEWALT - Xuất xứ: ISRAEL - Làm từ nhựa ABS cao cấp nên có thể chịu va đập tốt - Trọng lượng: 6.2kg - Bảo hành: 12 tháng - Kết cấu cho không gian rộng rãi, chứa được nhiều chi tiết từ máy đến các công cụ - Cơ cấu ráp linh hoạt được thiết kế nhỏ gọn tiết kiệm được nhiều về diện tích - Kích thước: 460x340x640mm Dewalt', 'tiện nghi', 1243000, 'Hộp dụng cụ (nhựa) 460x340x640mm Dewalt DWST83343-1 Dewalt.jpg', 0, NULL, NULL),
(42, 8, 4, '[HCM] dewalt DCF887 MÁY VÍT DEWALT 887', 'dewalt DCF887 MÁY VÍT DEWALT 887 sx usa. máy vít dewalt DCF887. dewalt DCF887. DEWALT DCF887B 20V MAX XR Li-Ion không chổi than 3-tốc độ. vít dewalt DCF887. Bộ điều khiển tác động của DEWALT DCF887B 20V MAX XR Li-Ion Brushless động cơ không chổi than có cài đặt 3 tốc độ cho tính linh hoạt của ứng dụng tối ưu, cùng với Ổ đĩa chính xác ở tốc độ 1 cho độ chính xác nó cung cấp ba (3) đèn LED với 20 giây chậm trễ sau khi kích hoạt phát hành để cung cấp khả năng hiển thị Thiết bị này có thiết kế nhỏ gọn và nhẹ để vừa với các khu vực kín (ngắn hơn DCF886 trước đó 2 mm). Rất nhiều loại MáyKhoan Cầm Taynhư MáyKhoan Cầm TayĐộng Lực, MáyKhoan Cầm Tay DùngPin. dewalt, milwaukee, makita, ryobi, AEG, ozito, ryobi, bosch, pin 18v. dewalt, milwaukee, makita, ryobi, AEG, ozito, ryobi, bosch. dewalt, milwaukee, makita, ryobi, AEG, ozito, ryobi, bosch, pin 18v. milwaukee, makita, ryobi, AEG, ozito, ryobi, bosch, pin 18v. máy khoan bê tôngmáy khoan taymáy khoan mini. may khoan cam tay máy khoan bê tông bosch. máy khoan cầm tay bosch. may khoan be tong. máy khoan pin giá rẻ. máy khoan bosch. máy khoan cầm tay mini. máy khoan tường. máy bắt vít. máy khoan dùng pinmay khoan makita. gia may khoan be ton. may ban vit. khoan bosch. may khoan makita.Đa dạng sản phẩm. Cam kết hà. ng như hì. Đảm bảo về chất lượng sản phẩm. Liê. n hệ với shop nếu cần được tư vấn chi tiết về sản phẩm.', 'dể dùng', 2400000, '[HCM] dewalt DCF887 MÁY VÍT DEWALT 887.jpg', 0, NULL, NULL),
(43, 7, 4, 'Máy khoan động lực dùng pin DEWALT DCH133M2 18V', 'Máy khoan động lực dùng pin DEWALT DCH133M2 18V là sản phẩm khó có thể bỏ qua. Máy đẹp hiện đại, tiện dụng và thiết thực, giúp bạn tiết kiệm thời gian, công sức, tiền bạc. Hãng Dewalt được biết đến với công nghệ mới, tiên phong đi đầu trong các dòng máy cầm tay dùng Pin. Dewalt DCH133M2 là một trong số máy khoan búa được yêu thích nhất hiện nay. Máy đến từ thương hiệu Mỹ với thời gian bảo hành 36 tháng, giúp người dùng hoàn toàn yên tâm khi máy vận hành. Ưu điểm nổi bật của máy khoan động lực dùng pin DEWALT DCH133M2 18V - Dewalt DCH133M2 có thiết kế rất gọn gàng, đi kèm hộp đựng nhựa để xách đi công trình, tiện cho người dùng. Máy khoan có 3 chức năng, dùng mô tơ không chổi than, mũi khoan SDS-Plus. - Máy khoan bê tông dùng pin Dewalt DCH133M2 là lựa chọn ưu việt để khoan gỗ, khoan bê tông và khoan sắt. Máy khoan trang bị sẵn 2 cục pin 18V dung lượng 4Ah, 1 bộ sạc. - Máy khoan bê tông dùng pin Dewalt DCH133M2 thiết kế cầm tay chắc chắn, làm từ vật liệu cao cấp đảm bảo độ bền. Máy nặng khoảng 3kg dễ cầm thao tác, có thêm tay cầm phụ điều khiển máy chính xác. Tay cầm phụ xoay chỉnh được nhiều hướng, thuận tiện cho tư thế khoan của bạn. - Vỏ của Dewalt 133 được làm từ nhựa cao cấp, chịu va đập tốt. Máy chạy với tốc độ không tải tối đa 1.500 vòng/phút, lực đập là 2.6J, tốc độ đập là 5.500 lần/phút sẽ hỗ trợ khoan vật liệu hiệu quả. - DCH133M2 đặc biệt thích hợp cho những người yêu thích sự hiện đại. Công việc của bạn sẽ trở lên nhẹ nhàng và đơn giản hơn bao giờ hết. Không còn dây dợ lằng nhằng, không còn khổ sở khi khoan đục tường ở trên cao .v.v. Giá máy khoan pin bê tông cũng rất phải chăng và phù hợp với túi tiền. - DCH133M2 sử dụng động cơ không chổi than, loại động cơ này làm việc mạnh mẽ, tiết kiệm pin và có tuổi thọ lớn hơn nhiều, nên khi người dùng mua máy khoan pin thường ưu tiên chọn động cơ không chổi than nhiều hơn. - Dewalt 133 ưu việt và hiện đại, các nhà nguyên cứu của hãng đã rất ưu ái khi đã trang bị cho máy chứng năng đảo chiều vô cùng tiện lợi. - Máy được trang bị tay cầm cao su, giúp máy cầm nằm chắc chắn và dễ dàng hơn, kể trong trường hợp người sự dụng ra nhiều môi tay do thời tiềt thì cũng có thể về cùng yên tâm không sợ trơn trượt khi sử dụng máy. Thông số kỹ thuật của máy khoan động lực dùng pin DEWALT DCH133M2 18V Thương hiệu Dewalt Kiểu Máy khoan bê tông Model DCH133M2 Động cơ Không chổi than Điện áp 18V 4Ah Tốc độ không tải 0-1.500 vòng/phút Khả năng khoan Gỗ 30mm / Sắt 13mm / Bê tông 26mm / Gạch mềm 50mm Tốc độ đập 0 – 5.500 Bpm Lực đập 2.6J Trọng lượng 3.1Kg Sản xuất tại China Bảo hành 36 tháng Lí do bạn nên chọn máy khoan động lực dùng pin DEWALT DCH133M2 18V Dewalt 133 đến từ thương hiệu vông cùng nổi tiếng số một thế giời về sản xuất đồ dùng cầm tay chạy pin, tất cả sản phẩm của hãng đều được thử và kiểm định kỹ càng trước khi xuất sưởng đến vs tay người tiêu dùng. Máy có chế độ bảo hành dài hạn nên bạn cũng có thể vô cùng yên tâm sử dụng máy lâu dài. Sản phẩm được trang bị những tinh năng và công nghệ hiện đại nhất hiện nay, máy rất khỏe phù hợp với nhiều lại công việc khác nhau. kết hợp với cả của máy vô cùng phải chăng phù hợp với đại đa số người dùng từ thợ chuyên nghiệp đến những hộ gia đình. Xem thêm sản phẩm chĩnh hãng.', 'dể dùng', 6350000, 'Máy khoan động lực dùng pin DEWALT DCH133M2 18V.jpg', 0, NULL, NULL),
(44, 8, 5, 'Máy khoan động lực dùng pin DEWALT DCH133M2 18V', 'Là một sản phẩm chất lượng cao của thương hiệuBlack Decker. Được chế tạo từ những công nghệ tiên tiến hàng đầu, giúp người dùng có thể sử dụng thoải mái sản phẩm mà không lo về độ bền chất lượng.', 'dể dùng', 3530000, 'Máy vặn vít cầm tay 14,4V Black Decker BDCK124S1S-B1.jpg', 0, NULL, NULL),
(45, 7, 5, 'Bộ mũi khoan sắt 5 chi tiết Black Decker A8030G BLACK+ DECKER', 'Chất liệu siêu cứng, siêu bền Bộ mũi khoan sắt 5 chi tiết Black Decker A8030G​ được làm bằng hợp kim thép có độ bền cơ học hoàn hảo cho bạn yên tâm sử dụng trong thời gian dài. Sản phẩm không gỉ sét, không chứa chất độc hại nên rất an toàn cho sức khỏe người sử dụng khi tiếp xúc trực tiếp. Bộ mũi khoan sắt 5 chi tiết Black Decker A8030G Bộ mũi khoan sắt 5 chi tiết Black Decker A8030G Thiết kế chuẩn Mũi khoan được gia công từ công nghệ tiên tiến, cung cấp khả năng hoạt động mạnh mẽ và chính xác trong việc khoan sắt một cách nhanh chóng và hiệu quả. Sản phẩm còn có thiết kế đầu gài chuẩn, đặc biệt tương thích với hầu hết các loại máy khoan trên thị trường, mang đến sự tiện lợi cho người sử dụng. Bộ gồm 5 mũi khoan kích thước khác nhau, thích hợp cho nhiều nhu cầu sử dụng. Kiểu dáng nhỏ gọn Mũi khoan có kiểu dáng nhỏ gọn, trọng lượng nhẹ, giúp bạn lắp ráp và sử dụng một cách dễ dàng. Đầu mũi sắc bén cho lỗ tròn đẹp và mịn, không bị loang hay sần sùi tạo thẩm mỹ cho sản phẩm bê tông. BLACK+ DECKER', 'dể dùng', 45650, 'shopping2.jpg', 0, NULL, NULL),
(50, 13, 6, 'Bộ máy khoan động lực Bosch GSB 550 13mm 550w và bộ dụng cụ 100 chi tiết Bosch', 'Bộ máy khoan động lực Bosch GSB 550 13mm 550w và bộ dụng cụ 100 chi tiết Bosch - Công cụ điện mạnh mẽ và đáng tin cậy', 'dể dùng', 1323000, 'bo-may-khoan-dong-luc-bosch.jpg', 0, NULL, NULL),
(51, 12, 6, 'Máy mài góc Black & Decker G650-B1 100mm 650W', 'Máy mài góc Black & Decker G650-B1 100mm 650W - Chính hãng, tiện dung, hiệu quả', 'dể dùng', 950000, 'blackdecker-may-mai-goc-100mm-650w-sieu-mong.jpg', 0, NULL, NULL),
(52, 7, 6, 'Bộ 5 mũi khoan đa năng 4/5/6/8/10mm Bosch MultiConstruction 2608680798', 'bo-5-mui-khoan-da-nang-4/5/6/8/10mm-bosch-multiconstruction-2608680798\r\nỨng dụng: gỗ, nhôm, tường, gạch men Đường kính: 4/5/6/8/10 mm Made in China', 'dể dùng', 179000, 'shopping1.jpg', 0, NULL, NULL),
(53, 7, 6, 'Bộ 5 mũi khoan bê tông 4/5/6/8/10mm Bosch Silver Percussion 2608680726', 'Bộ 5 mũi khoan bê tông 4/5/6/8/10mm Bosch Silver Percussion 2608680726 Đường kính: 5/6/8 mm Made in China', 'dể dùng', 134000, 'download1.jpg', 0, NULL, NULL),
(54, 9, 7, 'Drillpro Máy cưa xích điện Drillpro 550W 6Inch Máy cắt gỗ cầm tay Cưa gỗ mini', 'Thông số kỹ thuậtTênCưa xích điệnMàu sắcMàu xanh da trờiVật liệuABS + kim loạiSức mạnh550WKhông có tốc độ tải3000rpmChiều dài tấm dẫn hướng6 inchPinPhù hợp với pin Makita 18V (Không bao gồm pin)Đặc trưng-Chức năng điều khiển nhiệt độ là bảo vệ động cơ không bị cháy.-Vỏ được bọc cao su, sờ vào rất thích.- Tấm dẫn hướng đặc biệt, bi thép vonfram không cần bôi trơn giúp máy giảm lực cản trong quá trình hoạt động và giảm hao mòn máy.-Bảng mạch điều khiển thông minh, chống quá tải, đáp ứng các nhu cầu thi công khác nhau của bạn.-Thiết kế mỏng nhẹ tiện dụng, nhẹ nhàng, cầm lâu không bị mỏi tay.- Xích tấm dẫn hướng chất lượng hoàn hảo, dập nguội sâu, chịu mài mòn hơn, cắt mịn.-Động cơ bằng đồng nguyên chất, công suất mạnh, cắt nhanh, nâng cao hiệu suất.-Thực tế, tốc độ nhanh, tiêu thụ điện năng thấp.-Kích thước nhỏ gọn, có thể được cầm bằng một tay.Gói bao gồm1 x Host1 x Chuỗi1 x Tấm hướng dẫn1 x Bezel có thể điều chỉnh1 x phụ kiện(Sản phẩm này không bao gồm pin.)', 'dể dùng', 651286, 'drillpromaycua.jpd.jpg', 0, NULL, NULL),
(55, 9, 7, 'máy cưa gỗ cầm tay makita Makita', 'Máy cưa dĩa Makita HS7000 với công suất 1.200 W mạnh mẽ, đáp ứng nhu cầu cưa nhiều loại gố khác nhau... nhanh chóng và chính xác. Ngoài ra sản phẩm có sở hữu tấm đế nhỏ gọn có thể điều chỉnh được để thực hiện góc cắt xiên 45° 44mm. Máy cưa dĩa Makita HS7000 là một sự lựa chọn tốt cho các sản phẩm cùng giá. ĐẶC ĐIỂM NỔI BẬT ocắt tối đa góc thẳng 0 độ 66mm và tối đa góc nghiêng 45 độ 44mm oBền bỉ với khả năng chống bụi giúp tăng tuổi thọ oTính năng cách điện kép, hoạt động mạnh mẽ oCông suất cao giúp tiến độ thi công nhanh chóng oThiết kế nhỏ gọn, tay cầm vừa vặn và dễ thao tác oMáy cưa đĩa 185mm Makita HS 7000 (1200W) – Máy cưa đĩa Makita, máy cưa tròn Makita, máy cưa máy cưa gỗ Makita, máy cưa cầm tay makita oThông số kỹ thuật: Máy cưa đĩa Makita HS7000 Công suất:1200W Tốc độ không tải : 5200 rpm Đường kính lưởi cắt: 185 mm Khả năng cắt góc 0450 độ: 44mm Chiều dài : 282 mm lh 0976.096.866 Makita', 'dể dùng', 881000, 'máy cưa gỗ cầm tay makita Makita.jpg', 0, NULL, NULL),
(56, 16, 7, 'thước makita chính hãng dài 5m Makita', 'Thước makita hàng chính hãng Thước 2 mặt số Trước và sau Đầu thước có nam châm Lh 0372239239 #thướcmakita #thướcdo Makita', 'dể dùng, tiện nghi', 303050, 'thước makita chính hãng dài 5m Makita.jpg', 0, NULL, NULL),
(57, 16, 7, '[Chính Hãng] Thước kéo 7,5m makita B-57152 Makita', 'PHỤ TÙNG CHÍNH HÃNG 2019 chuyên cung cấp các phụ tùng, phụ kiện Makita, Bosch hàng chính hãng. Thông số kĩ thuật - Mã sản phẩm: B-57152 - Thương hiệu: Makita - Xuất xứ: Malaysia - Chiều dài phần lá thước: 7.5m - Chiều rộng phần lá thước: 25mm - Số đo, vạch chia trên thước được khắc bằng laser nên sẽ không có chuyện bị mờ theo thời gian - Phần lá thép thì có độ dẽo cao, bẻ cũng không gãy - Lớp vỏ hộp thước được làm từ nhựa ABS nên có độ bền cao, chịu lực tốt - Trọng lượng: 1kg Cái gì bạn cần tôi đều có! Cái gì khó cứ hỏi đến tôi! Makita', 'dể dùng', 400000, '[Chính Hãng] Thước kéo 7,5m makita B-57152 Makita.jpg', 0, NULL, NULL),
(58, 17, 7, 'Máy đục Bê tông 0810 Makita- Bảo hành 6 tháng - Lỗi đồng nguyên chất', 'MAKITA-HM0810 MÁY ĐỤC BÊ TÔNG - Việc đục khoét các tấm bê tông rắn chắc, cứng cáp quả thật là một điều không dễ dàng và càng vất vả hơn gấp nhiều lần khi bạn sử dụng những dụng cụ không chuyên để thực hiện công việc này. Giờ đây, với chiếc máy đục bê tông mũi lục giác Makita-HM0810, công việc tưởng chừng như rất khó khăn đó sẽ trở nên nhẹ nhàng hơn nhiều vì chiếc máy là sản phẩm chuyên dụng được sản xuất với mục đích đục, khoét bê tông hay các vật liệu cứng cáp khác. Sản phẩm được thiết kế bởi chất liệu cao cấp và quá trình gia công tỉ mỉ, công phu đem đến khả năng hoạt động mạnh mẽ tạo độ rắn chắc cũng như độ bền tuyệt đối, thách thức với thời gian. Hãy sở hữu ngay sản phẩm để mang đến hiệu quả cao hơn và tiết kiệm công sức hiệu quả hơn trong mọi công việc hằng ngày. ĐẶC ĐIỂM NỔI BẬT: - Chất liệu cao cấp Máy đục bê tông mũi lục giác Makita-HM0810 được làm bằng chất liệu cao cấp nên được trang bị độ chịu lực tốt, chống mài mòn, biến dạng khi bị tác động lực mạnh hay va đập trong suốt quá trình sử dụng. Máy còn được trang bị khả năng chống gỉ sét dù tiếp xúc thường xuyên với điều kiện ẩm ướt, mang đến cho bạn một sản phẩm có tuổi thọ cao, chất lượng vượt trội. - Hoạt động mạnh mẽ Máy đục bê tông có môtơ mạnh mẽ với công suất lên đến 900W có thể hoạt động liên tục trong thời gian dài cùng tốc độ đục 2900 lần/phút, cung cấp khả năng hoạt động mạnh mẽ, tối ưu nhất trong việc đục những tấm bê tông cứng rắn được nhanh chóng và hiệu quả hơn rất nhiều so với các loại máy đục thông thường khác. - Thiết kế thông minh, tiện lợi Máy đục bê tông mũi lục giác Makita-HM0810 có kiểu dáng nhỏ gọn, trọng lượng nhẹ, không chiếm nhiều diện tích khi mang theo sử dụng cũng như giúp bạn có thể bảo quản, cất giữ sản phẩm một cách dễ dàng mà không lo bị hư hỏng, gỉ sét. Tay nắm phụ của máy được thiết kế với kiểu dáng công thái học và cấu khởi động dài có chức năng điều khiển tốc độ biến thiên cùng với tay nắm chính có thể quay 360° giúp bạn cố định chiếc máy một cách dễ dàng và chính xác. Sản phẩm còn có dây dẫn điện dài nhằm giúp bạn di chuyển linh hoạt hơn, không bị hạn chế khoảng cách khi sử dụng - An toàn khi sử dụng Máy đục bê tông mũi lục giác Makita-HM0810 có tay cầm được thiết kế vừa tay người dùng, độ ma sát cao có tác dụng chống trượt kể cả khi tay bạn đang bị dính dầu nhớt hay bị ra mồ hôi tay trong lúc làm việc. Sản phẩm còn được tích hợp hệ thống cách điện kép tạo cho quá trình sử dụng được an toàn tuyệt đối, hạn chế các tai nạn về điện một cách hiệu quả nhất để bạn có thể yên tâm hơn khi sử dụng. THÔNG SỐ KỸ THUẬT Lượng điện tiêu thụ khi máy hoạt động liên tục: 900W Tốc độ đập / phút: 2900 Tổng chiều dài: 428mm (16-1/8’’) Dây dẫn điện: 5.0 m Mũi lục giác: 17mm Cách điện kép, mũi lục giác, hộp (vali) đựng đồ bằng kim loại Công Nhật Bản sản xuất tại Malaysia Khối lượng: cả hộp 10 kg Bảo hành 06 tháng SHOP CAM KẾT HÀNG CHẤT LƯỢNG CAO CAM KẾT HÀNG GIỐNG MÔ TẢ, HÌNH SHOP TỰ CHỤP ĐƯỢC KIỂM TRA HÀNG TRƯỚC KHI THANH TOÁN HOÀN TIỀN 100% NẾU SẢN PHẨM KÉM CHẤT Makita', 'dể dùng', 1270000, 'Máy đục Bê tông 0810 Makita- Bảo hành 6 tháng - Lỗi đồng nguyên chất.jpg', 0, NULL, NULL),
(59, 17, 7, 'Máy đục bê tông Makita HM1812 (28.6mm)', 'Máy đục bê tông Makita HM1812 (28.6mm) Thông số kỹ thuật: Công suất: 2,000W Lực đập: 62J Tốc độ đập: 870l/p Trọng lượng: 31.3kg Dây dẫn diện: 5m Sản xuất tại Nhật Bản Sản phẩm bao gồm: mũi đục nhọn Đây là dòng sản phẩm được trang bị công nghệ chống rung hiệu quả với công nghệ AVT Đại lý Makita chính hãng tại Tp. Hồ Chí Minh - Nhà Phân Phối Chính Hãng BOSCH , MAKITA, DEWALT, MILWAUKEE, UNIKA, HỒNG KÝMáy đục bê tông Makita HM1812 (28.6mm) Thông số kỹ thuật: Công suất: 2,000W Lực đập: 62J Tốc độ đập: 870l/p Trọng lượng: 31.3kg Dây dẫn diện: 5m Sản xuất tại Nhật Bản Sản phẩm bao gồm: mũi đục nhọn Đây là dòng sản phẩm được trang bị công nghệ chống rung hiệu quả với công nghệ AVT Đại lý Makita chính hãng tại Tp. Hồ Chí Minh - Nhà Phân Phối Chính Hãng BOSCH , MAKITA, DEWALT, MILWAUKEE, UNIKA, HỒNG KÝ', 'dể dùng', 34800000, 'Máy đục bê tông Makita HM1812 (28.6mm).jpg', 0, NULL, NULL),
(60, 10, 7, 'Máy khoan búa và vặn vít dùng pin DHP453SFX8 Makita', 'Máy khoan búa và vặn vít dùng pin DHP453SFX8 MakitaMáy khoan búa và vặn vít dùng pin DHP453SFX8 Makita thường được dùng để khoan lỗ, bắt vít trên đa dạng các loại vật liệu, đáp ứng các yêu cầu công việc hay nhu cầu sử dụng khác nhau. Sở hữu thiết kế nhỏ gọn, máy cho phép người dùng thoải mái thao tác trong khoảng thời gian dài và liên tục. Bên cạnh đó, công suất hoạt động vô cùng mạnh mẽ cũng là một trong những ưu điểm vượt trội của dòng máy này.Gia Phúc Ân chuyên cung cấp các loại máy công suất cao. Các dòng máy Makita đảm bảo chất lượng. Giao hàng siêu tốc trong nội thành. Mức giá cạnh tranh nhất trên thị trường kèm theo nhiều ưu đãi hấp dẫn.####Sản phẩm bao gồm1 pin + 1 sạcDung lượng pin3.0 Ah/ 18VĐường kính khoanThép 13mm, gỗ 36mm, tường 13mmTốc độ đậpCao 19,500 l/p, thấp 6,000 l/pTốc độ không tảiCao 1,300 v/p, 400 v/pLực vặn tối đa: Cứng/mềm42/27 N.mTrọng lượng1.7kg', 'dể dùng', 3784000, 'Máy khoan búa và vặn vít dùng pin DHP453SFX8 Makita.jpg', 0, NULL, NULL),
(61, 10, 7, 'Máy Khoan Búa(16Mm)(26 Cái Phụ Kiện) M8100KX2B - Makita', 'Máy Khoan Búa(16Mm)(26 Cái Phụ Kiện) M8100KX2BMáy Khoan Búa(16Mm)(26 Cái Phụ Kiện) M8100KX2B có công suất hoạt động mạnh mẽ, dễ dàng xử lý các vật liệu cứng như bê tông, thép, sắt... một cách dễ dàng. Máy khoan được cấu tạo từ chất liệu cao cấp cùng thiết kế thông minh, đảm bảo sự an toàn và thuận lợi cho người tiêu dùng.Gia Phúc Ân chuyên cung cấp các loại máy công suất cao. Đặc biệt các sản phẩm Makita chất lượng cao. Giao hàng siêu tốc trong nội thành. Mức giá cạnh tranh nhất trên thị trường kèm theo nhiều ưu đãi hấp dẫn. Bảo hành hấp dẫn với các sản phẩm lên đến 12 tháng. Liên hệ ngay: 0977446556####Công suất710WKhả năng khoan bê tông/ thép/ gỗ16/13/30Khả năng đầu cặp1.5 – 13mmTốc độ đập0 – 48,000l/pTốc độ không tải0 – 3.200v/pKích thước296x77x202mmTrọng lượng2.1kgDây dẫn điện2.0 m####Bộ 26 món phụ kiện', 'dể dùng', 2266000, 'Máy Khoan Búa(16Mm)(26 Cái Phụ Kiện) M8100KX2B - Makita.jpg', 0, NULL, NULL),
(62, 11, 8, 'JIMI Bộ tua vít chính xác đa năng JIMI 30 IN 1', 'Thông số kỹ thuật:Thương hiệuJIMIMàu sắcMàu xám đenChất liệu vỏABS + sơn cao suXử lý vật liệuHợp kim nhômVật liệu đầu lôĐài Loan nhập khẩu thép hợp kim S2Kích thước tay cầm115 x 10.8mmKích thước đầu lô45 x 4mmKích thước nhíp122 x 10mmKích cỡ gói166 x 77 x 26mm28 cái Loại bit: - PH2 / PH1 / PH0 / PH00 / PH000- H1.5 / H2.0 / H3.0- SL4.0 / SL3.0 / SL2.0 / SL1.5- T15H / T10H / T8H / T6H / T5H- T4/T3 / T2- Y2.0 / 3.0 / 4.0- U2.6- Tam giác2.3 Đặc trưng:- Tuốc nơ vít chính xác JIMI với 28 đầu có độ chính xác cao.- Đầu lô chính xác, thiết bị bảo vệ mạnh mẽ hơn.-Thiết kế giao diện từ tính mạnh mẽ, sử dụng linh hoạt hơn, tránh hỏng hóc.- Lưỡi bằng nhôm, bề mặt lưỡi đẹp và tinh tế hơn, tạo cảm giác thoải mái hơn.-Nút phóng tích hợp, pcông nghệ atent, hàng nghiêng, lựa chọn tiêu đề hàng loạt trực quan và thuận tiện hơn. -Có 10 loại, phù hợp cho đồng hồ thạch anh, máy ảnh, radio, máy tính, điện thoại di động, đồ chơi trẻ em, v.v. Đáp ứng hầu hết các yêu cầu bảo dưỡng chính xác hàng ngày.Gói bao gồm', 'dể dùng', 440473, 'JIMI Bộ tua vít chính xác đa năng JIMI 30 IN 1.jpg', 0, NULL, NULL),
(63, 11, 8, 'Bộ vặn vít Pick & Click 44 món - Bộ vặn vít Pick & Click 44 món', 'Mã máy : Hãng SX : BoschXuất xứ: : BoschBảo hành : 6 thángHotline : 0938.880.628Giá đã bao gồm thuế 10% VAT.####Bộ vặn vít Pick & Click 44 mónĐầu vít:PH2 x 65mmSố lượng10 mũi', 'dể dùng', 539000, 'htools-5001.jpg', 0, NULL, NULL),
(64, 11, 8, 'MÁY BẮN ĐINH RYOBI R18NL', 'MÁY BẮN ĐINH RYOBI R18NL. MÁY BẮN ĐINH RYOBI R18NL. RYOBI 18V ONE + Hệ thống có hơn 40 công cụ làm việc với nền tảng pin cùng, đem lại cho bạn sự linh hoạt tối hậu trong việc lựa chọn công cụ để có được công việc của bạn thực hiện. Bạn có thể có được thực hiện nhiều hơn trong thời gian ít hơn và cải thiện hiệu suất của tất cả các công cụ RYOBI 18V bao giờ thực hiện. Không có vấn đề làm thế nào bạn thêm nó lên, ONE + là một trong những hệ thống mang lại nhiều hơn nữa. lưu ý. Máyozitovà máyryobilà hàng nội địa của ÚC do china sản suất đạt tiêu chuẩn của úcVà được việt nam nhập vể là hàng đã qua sử dụng và đã đươc tuyển chọn hàng đạt chất lượng cửa úc các máy đều mới khoảng 90-95% chúng tôi nói rõ đễ khách hàng khỏi thác mắc, trân trọng cám ơn quý khách hàng đã ủng hộ sản phẩm cùa chúng tôi trong thời gian qua.Đa dạng sản phẩm. Cam kết hà. ng như hì. Đảm bảo về chất lượng sản phẩm. Liê. n hệ với shop nếu cần được tư vấn chi tiết về sản phẩm.', 'dể dùng', 1700000, 'MÁY BẮN ĐINH RYOBI R18NL.jpg', 0, NULL, NULL),
(65, 14, 8, 'BẮN ĐINH HƠI T RYOBI NỘI ĐỊA ÚC.', 'Features: máy bắn đinh dùng hơi, sung hoi ban dinh, súng bắn đinh dùng hơi, súng bắn đinh hơi, súng hơi bắn đinh. MÔ TẢ SẢN PHẨM. ĐÃ QUA SỬ DỤNG ĐẸP 95%. DÙNG BẮN GỖ. CHIỀU DÀI ĐINH 2CM-6CM. 1015 Qlo 1A, Bình Trị Đông A, Q. Bình Tân, HCM, Nguyen Anh An.Cam kết hàng đúng mô tả. Chất lượng đảm bảo An toàn đến Sức Khỏe người sử dụng. Đa dạng mẫu mã, màu sắc, kích cỡ. Đảm bảo cung cấp các sản phẩm đang được săn đón trên thị trường hiện nay. Xin vui lòng inbox Shop để được tư vấn thêm về chế độ Bảo Hành (nếu có) và thông tin chi tiết Sản phẩm.', 'dể dùng', 700000, 'BẮN ĐINH HƠI T RYOBI NỘI ĐỊA ÚC.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

DROP TABLE IF EXISTS `tbl_shipping`;
CREATE TABLE IF NOT EXISTS `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(16, 'nguyentansi', '123a', '0457854245', 'si7@gmail.com', 'a', NULL, NULL),
(17, 'nguyentansi', '123a', '04578542451', 'tansi711@gmail.com', 'h', NULL, NULL),
(18, 'nguyensi', '123b', '0123597894', 'nguyensi@gmail.com', 'a', NULL, NULL),
(19, 'nguyensi', '123b', '0123456987', 'nguyensi@gmail.com', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
