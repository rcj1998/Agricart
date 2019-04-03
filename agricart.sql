-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 10:16 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

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
-- Table structure for table `approve_feedback`
--

CREATE TABLE `approve_feedback` (
  `feedback` varchar(1000) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `approve_subsidy`
--

CREATE TABLE `approve_subsidy` (
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `receipt_id` bigint(20) NOT NULL,
  `receipt_file` varchar(255) NOT NULL,
  `land_file` varchar(255) NOT NULL,
  `account_no` bigint(20) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` bigint(20) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subsidy` varchar(255) NOT NULL,
  `amount` bigint(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approve_subsidy`
--

INSERT INTO `approve_subsidy` (`name`, `father_name`, `receipt_id`, `receipt_file`, `land_file`, `account_no`, `bank_name`, `ifsc`, `district`, `state`, `zip`, `landmark`, `mobile`, `email`, `subsidy`, `amount`, `customer_id`) VALUES
('$name', '$userid', 0, '$receiptid', '$receiptfile', 0, '$accountno', '$bankname', '$ifsc', '$district', 0, '$zip', 0, '$mobile', '$email', 0, 0),
('saif', 'md', 121, 'uploadreceipt/dfd l-0.png', 'uploadland/class.png', 575457785, 'icici', 'icici24724', 'hwsfh', 'hp', 3971241, 'mn', 987654323, 'shm@gmail.com', 'Tractor', 1000, 30),
('ccdev', 'cvev', 9564564, 'evveveveve', 'evevev', 4654848897798, 'evevevev', 'evevev', 'vevev', 'vevev', 546564, 'eveveve', 8964538684, 'vevevwdvwv', 'Tractor', 1516546, 1),
('ccdev', 'cvev', 12564564, 'evveveveve', 'evevev', 4654848897798, 'evevevev', 'evevev', 'vevev', 'vevev', 546564, 'eveveve', 8964538684, 'vevevwdvwv', 'Tractor', 1516546, 1),
('ccdev', 'cvev', 13564564, 'evveveveve', 'evevev', 4654848897798, 'evevevev', 'evevev', 'vevev', 'vevev', 546564, 'eveveve', 8964538684, 'vevevwdvwv', 'Tractor', 1516546, 1);

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
(5, 10, 1, 3),
(19, 16, 4, 1),
(20, 16, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `modeofpayment` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_id`, `address_id`, `quantity`, `total`, `date`, `modeofpayment`, `comments`) VALUES
(1, 1, 35, 1, 2, 200, '2018-11-08', 'COD', NULL),
(7, 16, 17, 4, 1, 5, '2019-10-02', 'COD', NULL),
(9, 16, 34, 4, 1, 390, '2019-10-02', 'COD', NULL),
(10, 16, 35, 4, 1, 200, '2019-10-02', 'COD', NULL);

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
  `image_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `type`, `category`, `brand`, `title`, `price`, `quantity`, `description`, `shop_id`, `image_path`) VALUES
(1, 'Seeds', 'Flower Seeds', 'I &  B Seeds', 'Marigold', 20, 20, 'With the help of our advanced dexterous workforce we are able to cater a large variety of Marigold Yellow, Gold, Orange Shade Seeds, which is superior in quality. These marigold seeds are of premium quality and possess all the attributes required for the growth.', 1, 'images\\1.jpg'),
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
(1, 'Ronak Gadia', 8879755487, '2016ucp1185@mnit.ac.in', '9a9ad8f25394a69d058ea91ad274fb0a', 'profilephoto/ronak.jpg'),
(2, 'Namrata Gadia', 8104471125, 'namrata.ronak@hotmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(3, 'Shreya Jain', 9783080753, '2016ucp1360@mnit.ac.in', 'ca52fbb4aa429dc6227fe6b063ebdaba', NULL),
(5, 'Saifullah', 9521877374, 'mdsaifullah79@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'profilephoto/saif.png'),
(8, 'Manoj Gadia', 9819018792, 'bhavnaagency@hotmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(9, 'Varsha Gadia', 9833358260, 'varshagadia232@gmail.com', '6c9d7bf007f6a96f0a375e75289de1d0', NULL),
(10, 'Swati', 8989128064, 'swati@gmail.com', 'f823937995b27ffcbf668da4a22d5bd3', NULL),
(11, 'Balwant', 8503951453, 'bs1024387@gmail.com', 'd41d8cd98f00b204e9800998ecf842', NULL),
(13, 'swapnil', 8989128361, 'swapnil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(15, 'R', 888, 'mdsaifullah798@gmail.com', '594f803b380a41396ed63dca39503542', NULL),
(16, 'Ramcharan', 9610654323, '2016ucp1633@mnit.ac.in', '0c8aecd8e62a408b450ca588622b56c5', 'profilephoto/class.png'),
(21, 'rrrrr', 1234567891, 'jethuramcharan@gmail.com', '756eb21b1096b33883caaf584f51019c', NULL),
(22, 'rrrrrrrrr', 987654323, 'dgfdjj@gmail.com', 'f48c1df9728152c90c1500463b4e3de8', NULL),
(23, 'divya', 9876543212, 'divz@gmail.com', '2cdd7064b290132617248dbfd85f740e', NULL),
(32, 'shambhawi', 7737222222, 'shm@gmail.com', '202cb962ac59075b964b07152d234b70', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_feedback`
--

CREATE TABLE `request_feedback` (
  `feedback` varchar(1000) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_feedback`
--

INSERT INTO `request_feedback` (`feedback`, `feedback_id`, `customer_id`) VALUES
('', 2, 1),
('', 3, 1),
('', 4, 1),
('scvwvwvwv', 5, 1),
('shreya is a good girl', 6, 1),
('xakncac', 7, 1),
('hey i am rc', 9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `request_subsidy`
--

CREATE TABLE `request_subsidy` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `receipt_id` bigint(20) NOT NULL,
  `receipt_file` varchar(255) NOT NULL,
  `land_file` varchar(255) NOT NULL,
  `account_no` bigint(20) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` bigint(20) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subsidy` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_subsidy`
--

INSERT INTO `request_subsidy` (`customer_id`, `name`, `father_name`, `receipt_id`, `receipt_file`, `land_file`, `account_no`, `bank_name`, `ifsc`, `district`, `state`, `zip`, `landmark`, `mobile`, `email`, `subsidy`, `amount`) VALUES
(16, 'ramcharan', 'HARMAN RAM', 1456899, 'uploadreceipt/Download File.pdf', 'uploadland/DD of SE.pdf', 987654333, 'icici', 'icici24724', 'hwsfh', 'rj', 341026, 'rj', 9999999999, 'jethuramcharan@gmail.com', 'Threser', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `sell_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image_path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`sell_id`, `type`, `category`, `brand`, `title`, `price`, `quantity`, `description`, `shop_id`, `image_path`) VALUES
(3, 'pulse', 'pulse', 'agro', 'moong Dal', 500, 4, 'good ', 5, '');

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
(13, 'Agwave', 'Kitiyani', 'Mandsaur', 'MP', 98932348563, 'agwave@gmail.com', '100000012'),
(14, 'saif', 'white house', '', 'bihar', 2974321454, 'saif@gmail.com', '1000345');

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
  `mobile_no` bigint(11) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`address_id`, `customer_id`, `state`, `district`, `pincode`, `street_address`, `name`, `mobile_no`, `city`) VALUES
(1, 1, 'Maharashtra', 'Mumbai', 400068, 'B-404 Balkrishna Niwas, Gomant Nagar, Dahisar(West)', 'Ronak Gadia', 8879755487, 'Mumbai'),
(3, 1, 'Rajasthan', 'Jaipur', 302017, 'Hostel-5, MNIT Jaipur, JLN Marg, Malaviya Nagar', 'Ronak Gadia', 8879755487, 'Jaipur'),
(4, 16, 'rj', 'ngo', 341026, 'rrrr', 'ramcharan', 9999999999, 'jp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approve_feedback`
--
ALTER TABLE `approve_feedback`
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `approve_subsidy`
--
ALTER TABLE `approve_subsidy`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `register_id` (`register_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `address_id` (`address_id`),
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
-- Indexes for table `request_feedback`
--
ALTER TABLE `request_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `request_subsidy`
--
ALTER TABLE `request_subsidy`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sell_id`);

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
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `request_feedback`
--
ALTER TABLE `request_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `sell_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approve_feedback`
--
ALTER TABLE `approve_feedback`
  ADD CONSTRAINT `approve_feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `register` (`register_id`);

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

--
-- Constraints for table `request_feedback`
--
ALTER TABLE `request_feedback`
  ADD CONSTRAINT `request_feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `register` (`register_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
