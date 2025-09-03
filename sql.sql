-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 03:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL
) --
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`id`, `email`, `password`, `firstname`, `lastname`) VALUES
(1, 'shyam1@gmail.com', '123456789', 'abc', 'zxy');

-- --------------------------------------------------------

--
-- Table structure for table `delete_data`
--

CREATE TABLE `delete_data` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `deleted_by` varchar(255) NOT NULL,
  `delete_date` datetime NOT NULL,
  `movie_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edit_data`
--

CREATE TABLE `edit_data` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `edited_by` varchar(255) NOT NULL,
  `edit_date` datetime NOT NULL,
  `previous_data` text DEFAULT NULL,
  `new_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies_data`
--

CREATE TABLE `movies_data` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `latest_released` varchar(10) DEFAULT NULL,
  `dual_audio` varchar(10) DEFAULT NULL,
  `multi_audio` varchar(10) DEFAULT NULL,
  `english_l` varchar(10) DEFAULT NULL,
  `hindi_l` varchar(10) DEFAULT NULL,
  `adult_movies` varchar(10) DEFAULT NULL,
  `asian_movies` varchar(10) DEFAULT NULL,
  `english_movies` varchar(10) DEFAULT NULL,
  `hacking_movies` varchar(10) DEFAULT NULL,
  `480p_movies` varchar(10) DEFAULT NULL,
  `720p_movies` varchar(10) DEFAULT NULL,
  `1080p_movies` varchar(10) DEFAULT NULL,
  `4k_ultra_hd` varchar(10) DEFAULT NULL,
  `300mb_movies` varchar(10) DEFAULT NULL,
  `500mb_movies` varchar(10) DEFAULT NULL,
  `700mb_movies` varchar(10) DEFAULT NULL,
  `1gb_movies` varchar(10) DEFAULT NULL,
  `action_movies` varchar(10) DEFAULT NULL,
  `adventure_movies` varchar(10) DEFAULT NULL,
  `animated_movies` varchar(10) DEFAULT NULL,
  `comedy_movies` varchar(10) DEFAULT NULL,
  `crime_movies` varchar(10) DEFAULT NULL,
  `fantasy_movies` varchar(10) DEFAULT NULL,
  `horror_movies` varchar(10) DEFAULT NULL,
  `mystery_movies` varchar(10) DEFAULT NULL,
  `romance_movies` varchar(10) DEFAULT NULL,
  `sci_fi_movies` varchar(10) DEFAULT NULL,
  `thriller_movies` varchar(10) DEFAULT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_catagory` varchar(50) NOT NULL,
  `year` varchar(20) DEFAULT NULL,
  `480p_links` text DEFAULT NULL,
  `720p_links` text DEFAULT NULL,
  `1080p_links` text DEFAULT NULL,
  `480p_links_2` text DEFAULT NULL,
  `720p_links_2` text DEFAULT NULL,
  `1080p_links_2` text DEFAULT NULL,
  `480p_links_3` text DEFAULT NULL,
  `720p_links_3` text DEFAULT NULL,
  `1080p_links_3` text DEFAULT NULL,
  `480p_links_4` text DEFAULT NULL,
  `720p_links_4` text DEFAULT NULL,
  `1080p_links_4` text DEFAULT NULL,
  `480p_watch_links` text DEFAULT NULL,
  `720p_watch_links` text DEFAULT NULL,
  `1080p_watch_links` text DEFAULT NULL,
  `480p_m_size` varchar(50) DEFAULT NULL,
  `720p_m_size` varchar(50) DEFAULT NULL,
  `1080p_m_size` varchar(50) DEFAULT NULL,
  `movie_description` text DEFAULT NULL,
  `movie_shortname` varchar(100) DEFAULT NULL,
  `movie_imdb` varchar(10) DEFAULT NULL,
  `movie_director` varchar(100) DEFAULT NULL,
  `movie_stars` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `ss_images1` varchar(255) DEFAULT NULL,
  `ss_images2` varchar(255) DEFAULT NULL,
  `ss_images3` varchar(255) DEFAULT NULL,
  `ss_images4` varchar(255) DEFAULT NULL,
  `ss_images5` varchar(255) DEFAULT NULL,
  `ss_images6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies_data`
--

INSERT INTO `movies_data` (`id`, `date_time`, `latest_released`, `dual_audio`, `multi_audio`, `english_l`, `hindi_l`, `adult_movies`, `asian_movies`, `english_movies`, `hacking_movies`, `480p_movies`, `720p_movies`, `1080p_movies`, `4k_ultra_hd`, `300mb_movies`, `500mb_movies`, `700mb_movies`, `1gb_movies`, `action_movies`, `adventure_movies`, `animated_movies`, `comedy_movies`, `crime_movies`, `fantasy_movies`, `horror_movies`, `mystery_movies`, `romance_movies`, `sci_fi_movies`, `thriller_movies`, `movie_name`, `movie_catagory`, `year`, `480p_links`, `720p_links`, `1080p_links`, `480p_links_2`, `720p_links_2`, `1080p_links_2`, `480p_links_3`, `720p_links_3`, `1080p_links_3`, `480p_links_4`, `720p_links_4`, `1080p_links_4`, `480p_watch_links`, `720p_watch_links`, `1080p_watch_links`, `480p_m_size`, `720p_m_size`, `1080p_m_size`, `movie_description`, `movie_shortname`, `movie_imdb`, `movie_director`, `movie_stars`, `main_image`, `ss_images1`, `ss_images2`, `ss_images3`, `ss_images4`, `ss_images5`, `ss_images6`) VALUES
(2, '0000-00-00 00:00:00', '', 'yes', '', '', '', '', '', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', 'yes', 'yes', 'yes', '', 'yes', '', '', '', '', '', '', '', 'yes', '', 'dfgdfbvdfbg', 'Hollywood', '2021', 'sd', 'sd', 'sd', '', '', '', '', '', '', '', '', '', 'sdsd', 'sd', 'sd', '34', '45', '54', 'sd', 'sd', 'sd', 'sd', '5', '202505101013bg.jpg', '202505101013bg.jpg', '202505101013', '202505101013', '202505101013', '202505101013', '202505101013');

-- --------------------------------------------------------

--
-- Table structure for table `movies_data_webseries_links`
--

CREATE TABLE `movies_data_webseries_links` (
  `id` int(11) NOT NULL,
  `date_time_wl` datetime NOT NULL,
  `w_480p_links_e1` text DEFAULT NULL,
  `w_480p_links_e2` text DEFAULT NULL,
  `w_480p_links_e3` text DEFAULT NULL,
  `w_480p_links_e4` text DEFAULT NULL,
  `w_480p_links_e5` text DEFAULT NULL,
  `w_480p_links_e6` text DEFAULT NULL,
  `w_480p_links_e7` text DEFAULT NULL,
  `w_480p_links_e8` text DEFAULT NULL,
  `w_480p_links_e9` text DEFAULT NULL,
  `w_480p_links_e10` text DEFAULT NULL,
  `w_480p_links_e11` text DEFAULT NULL,
  `w_480p_links_e12` text DEFAULT NULL,
  `w_480p_links_e13` text DEFAULT NULL,
  `w_480p_links_e14` text DEFAULT NULL,
  `w_480p_links_e15` text DEFAULT NULL,
  `w_480p_links_e16` text DEFAULT NULL,
  `w_480p_links_e17` text DEFAULT NULL,
  `w_480p_links_e18` text DEFAULT NULL,
  `w_480p_links_e19` text DEFAULT NULL,
  `w_480p_links_e20` text DEFAULT NULL,
  `w_480p_links_e21` text DEFAULT NULL,
  `w_480p_links_e22` text DEFAULT NULL,
  `w_480p_links_e23` text DEFAULT NULL,
  `w_480p_links_e24` text DEFAULT NULL,
  `w_480p_links_e25` text DEFAULT NULL,
  `w_480p_links_e26` text DEFAULT NULL,
  `w_480p_links_e27` text DEFAULT NULL,
  `w_480p_links_e28` text DEFAULT NULL,
  `w_480p_links_e29` text DEFAULT NULL,
  `w_480p_links_e30` text DEFAULT NULL,
  `w_720p_links_e1` text DEFAULT NULL,
  `w_720p_links_e2` text DEFAULT NULL,
  `w_720p_links_e3` text DEFAULT NULL,
  `w_720p_links_e4` text DEFAULT NULL,
  `w_720p_links_e5` text DEFAULT NULL,
  `w_720p_links_e6` text DEFAULT NULL,
  `w_720p_links_e7` text DEFAULT NULL,
  `w_720p_links_e8` text DEFAULT NULL,
  `w_720p_links_e9` text DEFAULT NULL,
  `w_720p_links_e10` text DEFAULT NULL,
  `w_720p_links_e11` text DEFAULT NULL,
  `w_720p_links_e12` text DEFAULT NULL,
  `w_720p_links_e13` text DEFAULT NULL,
  `w_720p_links_e14` text DEFAULT NULL,
  `w_720p_links_e15` text DEFAULT NULL,
  `w_720p_links_e16` text DEFAULT NULL,
  `w_720p_links_e17` text DEFAULT NULL,
  `w_720p_links_e18` text DEFAULT NULL,
  `w_720p_links_e19` text DEFAULT NULL,
  `w_720p_links_e20` text DEFAULT NULL,
  `w_720p_links_e21` text DEFAULT NULL,
  `w_720p_links_e22` text DEFAULT NULL,
  `w_720p_links_e23` text DEFAULT NULL,
  `w_720p_links_e24` text DEFAULT NULL,
  `w_720p_links_e25` text DEFAULT NULL,
  `w_720p_links_e26` text DEFAULT NULL,
  `w_720p_links_e27` text DEFAULT NULL,
  `w_720p_links_e28` text DEFAULT NULL,
  `w_720p_links_e29` text DEFAULT NULL,
  `w_720p_links_e30` text DEFAULT NULL,
  `w_1080p_links_e1` text DEFAULT NULL,
  `w_1080p_links_e2` text DEFAULT NULL,
  `w_1080p_links_e3` text DEFAULT NULL,
  `w_1080p_links_e4` text DEFAULT NULL,
  `w_1080p_links_e5` text DEFAULT NULL,
  `w_1080p_links_e6` text DEFAULT NULL,
  `w_1080p_links_e7` text DEFAULT NULL,
  `w_1080p_links_e8` text DEFAULT NULL,
  `w_1080p_links_e9` text DEFAULT NULL,
  `w_1080p_links_e10` text DEFAULT NULL,
  `w_1080p_links_e11` text DEFAULT NULL,
  `w_1080p_links_e12` text DEFAULT NULL,
  `w_1080p_links_e13` text DEFAULT NULL,
  `w_1080p_links_e14` text DEFAULT NULL,
  `w_1080p_links_e15` text DEFAULT NULL,
  `w_1080p_links_e16` text DEFAULT NULL,
  `w_1080p_links_e17` text DEFAULT NULL,
  `w_1080p_links_e18` text DEFAULT NULL,
  `w_1080p_links_e19` text DEFAULT NULL,
  `w_1080p_links_e20` text DEFAULT NULL,
  `w_1080p_links_e21` text DEFAULT NULL,
  `w_1080p_links_e22` text DEFAULT NULL,
  `w_1080p_links_e23` text DEFAULT NULL,
  `w_1080p_links_e24` text DEFAULT NULL,
  `w_1080p_links_e25` text DEFAULT NULL,
  `w_1080p_links_e26` text DEFAULT NULL,
  `w_1080p_links_e27` text DEFAULT NULL,
  `w_1080p_links_e28` text DEFAULT NULL,
  `w_1080p_links_e29` text DEFAULT NULL,
  `w_1080p_links_e30` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies_data_webseries_watch_links`
