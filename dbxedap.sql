-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table xedap.account: ~1 rows (approximately)
INSERT INTO `account` (`user_mail`, `password`, `account_role`, `user_name`, `user_address`, `user_phone`, `otp`) VALUES
	('aaaa@gmail.com', '456', 1, 'le', 'trung', '1234567890', 0),
	('duongdt@fpt.com.vn', '123', 1, 'admin', 'FPT', '0123456789', 0);

-- Dumping data for table xedap.discount_coupon: ~4 rows (approximately)
INSERT INTO `discount_coupon` (`id`, `code`, `amount`, `due_date`, `email`, `used`) VALUES
	(1, 'sale1', 5, '2023/09/11', 'lam@gmail.com', 0),
	(2, 'sale2', 4, '2023/10/16', 'lam@gmail.com', 0),
	(3, 'sale3', 3, '2023/11/20', 'lam@gmail.com', 0),
	(4, 'sale4', 6, '2023/12/01', 'lam@gmail.com', 0);

-- Dumping data for table xedap.email_offer: ~0 rows (approximately)

-- Dumping data for table xedap.orders: ~0 rows (approximately)
INSERT INTO `orders` (`order_id`, `user_name`, `order_status`, `order_date`, `order_discount_code`, `order_address`) VALUES
	(1, 'le hao', 2, '2024-01-25 20:33:44', '123', 'thu duc ho chi minh');

-- Dumping data for table xedap.orders_detail: ~0 rows (approximately)
INSERT INTO `orders_detail` (`order_id`, `product_id`, `amount_product`, `price_product`) VALUES
	(1, 1, 1, 10490000);

