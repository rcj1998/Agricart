-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 02:15 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agricart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `register_id`, `product_id`, `quantity`) VALUES
(1, 1, 15, 1),
(2, 1, 8, 1),
(3, 1, 13, 2),
(7, 1, 15, 1),
(8, 1, 2, 1),
(9, 1, 34, 1),
(10, 1, 35, 1),
(11, 1, 1, 1),
(12, 2, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(1300) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `image_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `type`, `category`, `brand`, `title`, `price`, `quantity`, `description`, `shop_id`, `image_path`) VALUES
(1, 'Seeds', 'Flower Seeds', 'I &  B Seeds', 'Marigold', 20, 20, '\r\n\r\nWith the help of our advanced dexterous workforce we are able to cater a large variety of Marigold Yellow, Gold, Orange Shade Seeds, which is superior in quality. These marigold seeds are of premium quality and possess all the attributes required for the growth.\r\n\r\nThe agricultural experts of our company understand the requirements after doing the extreme research and supply these accordingly. The entire ranges are packed in such a way that it does not lost freshness during the transit.\r\n\r\nOrange: Plants 3 to 3.5 feet tall producing deep orange compact flowers.\r\n\r\nYellow: Plants 2 to 2.5 feet tall, producing bright yellow compact flowers', 1, 'images\\1.jpg'),
(2, 'Seeds', 'Flower Seeds', 'Indo-American', 'Ageratum', 10, 15, NULL, 1, 'images\\2.jpg'),
(3, 'Seeds', 'Flower Seeds', 'Indo-American', 'Alyssum Ornamental', 10, 20, NULL, 5, 'images\\3.jpg'),
(4, 'Seeds', 'Flower Seeds', 'East West', 'Apsara Yellow 324 F1 Marigold', 0, 30, NULL, 3, 'images\\4.jpg'),
(5, 'Seeds', 'Flower Seeds', 'East West', 'Arrow Gold Marigold', 0, 20, NULL, 4, 'images\\5.jpg'),
(6, 'Seeds', 'Vegetable Seeds', 'Mahyco', 'Aadesh Mhcp 320(Chilli)', 10, 20, NULL, 7, 'images\\6.jpg'),
(7, 'Seeds', 'Vegetable Seeds', 'Seminis', 'Abhilash Tomato', 2, 40, NULL, 7, 'images\\7.jpg'),
(8, 'Seeds', 'Vegetable Seeds', 'Syngenta', 'Abhinav Tomato', 5, 30, NULL, 2, 'images\\8.jpg'),
(9, 'Seeds', 'Vegetable Seeds', 'Seminis', 'Abhishek Bitter Gourd', 10, 20, NULL, 8, 'images\\9.jpg'),
(10, 'Seeds', 'Vegetable Seeds', 'Seminis', 'Amphion Cabbage', 12, 25, NULL, 10, 'images\\10.jpg'),
(11, 'Plant Protection', 'Insecticides', 'Rallis India', 'Anant Insecticide', 5, 20, NULL, 6, 'images\\11.jpg'),
(12, 'Plant Protection', 'Insecticides', 'Rallis India', 'Asataf Insecticide', 4, 50, NULL, 6, 'images\\12.jpg'),
(13, 'Plant Protection', 'Insecticides', 'Dhanuka', 'Caldan 50Sp Insecticide', 10, 35, NULL, 5, 'images\\13.jpg'),
(14, 'Plant Protection', 'Insecticides', 'Cheminova', 'Caper Insecticide', 20, 30, NULL, 3, 'images\\14.jpg'),
(15, 'Plant Protection', 'Insecticides', 'Hyderabadi Chemical', 'Carbogran Insecticide', 12, 10, NULL, 1, 'images\\15.jpg'),
(16, 'Plant Protection', 'Fungicides', 'Hyderabadi Chemical', 'Flock Fungicide ', 13, 10, NULL, 9, 'images\\16.jpg'),
(17, 'Plant Protection', 'Fungicides', 'Rallis India', 'Contaf Fungicide', 5, 16, NULL, 2, 'images\\17.jpg'),
(18, 'Plant Protection', 'Fungicides', 'Upl', 'Upl Saaf Fungicide', 10, 20, NULL, 9, 'images\\18.jpg'),
(19, 'Plant Protection', 'Fungicides', 'Rallis India', 'Contaf Plus Fungicide', 13, 30, NULL, 5, 'images\\19.jpg'),
(20, 'Plant Protection', 'Fungicides', 'Rallis India', 'Blitox Fungicide', 12, 20, NULL, 3, 'images\\20.jpg'),
(21, 'Machinery', 'Pumps', 'Kisan kraft', 'Pressure Sprayer Manual-5L(KK-', 500, 20, NULL, 3, 'images\\21.jpg'),
(23, 'Machinery', 'Pumps', 'Kisan kraft', 'Pressure Sprayer Manual-10L(FB', 600, 20, NULL, 8, 'images/22.jpg'),
(24, 'Machinery', 'Pumps', 'Kisan kraft', 'Pressure Sprayer Manual-3L(KK-PS3000)', 1000, 30, NULL, 10, 'images/23.jpg'),
(25, 'Machinery', 'Pumps', 'Kisan kraft', 'Knapsack Sprayer-16L(Manual Cum Battery)', 470, 32, NULL, 10, 'images/24.jpg'),
(26, 'Machinery', 'Pumps', 'Kisan kraft', 'Knapsack  Manula Sprayer-16L(KK-KMS-9617)', 1000, 2, NULL, 4, 'images/25.jpg'),
(27, 'Machinery', 'Farm Implements', 'Kisan kraft', 'Brush cutter/reaper/weeder KK-BC-8640', 300, 2, NULL, 6, 'images/26.jpg'),
(28, 'Machinery', 'Farm Implements', 'Kisan kraft', 'Brush cutter.reaper/weeder FB-BC-8652', 600, 6, NULL, 2, 'images/27.jpg'),
(29, 'Machinery', 'Farm Implements', 'Kisan kraft', 'Paddy Guard For Brush Cutter', 790, 5, NULL, 13, 'images/28.jpg'),
(30, 'Machinery', 'Farm  Implements', 'Kisan kraft', 'Intercultivator/TillerEdger KK IC-8657', 900, 8, NULL, 5, 'images/29.jpg'),
(31, 'Machinery', 'Farm Implements', 'Kisan Kraft', 'Agricultural Inter-Cultivator KK-IC-225P', 2000, 5, NULL, 1, 'images/30.jpg'),
(32, 'Machinery', 'Hand Tools', 'Hectare', 'Hand Weeder-SHO1', 500, 6, NULL, 11, 'images/31.jpg'),
(33, 'Machinery', 'Hand Tools', 'TATA Agrico', 'Khurpa-6 SIC013', 560, 56, NULL, 3, 'images/32.jpg'),
(34, 'Machinery', 'Hand Tools', 'TATA Agrico', 'Agrilite Hoe/Powrah HOE042', 390, 7, NULL, 1, 'images/33.jpg'),
(35, 'Machinery', 'Hand Tools', 'TATA Agrico', 'Pruning Secateur', 200, 2, NULL, 2, 'images/34.jpg'),
(36, 'Machinery', 'Hand Tools', 'Kisan Kraft', 'Brush Cutter/Reaper/Weeder FB-BC-5657', 1500, 1, NULL, 5, 'images/35.jpg'),
(37, 'Plant Nutrition', 'Fertilizers', 'Aries Agro', 'Aries Agromin Macrofert Fertilizer', 350, 4, NULL, 1, 'images/36.jpg'),
(38, 'Plant Nutrition', 'Fertilizers', 'Aries Agro', 'Aries Agromin Macrofert Fertilizers', 500, 5, NULL, 4, 'images/37.jpg'),
(39, 'Plant Nutrition', 'Fertilizers', 'PI Industries', 'Biovita Bio Fertilizers', 500, 1, NULL, 5, 'images/38.jpg'),
(40, 'Plant Nutrition', 'Fertilizers', 'Aries Agro', 'Aries Agromin MicroNutrient Fertilizers', 600, 1, NULL, 5, 'images/39.jpg'),
(41, 'Plant Nutrition', 'Fertilizers', 'Agrinos', 'Ignite Bio Fertilizer', 100, 20, NULL, 7, 'images/40.jpg'),
(42, 'Plant Nutrition', 'Micro Nutrients', 'Hifield-AG', 'Shilajit AG Nutrient', 400, 3, NULL, 6, 'images/41.jpg'),
(43, 'Plant Nutrition', 'Micro Nutrients', 'Shamrock', 'Boron Micronutrient Fertilizer', 500, 3, NULL, 4, 'images/42.jpg'),
(44, 'Plant Nutrition', 'Micronutrients', 'Shamrock', 'Zinc Micronutrient Fertilizer', 350, 5, NULL, 9, 'images/43.jpg'),
(45, 'Plant Nutrition', 'Micronutrients', 'Hifield-AG', 'Scuba SP Nutrient', 370, 5, NULL, 7, 'images/44.jpg'),
(46, 'Plant Nutrition', 'Micronutrients', 'Hifield-AG', 'Humic AG 95 WSG Nutrient', 350, 5, NULL, 9, 'images/45.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image_path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `username`, `mobile_no`, `email`, `password`, `image_path`) VALUES
(1, 'Ronak Gadia', 8879755487, '2016ucp1185@mnit.ac.in', '20a8b758629db1f32fe230a4cb3314a3', 'profilephoto/ronak.jpg'),
(2, 'Namrata Gadia', 8104471125, 'namrata.ronak@hotmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(3, 'Shreya Jain', 9783080753, '2016ucp1360@mnit.ac.in', 'da1449ccce12016af5a7fa80624b18cc', NULL),
(4, 'm', 0, '', 'd41d8cd98f00b204e9800998ecf842', NULL),
(5, 'Saifullah', 9521877374, 'mdsaifullah79@gmail.com', '1ed1f415b27d67a627cc7286131c25f5', NULL),
(8, 'Manoj Gadia', 9819018792, 'bhavnaagency@hotmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(9, 'Varsha Gadia', 9833358260, 'varshagadia833@gmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(10, 'Swati', 8989128064, 'swati@gmail.com', 'f823937995b27ffcbf668da4a22d5bd3', NULL),
(11, 'Balwant', 8503951453, 'bs1024387@gmail.com', 'd41d8cd98f00b204e9800998ecf842', NULL),
(13, 'swapnil', 8989128361, 'swapnil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `license_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `landmark`, `district`, `state`, `mobile`, `email`, `license_no`) VALUES
(1, 'Bombay Bazaar', 'Gaurav Tower', 'Jaipur', 'Rajasthan', 9521877374, 'bombay@gmail.com', '10000000'),
(2, 'Raj Store', 'MI Road', 'Jaipur', 'Rajasthan', 9852693886, 'Raj@gmail.com', '10000001'),
(3, 'Agtap', 'White House', 'Gaya', 'Bihar', 9521877376, 'agtap@gmail.com', '10000002'),
(4, 'Agroya', 'GT Road', 'Gaya', 'Bihar', 9521877375, 'agroya@gmail.com', '10000003'),
(5, 'Agricas', 'MI Road', 'Jaipur', 'Rajasthan', 9521877377, 'agricas@gmail.com', '10000004'),
(6, 'Agsprout', 'Okhla', 'New Delhi', 'Delhi', 9852693887, 'agsprout', '10000005'),
(7, 'Agsly', 'Jasola', 'New Delhi', 'Delhi', 9852693888, 'agsly@gmail.com', '10000006'),
(8, 'Agify', 'Malaviya Nagar', 'Jaipur', 'Rajasthan', 9852693889, 'agify@gmail.com', '10000007'),
(9, 'Agricultive', 'Jamia Nagar', 'New Delhi', 'Delhi', 9521877363, 'agricultive@gmail.com', '10000008'),
(10, 'Agriculta', 'Mahavir Nagar', 'Kota', 'Rajasthan', 9852693880, 'agriculta@gmail.com', '10000009'),
(11, 'Agnutra', 'Vaishali Nagar', 'Bhopal', 'MP', 9893996801, 'Agnutra@gmail.com', '10000011'),
(13, 'Agwave', 'Kitiyani', 'Mandsaur', 'MP', 98932348563, 'agwave@gmail.com', '100000012');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `street_address` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `register_id` (`register_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `shop_id` (`shop_id`);
ALTER TABLE `product` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`),
  ADD UNIQUE KEY `license_no` (`license_no`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `register` (`register_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
