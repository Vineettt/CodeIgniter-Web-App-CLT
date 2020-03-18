-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 03:03 PM
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
-- Database: `clt`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `flag-src` varchar(255) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `flag-src`, `c_timestamp`) VALUES
(1, 'India', 'india.png', '2020-03-18 10:07:48'),
(2, 'England', 'england.jpg', '2020-03-18 10:07:57'),
(3, 'Australia', 'australia.png', '2020-03-18 10:08:09'),
(4, 'Sri Lanka', 'srilanka.png', '2020-03-18 10:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `match_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `teamA` int(11) NOT NULL,
  `teamB` int(11) NOT NULL,
  `matches_date` date NOT NULL,
  `m_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_id`, `venue_id`, `teamA`, `teamB`, `matches_date`, `m_timestamp`) VALUES
(1, 3, 1, 4, '2020-03-10', '2020-03-18 11:45:19'),
(2, 2, 2, 3, '2020-03-16', '2020-03-18 11:45:33'),
(3, 1, 1, 3, '2020-03-23', '2020-03-18 11:45:45'),
(4, 3, 2, 4, '2020-03-25', '2020-03-18 11:45:55'),
(5, 1, 1, 2, '2020-03-26', '2020-03-18 11:46:18'),
(6, 2, 3, 4, '2020-03-28', '2020-03-18 11:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `player-img` varchar(255) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `player_description` varchar(255) NOT NULL,
  `player_score` int(11) NOT NULL,
  `player_wicket` int(11) NOT NULL,
  `player_dob` date NOT NULL,
  `p_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `team_id`, `player-img`, `player_name`, `player_description`, `player_score`, `player_wicket`, `player_dob`, `p_timestamp`) VALUES
(1, 1, 'player.png', 'TIplayer1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50, 3, '1992-06-20', '2020-03-18 11:21:10'),
(2, 1, 'player.png', 'TIplayer2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, 0, '1992-11-20', '2020-03-18 11:21:10'),
(3, 1, 'player.png', 'TIplayer3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15, 3, '1994-06-20', '2020-03-18 11:21:10'),
(4, 1, 'player.png', 'TIplayer4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30, 0, '1993-06-20', '2020-03-18 11:21:10'),
(5, 1, 'player.png', 'TIplayer5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 1, '1990-06-20', '2020-03-18 11:21:10'),
(6, 1, 'player.png', 'TIplayer6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 1, '1995-06-20', '2020-03-18 11:21:10'),
(7, 2, 'player.png', 'TEplayer1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50, 3, '1992-06-20', '2020-03-18 11:21:10'),
(8, 2, 'player.png', 'TEplayer2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, 0, '1992-11-20', '2020-03-18 11:21:10'),
(9, 2, 'player.png', 'TEplayer3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15, 3, '1994-06-20', '2020-03-18 11:21:10'),
(10, 2, 'player.png', 'TEplayer4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30, 0, '1993-06-20', '2020-03-18 11:21:10'),
(11, 2, 'player.png', 'TEplayer5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 1, '1990-06-20', '2020-03-18 11:21:10'),
(12, 2, 'player.png', 'TEplayer6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 1, '1995-06-20', '2020-03-18 11:21:10'),
(13, 3, 'player.png', 'TAplayer1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50, 3, '1992-06-20', '2020-03-18 11:21:10'),
(14, 3, 'player.png', 'TAplayer2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, 0, '1992-11-20', '2020-03-18 11:21:10'),
(15, 3, 'player.png', 'TAplayer3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15, 3, '1994-06-20', '2020-03-18 11:21:10'),
(16, 3, 'player.png', 'TAplayer4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30, 0, '1993-06-20', '2020-03-18 11:21:10'),
(17, 3, 'player.png', 'TAplayer5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 1, '1990-06-20', '2020-03-18 11:21:10'),
(18, 3, 'player.png', 'TAplayer6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 1, '1995-06-20', '2020-03-18 11:21:10'),
(19, 4, 'player.png', 'TSLplayer1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 50, 3, '1992-06-20', '2020-03-18 11:21:10'),
(20, 4, 'player.png', 'TSLplayer2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 10, 0, '1992-11-20', '2020-03-18 11:21:10'),
(21, 4, 'player.png', 'TSLplayer3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15, 3, '1994-06-20', '2020-03-18 11:21:10'),
(22, 4, 'player.png', 'TSLplayer4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 30, 0, '1993-06-20', '2020-03-18 11:21:10'),
(23, 4, 'player.png', 'TSLplayer5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 1, '1990-06-20', '2020-03-18 11:21:10'),
(24, 4, 'player.png', 'TSLplayer6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 1, '1995-06-20', '2020-03-18 11:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `teamAScore` int(11) NOT NULL,
  `teamBScore` int(11) NOT NULL,
  `r_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `match_id`, `teamAScore`, `teamBScore`, `r_timestamp`) VALUES
(1, 1, 200, 186, '2020-03-18 11:53:31'),
(2, 2, 192, 190, '2020-03-18 11:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_point` int(11) NOT NULL,
  `t_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `country_id`, `team_name`, `team_point`, `t_timestamp`) VALUES
(1, 1, 'Team I', 2, '2020-03-18 13:47:23'),
(2, 2, 'Team E', 2, '2020-03-18 13:47:29'),
(3, 3, 'Team A', 0, '2020-03-18 08:14:56'),
(4, 4, 'Team SL', 0, '2020-03-18 08:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `venue_description` varchar(255) NOT NULL,
  `venue_location` varchar(255) NOT NULL,
  `v_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `venue_description`, `venue_location`, `v_timestamp`) VALUES
(1, 'AJ stadium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'India', '2020-03-18 08:46:04'),
(2, 'TBC ground', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'England', '2020-03-18 08:46:04'),
(3, 'SC ground', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Australia', '2020-03-18 08:46:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
