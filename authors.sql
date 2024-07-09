-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 09, 2024 at 02:38 PM
-- Server version: 8.4.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `died_on` date DEFAULT NULL,
  `amount_of_children` int NOT NULL,
  `has_siblings` tinyint(1) NOT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wikipedia_links` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `gender`, `firstname`, `lastname`, `birthdate`, `died_on`, `amount_of_children`, `has_siblings`, `nationality`, `wikipedia_links`, `deleted_at`) VALUES
(1, 'm', 'Max', 'Muster', '1955-06-06', NULL, 0, 1, 'swiss', NULL, '2024-07-09'),
(5, 'f', 'J.K.', 'Rowling', '1965-07-31', NULL, 3, 1, 'British', 'https://en.wikipedia.org/wiki/J._K._Rowling', NULL),
(7, 'm', 'J.R.R.', 'Tolkien', '1892-01-03', '1973-09-02', 4, 1, 'British', 'https://en.wikipedia.org/wiki/J._R._R._Tolkien', NULL),
(9, 'f', 'Jodi', 'Picoult', '1966-05-19', NULL, 3, 1, 'American', 'https://en.wikipedia.org/wiki/Jodi_Picoult', NULL),
(10, 'm', 'George R.R.', 'Martin', '1948-09-20', NULL, 3, 1, 'American', 'https://en.wikipedia.org/wiki/George_R._R._Martin', NULL),
(11, 'f', 'Jojo', 'Moyes', '1969-08-04', NULL, 3, 1, 'British', 'https://en.wikipedia.org/wiki/Jojo_Moyes', NULL),
(12, 'm', 'Paulo', 'Coelho', '1947-08-24', NULL, 1, 0, 'Brazilian', NULL, NULL),
(13, 'f', 'Suzanne', 'Collins', '1962-08-10', NULL, 2, 1, 'American', NULL, NULL),
(14, 'm', 'Ernest', 'Hemingway', '1899-07-21', '1961-07-02', 3, 1, 'American', NULL, NULL),
(15, 'f', 'Virginia', 'Woolf', '1882-01-25', '1941-03-28', 0, 1, 'British', NULL, NULL),
(16, 'm', 'Arthur', 'Conan Doyle', '1859-05-22', '1930-07-07', 2, 1, 'British', NULL, NULL),
(17, 'm', 'F. Scott', 'Fitzgerald', '1896-09-24', '1940-12-21', 1, 1, 'American', NULL, NULL),
(18, 'm', 'Thomas', 'Mann', '1875-06-06', '1955-08-12', 6, 1, 'German', NULL, NULL),
(19, 'f', 'Herta', 'Müller', '1953-08-17', NULL, 1, 0, 'German', NULL, NULL),
(20, 'm', 'Hermann', 'Hesse', '1877-07-02', '1962-08-09', 3, 1, 'German', NULL, NULL),
(21, 'f', 'Annette', 'von Droste-Hülshoff', '1797-01-10', '1848-05-24', 0, 1, 'German', NULL, NULL),
(22, 'm', 'Günter', 'Grass', '1927-10-16', '2015-04-13', 4, 1, 'German', NULL, NULL),
(23, 'f', 'Joël', 'Dicker', '1985-06-16', NULL, 2, 1, 'swiss', NULL, '2024-07-09'),
(24, 'm', 'Max', 'Frisch', '1911-05-15', '1991-04-04', 2, 1, 'swiss', NULL, '2024-07-09'),
(25, 'f', 'Ella', 'Moser', '1926-03-28', NULL, 3, 1, 'swiss', NULL, '2024-07-09'),
(26, 'm', 'Friedrich', 'Dürrenmatt', '1921-01-05', '1990-12-14', 3, 1, 'swiss', NULL, '2024-07-09'),
(27, 'f', 'Alice', 'Rohrwacher', '1982-01-29', NULL, 1, 1, 'swiss', NULL, '2024-07-09'),
(29, 'f', 'Isabel', 'Allende', '1942-08-02', NULL, 2, 1, 'Chilean', NULL, NULL),
(30, 'm', 'Gabriel', 'García Márquez', '1927-03-06', '2014-04-17', 2, 1, 'Colombian', NULL, NULL),
(31, 'f', 'Simone', 'de Beauvoir', '1908-01-09', '1986-04-14', 0, 1, 'French', NULL, NULL),
(32, 'm', 'Victor', 'Hugo', '1802-02-26', '1885-05-22', 5, 1, 'French', NULL, NULL),
(33, 'f', 'Colette', '', '1873-01-28', '1954-08-03', 1, 1, 'French', NULL, NULL),
(34, 'm', 'Miguel', 'Cervantes', '1547-09-29', '1616-04-23', 3, 1, 'Spanish', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
