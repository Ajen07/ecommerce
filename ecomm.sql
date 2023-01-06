-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 06:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart`
--
CREATE DATABASE IF NOT EXISTS `cart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cart`;

-- --------------------------------------------------------

--
-- Table structure for table `admincart`
--

CREATE TABLE `admincart` (
  `name` varchar(256) NOT NULL,
  `customer` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `order_date` varchar(256) NOT NULL,
  `delivery_date` varchar(256) NOT NULL,
  `id` int(11) NOT NULL,
  `delivery_status` varchar(256) NOT NULL DEFAULT 'Not Delivered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admincart`
--

INSERT INTO `admincart` (`name`, `customer`, `price`, `address`, `order_date`, `delivery_date`, `id`, `delivery_status`) VALUES
('Reebok', 'jenaarman684@gmail.com', 3400, 'PlotNo-1196', '2023-01-06 22:31:30', '15 dec 2022', 1, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ani@gmail.com`
--

CREATE TABLE `ani@gmail.com` (
  `id` int(11) NOT NULL,
  `sl_no` int(11) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `price` int(5) NOT NULL,
  `is_ordered` int(5) NOT NULL DEFAULT 0,
  `payment_status` int(5) NOT NULL DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `armankumarjena@gmail.com`
--

CREATE TABLE `armankumarjena@gmail.com` (
  `id` int(11) NOT NULL,
  `sl_no` int(11) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `price` int(5) NOT NULL,
  `is_ordered` int(5) NOT NULL DEFAULT 0,
  `payment_status` int(5) NOT NULL DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenaarman684@gmail.com`
--

CREATE TABLE `jenaarman684@gmail.com` (
  `id` int(11) NOT NULL,
  `sl_no` int(11) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `price` int(5) NOT NULL,
  `is_ordered` int(5) NOT NULL DEFAULT 0,
  `payment_status` int(5) NOT NULL DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenaarman684@gmail.com`
--

INSERT INTO `jenaarman684@gmail.com` (`id`, `sl_no`, `item_name`, `price`, `is_ordered`, `payment_status`, `order_date`, `delivery_date`, `delivery_status`) VALUES
(1, 5, 'Puma', 4000, 0, 0, '2023-01-06 16:59:51', '2023-01-06 16:59:51', 0),
(2, 6, 'Reebok', 3400, 1, 1, '2023-01-06 17:01:30', '2023-01-06 17:01:30', 0),
(3, 9, 'Dce', 4500, 0, 0, '2023-01-06 16:59:55', '2023-01-06 16:59:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincart`
--
ALTER TABLE `admincart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ani@gmail.com`
--
ALTER TABLE `ani@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `armankumarjena@gmail.com`
--
ALTER TABLE `armankumarjena@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenaarman684@gmail.com`
--
ALTER TABLE `jenaarman684@gmail.com`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admincart`
--
ALTER TABLE `admincart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ani@gmail.com`
--
ALTER TABLE `ani@gmail.com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `armankumarjena@gmail.com`
--
ALTER TABLE `armankumarjena@gmail.com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenaarman684@gmail.com`
--
ALTER TABLE `jenaarman684@gmail.com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `notes`
--
CREATE DATABASE IF NOT EXISTS `notes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `notes`;

-- --------------------------------------------------------

--
-- Table structure for table `abcd`
--

CREATE TABLE `abcd` (
  `id` int(11) NOT NULL,
  `item_name` varchar(256) NOT NULL,
  `price` int(5) NOT NULL,
  `is_ordered` int(5) NOT NULL DEFAULT 0,
  `payment_status` int(5) NOT NULL DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arman.k.jena07@gmail.com`
--

CREATE TABLE `arman.k.jena07@gmail.com` (
  `sl_no` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `armankumarjena@gmail.com`
--

CREATE TABLE `armankumarjena@gmail.com` (
  `sl_no` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenaarman684@gmail.com`
--

CREATE TABLE `jenaarman684@gmail.com` (
  `sl_no` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenaarman684@gmail.com`
--

INSERT INTO `jenaarman684@gmail.com` (`sl_no`, `title`, `description`, `date`) VALUES
(1, 'cdcddc', '&lt;p&gt;dcdcdcd&lt;/p&gt;\r\n', '2023-01-06 21:14:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abcd`
--
ALTER TABLE `abcd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arman.k.jena07@gmail.com`
--
ALTER TABLE `arman.k.jena07@gmail.com`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `armankumarjena@gmail.com`
--
ALTER TABLE `armankumarjena@gmail.com`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `jenaarman684@gmail.com`
--
ALTER TABLE `jenaarman684@gmail.com`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abcd`
--
ALTER TABLE `abcd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arman.k.jena07@gmail.com`
--
ALTER TABLE `arman.k.jena07@gmail.com`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `armankumarjena@gmail.com`
--
ALTER TABLE `armankumarjena@gmail.com`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenaarman684@gmail.com`
--
ALTER TABLE `jenaarman684@gmail.com`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `notesuser`
--
CREATE DATABASE IF NOT EXISTS `notesuser` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `notesuser`;

-- --------------------------------------------------------

--
-- Table structure for table `registeredusers`
--

CREATE TABLE `registeredusers` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `verification_code` varchar(256) NOT NULL,
  `is_verified` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registeredusers`
--

INSERT INTO `registeredusers` (`id`, `name`, `age`, `email`, `password`, `verification_code`, `is_verified`) VALUES
(1, 'Arman Kumar Jena', 21, 'arman.k.jena07@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1c4520381e28', 0),
(2, 'Arman Kumar Jena', 10, 'jenaarman684@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '546c1fe990c9', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registeredusers`
--
ALTER TABLE `registeredusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registeredusers`
--
ALTER TABLE `registeredusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"products\",\"table\":\"products\"},{\"db\":\"users\",\"table\":\"registeredusers\"},{\"db\":\"users\",\"table\":\"regisusers\"},{\"db\":\"users\",\"table\":\"RegisteredUsers\"},{\"db\":\"notes\",\"table\":\"arman.k.jena07@gmail.com\"},{\"db\":\"notes2\",\"table\":\"jhvjh\"},{\"db\":\"notes2\",\"table\":\"usernotes\"},{\"db\":\"notes\",\"table\":\"ajen@gmail.com\"},{\"db\":\"notes\",\"table\":\"jenaarman684@gmail.com\"},{\"db\":\"notes\",\"table\":\"kumar@gmail.com\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-04 06:24:58', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-60.02300000000001}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `products`
--
CREATE DATABASE IF NOT EXISTS `products` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `products`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quant_avail` int(11) NOT NULL,
  `descrip` varchar(256) NOT NULL,
  `comments` varchar(256) NOT NULL,
  `rating` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quant_avail`, `descrip`, `comments`, `rating`, `image`) VALUES
(4, 'Nike', 1000, 12, '&lt;p&gt;dkkkvkmvkl&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-mstudio-1240892.jpg'),
(5, 'Puma', 4000, 23, '&lt;p&gt;kdmvkkvml&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-lil-artsy-1159670.jpg'),
(6, 'Reebok', 3400, 23, '&lt;p&gt;kndkln&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-mnz-1598508.jpg'),
(7, 'Jordan', 6700, 34, '&lt;p&gt;nelnfe&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-mnz-1598505.jpg'),
(8, 'abc', 4000, 34, '&lt;p&gt;eeec&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-melvin-buezo-2529148.jpg'),
(9, 'Dce', 4500, 10, '', '', '', '../ProductImages/pexels-web-donut-19090 (1).jpg'),
(10, 'ghj', 5600, 56, '&lt;p&gt;bbjkklnk&lt;/p&gt;\r\n', '', '', '../ProductImages/pexels-aditya-aiyar-1407354.jpg'),
(11, 'uio', 4500, 56, '', '', '', '../ProductImages/pexels-peter-patel-637076 (1).jpg'),
(12, 'yui', 890, 89, '', '', '', '../ProductImages/shoe_logo.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Table structure for table `registeredusers`
--

CREATE TABLE `registeredusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `usertype` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `verification_code` varchar(256) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registeredusers`
--

INSERT INTO `registeredusers` (`id`, `firstname`, `lastname`, `usertype`, `address`, `email`, `password`, `verification_code`, `is_verified`) VALUES
(1, 'pritish', 'panda', 'user', 'PlotNo-1196', 'jenaarman684@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'dab3365d2333', 1),
(2, 'Arman', 'Jena', 'user', 'PlotNo-1196', 'arman.k.jena07@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0cb7dbcfc899', 0),
(3, 'pritish', 'Jena', 'admin', 'PlotNo-1196', 'ani@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'd8a7e38ab3eb', 0),
(4, 'Arman', 'Jena', 'admin', 'PlotNo-1196/c Sec-6 CDA cuttack', 'armankumarjena@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'eb9c8b8ae0ee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regisusers`
--

CREATE TABLE `regisusers` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `verification_code` varchar(256) NOT NULL,
  `is_verified` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registeredusers`
--
ALTER TABLE `registeredusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regisusers`
--
ALTER TABLE `regisusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registeredusers`
--
ALTER TABLE `registeredusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regisusers`
--
ALTER TABLE `regisusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
