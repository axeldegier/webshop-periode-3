-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 mrt 2020 om 11:36
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'Axel', ''),
(3, 'Test', 'dit is eenetehbdg'),
(6, 'Bas', 'testtttt'),
(7, 'Martijn', 'ilovehighschooldxd'),
(9, 'Sam', '56790873456789098574667980'),
(10, 'iemand', '12345678'),
(11, 'sam2', '12345'),
(12, 'a', 'ietstetw'),
(13, 'Axel`2', '1234567890987654321'),
(15, 'jhfasfihda', 'a'),
(16, 'iwqeur', '$2y$08$rmH6AZwX5uqooGIEPpvecerw0YY2LI5a1E92Oxd3/PHMwJOXgokVW'),
(17, 'casey', '$2y$08$pOhPlGEnwwUp71JRH22esOk.5Ylah7sZwukS9D0jk.FOLpEAIiq.K'),
(18, 'Axelbdb', '$2y$08$TN5UEIr2nSgAFxPrdwLo4uvQGb1sI8teUfAjrHJHEPd8Lqp8mnws.'),
(19, 'uhwefy', '$2y$08$mrzvMGYlBBqE4WA7kwO0n.tN4cUVUKjUQPlTsKDrR4KBrgNCOuUVi'),
(20, 'wqerdtg', '$2y$08$BqaBlz5AHW6pZl54mxFG3OCArCUxq3KacgdsUCBzZEHbmqw4XDECy'),
(21, 'wwswd', '$2y$08$fcqW4FRRHze9GTRC1TOoiuOxSfS.9z2lH1ZKDMbQPp989.mQC/SQC'),
(22, 'Axeldeguie', '$2y$08$OIxHeFJilp8hLthyX9CqBe2C7KbvQjZJgrv1OmKkdgInIbSs6alHu'),
(24, 'Casey2', '$2y$08$LRpDjkFt4AI9q/kCv6XUauqKgFFlR1KI0i6GyNfSZZWUVDn.m.HNu'),
(25, 'Casey3', '$2y$08$kE/9voinnve5/qokNisfP.rev84rw306Fdn7VVd98cKdmtn0//Kzm'),
(26, 'Casey4', '$2y$08$eMSvqmwJ2d0KyBEfPM9naOI/4vsDioh4HkPKLi8L4gq1Y2VV5aDCS');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen voor op tafel.', '1'),
(2, 'buitenlamp', 'Dit is een lamp voor buiten wauw!', '1'),
(3, 'designlamp', 'designlampen zijn lampem.', '1'),
(4, 'bureaulamp', 'bureaulampen zijn lampen voor op je bureau.', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `houseNumber` int(11) NOT NULL,
  `houseNumber_addon` varchar(255) NOT NULL,
  `zipCode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `newsletter_subscription` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`id`, `gender`, `firstName`, `middleName`, `lastName`, `street`, `houseNumber`, `houseNumber_addon`, `zipCode`, `city`, `phone`, `email`, `password`, `newsletter_subscription`) VALUES
(1, 'female', 'Casey', 'van', 'schaarenburg', 'kwl', 7, 'A', 'NL', 'Utrecht', 6478903, 'caseyschaarenburg@gmail.com', 'admin', 0),
(2, 'female', 'Sam', ' ', 'Boesjes', 'kwl', 7, 'A', 'NL', 'Utrecht', 656789, 'samboesjes@gmail.com', 'admin1', 1),
(3, 'male', 'martijn', ' ', 'middelkoop', 'kwl', 7, 'A', 'NL', 'Utrecht', 6563219, 'martijnmiddelkoop@gmail.com', 'admin2', 1),
(4, 'male', 'Levi', ' ', 'Melsan', 'kwl', 7, 'A', 'NL', 'Utrecht', 656123, 'levi@gmail.com', 'admin3', 1),
(5, 'male', 'Alex', ' ', 'klasser', 'kwl', 7, 'A', 'NL', 'Utrecht', 656356, 'alex@gmail.com', 'admin4', 0),
(6, '', 'Axelllllllllll', 'de', 'gier', '', 0, '', '', '', 0, 'axeldegier@outlook.com', '$2y$08$lAY2HKy5aEFzK2cQMN6KLe3dLpnJvTjmrueUi2j7K5Di6MNWGfQo2', 0),
(7, '', 'Axelllllllllll', 'de', 'gier', '', 0, '', '', '', 0, 'axeldegier@outlook.com', '$2y$08$JhxnZ8a.1mWup7YN29wbJu9MAsev0YM3jCNhYUq/eyH4N0HKnt6Jy', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(1, 'Arstid', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 1, 40, 'wit', 300, 1),
(2, 'Buitenlamp', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 2, 40, 'wit', 300, 1),
(3, 'gans-lamp', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 3, 40, 'wit', 300, 1),
(4, 'giraf-lamp', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 3, 32, 'wit', 300, 1),
(5, 'hektar', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 4, 10, 'zwart', 300, 1),
(6, 'jesse', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 4, 51, 'zwart', 500, 1),
(7, 'lampje', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 3, 2147483647, 'zwart', 350, 1),
(8, 'llahra', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 1, 570, 'grijs', 100, 1),
(9, 'struisvogel-lamp', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmat', 3, 3660, 'grijs', 1000, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'assets/img/arstid.jpg', 1),
(2, 2, 'assets/img/buitenlamp.jpg', 1),
(3, 2, 'assets/img/buitenlamp2.jpg', 1),
(4, 3, 'assets/img/gans.jpg', 1),
(5, 4, 'assets/img/giraf.jpg', 1),
(6, 4, 'assets/img/giraf2.jpg', 1),
(7, 5, 'assets/img/hektar.jpg', 1),
(8, 6, 'assets/img/jesse.png', 1),
(9, 7, 'assets/img/lampje.jpg', 1),
(10, 8, 'assets/img/llahra.png', 1),
(11, 9, 'assets/img/struisvogel.jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `birthDate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `firstName`, `middleName`, `lastName`, `birthDate`, `email`, `password`) VALUES
(1, 'Axel', 'de', 'Gier', '2003-01-06', '532600@student.glu.nl', 'admin123'),
(2, 'Docent', 'van', 'Docent', '2003-01-06', 'Docent@student.glu.nl', '12345');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
