-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2022 at 04:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoping`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `name`, `img`, `price`, `description`, `type`) VALUES
(1, 'Nike', '1653718795081.jpg', 7000, 'Nike Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, labore dolorum optio ad consequatur cupiditate!', 'shoe'),
(2, 'Adidas shirt', '1653718808515.jpg', 1500, 'Adidas shirt Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, labore dolorum optio ad consequatur cupiditate!', 'shirt'),
(3, 'Adidas shoe', '1653718816063.jpg', 45000, 'Adidas shoe Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, labore dolorum optio ad consequatur cupiditate!', 'shoe');

-- --------------------------------------------------------

--
-- Table structure for table `sp_transaction`
--

CREATE TABLE `sp_transaction` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `orderlist` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `netamount` int(11) DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `mil` bigint(20) DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_transaction`
--

INSERT INTO `sp_transaction` (`id`, `transid`, `orderlist`, `amount`, `shipping`, `vat`, `netamount`, `operation`, `mil`, `updated_at`) VALUES
(1, '1653723836661', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"1\",\"img\":\"1653718795081.jpg\",\"count\":\"4\"}]', 28000, 28060, 1964, 30024, 'PENDING', 1653723836000, '2022-05-28 02:43:56pm'),
(2, '1653723949893', '[{\"index\":\"0\",\"id\":\"3\",\"name\":\"Adidas shoe\",\"price\":\"1\",\"img\":\"1653718816063.jpg\",\"count\":\"2\"}]', 90000, 90060, 6304, 96364, 'PENDING', 1653723949000, '2022-05-28 02:45:49pm'),
(3, '1653724115073', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"1\"}]', 1500, 1560, 109, 1669, 'PENDING', 1653724115000, '2022-05-28 02:48:35pm'),
(4, '1653724247660', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"7000\",\"img\":\"1653718795081.jpg\",\"count\":\"1\"}]', 7000, 7060, 494, 7554, 'PENDING', 1653724247000, '2022-05-28 02:50:47pm'),
(5, '1653724305688', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"7000\",\"img\":\"1653718795081.jpg\",\"count\":\"1\"}]', 7000, 7060, 494, 7554, 'PENDING', 1653724305000, '2022-05-28 02:51:45pm'),
(6, '1653724342456', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"2\"}]', 3000, 3060, 214, 3274, 'PENDING', 1653724342000, '2022-05-28 02:52:22pm'),
(7, '1653724849489', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"1\"}]', 1500, 1560, 109, 1669, 'PENDING', 1653724849000, '2022-05-28 03:00:49pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