--

CREATE TABLE `movies_data_webseries_watch_links` (
  `id` int(11) NOT NULL,
  `date_time_wl` datetime NOT NULL,
  `w_480p_watch_links_e1` text DEFAULT NULL,
  `w_480p_watch_links_e2` text DEFAULT NULL,
  `w_480p_watch_links_e3` text DEFAULT NULL,
  `w_480p_watch_links_e4` text DEFAULT NULL,
  `w_480p_watch_links_e5` text DEFAULT NULL,
  `w_480p_watch_links_e6` text DEFAULT NULL,
  `w_480p_watch_links_e7` text DEFAULT NULL,
  `w_480p_watch_links_e8` text DEFAULT NULL,
  `w_480p_watch_links_e9` text DEFAULT NULL,
  `w_480p_watch_links_e10` text DEFAULT NULL,
  `w_480p_watch_links_e11` text DEFAULT NULL,
  `w_480p_watch_links_e12` text DEFAULT NULL,
  `w_480p_watch_links_e13` text DEFAULT NULL,
  `w_480p_watch_links_e14` text DEFAULT NULL,
  `w_480p_watch_links_e15` text DEFAULT NULL,
  `w_480p_watch_links_e16` text DEFAULT NULL,
  `w_480p_watch_links_e17` text DEFAULT NULL,
  `w_480p_watch_links_e18` text DEFAULT NULL,
  `w_480p_watch_links_e19` text DEFAULT NULL,
  `w_480p_watch_links_e20` text DEFAULT NULL,
  `w_480p_watch_links_e21` text DEFAULT NULL,
  `w_480p_watch_links_e22` text DEFAULT NULL,
  `w_480p_watch_links_e23` text DEFAULT NULL,
  `w_480p_watch_links_e24` text DEFAULT NULL,
  `w_480p_watch_links_e25` text DEFAULT NULL,
  `w_480p_watch_links_e26` text DEFAULT NULL,
  `w_480p_watch_links_e27` text DEFAULT NULL,
  `w_480p_watch_links_e28` text DEFAULT NULL,
  `w_480p_watch_links_e29` text DEFAULT NULL,
  `w_480p_watch_links_e30` text DEFAULT NULL,
  `w_720p_watch_links_e1` text DEFAULT NULL,
  `w_720p_watch_links_e2` text DEFAULT NULL,
  `w_720p_watch_links_e3` text DEFAULT NULL,
  `w_720p_watch_links_e4` text DEFAULT NULL,
  `w_720p_watch_links_e5` text DEFAULT NULL,
  `w_720p_watch_links_e6` text DEFAULT NULL,
  `w_720p_watch_links_e7` text DEFAULT NULL,
  `w_720p_watch_links_e8` text DEFAULT NULL,
  `w_720p_watch_links_e9` text DEFAULT NULL,
  `w_720p_watch_links_e10` text DEFAULT NULL,
  `w_720p_watch_links_e11` text DEFAULT NULL,
  `w_720p_watch_links_e12` text DEFAULT NULL,
  `w_720p_watch_links_e13` text DEFAULT NULL,
  `w_720p_watch_links_e14` text DEFAULT NULL,
  `w_720p_watch_links_e15` text DEFAULT NULL,
  `w_720p_watch_links_e16` text DEFAULT NULL,
  `w_720p_watch_links_e17` text DEFAULT NULL,
  `w_720p_watch_links_e18` text DEFAULT NULL,
  `w_720p_watch_links_e19` text DEFAULT NULL,
  `w_720p_watch_links_e20` text DEFAULT NULL,
  `w_720p_watch_links_e21` text DEFAULT NULL,
  `w_720p_watch_links_e22` text DEFAULT NULL,
  `w_720p_watch_links_e23` text DEFAULT NULL,
  `w_720p_watch_links_e24` text DEFAULT NULL,
  `w_720p_watch_links_e25` text DEFAULT NULL,
  `w_720p_watch_links_e26` text DEFAULT NULL,
  `w_720p_watch_links_e27` text DEFAULT NULL,
  `w_720p_watch_links_e28` text DEFAULT NULL,
  `w_720p_watch_links_e29` text DEFAULT NULL,
  `w_720p_watch_links_e30` text DEFAULT NULL,
  `w_1080p_watch_links_e1` text DEFAULT NULL,
  `w_1080p_watch_links_e2` text DEFAULT NULL,
  `w_1080p_watch_links_e3` text DEFAULT NULL,
  `w_1080p_watch_links_e4` text DEFAULT NULL,
  `w_1080p_watch_links_e5` text DEFAULT NULL,
  `w_1080p_watch_links_e6` text DEFAULT NULL,
  `w_1080p_watch_links_e7` text DEFAULT NULL,
  `w_1080p_watch_links_e8` text DEFAULT NULL,
  `w_1080p_watch_links_e9` text DEFAULT NULL,
  `w_1080p_watch_links_e10` text DEFAULT NULL,
  `w_1080p_watch_links_e11` text DEFAULT NULL,
  `w_1080p_watch_links_e12` text DEFAULT NULL,
  `w_1080p_watch_links_e13` text DEFAULT NULL,
  `w_1080p_watch_links_e14` text DEFAULT NULL,
  `w_1080p_watch_links_e15` text DEFAULT NULL,
  `w_1080p_watch_links_e16` text DEFAULT NULL,
  `w_1080p_watch_links_e17` text DEFAULT NULL,
  `w_1080p_watch_links_e18` text DEFAULT NULL,
  `w_1080p_watch_links_e19` text DEFAULT NULL,
  `w_1080p_watch_links_e20` text DEFAULT NULL,
  `w_1080p_watch_links_e21` text DEFAULT NULL,
  `w_1080p_watch_links_e22` text DEFAULT NULL,
  `w_1080p_watch_links_e23` text DEFAULT NULL,
  `w_1080p_watch_links_e24` text DEFAULT NULL,
  `w_1080p_watch_links_e25` text DEFAULT NULL,
  `w_1080p_watch_links_e26` text DEFAULT NULL,
  `w_1080p_watch_links_e27` text DEFAULT NULL,
  `w_1080p_watch_links_e28` text DEFAULT NULL,
  `w_1080p_watch_links_e29` text DEFAULT NULL,
  `w_1080p_watch_links_e30` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shortaner_data_movie`
--

CREATE TABLE `shortaner_data_movie` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delete_data`
--
ALTER TABLE `delete_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_data`
--
ALTER TABLE `edit_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_data`
--
ALTER TABLE `movies_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_data_webseries_links`
--
ALTER TABLE `movies_data_webseries_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_data_webseries_watch_links`
--
ALTER TABLE `movies_data_webseries_watch_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shortaner_data_movie`
--
ALTER TABLE `shortaner_data_movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data`
--
ALTER TABLE `admin_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delete_data`
--
ALTER TABLE `delete_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edit_data`
--
ALTER TABLE `edit_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies_data`
--
ALTER TABLE `movies_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies_data_webseries_links`
--
ALTER TABLE `movies_data_webseries_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies_data_webseries_watch_links`
--
ALTER TABLE `movies_data_webseries_watch_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shortaner_data_movie`
--
ALTER TABLE `shortaner_data_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `movie_db`
--
CREATE DATABASE IF NOT EXISTS `movie_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `movie_db`;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_360p` varchar(255) DEFAULT NULL,
  `file_720p` varchar(255) DEFAULT NULL,
  `file_1080p` varchar(255) DEFAULT NULL,
  `poster_path` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `file_360p`, `file_720p`, `file_1080p`, `poster_path`, `upload_date`) VALUES
(5, 'djf', 'slkn', 'sldkfknn', 'sldjjfn', 'lsd', 'news1.jpg', '2025-05-09 04:27:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
('root', '[{\"db\":\"admin_panel\",\"table\":\"shortaner_data_movie\"},{\"db\":\"admin_panel\",\"table\":\"movies_data\"},{\"db\":\"admin_panel\",\"table\":\"admin_data\"},{\"db\":\"movie_db\",\"table\":\"movies\"},{\"db\":\"movies_data\",\"table\":\"movies_data\"},{\"db\":\"movies_data\",\"table\":\"movies_data_webseries_watch_links\"},{\"db\":\"movies_data\",\"table\":\"movies_data_webseries_links\"},{\"db\":\"movies_data\",\"table\":\"admin_data\"},{\"db\":\"mysql\",\"table\":\"user\"},{\"db\":\"performance_schema\",\"table\":\"accounts\"}]');

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
('root', '2025-05-13 13:40:19', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":334}');

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
