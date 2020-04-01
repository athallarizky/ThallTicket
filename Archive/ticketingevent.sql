-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2019 at 08:30 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketingevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `description` longtext,
  `end_date` varchar(20) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `description`, `end_date`, `image`, `title`) VALUES
(1, 'Getting Started with Laravel 101', '2019-11-15', 'laravel.jpg', 'Belajar Laravel'),
(2, 'Getting Started with ReactJS 101', '2019-11-20', 'ReactJS.jpg', 'Belajar ReactJS'),
(3, 'Getting Started with AngularJS 101', '2019-11-30', 'AngularJS.jpg', 'Belajar AngularJS');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(278),
(278),
(278),
(278);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `evidence` varchar(150) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `ticket_qty` int(11) DEFAULT NULL,
  `total_price` bigint(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `price`, `quantity`, `event_id`) VALUES
(4, 100000, 100, 1),
(5, 50000, 50, 2),
(6, 25000, 25, 3),
(7, 100000, 100, NULL),
(8, 50000, 50, NULL),
(9, 25000, 25, NULL),
(10, 100000, 100, NULL),
(11, 50000, 50, NULL),
(12, 25000, 25, NULL),
(13, 100000, 100, NULL),
(14, 50000, 50, NULL),
(15, 25000, 25, NULL),
(16, 100000, 100, NULL),
(17, 50000, 50, NULL),
(18, 25000, 25, NULL),
(19, 100000, 100, NULL),
(20, 50000, 50, NULL),
(21, 25000, 25, NULL),
(22, 100000, 100, NULL),
(23, 50000, 50, NULL),
(24, 25000, 25, NULL),
(25, 100000, 100, NULL),
(26, 50000, 50, NULL),
(27, 25000, 25, NULL),
(28, 100000, 100, NULL),
(29, 50000, 50, NULL),
(30, 25000, 25, NULL),
(32, 100000, 100, NULL),
(33, 50000, 50, NULL),
(34, 25000, 25, NULL),
(35, 100000, 100, NULL),
(36, 50000, 50, NULL),
(37, 25000, 25, NULL),
(38, 100000, 100, NULL),
(39, 50000, 50, NULL),
(40, 25000, 25, NULL),
(41, 100000, 100, NULL),
(42, 50000, 50, NULL),
(43, 25000, 25, NULL),
(44, 100000, 100, NULL),
(45, 50000, 50, NULL),
(46, 25000, 25, NULL),
(47, 100000, 100, NULL),
(48, 50000, 50, NULL),
(49, 25000, 25, NULL),
(50, 100000, 100, NULL),
(51, 50000, 50, NULL),
(52, 25000, 25, NULL),
(53, 100000, 100, NULL),
(54, 50000, 50, NULL),
(55, 25000, 25, NULL),
(56, 100000, 100, NULL),
(57, 50000, 50, NULL),
(58, 25000, 25, NULL),
(59, 100000, 100, NULL),
(60, 50000, 50, NULL),
(61, 25000, 25, NULL),
(62, 100000, 100, NULL),
(63, 50000, 50, NULL),
(64, 25000, 25, NULL),
(65, 100000, 100, NULL),
(66, 50000, 50, NULL),
(67, 25000, 25, NULL),
(68, 100000, 100, NULL),
(69, 50000, 50, NULL),
(70, 25000, 25, NULL),
(71, 100000, 100, NULL),
(72, 50000, 50, NULL),
(73, 25000, 25, NULL),
(74, 100000, 100, NULL),
(75, 50000, 50, NULL),
(76, 25000, 25, NULL),
(77, 100000, 100, NULL),
(78, 50000, 50, NULL),
(79, 25000, 25, NULL),
(80, 100000, 100, NULL),
(81, 50000, 50, NULL),
(82, 25000, 25, NULL),
(83, 100000, 100, NULL),
(84, 50000, 50, NULL),
(85, 25000, 25, NULL),
(86, 100000, 100, NULL),
(87, 50000, 50, NULL),
(88, 25000, 25, NULL),
(89, 100000, 100, NULL),
(90, 50000, 50, NULL),
(91, 25000, 25, NULL),
(92, 100000, 100, NULL),
(93, 50000, 50, NULL),
(94, 25000, 25, NULL),
(95, 100000, 100, NULL),
(96, 50000, 50, NULL),
(97, 25000, 25, NULL),
(98, 100000, 100, NULL),
(99, 50000, 50, NULL),
(100, 25000, 25, NULL),
(101, 100000, 100, NULL),
(102, 50000, 50, NULL),
(103, 25000, 25, NULL),
(104, 100000, 100, NULL),
(105, 50000, 50, NULL),
(106, 25000, 25, NULL),
(107, 100000, 100, NULL),
(108, 50000, 50, NULL),
(109, 25000, 25, NULL),
(110, 100000, 100, NULL),
(111, 50000, 50, NULL),
(112, 25000, 25, NULL),
(113, 100000, 100, NULL),
(114, 50000, 50, NULL),
(115, 25000, 25, NULL),
(116, 100000, 100, NULL),
(117, 50000, 50, NULL),
(118, 25000, 25, NULL),
(119, 100000, 100, NULL),
(120, 50000, 50, NULL),
(121, 25000, 25, NULL),
(122, 100000, 100, NULL),
(123, 50000, 50, NULL),
(124, 25000, 25, NULL),
(125, 100000, 100, NULL),
(126, 50000, 50, NULL),
(127, 25000, 25, NULL),
(128, 100000, 100, NULL),
(129, 50000, 50, NULL),
(130, 25000, 25, NULL),
(131, 100000, 100, NULL),
(132, 50000, 50, NULL),
(133, 25000, 25, NULL),
(134, 100000, 100, NULL),
(135, 50000, 50, NULL),
(136, 25000, 25, NULL),
(137, 100000, 100, NULL),
(138, 50000, 50, NULL),
(139, 25000, 25, NULL),
(140, 100000, 100, NULL),
(141, 50000, 50, NULL),
(142, 25000, 25, NULL),
(143, 100000, 100, NULL),
(144, 50000, 50, NULL),
(145, 25000, 25, NULL),
(146, 100000, 100, NULL),
(147, 50000, 50, NULL),
(148, 25000, 25, NULL),
(149, 100000, 100, NULL),
(150, 50000, 50, NULL),
(151, 25000, 25, NULL),
(152, 100000, 100, NULL),
(153, 50000, 50, NULL),
(154, 25000, 25, NULL),
(155, 100000, 100, NULL),
(156, 50000, 50, NULL),
(157, 25000, 25, NULL),
(158, 100000, 100, NULL),
(159, 50000, 50, NULL),
(160, 25000, 25, NULL),
(161, 100000, 100, NULL),
(162, 50000, 50, NULL),
(163, 25000, 25, NULL),
(164, 100000, 100, NULL),
(165, 50000, 50, NULL),
(166, 25000, 25, NULL),
(167, 100000, 100, NULL),
(168, 50000, 50, NULL),
(169, 25000, 25, NULL),
(170, 100000, 100, NULL),
(171, 50000, 50, NULL),
(172, 25000, 25, NULL),
(173, 100000, 100, NULL),
(174, 50000, 50, NULL),
(175, 25000, 25, NULL),
(176, 100000, 100, NULL),
(177, 50000, 50, NULL),
(178, 25000, 25, NULL),
(179, 100000, 100, NULL),
(180, 50000, 50, NULL),
(181, 25000, 25, NULL),
(182, 100000, 100, NULL),
(183, 50000, 50, NULL),
(184, 25000, 25, NULL),
(185, 100000, 100, NULL),
(186, 50000, 50, NULL),
(187, 25000, 25, NULL),
(188, 100000, 100, NULL),
(189, 50000, 50, NULL),
(190, 25000, 25, NULL),
(191, 100000, 100, NULL),
(192, 50000, 50, NULL),
(193, 25000, 25, NULL),
(194, 100000, 100, NULL),
(195, 50000, 50, NULL),
(196, 25000, 25, NULL),
(197, 100000, 100, NULL),
(198, 50000, 50, NULL),
(199, 25000, 25, NULL),
(200, 100000, 100, NULL),
(201, 50000, 50, NULL),
(202, 25000, 25, NULL),
(203, 100000, 100, NULL),
(204, 50000, 50, NULL),
(205, 25000, 25, NULL),
(206, 100000, 100, NULL),
(207, 50000, 50, NULL),
(208, 25000, 25, NULL),
(209, 100000, 100, NULL),
(210, 50000, 50, NULL),
(211, 25000, 25, NULL),
(212, 100000, 100, NULL),
(213, 50000, 50, NULL),
(214, 25000, 25, NULL),
(215, 100000, 100, NULL),
(216, 50000, 50, NULL),
(217, 25000, 25, NULL),
(218, 100000, 100, NULL),
(219, 50000, 50, NULL),
(220, 25000, 25, NULL),
(221, 100000, 100, NULL),
(222, 50000, 50, NULL),
(223, 25000, 25, NULL),
(224, 100000, 100, NULL),
(225, 50000, 50, NULL),
(226, 25000, 25, NULL),
(227, 100000, 100, NULL),
(228, 50000, 50, NULL),
(229, 25000, 25, NULL),
(230, 100000, 100, NULL),
(231, 50000, 50, NULL),
(232, 25000, 25, NULL),
(233, 100000, 100, NULL),
(234, 50000, 50, NULL),
(235, 25000, 25, NULL),
(236, 100000, 100, NULL),
(237, 50000, 50, NULL),
(238, 25000, 25, NULL),
(239, 100000, 100, NULL),
(240, 50000, 50, NULL),
(241, 25000, 25, NULL),
(242, 100000, 100, NULL),
(243, 50000, 50, NULL),
(244, 25000, 25, NULL),
(245, 100000, 100, NULL),
(246, 50000, 50, NULL),
(247, 25000, 25, NULL),
(248, 100000, 100, NULL),
(249, 50000, 50, NULL),
(250, 25000, 25, NULL),
(251, 100000, 100, NULL),
(252, 50000, 50, NULL),
(253, 25000, 25, NULL),
(254, 100000, 100, NULL),
(255, 50000, 50, NULL),
(256, 25000, 25, NULL),
(257, 100000, 100, NULL),
(258, 50000, 50, NULL),
(259, 25000, 25, NULL),
(260, 100000, 100, NULL),
(261, 50000, 50, NULL),
(262, 25000, 25, NULL),
(263, 100000, 100, NULL),
(264, 50000, 50, NULL),
(265, 25000, 25, NULL),
(266, 100000, 100, NULL),
(267, 50000, 50, NULL),
(268, 25000, 25, NULL),
(269, 100000, 100, NULL),
(270, 50000, 50, NULL),
(271, 25000, 25, NULL),
(272, 100000, 100, NULL),
(273, 50000, 50, NULL),
(274, 25000, 25, NULL),
(275, 100000, 100, NULL),
(276, 50000, 50, NULL),
(277, 25000, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK43g2yroy6l7lfomw37wajkqrn` (`event_id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3utafe14rupaypjocldjaj4ol` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK43g2yroy6l7lfomw37wajkqrn` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `FK3utafe14rupaypjocldjaj4ol` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