-- Dumping data for table xedap.products: ~35 rows (approximately)
INSERT INTO `products` (`product_id`, `product_name`, `product_des`, `product_price`, `product_img_source`, `product_type`, `product_brand`) VALUES
	(1, 'Yadea i5s', 'Thiết kế nhỏ gọn, phối màu dễ thương', 10490000, 'https://xedienvietthanh.com/wp-content/uploads/2021/01/xe-dap-dien-yadea-i5s-thumbnail.jpg', 'Xe Đạp Điện', 'Yadea'),
	(2, 'Kenko m133', 'Xe đạp điện KENKO M133 là mẫu xe thích hợp dành cho lứa tuổi học sinh từ cấp 2', 14990000, 'https://xedienvietthanh.com/wp-content/uploads/2019/02/xe-dap-dien-kenko-m133-2.jpg', 'xe đạp điện', 'Kenko'),
	(3, 'Yadea i8', 'Xe đạp điện Yadea I8 - Mẫu xe điện hiện đại, nhỏ gọn và sang trọng', 13900000, 'https://xedienvietthanh.com/wp-content/uploads/2022/10/xe-dap-dien-yadea-i8-vietthanh-gau-dau-lotso-1.jpg', 'xe đạp điện', 'Yadea'),
	(4, 'Nijia 133c', 'Những mẫu xe đạp điện của hãng Nijia luôn theo tiêu chí nhỏ gọn, đơn giản nhưng thể hiện được phong cách trẻ trung, thích hợp với các bạn học sinh.', 9500000, 'https://xedienvietthanh.com/wp-content/uploads/2019/04/xe-dap-dien-nijia-133c-2.jpg', 'xe đạp điện', 'Nijia'),
	(5, 'Nijia 219', 'cập nhật....', 14000000, 'https://xedienvietthanh.com/wp-content/uploads/2017/03/ava-nijia-219-1.png', 'xe đạp điện', 'Nijia'),
	(6, 'M133 plus', 'Xe điện M133 Plus nhập khẩu – đơn giản và khỏe khoắn', 13990000, 'https://xedienvietthanh.com/wp-content/uploads/2021/10/Xe-dap-dien-133-plus-nhap-khau.jpg', 'xe đạp điện', 'cập nhật...'),
	(7, 'M133s mini', 'Xe đạp điện m133s mini chất lượng tốt, giá thành hợp lý', 7990000, 'https://xedienvietthanh.com/wp-content/uploads/2020/01/xe-dap-dien-m133s-mini-370x240-2.png', 'xe đạp điện', 'cập nhật...'),
	(8, 'DK 133M', 'Xe đạp điện DK 133M – dáng vẻ khỏe khoắn, thể thao', 11000000, 'https://xedienvietthanh.com/wp-content/uploads/2019/05/370x240-avata-DK133.png', 'xe đạp điện', 'DK'),
	(9, 'AIMA 133AM', 'Xe đạp điện Aima 133AM – thiết kế đơn giản', 14000000, 'https://xedienvietthanh.com/wp-content/uploads/2019/08/aima-133am-avata.png', 'xe đạp điện', 'AIMA'),
	(10, 'Yadea X-Joy', 'Thiết kế xe máy điện Yadea X-Joy thân thuộc với người dùng', 12990000, 'https://xedienvietthanh.com/wp-content/uploads/2019/11/xe-may-dien-yadea-XJoy.jpg', 'xe đạp điện', 'Yadea'),
	(11, 'Honda M8', 'Thiết kế xe đạp điện Honda M8 đầy đột phá', 15000000, 'https://xedienvietthanh.com/wp-content/uploads/2017/12/honda-m8.jpg', 'xe đạp điện', 'Honda'),
	(12, 'Nijia Smart', 'Xe đạp điện Nijia Smart được xem là dòng xe “bom tấn” giành được sự quan tâm đặc biệt của người dùng ngay từ khi ra mắt', 12990000, 'https://xedienvietthanh.com/wp-content/uploads/2021/06/xe-dap-dien-Nijia-Smart.jpg', 'xe đạp điện', 'Nijia'),
	(13, 'Nijia Swift', 'Xe đạp điện là phương tiện di chuyển được thiết kế trang nhã, thanh lịch, rất phù hợp với phái nữ', 11990000, 'https://xedienvietthanh.com/wp-content/uploads/2021/06/xe-dap-dien-Nijia-Swift.jpg', 'xe đạp điện', 'Nijia'),
	(14, 'DK Tron', 'Thiết kế xe đạp điện DK Tron đơn giản, nhỏ gọn. Nhưng lại khá thu hút cùng nhiều tính năng hữu ích đã hấp dẫn không ít người tiêu dùng Việt.', 17000000, 'https://xedienvietthanh.com/wp-content/uploads/2021/11/xe-dap-dien-dk-tron.jpg', 'xe đạp điện', 'DK'),
	(15, 'Nijia 20A', 'THIẾT KẾ MẶT XE SIÊU SANG - HỆ THỐNG ĐÈN XE SIÊU CHẤT', 8990000, 'https://xedienvietthanh.com/wp-content/uploads/2017/03/avt-nijjia20a-385x250.png', 'xe đạp điện', 'Nijia'),
	(16, 'Honda a3', 'Thiết kế dành cho học sinh, dễ dàng sử dụng', 6990000, 'https://xedienvietthanh.com/wp-content/uploads/2018/04/xe-dap-dien-gap-370x240f.png', 'xe đạp điện', 'Honda'),
	(17, 'DK Sparta', 'Xe đạp điện Sparta là phiên bản xe đạp điện mới xuất hiện của hãng DKBike', 18990000, 'https://xedienvietthanh.com/wp-content/uploads/2018/04/xe-dap-dien-dk-sparta.jpg', 'xe đạp điện', 'DK'),
	(18, 'DK Samurai', 'Xe đạp điện Samurai – phiên bản mới nhất của hãng DKBike – mang trong mình sức mạnh của 1 võ sĩ đạo – đúng như tên gọi của nó – “Samurai”', 19990000, 'https://xedienvietthanh.com/wp-content/uploads/2017/07/xe-dap-dien-samurai-21.jpg', 'xe đạp điện', 'DK'),
	(19, 'Pega Zingger', 'Thừa hưởng kiểu dáng đơn giản, nữ tính vốn là điểm mạnh của các dòng Zinger', 12690000, 'https://xedienvietthanh.com/wp-content/uploads/2017/04/zingger.png', 'xe đạp điện', 'Pega'),
	(20, 'DK MiKu Max', 'Xe đạp điện DK Miku Max SII là mẫu xe đạp trẻ trung, thể thao đến từ thương hiệu xe điện nổi tiếng Việt Nam DKBIKE', 15780000, 'https://xedienvietthanh.com/wp-content/uploads/2017/04/xe-dap-dien-dk-miku-max.jpg', 'xe đạp điện', 'DK'),
	(21, 'DK Poke', 'Xe đạp cho người trung tuổi', 10990000, 'https://xedienvietthanh.com/wp-content/uploads/2017/04/xe-dap-dien-dk-poke.jpg', 'xe đạp điện', 'DK'),
	(22, 'Kenko-Kenmax9', 'Thiết kế trang nhã, dáng gọn', 14800000, 'https://xedienvietthanh.com/wp-content/uploads/2022/08/den-hau-xe-may-dien-3-banh-kenko-kenmax9.jpg', 'xe đạp điện', 'Kenko'),
	(23, 'Foveret A8', 'XE ĐIỆN 3 BÁNH A8 CÓ MÁI CHE', 24990000, 'https://xedienvietthanh.com/wp-content/uploads/2022/08/xe-may-dien-3-banh-co-mai-che-2023.jpg', 'xe đạp điện', 'Forevet'),
	(24, 'Foveret VTX3', 'XE ĐIỆN 3 BÁNH VTX3 CÓ MÁI CHE', 25990000, 'https://xedienvietthanh.com/wp-content/uploads/2019/05/xe-dien-ba-banh-vtx3-mau-xam.jpg', 'xe đạp điện', 'Forevet'),
	(25, 'Forevet A8x', 'XE ĐIỆN 3 BÁNH A8x CÓ MÁI CHE', 24990000, 'https://xedienvietthanh.com/wp-content/uploads/2018/02/xe-may-dien-3-banh-mau-xanh.png', 'xe đạp điện', 'Forevet'),
	(26, 'Forevet Super Dilang', 'Xe điện 3 bánh là một phương tiện di chuyển tiện lợi, an toàn dành cho người lớn tuổi, người yếu chân, yếu tay', 27990000, 'https://xedienvietthanh.com/wp-content/uploads/2021/05/xe-dien-3-banh-super-dilang.jpg', 'xe đạp điện', 'Forevet'),
	(27, 'Kenko 3 Bánh', 'Xe điện ba bánh KENKO 3 chỗ ngồi', 23990000, 'https://xedienvietthanh.com/wp-content/uploads/2023/01/xe-dien-ba-banh-kenko-dai-dien.jpg', 'xe đạp điện', 'Kenko'),
	(28, 'KenKo Avarta 3x', 'cập nhật....', 23990000, 'https://xedienvietthanh.com/wp-content/uploads/2019/05/Avarta-3-banh-370x240.png', 'xe đạp điện', 'Kenko'),
	(29, 'Honda A6 Plus', 'Xe đạp điện Honda A6 Plus có bánh trước được thiết kế theo kiểu dáng vành tăm cổ điển, với thắng cơ an toàn ở tâm, giảm sóc trước êm ái và lốp cao su có ruột 22inch thông dụng.', 11990000, 'https://thegioixechaydien.com.vn/upload/hinhanh/thumb/xe-dap-dien-honda-a6-plus524.jpg', 'xe đạp điện', 'Honda'),
	(30, 'Honda Cool', 'Xe đạp điện Honda Cool vơi thiết kế vành tăm được làm tử nhôm hai lớp, với bán kình 20 inch và lốp xe có ruột chiếc xe là một trong những sản phẩm có khối lượng nhẹ nhất của nhà sản xuất Honda.', 9000000, 'https://thegioixechaydien.com.vn/upload/hinhanh/thumb/xe-dap-dien-honda-cool265.jpg', 'xe đạp điện', 'Honda'),
	(31, 'Yamaha Icats H5', 'Xe đạp điện Yamaha Icats H5 được thiết kế bánh trước với vành đúc hợp kim 5 chấu chắc chăn, thắng cơ an toan, phuộc nhún êm ái và bánh xe có ruột thông dụng.', 10300000, 'https://thegioixechaydien.com/wp-content/uploads/2015/05/icat-h1-1.jpg', 'xe đạp điện', 'Yamaha'),
	(32, 'Yamaha Icats H6', 'Xe đạp điện Yamaha Icats H6 với bánh đúc trước chắc chắn hơn và thắng đùm giúp người điều khiển làm chủ tốc độ khi điều khiển Xe đạp điện Yamaha Icats H6 trên mọi địa hình', 9600000, 'https://xedienducanh.com/upload/news/bang-gia-xe-dap-dien-yamaha-202110212.jpg', 'xe đạp điện', 'Yamaha'),
	(33, 'honda m8', 'ninja', 14990000, 'https://xedienvietthanh.com/wp-content/uploads/2022/05/xe-dien-ba-banh-vta1.jpg', 'xe đạp điện', 'ninja'),
	(34, 'honda m8', 'ninja', 14990000, 'https://xedienvietthanh.com/wp-content/uploads/2019/05/xe-dien-ba-banh-vt-super-2-cho-ngoi.jpg', 'xe đạp điện', 'ninja'),
	(35, 'honda m8', 'ninja', 14990000, 'https://xedienvietthanh.com/wp-csontent/uploads/2022/05/xe-dien-ba-banh-vts6.jpg', 'xe đạp điện', 'ninja');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
