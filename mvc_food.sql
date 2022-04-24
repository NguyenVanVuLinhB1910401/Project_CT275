-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 11:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(12) NOT NULL,
  `pttt` tinyint(4) NOT NULL DEFAULT 0,
  `ngaydat` varchar(100) DEFAULT current_timestamp(),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `taikhoan`, `name`, `address`, `tel`, `email`, `total`, `pttt`, `ngaydat`, `status`) VALUES
(85, 'user', 'Nguyễn Văn Vũ Linh', 'An Giang', '0329397325', 'linhb1910401@gmail.com', 120000, 0, '2022-04-14 18:48:43', 1),
(86, 'admin', 'Nguyễn Văn Vũ Linh', 'Phú Quí, Phú An, Phú Tân, An Giang', '0329397325', 'linhb1910401@gmail.com', 2145000, 0, '2022-04-15 16:01:52', 2),
(88, 'user', 'a', 'a', '0329397325', 'linhb1910401@gmail.com', 27000, 0, '2022-04-23 17:02:38', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `hinhsp` varchar(100) NOT NULL,
  `dongia` int(12) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(12) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `tensp`, `hinhsp`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(97, 'Pizza Meat Lover Supreme', 'Food-Name-3601.jpg', 70000, 1, 70000, 85),
(98, 'Pizza hải sản', 'Food-Name-8910.jpg', 50000, 1, 50000, 85),
(99, 'Sting hương dâu', 'Food-Name-8415.jpg', 9000, 1, 9000, 86),
(100, 'Pizza Meat Lover Supreme', 'Food-Name-3601.jpg', 70000, 1, 70000, 86),
(101, 'Pizza hải sản', 'Food-Name-8910.jpg', 50000, 1, 50000, 86),
(102, 'Number1', 'Food-Name-5661.jpg', 8500, 1, 8500, 86),
(103, 'Wake up 247 vị cà phê ', 'Food-Name-8119.jpg', 8500, 1, 8500, 86),
(104, 'Pizza phô mai', 'Food-Name-393.jpg', 100000, 1, 100000, 86),
(105, 'Pizza bò', 'Food-Name-7088.jpg', 150000, 1, 150000, 86),
(106, 'Pizza xúc xích', 'Food-Name-3540.jpg', 100000, 1, 100000, 86),
(107, 'Bánh Gato truyền thống', 'Food-Name-9268.jpg', 250000, 1, 250000, 86),
(108, 'Bánh tiramisu', 'Food-Name-8424.jpg', 200000, 1, 200000, 86),
(109, 'Bánh Mousse', 'Food-Name-5976.jpg', 99000, 1, 99000, 86),
(110, 'Bánh kem lạnh', 'Food-Name-1377.jpg', 100000, 1, 100000, 86),
(111, 'test', 'Food-Name-7392.jpg', 1000000, 1, 1000000, 86),
(114, 'Sting hương dâu', 'Food-Name-8415.jpg', 9000, 3, 27000, 88);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(17, 'Pizza', 'Food_Category_716.jpg', 'Yes', 'Yes'),
(18, 'Burger', 'Food_Category_642.jpg', 'Yes', 'Yes'),
(19, 'MoMo', 'Food_Category_453.jpg', 'Yes', 'Yes'),
(27, 'Bánh kem', 'Food_Category_424.jpg', 'Yes', 'Yes'),
(28, 'Nước ngọt', 'Food_Category_245.jpg', 'Yes', 'Yes'),
(40, 'Bia', 'Food_Category_213.jpg', 'Yes', 'Yes'),
(41, 'Rượu vang', 'Food_Category_365.jpeg', 'Yes', 'Yes'),
(42, 'Sinh tố', 'Food_Category_173.jpg', 'Yes', 'Yes'),
(43, 'a', '', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(23, 'Pizza Meat Lover Supreme', 'Một chiếc bánh pizza ngon rẻ, cỡ lớn sẽ đủ cho cả gia đình từ 3 đến 4 thành viên thưởng thức. Những miếng bánh pizza đế mềm, mỏng, rất thơm mà không khô cứng cùng phần nhân đầy ắp sẽ khiến bạn thích mê khi lựa chọn món.Chiếc bánh pizza này không chỉ có hành tây, khoai tây mà còn đầy ắp những miếng thịt ba chỉ, thịt gà, thịt bò xay thơm ngon lại quết thêm lớp phô mai hấp dẫn nữa.', '70000', 'Food-Name-3601.jpg', 17, 'Yes', 'Yes'),
(24, 'Pizza hải sản', 'Trong rất nhiều vị bánh pizza hiện nay thì vị pizza hải sản luôn nhận được  sự yêu mến của nhiều khách hàng. Nguyên liệu làm nên những chiếc bánh này đều là những nguyên liệu tươi như hải sản, bột bánh pizza tươi, dứa, hành, ớt chuông, sốt marinara,…Các nguyên liệu này kết hợp với nhau tạo thành những chiếc bánh pizza có hương vị thơm ngon cũng như đảm bảo đầy đủ chất dinh dưỡng cung cấp cho khách hàng.Bánh vừa có độ giòn vừa có độ mềm khiến cho người thưởng thức cảm nhận trọn hương vị của bánh. Mùi thơm từ những chiếc bánh pizza luôn có sức hút khó cưỡng đến với mọi người xung quanh.\r\n\r\nBạn sẽ không còn cảm thấy bị ngấy khi ăn pizza hải sản vì trên mặt bánh pizza có điểm thêm một số loại rau giúp cho bánh vừa có thêm chất xơ vừa giúp người thưởng thức ăn được nhiều hơn.\r\nHãy nhanh chân thưởng thức pizza hải sản để cùng cảm nhận hương vị vô cùng cuốn hút này!', '50000', 'Food-Name-8910.jpg', 17, 'Yes', 'Yes'),
(29, 'Sting hương dâu', 'Sting là một dạng nước ngọt với mùi vị thơm ngon, sảng khoái. Sản phẩm giúp cơ thể bù đắp nước, bổ sung năng lượng, vitamin C và E, giúp xua tan cơn khát và cảm giác mệt mỏi.', '9000', 'Food-Name-8415.jpg', 28, 'Yes', 'Yes'),
(30, 'Number1', 'Number 1 với sự kết hợp của Vitamin B3, Taurine, Inositol và Caffein giúp người sử dụng nạp nhanh năng lượng đồng thời duy trì sự tỉnh táo để chinh phục mọi thử thách.', '8500', 'Food-Name-5661.jpg', 28, 'Yes', 'Yes'),
(31, 'Wake up 247 vị cà phê ', 'Wake up 247 hương cà phê có thành phần tự nhiên giúp cơ thể bù đắp nước, bổ sung năng lượng, giúp tinh thần tỉnh táo, giúp xua tan cơn khát và cảm giác mệt mỏi. Sản phẩm thích hợp làm thức uống hàng ngày, cho cơ thể bạn khỏe mạnh và tràn đầy sức sống.', '8500', 'Food-Name-8119.jpg', 28, 'Yes', 'Yes'),
(32, 'Pizza phô mai', 'Sự hòa quyện của phô mai đã khiến những chiếc pizza dù là loại nhân nào cũng trở nên thu hút và tạo cảm giác hấp dẫn với những người thưởng thức. Nhờ có phô mai mà chiếc bánh sẽ có được vị béo ngậy và thơm ngon.Những chiếc bánh pizza phô mai hứa hẹn sẽ để lại ấn tượng khó quên với những người thưởng thức ngay từ lần đầu tiên nhờ vào thực đơn nhân bánh đa dạng kết hợp với loại sốt kiểu mới.', '100000', 'Food-Name-393.jpg', 17, 'Yes', 'Yes'),
(33, 'Pizza bò', 'Khi nhắc đến bánh pizza chắc chắn không thể không nhắc đến pizza bò. Nếu bạn đã từng thưởng thức những chiếc bánh pizza với nhiều hương vị khác nhau mà bỏ lỡ bánh pizza bò thì quả thật đáng tiếc.Chiếc bánh này được làm với nhân từ thịt bò.Bánh có vỏ màu vàng vô cùng hấp dẫn và thơm giòn. Trong nhân bánh là thịt bò hòa quyện với những nước sốt, gia vị được tẩm ước hoàn thành bởi những đầu bếp hàng đầu hiện nay.Nhưng thịt bò trong pizza không để miếng to mà phải băm nhỏ. Pizza bò với hương vị riêng biệt cũng chiếm được phần nhiều cảm tình trong lòng thực khách mỗi khi “order” pizza. Hương vị thơm ngon của chiếc bánh này đã để lại những ấn tượng khó phai đối với mọi khách hàng. Đối với những ai lần đầu thưởng thức thì chắc chắn sẽ có lần 2, lần 3 và nhiều lần sau nữa. Pizza bò vừa đơn giản về hình thức mà lại dễ dàng trong việc chế biến. Các chị em với sự giúp đỡ của các công cụ nhà bếp hoàn toàn có thể làm một chiếc pizza bò tại nhà ngon như ở nhà hàng.', '150000', 'Food-Name-7088.jpg', 17, 'Yes', 'Yes'),
(34, 'Pizza xúc xích', 'Đứng cuối danh sách pizza vị nào ngon nhưng pizza xúc xích lại không hề lép vế so với pizza hải sản và pizza bò chút nào. Xúc xích là một món ăn quen thuộc và hợp với đa số mọi người vì thế kết hợp với pizza, vị pizza xúc xích vẫn luôn được ưu ái. Với nguyên liệu đơn giản và không quá đắt, pizza xúc xích hoàn toàn có thể làm tại nhà dưới sự sáng tạo của các mẹ. Xúc xích mà kết hợp với xốt cà chua và phô mai thì đúng là không còn gì tuyệt hơn!', '100000', 'Food-Name-3540.jpg', 17, 'Yes', 'Yes'),
(35, 'Bánh Gato truyền thống', 'Là loại bánh sinh nhật quen thuộc nhất, bánh gato truyền thống có cốt bông lan xốp nhẹ kèm theo lớp mứt siro hoa quả và được bọc ngoài bởi lớp kem thơm, ngậy, không quá ngọt cũng không quá nhạt. Hiện tại, mẫu mã các loại bánh ngày càng sáng tạo, hương vị bánh cũng dần thay đổi để phù hợp với xu thế.Nếu bạn vẫn thích một chiếc bánh gato truyền thống trong ngày sinh nhật của mình thì có thể tham khảo một số hương vị thơm ngon, không dễ ngán như: bánh sữa chua, bánh trà xanh, cacao, hoa quả tổng hợp,...', '250000', 'Food-Name-9268.jpg', 27, 'Yes', 'Yes'),
(36, 'Bánh tiramisu', 'Có xuất xứ từ nước Ý, trong những năm gần đây Tiramisu đã trở thành một trong những loại bánh sinh nhật được ưa chuộng nhất. Phần cốt bánh xốp mềm, đậm vị cafe và rượu rum kết hợp phần kem béo ngậy giữa các lớp cốt bánh cực hợp, dễ ăn. Kích cỡ bánh cũng được tăng lên để phù hợp với tiệc sinh nhật đông người. Hơn nữa, nếu khéo tay bạn có thể tự làm Tiramisu tại nhà.', '200000', 'Food-Name-8424.jpg', 27, 'Yes', 'Yes'),
(37, 'Bánh Mousse', 'Một trong những ứng viên “ngon – độc – lạ” trong các loại bánh sinh nhật nên thử là bánh Mousse. Thuộc dòng bánh lạnh nên Mousse ăn rất mát, vị đa dạng như: trái cây, trà xanh, socola,... kết hợp kem tươi béo ngậy, mang hương vị mới lạ khó cưỡng.Điểm đặc biệt của loại bánh này là cách làm đơn giản, nhanh gọn và không cần sử dụng lò nướng.', '99000', 'Food-Name-5976.jpg', 27, 'Yes', 'Yes'),
(38, 'Bánh kem lạnh', 'Bánh kem lạnh – cái tên đã phần nào nói lên được sự độc đáo của loại bánh này. Thay vì phần cốt bánh bông lan thông thường, bánh sử dụng nguyên liệu chính là kem mát lạnh. Kem được đổ vào khuôn bánh, cho vào ngăn tủ lạnh, sau khi đông lại thì được xếp lại với nhau và trang trí thành một chiếc bánh lớn.Tuy loại bánh này ngon, lạ nhưng lại yêu cầu điều kiện bảo quản khắt khe và chỉ phù hợp với các bữa tiệc sinh nhật trong phòng bật điều hòa.', '100000', 'Food-Name-1377.jpg', 27, 'Yes', 'Yes'),
(39, 'Bánh Cheese Cake (Bánh phô mai)', 'Có nguyên liệu khá giống với bánh Mousse, tuy nhiên Cheese Cake sử dụng thêm kem phô mai (cream cheese) có vị chua nhè nhẹ. Đây là thành phần chính tạo nên độ ngon và lạ của loại bánh sinh nhật này.', '100000', 'Food-Name-4014.jpg', 27, 'Yes', 'No'),
(45, 'test', 'test', '1000000', 'Food-Name-7392.jpg', 17, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `mobile`, `address`, `email`, `status`) VALUES
(2, 'b1910401', '123', 'Vũ Linh', '0329397325', '20', 'linhb1910401@gmail.com', 1),
(11, 'b1910402', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn Vũ Linh', '0329397325', 'ag', 'linhb1910401@gmail.com', 1),
(12, 'b1910403', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn Vũ Linh', '0329397325', 'ag', 'linhb1910401@gmail.com', 1),
(13, 'b1910405', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn Vũ Linh', '0329397325', 'Phú Tân An Giang', 'linhb1910401@gmail.com', 1),
(14, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nguyễn Văn Vũ Linh', '0329397325', 'An Giang', 'linhb1910401@gmail.com', 1),
(15, 'b1910404', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nguyễn Văn Vũ Linh', '0329397325', 'An Giang', 'linhb1910401@gmail.com', 1),
(16, 'b1910406', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nguyễn Văn Vũ Linh', '0329397325', 'An Giang', 'linhb1910401@gmail.com', 1),
(17, 'b1910407', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nguyễn Văn Vũ Linh', '0329397325', 'An Giang', 'linhb1910401@gmail.com', 1),
(18, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Nguyễn Văn Vũ Linh', '0329397325', 'An Giang', 'linhb1910401@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_cart_ibfk_1` (`idbill`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
