-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 11:20 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.', 'Wajid', '2021-01-24 20:20:43'),
(2, 1, 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'Afsar', '2021-01-24 20:21:31'),
(3, 2, 'Nulla porttitor accumsan tincidunt.', 'Sajid', '2021-01-24 20:21:42'),
(4, 3, 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.', 'Majeed', '2021-01-24 20:21:58'),
(5, 2, 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.', 'Aktar', '2021-01-24 20:22:16'),
(6, 0, 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'Suneel', '2021-01-24 20:22:43'),
(7, 6, 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Sachin', '2021-01-24 20:23:00'),
(8, 0, 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'Salman', '2021-01-24 20:29:59'),
(9, 8, 'Nulla porttitor accumsan tincidunt.', 'Wajid', '2021-01-24 20:30:22'),
(10, 5, 'Cras ultricies ligula sed magna dictum porta.', 'Waseem', '2021-01-24 20:30:45'),
(11, 3, 'Cras ultricies ligula sed magna dictum porta.', 'Najeed', '2021-01-24 20:31:28'),
(12, 0, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem', 'Wajid Khan', '2023-06-24 20:28:45'),
(13, 12, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', 'Sajid', '2023-06-24 20:29:02'),
(14, 12, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Malik', '2023-06-24 20:29:21'),
(15, 14, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Saleem', '2023-06-24 20:29:51'),
(16, 15, 'This is a new comment', 'Ahmed', '2023-06-24 20:30:08'),
(17, 16, 'Level 3', 'Sajid', '2023-06-24 20:30:19'),
(18, 17, 'Level 4', 'Ahmed', '2023-06-24 20:30:28'),
(19, 9, 'Nulla porttitor accumsan tincidunt.', 'Sajid', '2023-06-24 20:31:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
