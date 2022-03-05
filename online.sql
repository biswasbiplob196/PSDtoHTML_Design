-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2016 at 12:58 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `user_id`, `quantity`, `price`) VALUES
('mobile20161211153710', 'sapgreengem@gmail.com', '1', '71000'),
('', 'sapgreengem@gmail.com', '1', ''),
('mobile20161228010310', 'sapgreengem@gmail.com', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `product_id` varchar(50) DEFAULT NULL,
  `product_type` varchar(30) NOT NULL,
  `supplier_name` varchar(20) NOT NULL,
  `supplier_address` varchar(20) DEFAULT NULL,
  `supplier_contact_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`product_id`, `product_type`, `supplier_name`, `supplier_address`, `supplier_contact_no`) VALUES
('mobile20161228010310', 'Mobile/Tablet', 'Samsung', 'Dhanmondi', '01675560322'),
('computer20161228010330', 'Desktop/Laptop', 'Dell', 'USA', '01554266498'),
('mobile20161228014724', 'Mobile/Tablet', 'Asus', 'Dhanmondi', '01915693735'),
('mobile20161228015114', 'Mobile/Tablet', 'Asus', 'Dhanmondi', '01915693735'),
('mobile20161228015421', 'Mobile/Tablet', 'Asus', 'Dhanmondi', '01915693735'),
('mobile20161228015743', 'Mobile/Tablet', 'Asus', 'Dhanmondi', '01915693735'),
('mobile20161228022008', 'Mobile/Tablet', 'Asus', 'Dhanmondi', '01915693735'),
('computer20161228022639', 'Desktop/Laptop', 'Dell', 'Banani', '01675560322'),
('computer20161228023215', 'Desktop/Laptop', 'Dell', 'Banani', '01675560322'),
('computer20161228025215', 'Desktop/Laptop', 'Dell', 'Banani', '01675560322'),
('computer20161228052337', 'Desktop/Laptop', 'HP', 'Mohakahali', '01554689899'),
('computer20161228052717', 'Desktop/Laptop', 'HP', 'Mohakahali', '01554689899'),
('computer20161228053111', 'Desktop/Laptop', 'Acer', 'Banani', '01721074829'),
('computer20161228053422', 'Desktop/Laptop', 'Acer', 'Banani', '01721074829'),
('mobile20161228053841', 'Mobile/Tablet', 'HTC', 'Gulshan', '01657892456'),
('mobile20161228054101', 'Mobile/Tablet', 'HTC', 'Gulshan', '01657892456'),
('mobile20161228054514', 'Mobile/Tablet', 'Xiaomi', 'Dhanmondi', '01258888885'),
('mobile20161228054739', 'Mobile/Tablet', 'Xiaomi', 'Dhanmondi', '01258888885'),
('mobile20161228054915', 'Mobile/Tablet', 'Xiaomi', 'Dhanmondi', '01258888885'),
('computer20161228055337', 'Desktop/Laptop', 'HP', 'Mohakahali', '01554689899'),
('computer20161228055611', 'Desktop/Laptop', 'HP', 'Mohakahali', '01554689899');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(50) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_quantity` varchar(5) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `commission` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_title`, `product_type`, `product_price`, `product_quantity`, `product_image`, `commission`) VALUES
('computer20161228010330', 'Inspiron 15 i5559-46', 'Dell Inspiron 15 i5559-4682SLV Signature Edition Laptop', 'Desktop/Laptop', '65000', '20', 'computer20161228010330.jpg', '3'),
('computer20161228022639', 'Inspiron I3558-5500B', 'Dell - Inspiron 15.6" Laptop - Intel Core i3 - 4GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '45000', '52', 'computer20161228022639.jpg', '3'),
('computer20161228023215', 'Inspiron 15 5559', 'Dell - Inspiron 15.6" Laptop - Intel Core i3 - 4GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '45250', '36', 'computer20161228023215.jpg', '3'),
('computer20161228025215', 'Inspiron 15 Gaming', 'Inspiron 15 Gaming Non-Touch', 'Desktop/Laptop', '65000', '64', 'computer20161228025215.jpg', '3'),
('computer20161228052337', 'HP Pavelion', 'HP Pavelion 15.6" Laptop - Intel Core i3 - 4GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '65000', '50', 'computer20161228052337.jpg', '2'),
('computer20161228052717', 'HP Pavelion', 'HP Pavelion 14" Laptop - Intel Core i3 - 4GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '45000', '23', 'computer20161228052717.jpg', '3'),
('computer20161228053111', 'Acer Aspire 3537u', 'Acer- Aspire 15.6" Laptop - Intel Core i5 - 4GB Memory - 750GB Hard Drive - Silver', 'Desktop/Laptop', '60000', '44', 'computer20161228053111.jpg', '2'),
('computer20161228053422', 'Acer Aspire V5 3597', 'Acer- Aspire 15.6" Laptop - Intel Core i5 - 8GB Memory - 750GB Hard Drive - Black', 'Desktop/Laptop', '68000', '40', 'computer20161228053422.jpg', '3'),
('computer20161228055337', 'HP Custom', 'HP Custom 14"HP monitor Desktop- Intel Core i3 - 4GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '45000', '20', 'computer20161228055337.jpg', '4'),
('computer20161228055611', 'HP Custom', 'HP Custom 21"HP monitor Desktop- Intel Core i5 - 8GB Memory - 1TB Hard Drive - Black', 'Desktop/Laptop', '80000', '32', 'computer20161228055611.jpg', '4'),
('mobile20161228010310', 'J7', 'Samsung J7 dous 8GB 1GB', 'Mobile/Tablet', '24000', '99', 'mobile20161228010310.jpg', '2'),
('mobile20161228014724', 'Zenfone 3 Deluxe ZS5', 'Released 2016, August 170g, 7.5mm thickness Android OS, v6.0.1 64/128/256GB storage, microSD card sl', 'Mobile/Tablet', '20000.00', '50', 'mobile20161228014724.jpg', '2'),
('mobile20161228015114', 'Zenfone 3 ZE520KL', 'Released 2016, August 144g, 7.7mm thickness Android OS, v6.0.1 32GB storage, microSD card slot', 'Mobile/Tablet', '20500', '20', 'mobile20161228015114.jpg', '2'),
('mobile20161228015421', 'Zenpad Z10 ZT500KL', 'Released 2016, October 490g, 7.1mm thickness Android OS, v6.0 32GB storage, microSD card slot', 'Mobile/Tablet', '15000', '45', 'mobile20161228015421.jpg', '2'),
('mobile20161228015743', 'Zenfone 3 Deluxe 5.5', 'Released 2016, October 151g, 7.8mm thickness Android OS, v6.0.1 64GB storage, microSD card slot', 'Mobile/Tablet', '26530', '33', 'mobile20161228015743.jpg', '2'),
('mobile20161228022008', 'ZenPad 3 8.0 Z581KL', 'Release 2017, January 320g, 7.6mm thickness Android OS, v6.0 32GB storage, microSD card slot', 'Mobile/Tablet', '32000', '5', 'mobile20161228022008.jpg', '3'),
('mobile20161228053841', 'HTC Desire 650', 'Release 2016, December 140g, 8.4mm thickness Android OS, v6.0 16GB storage, microSD card slot', 'Mobile/Tablet', '15000', '20', 'mobile20161228053841.jpg', '2'),
('mobile20161228054101', 'HTC One M9 Prime Cam', 'Released 2016, May 158g, 9.6mm thickness Android OS, v5.0 16GB storage, microSD card slot', 'Mobile/Tablet', '14500', '23', 'mobile20161228054101.jpg', '2'),
('mobile20161228054514', 'Xiaomi Mi 5s', 'Released 2016, October 145g, 8.3mm thickness Android OS, v6.0 64GB storage, no card slot', 'Mobile/Tablet', '25000', '20', 'mobile20161228054514.jpg', '3'),
('mobile20161228054739', 'Xiaomi Redmi 4', 'Released 2016, November 156g, 8.9mm thickness Android OS, v6.0.1 16GB storage, microSD card slot', 'Mobile/Tablet', '26770', '10', 'mobile20161228054739.jpg', '2'),
('mobile20161228054915', 'Xiaomi Redmi 4a', 'Released 2016, November 131.5g, 8.5mm thickness Android OS, v6.0.1 16GB storage, microSD card slot', 'Mobile/Tablet', '14360', '12', 'mobile20161228054915.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`first_name`, `last_name`, `phone`, `address`, `email`, `password`) VALUES
('bdjkbc', 'jbsdvkjB', '', '1234567898', 'a@b.com', '698d51a19d8a121ce581499d7b701668'),
('bal', 'vvv', '567', 'hgfthn', 'bal@dhon.com', '698d51a19d8a121ce581499d7b701668'),
('jdzv', 'hsduvb', '1222222222', 'jdbvjkbjbjk', 'bbb@c.com', 'c4ca4238a0b923820dcc509a6f75849b'),
('bal', 'jiji', '1234567', 'sdfghjytfvbn', 'gemektanoga@gmail.com', '698d51a19d8a121ce581499d7b701668'),
('Helal', 'Bomb', '123', 'Khilkhet', 'jaowatraihan@gmail.com', '202cb962ac59075b964b07152d234b70'),
('Sapgreen', 'Gem', '12345678900', 'Nabisco', 'sapgreengem@gmail.com', 'd8fcbebd33fa076017fd3490212c55eb'),
('dgfhdgh', 'ugfugku', '1222', 'bj,', 'sapgreengem@gmail.com1', '9a1a47eb561d289bac9959d4ba143625'),
('tfh', 'r6yufjf', '12345678', 'qwdfghjkl', 'sapgreengem@gmail.com11', 'c4ca4238a0b923820dcc509a6f75849b'),
('jgd', 'gfukeg', '12345', 'dfg', 'sapgreengem@gmail.com12', 'e48c399af36852929f9ecf1ce0de7781'),
('h', 'h', '1', '1233', 'sapgreengem@gmail.com123', 'd8fcbebd33fa076017fd3490212c55eb'),
('fjvjh', 'gvj', '1', 'rsgx', 'sapgreengem@gmail.com1234', '56663f4bfb2aedd38cb15ede94aa363d'),
('sdghvcg', 'gefvydgy', '123456789', 'sdfghjkl', 'sapgreengem@gmail.com123456', '698d51a19d8a121ce581499d7b701668');

-- --------------------------------------------------------

--
-- Table structure for table `sell_history`
--

CREATE TABLE `sell_history` (
  `product_id` varchar(20) NOT NULL,
  `product_model` varchar(20) NOT NULL,
  `buyer_name` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `price` varchar(10) NOT NULL,
  `date_of_sold` varchar(20) NOT NULL,
  `commission_earned` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_history`
--

INSERT INTO `sell_history` (`product_id`, `product_model`, `buyer_name`, `company`, `quantity`, `price`, `date_of_sold`, `commission_earned`) VALUES
('mobile20161211153710', 'Xiomi Note 3', ' ', 'Xiomi', '1', '71000', '2016/12/24', '0'),
('computer201611291509', 'Acer aspire 123', ' ', 'Acer', '1', '50000', '2016/12/24', '0'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('<?php echo mobile201', '<?php echo Xiomi Not', ' ', '<?php echo Xiomi; ?>', '1', '<?php echo', '2016/12/26', '0'),
('<?php echo mobile201', '<?php echo Xiomi Not', ' ', '<?php echo Xiomi; ?>', '1', '<?php echo', '2016/12/26', '0'),
('<?php echo computer2', '<?php echo Acer aspi', ' ', '<?php echo Acer; ?>', '1', '<?php echo', '2016/12/26', '0'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/26', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/27', '2130'),
('mobile20161211153710', 'Xiomi Note 3', 'Sapgreen Gem', 'Xiomi', '1', '71000', '2016/12/27', '2130'),
('mobile20161228010310', 'J7', 'Sapgreen Gem', 'Samsung', '1', '24000', '2016/12/27', '480');

-- --------------------------------------------------------

--
-- Table structure for table `specification_computer`
--

CREATE TABLE `specification_computer` (
  `product_id` varchar(50) DEFAULT NULL,
  `processor` varchar(50) DEFAULT NULL,
  `display` varchar(50) DEFAULT NULL,
  `hdd` varchar(30) DEFAULT NULL,
  `ram` varchar(30) DEFAULT NULL,
  `battery` varchar(50) DEFAULT NULL,
  `warrenty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specification_computer`
--

INSERT INTO `specification_computer` (`product_id`, `processor`, `display`, `hdd`, `ram`, `battery`, `warrenty`) VALUES
('computer20161228010330', 'Intel Core i5-6200U', '15.6-inch', '1TB', '8GB', '12000 mah LiOn', '1 year'),
('computer20161228022639', 'Intel Core i3', '15.6"', '1TB', '4GB', 'Li-Ion 30000 mAh', '1 year'),
('computer20161228023215', 'Intel Core i3', '15.6"', '1TB', '4GB', 'Li-Ion 3000 mAh', '1 year'),
('computer20161228025215', 'Intel Core i5-6300HQ', '15.6"', '1TB', '8GB', 'Li-Ion 35000 mAh', '1 year'),
('computer20161228052337', 'Intel Core i3', '15.6"', '1TB', '4GB', '12000 mah', '1 year'),
('computer20161228052717', 'Intel Core i3', '14"', '500 GB', '4GB', '12000 mah', '1 year'),
('computer20161228053111', 'Intel Core i5-6300HQ', '15.6"', '750 GB', '4GB', '25000 mah', '1 year'),
('computer20161228053422', 'Intel Core i5-6300HQ', '15.6"', '750 GB', '8GB', '30000 mah', '1 year'),
('computer20161228055337', 'Intel Core i3', '14"', '1TB', '4GB', 'N/A', '3'),
('computer20161228055611', 'Intel Core i5', '21"', '1TB', '8GB', 'N/A', '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `specification_mobile`
--

CREATE TABLE `specification_mobile` (
  `product_id` varchar(50) DEFAULT NULL,
  `network` varchar(30) DEFAULT NULL,
  `display` varchar(50) DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `memory` varchar(100) DEFAULT NULL,
  `camera` varchar(30) DEFAULT NULL,
  `battery` varchar(50) DEFAULT NULL,
  `warrenty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specification_mobile`
--

INSERT INTO `specification_mobile` (`product_id`, `network`, `display`, `platform`, `memory`, `camera`, `battery`, `warrenty`) VALUES
('mobile20161228010310', 'CDMA/LTE', '5.5"', 'Android lolipop v6', '8GB ROM, 1GB RAM', 'Front 8MP, Back 5MP', '12000 mah', '1 year'),
('mobile20161228014724', 'GSM / HSPA/ LTE', '5.7"', 'Android OS, v6.0.1 (Marshmallo', '64GB ROM, 4GB RAM', 'Primary 23 MP, Secondary 8 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228015114', 'GSM / HSPA/ LTE', '5.2"', 'Android OS, v6.0.1 (Marshmallo', '32 GB ROM, 3 GB RAM', 'Primary 16 MP, Secondary 8 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228015421', 'GSM / HSPA/ LTE', '9.7"', 'Android OS, v6.0.1 (Marshmallo', '32 GB ROM, 3 GB RAM', 'Primary 8 MP, Secondary 5 MP', 'Non-removable Li-Po 7800 mAh', '1 year'),
('mobile20161228015743', 'GSM / HSPA/ LTE', '5.5"', 'Android OS, v5.0.1 (Lolipop)', '64 GB ROM, 4 GB RAM', 'Primary 16 MP, Secondary 8 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228022008', 'GSM / HSPA/ LTE', '9.7"', 'Android OS, v5.0.1 (Lolipop)', '64GB ROM, 4GB RAM', 'Primary 8 MP, Secondary 5 MP', 'Non-removable Li-Po 7800 mAh', '1 year'),
('mobile20161228053841', 'GSM / HSPA/ LTE', '5"', 'Android OS, v6.0.1 (Marshmallo', '16GB ROM, 2GB RAM', 'Primary 13 MP, Secondary 5 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228054101', 'GSM / HSPA/ LTE', '5"', 'Android OS, v5.0.1 (Lolipop)', '8GB ROM, 1GB RAM', 'Primary 23 MP, Secondary 8 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228054514', 'GSM / HSPA/ LTE', '5.2"', 'Android OS, v6.0.1 (Marshmallo', '64GB ROM, 4GB RAM', 'Primary 16 MP, Secondary 8 MP', 'Non-removable Li-Ion 3000 mAh', '1 year'),
('mobile20161228054739', 'GSM / HSPA/ LTE', '5"', 'Android OS, v5.0.1 (Lolipop)', '32 GB ROM, 3 GB RAM', 'Primary 16 MP, Secondary 8 MP', 'Non-removable Li-Po 7800 mAh', '1 year'),
('mobile20161228054915', 'GSM / HSPA/ LTE', '5"', 'Android OS, v5.0.1 (Lolipop)', '8GB ROM, 1GB RAM', 'Primary 8 MP, Secondary 5 MP', 'Non-removable Li-Ion 3000 mAh', '1 year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `specification_computer`
--
ALTER TABLE `specification_computer`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `specification_mobile`
--
ALTER TABLE `specification_mobile`
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `specification_computer`
--
ALTER TABLE `specification_computer`
  ADD CONSTRAINT `specification_computer_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `specification_mobile`
--
ALTER TABLE `specification_mobile`
  ADD CONSTRAINT `specification_mobile_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
