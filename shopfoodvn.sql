-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 11:13 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopfoodvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(5, 'img/banners/bg2.jpg'),
(6, 'img/banners/bg3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(13, 2, 1, 219999),
(18, 28, 1, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Bánh'),
(2, 'Món Ăn'),
(3, 'Đồ Uống');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(13, 14, '2021-11-30 18:03:51', 'admin admin', '23423', 'nui thanh', '', 219999, '0'),
(18, 14, '2021-12-05 15:59:12', 'admin admin', '23423', 'nui thanh', '', 35000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', 1),
(13, 'Thích thì khuyến mãi', 'Khuyến mãi Ok', 100, '2020-07-18 11:26:06', 1),
(14, '', '', 0, '2020-07-21 10:10:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Sandwich', 'sandwich.jpg', 'Bánh Sandwich', 1),
(8, 'Bánh Truyền Thống', 'banhtruyenthong.jpg', 'Các loại bánh truyền thống của Việt Nam', 1),
(10, 'Bánh Kem', 'banhkem.jpeg', 'Các loại bánh Kem', 1),
(15, 'Món Bún', 'monbun.jpg', 'Các loại món bún ngon', 2),
(32, 'Nước giải khát ', 'nuocgiaikhat.jpg', 'Các loại nước giải khát', 3),
(35, 'Nước trái cây', 'nuoctraicay.png', 'Các loại nước trái cây', 3),
(36, 'Đồ uống có cồn', 'DUcocon.jpg', 'Các loại đồ uống có cồn', 3),
(42, 'Món Gỏi', 'mongoi.jpg', 'Các loại gỏi ngon', 2),
(43, 'Món Cơm', 'moncom.jpg', 'Các loại món cơm thơm ngon', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'admin', 'admin', 'nam', '23423', 'admin@gmail.com', 'nui thanh', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(15, 'a', 'c', '', '1234567890', 'a@gmail.com', '', '123456', '040d9b33af7249502cd6ec06c422755a', 1, 1),
(16, 'nguyen', 'long', '', '149191512859', 'longkai21112002@gmail.com', '', 'long123', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(17, 'nguyen', 'long', '', '142421421441', 'longk@gmail.com', '', 'long1234', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(50, 'long', 'ha', 'Nam', '1241', 'longkai21112002@gmail.com', 'fSFFSASF', 'toi123', 'c4ded2b85cc5be82fa1d2464eba9a7d3', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `LSP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiSX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuongHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhoiLuong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuongCo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThanhPhan` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BaoQuan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CachSD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `LSP`, `NoiSX`, `ThuongHieu`, `KhoiLuong`, `SoLuongCo`, `ThanhPhan`, `BaoQuan`, `CachSD`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(1, 10, 1, 'Bánh Kem Dâu Tây', 159999, 1, 'img/products/BKDT1.jpg', '/img/products/BKDT2.jpg', '/img/products/BKDT3.jpg', 1, 'Bánh Kem', 'Việt Nam', 'Shopfood', '500g', '1', ' Dâu Tây, Trứng Gà, Bột Mì, Đường, Kem Whipping, Muối, Vani, Bơ Nhạt, Dầu Ăn\r\n\r\n', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bánh dâu tây là một loại bánh ngọt sử dụng dâu tây làm nguyên liệu chính. Dâu tây có thể trộn với hỗn hợp làm bánh, đặt lên trên đỉnh bánh và trong lớp kem phủ của bánh<br><br> Bánh có vị ngọt chua của dâu tây, vị béo của kem, kết hợp với sự mềm mại từ bột mì và các nguyên liệu khác<br><br>Phù hợp với những bữa tiệc,sự kiện,...', '2021-11-23 15:48:09'),
(2, 10, 1, 'Bánh Kem SOCOLA', 219999, 1, 'img/products/BKSCL1.jpg', '/img/products/BKSCL2.jpg', '/img/products/BKSCL3.jpg', 1, 'Bánh Kem', 'Việt Nam', 'Shopfood', '500g', '1', 'Socola, Bột Ca Cao, Dầu Bắt, Rượu Vang, Bột Mì, Đường, Siro Chocolate, Kem Whipping, Cherry', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bánh Kem Socola Là Một Loại Bánh Ngọt Sử Dụng Socola Làm Nguyên Liệu Chính. Socola Có Thể Trộn Với Hỗn Hợp Làm Bánh, Đặt Lên Trên Đỉnh Bánh Và Trong Lớp Kem Phủ Của Bánh\r\n<br><br>\r\nBánh Có Vị Ngọt đậm của Socola, Vị Béo Của Kem, Kết Hợp Với Sự Mềm Mại Từ Bột Mì Và Các Nguyên Liệu Khác\r\n<br><br>\r\nPhù Hợp Với Những Bữa Tiệc,Sự Kiện,...', '2021-11-21 19:19:36'),
(3, 10, 1, 'Bánh Kem Tiramisu', 259999, 20, 'img/products/BKT2.jpg', '/img/products/BKT1.jpg', '/img/products/BKT3.jpg', 1, 'Bánh Kem', 'Việt Nam', 'Shopfood', '500g', '1', 'Bột Bánh, Bột Bắp, Trứng Gà, Đường Cát Trắng, Dầu Ăn, Sữa Tươi, Bột Cacao, Bột Cà Phê, Chocolate Đen, Whipping Cream, Mascapone Cheese, Rượu Kahlua, Rượu Amaretto\r\n\r\n', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bánh Kem Socola Là Một Loại Bánh Ngọt Sử Dụng Các Nguyên Liệu Chính như bột ca cao, chocolate. Những nguyên liệu này Có Thể Trộn Với Hỗn Hợp Làm Bánh, Đặt Lên Trên Đỉnh Bánh Và Trong Lớp Kem Phủ Của Bánh\r\n<br><br>\r\nBánh Có Vị Ngọt Đậm Của chocolate, Vị Béo Của Kem, Kết Hợp Với Sự Mềm Mại Từ Bột Mì Và Các Nguyên Liệu Khác\r\n<br><br>\r\nPhù Hợp Với Những Bữa Tiệc,Sự Kiện,...', '2021-11-21 19:23:16'),
(4, 8, 1, 'Bánh Tiêu', 20000, 5, 'img/products/BTTT1.jpg', '/img/products/BTTT2.jpg', '/img/products/BTTT3.jpg', 1, 'Bánh Truyền Thống', 'Việt Nam', 'Shopfood', '300g', '5', 'Bột mì, vừng(mè), nước ấm, dầu ăn, men nở, đường, muối', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bánh tiêu nóng thổi, thơm phức là lựa chọn hấp dẫn đối với nhiều người vào những lúc đói bụng\r\n<br><br> \r\nBánh sử dụng nguyên liệu chính là bột mì cùng với mè rang được chiên phồng thơm phức, miếng bánh mềm, giòn nhẹ vô cùng hấp dẫn', '2021-11-21 19:28:23'),
(5, 8, 1, 'Bánh Đúc', 30000, 5, 'img/products/BTTD1.jpg', '/img/products/BTTD2.jpg', '/img/products/BTTD3.jpg', 1, 'Bánh Truyền Thống', 'Việt Nam', 'Shopfood', '300g', '5', 'Bột gạo, bột năng, nhân có thịt nạc băm, tôm cắt hạt lựu, cà rốt, củ cải trắng', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Những chiếc bánh đúc nóng hổi với thịt băm và mộc nhĩ (nấm mèo), chan thêm miếng nước mắm chua ngọt mà tả thôi cũng đã thấy cồn cào trong bụng.\r\n<br><br>\r\nBánh đúc của Việt Nam đã đem đến một hương vị gây thương nhớ đối với những thực khách trong nước và cả ngoài nước.', '2021-11-23 14:20:32'),
(6, 8, 1, 'Bánh Bột Lọc', 30000, 10, 'img/products/BTTB1.jpg', '/img/products/BTTB2.jpg', '/img/products/BTTB3.jpg', 1, 'Bánh Truyền Thống', 'Việt Nam', 'Shopfood', '300g', '10', 'Tôm, thịt, bột năng, hành lá, ớt bột, dầu ăn, nước mắm, nguyên liệu thông dụng', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bánh bột lọc với vỏ bánh dai dai nhân tôm thịt hoặc nhân đậu xanh được ướp đậm đà dùng kèm với nước mắm mặn ngọt cay cay vô cùng hấp dẫn.\r\n<br><br>Bánh bột lọc luôn là món bánh yêu thích của nhiều gia đình, đặc biệt là những dịp cuối tuần.', '2021-11-21 19:33:15'),
(28, 35, 3, 'Nước táo', 35000, 1, 'img/products/DUNT3.jpg', '/img/products/DUNT2.jpg', '/img/products/DUNT1.jpg', 1, 'Nước Trái Cây', 'Việt Nam', 'Shopfood', '40g', '1 ly', 'Calo,\r\nNước,\r\nProtein,\r\nCarbs,\r\nĐường,\r\nChất xơ,\r\nChất béo,', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Nước táo là một loại đồ uống hình thành do ép trái táo, không chỉ có vị ngọt ngon mà còn bổ sung các chất dinh dưỡng cần thiết cho sức khỏe.\r\n<br><br>\r\nĐây cũng là một loại nước giúp giảm cân hiệu quả', '2021-11-23 16:14:58'),
(30, 36, 3, 'Bia Larue', 10000, 1, 'img/products/DUB1.jpg', '/img/products/DUB2.jpg', '/img/products/DUB3.jpg', 1, 'Đồ uống có cồn', 'Việt Nam', 'Shopfood', '35g', '1 lon', 'Tinh bột, Các loại đờng, Khoáng, Prôtit, Chất béo, lúa mạch, nước', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bia Larue được yêu thích từ thiết kế mẫu mã, ấn tượng nam tính với logo biểu tượng con cọp, đến màu sắc bia, hương vị bia và nhất là cảm giác sảng khoái, độ cồn nhẹ, không lo nhức đầu sau khi uống nên rất được rất nhiều người tin dùng', '2021-11-23 16:16:15'),
(31, 32, 3, 'Coca-cola', 30000, 1, 'img/products/DUC1.jpg', '/img/products/DUC2.jpg', '/img/products/DUC3.jpg', 1, 'Nước Giải Khát', 'Việt Nam', 'Shopfood', '35g', '1 lon', 'Nước có ga, đường, Caffeine, Axit photphoric v. Caramel (E150d), Hương liệu tự nhiên từ lá coca', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Nước giải khát coca-cola là một sự lựa chòn hoàn hảo sau một ngày làm việc, vui chơi và học tập', '2021-11-23 16:21:59'),
(33, 36, 3, 'Bia Heineken', 20000, 1, 'img/products/DUBH1.jpg', '/img/products/DUBH2.jpg', '/img/products/DUBH3.jpg', 1, 'Đồ uống có cồn', 'Việt Nam', 'Shopfood', '35g', '1 lon', 'Nước, Đại mạch, Chiết xuất hoa bia, hương tự nhiên,năng lượng, Chất béo', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Heineken mang đến cho người tiêu dùng thêm một sự lựa chọn mới cho tất cả mọi thời điểm trong ngày. Họ có thể thưởng thức Heineken ngay tại chỗ làm, tại phòng gym, trong giờ ăn trưa và thậm chí là ngay trước khi lái xe – do đây là sản phẩm bia không có cồn', '2021-11-23 16:17:13'),
(35, 32, 3, '7 Up', 30000, 0, 'img/products/DU71.jpg', '/img/products/DU73.jpg', '/img/products/DU72.png', 1, 'Nước Giải Khát', 'Việt Nam', 'Shopfood', '35g', '1', 'nước có ga, axit citric đường, lithium citrate, natri citrate và tinh dầu chanh', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Nước giải khát 7 up với hương vị canh thơm ngát sẽ giúp bạn tỉnh táo sau khi lao động', '2021-11-23 16:17:43'),
(42, 32, 3, 'Pepsi', 30000, 1, 'img/products/DUP1.jpg', '/img/products/DUP2.jpg', '/img/products/DUP3.jpg', 1, 'Nước Giải Khát', 'Việt Nam', 'Shopfood', '35g', '1 lon', 'Nước có gas\r\n\r\nSyrup bắp fructose cao (HFCS)\r\n\r\nMàu caramel\r\n\r\nĐường\r\n\r\nAcid photphoric\r\n\r\nCaffeine\r\n\r\nOtric Acid\r\n\r\nHương tự nhiên\r\n\r\nKali\r\n\r\nPhotpho', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Nước giải khát Pepsi là một những loại nước giải khát phổ biến, giúp bạn giải khát sau khi làm việc', '2021-11-22 20:17:45'),
(43, 1, 1, 'Sandwich Kẹp Thịt', 59999, 10, 'img/products/SW3.jpg', '/img/products/SW1.jpg', '/img/products/SW2.jpg', 1, 'Sandwich', 'Việt Nam', 'Shopfood', '450g', '4', 'Thịt, Bánh Mì Sandwich, Bột Tỏi, Bơ Lạt, Hành Lá, Đường, Hạt Nêm, Tiêu, Trứng Gà', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng Trực Tiếp, Ngon Hơn Khi Dùng Thêm Nước Sốt', 0, 0, 1, 'Là Sản Phẩm Bánh Sandwich Tươi Quen Thuộc Đến Từ Thương Hiệu Bánh Shopfood, Mang Đến Bữa Ăn Sáng Vô Cùng Tiện Lợi.<br><br> Bánh Sandwich Có Lớp Vỏ Giòn Giòn, Thơm Mùi Bơ, Kẹp Ở Giữa Là Các Loại Rau Cải Tươi Mát, Phần Thịt Mềm Mọng, Đậm Đà Hương Vị,... <br><br>Cung Cấp Năng Lượng Cho Ngày Dài Hoạt Động.', '2021-11-22 22:02:11'),
(44, 1, 1, 'Sandwich Kẹp Tôm', 99999, 4, 'img/products/SWT2.jpg', '/img/products/SWT1.jpg', '/img/products/SWT3.jpg', 1, 'Sandwich', 'Việt Nam', 'Shopfood', '450g', '4', 'Tôm, Bánh Mì Sandwich, Bột Tỏi, Bơ Lạt, Hành Lá, Đường, Hạt Nêm, Tiêu, Trứng Gà', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng Trực Tiếp, Ngon Hơn Khi Dùng Thêm Nước Sốt', 0, 0, 1, 'Là Sản Phẩm Bánh Sandwich Tươi Quen Thuộc Đến Từ Thương Hiệu Bánh Shopfood, Mang Đến Bữa Ăn Sáng Vô Cùng Tiện Lợi.<br><br>Bánh Sandwich Có Lớp Vỏ Giòn Giòn, Thơm Mùi Bơ, Kẹp Ở Giữa Là Các Loại Rau Cải Tươi Mát, Phần Tôm Mềm Mọng, Đậm Đà Hương Vị,... <br><br>Cung Cấp Năng Lượng Cho Ngày Dài Hoạt Động.', '2021-11-22 22:01:48'),
(45, 1, 1, 'Sandwich Kẹp Xúc Xích', 99999, 4, 'img/products/SWX2.jpg', '/img/products/SWX1.jpg', '/img/products/SWX3.jpg', 1, 'Sandwich', 'Việt Nam', 'Shopfood', '450g', '4', 'Xúc Xích, Bánh Mì Sandwich, Bột Tỏi, Bơ Lạt, Hành Lá, Đường, Hạt Nêm, Tiêu, Trứng Gà', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng Trực Tiếp, Ngon Hơn Khi Dùng Thêm Nước Sốt', 0, 0, 1, 'Là Sản Phẩm Bánh Sandwich Tươi Quen Thuộc Đến Từ Thương Hiệu Bánh Shopfood, Mang Đến Bữa Ăn Sáng Vô Cùng Tiện Lợi.\r\n<br><br>Bánh Sandwich Có Lớp Vỏ Giòn Giòn, Thơm Mùi Bơ, Kẹp Ở Giữa Là Các Loại Rau Cải Tươi Mát, Phần Xúc Xích Nóng Hổi, Đậm Đà Hương Vị,... <br><br>Cung Cấp Năng Lượng Cho Ngày Dài Hoạt Động.', '2021-11-23 14:08:58'),
(47, 1, 1, 'Sandwich Phô Mai', 99999, 4, 'img/products/SWP2.jpg', '/img/products/SWP1.jpg', '/img/products/SWP3.jpg', 2, 'Sandwich', 'Việt Nam', 'Shopfood', '450g', '4', 'Phô Mai, Bánh Mì Sandwich, Sữa Tươi Không Đường, Bơ Lạt, Đường, Tiêu, Muối Hồng (Muối Ăn), Trứng Gà', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng Trực Tiếp, Ngon Hơn Khi Dùng Thêm Nước Sốt', 0, 0, 1, 'Là Sản Phẩm Bánh Sandwich Tươi Quen Thuộc Đến Từ Thương Hiệu Bánh Shopfood, Mang Đến Bữa Ăn Sáng Vô Cùng Tiện Lợi.<br> <br>Bánh Sandwich Có Lớp Vỏ Giòn Giòn, Thơm Mùi Bơ, Kẹp Ở Giữa Là Các Loại Rau Cải Tươi Mát, Phần Phô Mai Mềm Mọng, Đậm Đà Hương Vị,...<br><br> Cung Cấp Năng Lượng Cho Ngày Dài Hoạt Động.', '2021-11-30 15:22:19'),
(48, 1, 1, 'Sandwich Thanh Cua', 139999, 4, 'img/products/SWTC1.jpg', '/img/products/SWTC3.jpg', '/img/products/SWTC2.png', 1, 'Sandwich', 'Việt Nam', 'Shopfood', '450g', '4', 'Thanh Cua, Bánh Mì Sandwich, Bột Tỏi, Bơ Lạt, Hành Lá, Đường, Hạt Nêm, Tiêu, Trứng Gà', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng Trực Tiếp, Ngon Hơn Khi Dùng Thêm Nước Sốt', 0, 0, 1, 'Là Sản Phẩm Bánh Sandwich Tươi Quen Thuộc Đến Từ Thương Hiệu Bánh Shopfood, Mang Đến Bữa Ăn Sáng Vô Cùng Tiện Lợi.<br><br>Bánh Sandwich Có Lớp Vỏ Giòn Giòn, Thơm Mùi Bơ, Kẹp Ở Giữa Là Các Loại Rau Cải Tươi Mát, Phần Thanh Cua Giòn Đều, Đậm Đà Hương Vị,... <br><br>Cung Cấp Năng Lượng Cho Ngày Dài Hoạt Động.', '2020-07-22 22:01:02'),
(49, 42, 2, 'Nộm rau muống', 32000, 1, 'img/products/MARM1.png', 'img/products/MARM2.jpg', 'img/products/MARM3.jpg', 1, 'Món Gỏi', 'Việt Nam', 'Shopfood', '500g', '1', 'Rau muống, lạc rang, rau kinh giơi, rau mùi, tỏi, ớt, canh, nước mắm', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Món nộm rau muống khô, không có nước, rau xanh không bị nát, bị nẫu, ăn giòn, ngon, thơm ngậy mùi vừng và lạc hòa quyện cùng vị chua cay mặn ngọt.', '2021-11-23 15:50:46'),
(50, 42, 2, 'Gỏi ngó sen tôm thịt', 32000, 1, 'img/products/MAG1.jpg', '/img/products/MAG2.jpg', '/img/products/MAG3.png', 1, 'Món Gỏi', 'Việt Nam', 'Shopfood', '500g', '1', 'Tôm sú, thịt ba chỉ, ngó sen, cà rốt, hành tây, tỏi, ớt, hành tàu', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Gỏi ngó sen tôm thịt là món gỏi phổ biến trong các bữa tiệc, được nhiều người yêu thích bởi hương vị thanh ngọt của tôm, thịt, giòn giòn chua chua của rau củ', '2021-11-23 15:49:35'),
(51, 42, 2, 'Nộm xoài hải sản', 35000, 1, 'img/products/MANX1.jpg', '/img/products/MANX2.jpg', '/img/products/MANX3.jpg', 1, 'Món Gỏi', 'Việt Nam', 'Shopfood', '500g', '1', 'Xoài tượng, mực ống, củ kiệu, hành tím ngâm chua, lạc rang, nước nắm, nước cốt chanh, đường, ớt xoay, tỏi, rau thơm', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Nộm xoài hải sản có vị chua chua từ xoài, bùi bùi từ lạc, mềm ngọt từ tôm và mùi thơm từ lá húng là mùi chắc chắn sẽ đánh thức vị giác của mỗi người để chuẩn bị “ đánh bay” mâm cơm gia đình', '2021-11-23 15:50:01'),
(52, 43, 2, 'Cơm gà', 50000, 10, 'img/products/MACG3.jpg', '/img/products/MACG2.jpg', '/img/products/MACG1.jpg', 1, 'Món Cơm', 'Việt Nam', 'Shopfood', '500g', '1', 'Gạo, thịt gà, rau, gia vị', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Cơm gà là món ăn được chế biến và trình bày với hình thức cơm và thịt gà, đây là một món khá phổ biến ở Việt Nam.', '2021-11-23 15:50:25'),
(53, 42, 2, 'Nộm bò bóp thấu', 30000, 10, 'img/products/MGB1.jpg', '/img/products/MGB2.jpg', '/img/products/MGB3.jpg', 1, 'Món Gỏi', 'Việt Nam', 'Shopfood', '500g', '1', 'Thịt bò, quả khế, hành tây, gừng, hành tím, rau mùi, chanh, ớt, muối, đường, bột canh, nước mắm, hạt tiêu, vừng trắng rang', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Món gỏi nộm bò bóp thấu là sự kết hợp của thịt bò với các loại rau thơm, củ quả, gia vị giúp món bò bóp thấu vừa đậm đà, thơm ngon lại vô cùng thanh mát. Dùng bò bóp thấu làm món khai vị sẽ giúp kích thích vị giác rất tốt', '2021-11-23 16:48:29'),
(54, 15, 2, 'Bún đậu mắm tôm', 30000, 1, 'img/products/MAB1.jpg', '/img/products/MAB2.jpg', '/img/products/MAB3.jpg', 1, 'Món Bún', 'Việt Nam', 'Shopfood', '500g', '1', 'Bún lá, chậu cốm, đậu hũ, thịt chân giò, các loại rau ăn kèm, mắm tôm, quất, ớt, tỏi, đường, muối, dầu ăn, mì chính và rượu trắng', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bún đậu mắm tôm là món ăn đơn giản, dân dã trong ẩm thực miền Bắc Việt Nam.\r\n<br><br> Đây là món thường được dùng như bữa ăn nhẹ, ăn chơi', '2021-11-23 17:06:27'),
(55, 15, 2, 'Bún riêu cua', 30000, 1, 'img/products/MABR1.jpg', '/img/products/MABR2.jpg', '/img/products/MABR3.jpg', 1, 'Món Bún', 'Việt Nam', 'Shopfood', '500g', '1', 'Bún tươi, cua đồng, thịt xay, tôm khô, trứng gà, bì đầu phụ, cà chua, hành lá, hành khô, tỏi, dấm bỗng, mắm tôm', 'Lưu Trữ Ở Nơi Khô Ráo Và Mát Mẻ', 'Dùng trực tiếp', 0, 0, 1, 'Bún riêu cua là món ăn đặc trưng của đồng quê Việt Nam, được làm từ những nguyên liệu dân dã, quen thuộc với các vùng nông thôn\r\n<br><br>\r\nNó sẽ làm bạn cảm giác thanh thanh như trở về vùng quê xanh ngát khi ăn.', '2021-11-23 17:10:19'),
(57, 1, 1, 'Điện thoại iPhone SE 12', 14490000, 10, 'img/products/ip1.png', '/img/products/ip2.jpg', '/img/products/ip3.jpg', 1, 'IPS LCD, 4.7\", Retina', 'Chính 12 MP & Phụ 12 MP', '7 MP', 'Apple A13 Bionic 6 nhân', '8 GB', '128 GB', '', '2691 mAh, có sạc nhanh', 0, 0, 1, '<p>Sau bao ngày chờ đợi, iPhone SE 2020 cuối cùng đã được ra mắt làm thỏa mãn triệu tín đồ Táo khuyết. Sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.</p><p>Thiết kế nhỏ gọn trong lòng bàn tay.</p><p>Cấu hình “không đối thủ” trong tầm giá</p><p>Camera đơn - đa tính năng</p><p>Sở hữu công nghệ đỉnh cao với mức giá phải chăng</p>', '2020-07-23 17:20:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Constraints for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
