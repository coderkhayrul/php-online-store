-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 08:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', 'Password');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Shirt', '2021-04-14 13:02:26', '2021-04-14 13:02:26'),
(15, 'T-Shirt', '2021-04-14 13:02:56', '2021-04-14 13:02:56'),
(16, 'Polo', '2021-04-14 13:03:08', '2021-04-14 13:03:08'),
(17, 'Panjabi', '2021-04-14 13:03:24', '2021-04-14 13:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`, `created_at`, `updated_at`) VALUES
(122, 'guzopuculu@mailinator.com', 'Sunt quas aperiam ne', '2021-04-11 04:54:28', '2021-04-11 04:54:28'),
(123, 'duvikumej@mailinator.com', 'Anim sunt delectus', '2021-04-11 05:00:15', '2021-04-11 05:00:15'),
(124, 'khayrulshanto@gmail.com', 'The is test data base store\r\n', '2021-04-11 05:05:05', '2021-04-11 05:05:05'),
(125, 'cicymyj@mailinator.com', 'Amet et in unde vel', '2021-04-11 05:06:22', '2021-04-11 05:06:22'),
(126, 'khayrulshanto@gmail.com', 'Payment Porblem!!', '2021-04-11 15:13:47', '2021-04-11 15:13:47'),
(127, '', '', '2021-04-14 13:24:34', '2021-04-14 13:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'Password', '2021-04-14 23:20:48', '2021-04-14 23:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `pay_methord` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_methord`, `created_at`, `updated_at`) VALUES
(8, 1, 'Dolores eos dolorem', '+1 (432) 877-7088', 269, 'cash', '2021-04-15 18:03:43', '2021-04-15 18:03:43'),
(9, 1, 'Commodi voluptas nec', '+1 (767) 524-8693', 269, 'paypal', '2021-04-15 18:04:35', '2021-04-15 18:04:35'),
(11, 1, 'Commodi voluptas nec', '+1 (767) 524-8693', 269, 'paypal', '2021-04-15 18:13:29', '2021-04-15 18:13:29'),
(12, 1, 'Commodi voluptas nec', '+1 (767) 524-8693', 447, 'paypal', '2021-04-15 18:15:49', '2021-04-15 18:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 13, 1, '2021-04-15 13:27:25', '2021-04-15 13:27:25'),
(2, 4, 13, 1, '2021-04-15 13:51:02', '2021-04-15 13:51:02'),
(3, 5, 13, 1, '2021-04-15 13:52:01', '2021-04-15 13:52:01'),
(4, 6, 10, 1, '2021-04-15 17:58:48', '2021-04-15 17:58:48'),
(5, 6, 14, 1, '2021-04-15 17:58:48', '2021-04-15 17:58:48'),
(6, 7, 10, 1, '2021-04-15 17:59:00', '2021-04-15 17:59:00'),
(7, 7, 14, 1, '2021-04-15 17:59:00', '2021-04-15 17:59:00'),
(8, 8, 10, 1, '2021-04-15 18:03:43', '2021-04-15 18:03:43'),
(9, 8, 14, 1, '2021-04-15 18:03:43', '2021-04-15 18:03:43'),
(10, 9, 10, 1, '2021-04-15 18:04:35', '2021-04-15 18:04:35'),
(11, 9, 14, 1, '2021-04-15 18:04:35', '2021-04-15 18:04:35'),
(12, 10, 10, 1, '2021-04-15 18:12:06', '2021-04-15 18:12:06'),
(13, 10, 14, 1, '2021-04-15 18:12:06', '2021-04-15 18:12:06'),
(14, 11, 10, 1, '2021-04-15 18:13:29', '2021-04-15 18:13:29'),
(15, 11, 14, 1, '2021-04-15 18:13:29', '2021-04-15 18:13:29'),
(16, 12, 10, 1, '2021-04-15 18:15:49', '2021-04-15 18:15:49'),
(17, 12, 14, 2, '2021-04-15 18:15:49', '2021-04-15 18:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(10, 'Alma gologolo', 91, 'image_4.jpg', 'Amet sed rerum dolo', 1, '2021-04-13 16:13:13', '2021-04-13 16:13:13'),
(13, 'Madeson Macias', 951, 'image_3.jpg', 'Duis iure mollitia i', 9, '2021-04-14 08:40:16', '2021-04-14 08:40:16'),
(14, 'Tyrone Pitts', 178, 'image_4.jpg', 'Mollitia eveniet ut', 9, '2021-04-14 08:40:32', '2021-04-14 08:40:32'),
(16, 'Adrienne Greene', 897, 'image_2.jpg', 'Velit placeat sit', 8, '2021-04-14 08:53:40', '2021-04-14 08:53:40'),
(17, 'lothing-fashion', 452, '3831830_1920.jpg', 'Crediting isn’t required, but linking back is greatly appreciated and allows image authors to gain exposure. You can use the following text:', 8, '2021-04-14 09:00:50', '2021-04-14 09:00:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
