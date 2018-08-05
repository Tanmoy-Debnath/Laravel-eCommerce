-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 08:52 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'Cats Eye', 'A T-shirt Brand', 1, '2018-05-29 10:56:59', '2018-06-06 11:42:16'),
(4, 'Acer', 'A laptop Brand', 1, '2018-05-29 10:57:16', '2018-05-30 10:12:38'),
(5, 'Womens Fashion', 'A women\'s dress Zone', 1, '2018-05-29 10:57:47', '2018-05-29 10:57:47'),
(6, 'Apex', 'A good Brand', 1, '2018-05-29 11:23:30', '2018-05-29 11:23:30'),
(7, 'Apple', 'A Valueable Product', 1, '2018-05-30 09:13:40', '2018-05-30 09:13:40'),
(8, 'West Rich', 'A good Brand', 1, '2018-05-30 12:54:07', '2018-05-30 12:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'Best Collection of New Mobile devices.', 1, '2018-05-29 10:53:05', '2018-05-30 09:40:37'),
(2, 'Shoe', 'A famous shoe brand', 1, '2018-05-29 10:53:51', '2018-06-04 09:41:43'),
(3, 'Womens Clothes', 'Many collection of wommens dress.', 1, '2018-05-29 10:54:16', '2018-05-29 10:54:16'),
(4, 'Acer', 'A laptop Brand', 1, '2018-05-29 10:54:50', '2018-05-30 12:20:44'),
(5, 'Womens Fashion', 'A women\'s dress Zone', 1, '2018-05-29 10:55:38', '2018-05-30 12:20:33'),
(6, 'Watch', 'A good Watch', 1, '2018-05-30 12:53:49', '2018-05-30 12:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'hghhh', 'hfffffffffffff', 'jaa@gmail.com', '$2y$10$lPYpHa6r.QamKI2FItJ2F.VHqCw4xloV4l4YdiwOLYzpXwShWTo5i', '546546', 'ndskdslklhds', '2018-06-08 15:08:58', '2018-06-08 15:08:58'),
(2, 'gfg', 'gffgfg', 'lkjdfljfdl@gmail.com', '$2y$10$YMsnVkrBUXfSR1dJxsekQeigUKP7YbKf3O6RTGE/aOJPfwZVy5Am2', '654456456', 'hsdahjdsah', '2018-06-08 15:18:07', '2018-06-08 15:18:07'),
(3, 'hhhkd', 'ffsfsd', 'tanmoy.bubt@gmail.com', '$2y$10$B.uD9SPcGMlB3CMzxUZqSus2ngbJ.ZGx7YVgjGejCVSkywSItTD5O', '545454', '4554545454', '2018-06-08 15:41:54', '2018-06-08 15:41:54'),
(4, 'hhhkd', 'ffsfsd', 'tanmoy.bubt@gmail.com', '$2y$10$SVRVoHfYbbDkdsSssbLTluNnGERlaqr4yjTBDNTJklOWRHK0afra2', '545454', '4554545454', '2018-06-08 15:43:38', '2018-06-08 15:43:38'),
(5, 'Tanmoy', 'Debnath', 'tanmoy.bubt@gmail.com', '$2y$10$zxwnhT/T02BmRfFK.a8OQe25C6ggqi95kg2uHLKNYslNi1R2uzwUi', '01685726839', 'Mirpur, Rupnagar', '2018-06-09 11:23:02', '2018-06-09 11:23:02'),
(6, 'Soyad', 'Rahman', 'soyad985@gmail.com', '$2y$10$rAbZv3Oc3GXRgDcCcD3KnOS/6dkaegoWNqfJKEG7K.CxoXj.JRrRe', '01685726839', 'Mirpur, Rupnagar', '2018-06-09 11:38:28', '2018-06-09 11:38:28'),
(7, 'Masum', 'Talukder', 'masum.nai@gmail.com', '$2y$10$Hdqaw77NEPi/pYEhckWS7.EAQq8d.tivzrelsVFdP8EuzNpiuqh.6', '017415789325', 'Tangail', '2018-06-09 13:39:45', '2018-06-09 13:39:45'),
(8, 'Imran', 'Molla', 'cse24@gmail.com', '$2y$10$q6tl2LP6MP3hx2MiVCWPuOACEJapixQSHm4.ruPGEN3SSZypNgkou', '01685726839', 'fhjhh', '2018-06-10 11:36:14', '2018-06-10 11:36:14'),
(9, 'Tanmoy', 'Debnath', 'tanmoy.pappu1@gmail.com', '$2y$10$Fwy3GsOR3o8KGTkPU/UtUuJozCwPx5ztX7vjPPwrgesyGUjUu74dy', '01685726839', 'Mirpur, Dhaka', '2018-06-11 08:43:11', '2018-06-11 08:43:11'),
(10, 'Tanmoy', 'hfffffffffffff', 'tanmoy.bubt@gmail.com', '$2y$10$X11hO9zCNUunHcVYlud5gOy1B5thGv6isiDrjsNHpUJagvzWwx/rO', '01685726839', 'Mirpur', '2018-06-11 14:10:27', '2018-06-11 14:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_22_182059_create_categories_table', 2),
(4, '2018_05_27_065914_create_brands_table', 3),
(5, '2018_05_27_130206_create_products_table', 4),
(6, '2018_06_08_191016_create_customers_table', 5),
(7, '2018_06_11_162634_create_shippings_table', 6),
(8, '2018_06_11_210132_create_orders_table', 7),
(9, '2018_06_11_210236_create_payments_table', 7),
(10, '2018_06_11_210339_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Samsung Tablet', 5000.00, 10, 'Discover the latest in electronic & smart appliance technology with Samsung', '<p>* Key feature may different from Key Spec<br />\r\n* Images are for illustration purposes only and the accessories are&nbsp;sold separately.<br />\r\n* Features and Specifications are accurate as of commercial&nbsp;launch&nbsp;but may be&nbsp;subject to change without prior notification.<br />\r\n* Memory size : User memory is less than the total memory due to storage of the operating system and software used to operate the phones features. Actual user memory will vary depending on the mobile phone operator and may change after software upgrades are performed.<br />\r\n* Network band : The bandwidths supported by the device may vary depending on the region or service provider.</p>', 'product-images/Samsung Tablet.jpg', 1, '2018-05-29 11:06:38', '2018-05-29 11:06:38'),
(3, 3, 5, 'Stylish Black Dress', 3000.00, 10, 'Shop a great selection of Dresses for Women at Nordstrom Rack. Find designer Dresses for Women up to 70% off and get free shipping on orders over $100', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Find stylish misses&nbsp;<strong>dresses</strong>&nbsp;and maxi&nbsp;<strong>dresses</strong>&nbsp;at dressbarn. Discover your perfect fit in DRESSBAR&#39;s collection of misses, plus size, and petite&nbsp;<strong>dresses&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Free shipping and returns on&nbsp;<strong>dresses</strong>&nbsp;for&nbsp;<strong>women</strong>&nbsp;at Nordstrom.com. Browse&nbsp;<strong>dresses</strong>&nbsp;by silhouette, length, color and more. Read customer reviews and ask&nbsp;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'product-images/Stylish Black Dress.jpg', 1, '2018-05-29 11:18:27', '2018-05-29 11:18:27'),
(4, 3, 5, 'Red Gorgeous dress', 3000.00, 10, 'Shop Target for Dresses you will love at great low prices. Spend $35+ or use your REDcard & get free 2-day shipping on most items or same-day pick-up in', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Free shipping and returns on&nbsp;<strong>dresses</strong>&nbsp;for&nbsp;<strong>women</strong>&nbsp;at Nordstrom.com. Browse&nbsp;<strong>dresses</strong>&nbsp;by silhouette, length, color and more. Read customer reviews and ask.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Free shipping and returns on&nbsp;<strong>dresses</strong>&nbsp;for&nbsp;<strong>women</strong>&nbsp;at Nordstrom.com. Browse&nbsp;<strong>dresses</strong>&nbsp;by silhouette, length, color and more. Read customer reviews and ask</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'product-images/Red Gorgeous dress.jpg', 1, '2018-05-29 11:20:53', '2018-05-29 11:20:53'),
(5, 4, 2, 'Black shoe', 1500.00, 10, 'Bangladesh Most Affordable Online Shopping Store For Phones, Appliances & More\r\nPayment On Delivery', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Around the world, the&nbsp;<strong>Bata</strong>&nbsp;brand is reserved for well-made and well-priced dress &amp; casual&nbsp;<strong>shoes</strong>&nbsp;for men, women and kids.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Around the world, the&nbsp;<strong>Bata</strong>&nbsp;brand is reserved for well-made and well-priced dress &amp; casual&nbsp;<strong>shoes</strong>&nbsp;for men, women and kids.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'product-images/Black shoe.jpg', 1, '2018-05-29 11:22:09', '2018-05-29 11:22:09'),
(6, 4, 2, 'Long Boot', 5000.00, 10, 'Around the world, the Bata brand is reserved for well-made and well-priced dress & casual shoes for men, women and kids.', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Around the world, the&nbsp;<strong>Bata</strong>&nbsp;brand is reserved for well-made and well-priced dress &amp; casual&nbsp;<strong>shoes</strong>&nbsp;for men, women and kids.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Around the world, the&nbsp;<strong>Bata</strong>&nbsp;brand is reserved for well-made and well-priced dress &amp; casual&nbsp;<strong>shoes</strong>&nbsp;for men, women and kids.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'product-images/Long Boot.jpg', 1, '2018-05-29 11:22:56', '2018-05-29 11:22:56'),
(7, 2, 6, 'Stylish Shoe Apex', 3000.00, 10, 'Bangladesh Most Affordable Online Shopping Store For Phones, Appliances & More\r\nFast Nationwide Delivery', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Many shoes are known for their orthopedic features, and the&nbsp;<strong>Apex shoes</strong>&nbsp;brand is a leading name in therapeutic footwear.&nbsp;<strong>Apex shoes</strong>&nbsp;are especially noteworthy&nbsp;...</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'product-images/Stylish Shoe Apex.jpg', 1, '2018-05-29 11:24:28', '2018-06-04 13:34:47'),
(8, 3, 5, 'Gorgeous White Dress', 5000.00, 10, 'Its to much gorgeous to look at.', '<p>specially-designed chassis featuring top and bottom covers made of magnesium-lithium alloys to ensure a low weight and the palm rest cover made of a magnesium-aluminum alloy to make it sturdy, the manufacturer says.</p>', 'product-images/Gorgeous White Dress.jpg', 1, '2018-05-29 13:18:29', '2018-05-29 13:18:29'),
(9, 6, 7, 'Watch White', 500.00, 10, 'A good Watch looking gorgeous', '<p>A good Watch looking gorgeous&nbsp;A good Watch looking gorgeous</p>', 'product-images/Watch White.jpg', 1, '2018-05-30 12:55:23', '2018-05-30 12:55:23'),
(10, 2, 6, 'Gorgeous shoe', 6000.00, 5, 'Very good shoe', '<p>Very good shoe&nbsp;Very good shoe&nbsp;Very good shoe&nbsp;Very good shoe</p>', 'product-images/Gorgeous shoe.jpg', 1, '2018-06-04 14:05:05', '2018-06-04 14:05:05'),
(11, 3, 3, 'T-shirt', 600.00, 10, 'Natural Disaster Movies', '<p>Natural Disaster Movies Full Length English Best Movie English Hollywood Science Fiction Movies</p>\r\n\r\n<p>Natural Disaster Movies Full Length English Best Movie English Hollywood Science Fiction Movies</p>', 'product-images/T-shirt.jpg', 1, '2018-06-04 14:08:15', '2018-06-06 12:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Tanmoy hfffffffffffff', 'tanmoy.bubt@gmail.com', '01685726839', 'Mirpur', '2018-06-11 14:10:44', '2018-06-11 14:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanmoy Debnath', 'tanmoy.bubt@gmail.com', '$2y$10$W1W8IHiM0gVLYT9uSXucQObdIqA88EFYQZpanj14vnRSzA6Hs3ehK', 'ziRZBOhwk4SyyB01n6ZSuBGESQRDG8tMwKb0ql4LZ2MM5q1MfnexpBBxiV7j', '2018-05-21 09:18:36', '2018-05-21 09:18:36'),
(2, 'masum', 'masum@gmail.com', '$2y$10$PyOnxt40TpS1VMxCDA8a3OpUuFfStqJUKMRBjCtDlo2uMK5hYt3r2', 'FiP56Jr7KtHhoIFou513VL2rv0TlpLmKHhOhDeFUf61urDcumWgYIS4tqYuW', '2018-05-22 05:35:47', '2018-05-22 05:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
