-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Pi 19.Apr 2024, 00:02
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `kmec`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `title` varchar(11) NOT NULL,
  `price` double DEFAULT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `produkty`
--

INSERT INTO `produkty` (`id`, `title`, `price`, `image`) VALUES
(44, 'Stolny Poci', 820.9, 0x626d39326553317762324e706447466a4c6d70775a773d3d),
(45, 'Tricko Nike', 15, 0x556a45794f4456665953317359584a6e5a5335716347633d),
(46, 'Senzor pohy', 5.35, 0x646e51774d445930587a4575616e426e),
(47, 'Botaska', 200, 0x4d54557a4e4467344e7a55324f43313062334268626d74684c544575616e426e),
(48, 'USB', 18.9, 0x4e4455774d5445324e6a63744d69313061484a6c5a5852335a573530655335716347633d),
(49, 'CD disk', 0.75, 0x4d5449774d4842344c554e4558326c6a623235666447567a6443357a646d63756347356e),
(50, 'Lampa', 72.05, 0x4d6a6b344e7a4d324c6d70775a773d3d),
(51, 'Klavesnica', 99, 0x4d5445774d5463334c57686c636d35684c57747359585a6c63323570593245746148417461486c775a584a344c574673624739354c57397961576470626e4d744e6a557461486774636d566b4c5441784c6d70775a773d3d),
(52, 'Herna mys', 45.55, 0x62586c7a4c6d70775a773d3d),
(53, '4K monitor', 302.9, 0x615731685a32567a494367784b5335716347566e);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `profile_picture`
--

CREATE TABLE `profile_picture` (
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `profile_picture`
--

INSERT INTO `profile_picture` (`userid`, `status`) VALUES
(1, 1),
(2, 1),
(4, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uimgstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `uimgstatus`) VALUES
(1, 'Mirec', 'mirec@gmail.com', 'Test', 1),
(2, 'awdwas', 'miroslavkmec965@gmail.com', 'asdasd', 0),
(4, 'asfdasf', 'miroslavmec965@gmail.com', 'DSAdas', 0);

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD PRIMARY KEY (`userid`);

--
-- Indexy pre tabuľku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pre tabuľku `profile_picture`
--
ALTER TABLE `profile_picture`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
