-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 03:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `category`) VALUES
(1, 'Wireless Earbuds', 4919, 'images/headphones.jpeg', 'Comfortable earbuds with great sound.', 'Electronics'),
(2, 'Tablet Holder', 1638, 'images/stand.jpeg', 'Adjustable holder for tablets and phones.', 'Accessories'),
(3, 'RGB Gaming Keyboard', 8199, 'images/keyboard.jpeg', 'Backlit keyboard with smooth keys.', 'Electronics'),
(4, 'Trail Running Shoes', 5739, 'images/shoes.jpeg', 'Shoes designed for rugged terrain.', 'Footwear'),
(5, 'Slim Leather Wallet', 2869, 'images/wallet.jpeg', 'Sleek wallet with ample storage.', 'Accessories'),
(6, 'Travel Coffee Cup', 1065, 'images/mug.jpeg', 'Portable cup for coffee lovers.', 'Kitchen'),
(7, 'Compact Backpack', 6231, 'images/backpack.jpeg', 'Lightweight and durable backpack.', 'Bags'),
(8, 'Luxury Steel Watch', 15511, 'images/watch.jpeg', 'Stylish watch with a sleek design.', 'Accessories'),
(9, 'Mini Bluetooth Speaker', 3279, 'images/speaker.jpeg', 'Compact speaker with rich bass.', 'Electronics'),
(10, 'Wireless On-Ear Headphones', 5739, 'images/headphones1.jpg', 'Lightweight headphones for daily use.', 'Electronics'),
(11, 'Sporty Wireless Headphones', 6149, 'images/headphones2.jpeg', 'Perfect headphones for workouts.', 'Electronics'),
(12, 'Studio Wireless Headphones', 7379, 'images/headphones3.jpg', 'Clear sound with deep bass.', 'Electronics'),
(13, 'Rotating Tablet Stand', 2044, 'images/stand1.jpeg', '360-degree rotatable tablet stand.', 'Accessories'),
(14, 'Foldable Phone Stand', 1557, 'images/stand2.jpeg', 'Compact and adjustable phone stand.', 'Accessories'),
(15, 'Silent Gaming Keyboard', 7789, 'images/keyboard2.jpeg', 'Quiet keys for smooth typing.', 'Electronics'),
(16, 'Customizable Gaming Keyboard', 8199, 'images/keyboard3.jpeg', 'RGB lighting with macro keys.', 'Electronics'),
(17, 'Waterproof Running Shoes', 6559, 'images/shoes1.jpeg', 'Shoes for all-weather running.', 'Footwear'),
(18, 'Lightweight Running Shoes', 5329, 'images/shoes2.jpeg', 'Ideal for long-distance runs.', 'Footwear'),
(19, 'Breathable Running Shoes', 4919, 'images/shoes3.jpeg', 'Shoes with excellent ventilation.', 'Footwear'),
(20, 'Classic Leather Wallet', 2951, 'images/wallet1.jpeg', 'Timeless wallet for daily use.', 'Accessories'),
(21, 'Compact Leather Wallet', 2705, 'images/wallet2.jpeg', 'Minimalist wallet for cards.', 'Accessories'),
(22, 'Vintage Leather Wallet', 3115, 'images/wallet3.jpeg', 'Classic design with modern touch.', 'Accessories'),
(23, 'Ceramic Coffee Mug', 1229, 'images/mug1.jpeg', 'Stylish mug for hot beverages.', 'Kitchen'),
(24, 'Insulated Coffee Mug', 1393, 'images/mug2.jpeg', 'Keeps drinks hot for hours.', 'Kitchen'),
(25, 'Travel Coffee Mug', 983, 'images/mug3.jpeg', 'Lightweight and easy to carry.', 'Kitchen'),
(26, 'Premium Backpack', 6559, 'images/backpack1.jpeg', 'Spacious backpack for travels.', 'Bags'),
(27, 'Hiking Backpack', 7051, 'images/backpack2.jpeg', 'Perfect for outdoor adventures.', 'Bags'),
(28, 'Everyday Backpack', 5995, 'images/backpack3.jpeg', 'Compact and multi-functional.', 'Bags'),
(29, 'Elegant Wrist Watch', 18013, 'images/watch1.jpeg', 'Luxury watch with a bold design.', 'Accessories'),
(30, 'Sports Wrist Watch', 14717, 'images/watch2.jpeg', 'Durable watch for active lifestyles.', 'Accessories'),
(31, 'Classic Wrist Watch', 16319, 'images/watch3.jpeg', 'Timeless design with premium quality.', 'Accessories'),
(32, 'Portable Bluetooth Speaker', 3689, 'images/speaker1.jpeg', 'Crystal-clear audio on the go.', 'Electronics'),
(33, 'Waterproof Bluetooth Speaker', 4099, 'images/speaker2.jpeg', 'Durable speaker for outdoor use.', 'Electronics'),
(34, 'Bass Boost Bluetooth Speaker', 3279, 'images/speaker3.jpeg', 'Enhances low-frequency sound.', 'Electronics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
