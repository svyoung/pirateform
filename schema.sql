-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2016 at 11:26 AM
-- Server version: 5.6.14
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amp`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'Sam Test', '', 'Fruits', 'Testing, this is in fruits.', '2016-03-07'),
(2, 'Sam Test', '', 'Fruits', 'Testing, this is in fruits.', '2016-03-07'),
(3, 'Blackbeard', '', 'Pirates', 'ahoy! thar', '2016-03-07'),
(4, 'Blackbeard', '', 'Pirates', 'ahoy! thar, i be a full stack software developer lookin\' tah n\' tryin\' tah find a position where I can join a team of savvy n\' creative engineers. wha\' makes me a good fit tis tha\' i have all the qualified skills. i be neither stupid or an scallywag. I hope tah meet yer acquaintances soon. After then, we can go about drinkin\', laughin\', smokin\', swearin\' n\' anythin\' ye can think of of havin\' fun.', '2016-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `pirate`
--

CREATE TABLE `pirate` (
  `id` int(11) NOT NULL,
  `english` varchar(255) NOT NULL,
  `pirate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pirate`
--

INSERT INTO `pirate` (`id`, `english`, `pirate`) VALUES
(1, 'hi', 'ahoy!'),
(2, 'hello', 'ahoy!'),
(3, 'hey', 'ahoy!'),
(4, 'yo', 'ahoy!'),
(5, 'yes', 'aye'),
(6, 'you', 'ye'),
(7, 'are you', 'ye be'),
(8, 'boy', 'lad'),
(9, 'girl', 'lass'),
(10, 'friend', 'matey'),
(11, 'money', 'doubloon'),
(12, 'what\'s up', 'avast'),
(13, 'what\'s new', 'avast'),
(14, 'haha', 'yo ho ho'),
(15, 'my', 'me'),
(16, 'there', 'thar'),
(17, 'i am', 'i be'),
(18, 'never', 'ne\'er'),
(19, 'ever', 'e\'er'),
(20, 'over', 'o\'er'),
(21, 'they are', 'they be'),
(22, 'how are', 'how be'),
(23, 'is', 'tis'),
(24, 'to', 'tah'),
(25, 'and', 'n\''),
(26, 'what', 'wha\''),
(27, 'your', 'yer'),
(28, 'you\'re', 'yer'),
(29, 'idiot', 'scallywag'),
(30, 'moron', 'scallywag'),
(31, 'understand', 'savvy'),
(32, 'oh my god', 'shiver me timbers'),
(33, 'oh no', 'shiver me timbers'),
(34, 'wtf', 'shiver me timbers'),
(35, 'brother', 'brethren '),
(36, 'bullshit', 'blimey'),
(37, 'cheat', 'hornswaggle'),
(38, 'steal', 'loot'),
(39, 'stole', 'loot'),
(40, 'peasant girl', 'wench'),
(41, 'smart', 'savvy'),
(42, 'intelligent', 'savvy'),
(43, 'gal', 'lass'),
(44, 'lady', 'lass'),
(45, 'woman', 'lass'),
(46, 'women', 'lassies'),
(47, 'guy', 'lad'),
(48, 'man', 'lad'),
(49, 'men', 'lads'),
(50, 'that', 'tha\''),
(51, 'friends', 'comrades'),
(52, 'girls', 'lasses'),
(53, 'boys', 'lads'),
(54, 'underwear', 'skivvy'),
(55, 'underwears', 'skivvies');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pirate`
--
ALTER TABLE `pirate`
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pirate`
--
ALTER TABLE `pirate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
