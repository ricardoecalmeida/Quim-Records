-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2024 at 08:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quimrecords`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `release` date NOT NULL,
  `band_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `cover`, `release`, `band_id`, `created_at`, `updated_at`) VALUES
(14, 'Super Trouper', 'covers//oYg5vg0Wmvn0NrAB7HG1TvNJq7fQDQ7F8Uvs3n0S.jpg', '1980-11-03', 33, NULL, NULL),
(15, 'For Those About to Rock We Salute You', 'covers//JEyyjR6rt0Usvtna4n5EJKKSBFmmgiWghmdSczAg.jpg', '1981-11-20', 34, NULL, NULL),
(16, 'Powerage', 'covers//9Z3JWQYEYHn6qdb9LxL2rVYlLxMsxNvtNokqM7Sk.jpg', '1978-04-28', 34, NULL, NULL),
(17, 'Who Made Who', 'covers//AKpMWf4OUPX9SMGT6n1u1FV6rinVj0tVPTpG3PaT.jpg', '1986-05-26', 34, NULL, NULL),
(18, 'Ill Communication', 'covers//LME0G2di6sPyL9OvjAw8TxbwSZ8srxG458YFT8ae.jpg', '1994-05-31', 35, NULL, NULL),
(19, 'Billy Idol', 'covers//yeKhpExxSpIX4Rh5vaJHB5o1dLgnmDQHS13I9Dp3.jpg', '1982-07-16', 36, NULL, NULL),
(20, 'Debut', 'covers//UubBTiPHQqAeuaqvdnjM5oepPoWeP57IKRK17F0s.jpg', '1993-07-05', 37, NULL, NULL),
(21, 'Vulnicura', 'covers//vlowg3YG33lq92ICDt3osOszVSiUDp0Pxzgbgn3m.jpg', '2015-01-20', 37, NULL, NULL),
(22, 'Homogenic', 'covers//G4qczIcnlNnydPeiz4ajpugxLbB9rgxoib0cmaZf.jpg', '1997-09-20', 37, NULL, NULL),
(23, 'Damaged', 'covers//s1sWIT0vhY6nHnIl3G2FyHldIRSuyn9kt0IiliGD.jpg', '1981-12-01', 38, NULL, '2024-03-03 01:12:46'),
(24, 'Vol. 4', 'covers//EX7ucCZJTirTHXHtacSrMQaVimKRKUvdEtVeiXb7.jpg', '1972-09-22', 39, NULL, '2024-03-02 21:22:03'),
(25, 'Paranoid', 'covers//mvt4ug10twYs5rhLoHD5g7tcVXjF8J8IHNZcxI0G.jpg', '1970-09-18', 39, NULL, '2024-03-02 21:22:49'),
(26, 'Black Sabbath', 'covers//Q0My89m9NsYmksAQ02xO1uipDMNPlekoT3pMh7Nm.jpg', '1970-02-13', 39, NULL, NULL),
(27, 'The Best Of', 'covers//obqh3VnagtVrCMZmYjejDknka6XagNI0zd7P0cjG.jpg', '2000-10-30', 40, NULL, NULL),
(28, 'Think Tank', 'covers//fIAM4RWvN4ew3yAaY11dUDrsFCStDdw9k96bfV0p.jpg', '2003-05-05', 40, NULL, NULL),
(29, 'The Freewheelin\' Bob Dylan', 'covers//hGbRfqQzFFh0vDYxo3gHqNZifW3rnIwSyw6wULXh.jpg', '1963-05-27', 41, NULL, NULL),
(30, 'Blonde on Blonde', 'covers//YwhzlaKecLODN7jApNbp3kIPfwM6LBzqJtlX32yp.jpg', '1966-06-20', 41, NULL, NULL),
(31, 'Blood on the Tracks', 'covers//JEm9KYhE8U2FezH6ZpncUYqVWGurxtAbBNA8hqCJ.jpg', '1975-01-20', 41, NULL, NULL),
(32, 'Highway 61 Revisited', 'covers//1T3Fk6YDDoX0A8AIdnwTzlW0G8ATgZDp1yZN6ILh.jpg', '1965-08-30', 41, NULL, NULL),
(33, 'Teaser and the Firecat', 'covers//6bq9o9SgOCPzwpYnoC5PUrtIdKe9WllDTtup7U4D.jpg', '1971-10-01', 42, NULL, NULL),
(34, '\"Heroes\"', 'covers//Sx6A3JomzrZCbBQzzWIVR3lZypDNspEkphuijDZ8.jpg', '1977-10-14', 43, NULL, NULL),
(35, 'Low', 'covers//7uAs7pMv6qWrdrWjG2KBAr4zNk4cMIp4Etzb6ylK.jpg', '1977-01-14', 43, NULL, NULL),
(36, '3 Feet High and Rising', 'covers//N951fhg3jsRtdQL9URf6jdjnwiG0Sk06PxzuKsQW.jpg', '1989-03-03', 44, NULL, NULL),
(37, 'Pacific Ocean Blue', 'covers//kllN9rehCHRxSFQwzivpQg6HIQgBkg31F1AAj1eQ.jpg', '1977-08-22', 45, NULL, NULL),
(38, 'Dusty In Memphis', 'covers//kWpEOJ7xI0YZq45X2l1tpzxpqGY6oUyO78iuTMki.jpg', '1969-03-31', 46, NULL, NULL),
(39, 'Figure 8', 'covers//8c4O2LsEbieTMWEkxmUTRTHm8VGfk5Blqs1EdQFY.jpg', '2000-04-18', 47, NULL, NULL),
(40, 'My Aim Is True', 'covers//zsvQW9ud0ySJlHqbberS9oSAXTjkh7X8ncsRmMVa.jpg', '1977-07-22', 48, NULL, NULL),
(41, '50,000,000 Elvis Fans Can\'t Be Wrong', 'covers//V8nO3tSDVJhIzgQusSEExHmy8VS7f4awuadKhgtK.jpg', '1959-11-13', 49, NULL, NULL),
(42, 'Mama\'s Gun', 'covers//xyZXAJVRIQym9baBUge6yNu0Vv7as0XScVZBb8tP.jpg', '2000-11-21', 50, NULL, NULL),
(43, 'LP1', 'covers//1yOIxrMlNGEnl4gE7JIVAPXkCqPR69oHTWhuWJal.jpg', '2014-08-06', 51, NULL, NULL),
(44, 'Rumours', 'covers//itwEFGwQFhTGYMGjlOqWaJunJQWE4C1KcD6y9gvj.jpg', '1977-02-01', 52, NULL, NULL),
(45, 'The Score', 'covers//IKmUB0b0nrORq3hcgicVgW114D1L5tyUAkK6xUA3.jpg', '1996-02-13', 53, NULL, NULL),
(46, 'Fore!', 'covers//R7BXzjXRjyokoFKYwaOGqJuY9mL3F4gfclVcIEqb.jpg', '1986-08-20', 54, NULL, NULL),
(47, 'AmeriKKKa\'s Most Wanted', 'covers//yKRiTbvL1LbZLhDDgWcaUwaaXIzDjwQXVJpi2mNE.jpg', '1990-05-18', 55, NULL, NULL),
(48, 'The Idiot', 'covers//EMhvBklLOC6M5zfsUDBdsRRs0hDPpByi6Nt2YRlp.jpg', '1977-03-18', 56, NULL, NULL),
(49, 'Emergency on Planet Earth', 'covers//mNCyJv9TZUTtR6NswWjYhEE2R3ibZQP8Cv5pmvE7.jpg', '1993-06-14', 57, NULL, NULL),
(50, 'The ArchAndroid', 'covers//kpc37ysPE0GEgxq54ZohQvB6C82hJt082VQxwPb8.jpg', '2010-05-18', 58, NULL, NULL),
(51, 'I Love Rock \'n Roll', 'covers//ZFLt7fo26ARFbUncQpOVOxYKBmpQES8TRhZnYd6V.jpg', '1981-11-18', 59, NULL, NULL),
(52, 'Double Fantasy', 'covers//n5mnzcpVk9WGC863rvj05zzKIQ2CfIfVPJYBtGMz.jpg', '1980-11-17', 60, NULL, NULL),
(53, 'American Recordings', 'covers//xquro1Rt2ncnIqNZ2SvyZ6GZTUF6t5uSC3b2Yzpx.jpg', '1994-04-26', 61, NULL, NULL),
(54, 'Unchained', 'covers//YpJtwe4SHwtC4FHpbQ3a9kC2ovkj92NtWqvfj1dX.jpg', '1996-11-05', 61, NULL, NULL),
(55, 'Unknown Pleasures', 'covers//N8qkJIW19Dj1NhAR46buD9jgO5tMdIPxyKWQiefd.jpg', '1979-06-15', 62, NULL, NULL),
(56, 'Late Registration', 'covers//B44fxIiaJUKSNEx9emWPuJYWooGXi2ylO4F5sgoI.jpg', '2005-05-30', 63, NULL, NULL),
(57, 'DAMN.', 'covers//mia237d5KxhYDa7ZtfeHj1DcPDbXv2xYgGYqjLfW.jpg', '2017-04-14', 64, NULL, NULL),
(58, 'Tour de France', 'covers//HGzpufGb1txw2jSqWZ3b6Z7b1rbl8rws1aAZXeem.jpg', '2003-08-04', 65, NULL, NULL),
(59, 'Fever', 'covers//OXG1uvqB8Baihn16LmF1116yeJ8VTX8NEo1CAMdw.jpg', '2001-10-01', 112, NULL, NULL),
(60, 'Kylie', 'covers//ocQ8n9TGRARZu6HTEu5V7FU9TN59x5KjoysSmI3o.jpg', '1988-07-04', 112, NULL, NULL),
(61, 'Joanne', 'covers//3ZzRcrjq4zH41rGlk7u0ypVyc9WLH19JfoCj3a1Q.jpg', '2016-10-21', 66, NULL, NULL),
(62, 'Born to Die', 'covers//K99jcIdURe0M55DHRThAvxjHlCEdMUqlz3cTzV09.jpg', '2012-01-27', 67, NULL, NULL),
(63, 'The Miseducation of Lauryn Hill', 'covers//3OYQ2P8t4lF08O7zCwiWyaXyVOAnfghu8fKw85LI.jpg', '1998-08-25', 68, NULL, NULL),
(64, 'Led Zeppelin', 'covers//uyZD5KZPXudvj6AyxgIshWJAIowXgtjZLDWnKJYb.jpg', '1969-01-12', 69, NULL, NULL),
(65, 'Led Zeppelin IV', 'covers//MUsk3Bt9LEj1xv2xgVQxmkRKe2PvHXInqbglGXOu.jpg', '1971-11-08', 69, NULL, NULL),
(66, 'Songs of Leonard Cohen', 'covers//o3S7iP14x6rlFFnmk9oix3do3UNeo4XV2pItayt0.jpg', '1967-12-27', 70, NULL, NULL),
(67, 'Back to Front', 'covers//O7ab5gS8XdVZntI4vZV3nMySkJG1TYHH38EdZDQK.jpg', '1992-05-05', 71, NULL, NULL),
(68, 'I Never Learn', 'covers//xH2QQSznMcrBBXbRWyhqBs50fYrMZ8vAGVxqTBfl.jpg', '2014-05-02', 72, NULL, NULL),
(69, 'Blue Lines', 'covers//Ee2U7gKHHb14PKepWG5Y4qt9WQhg0fGWYAvvqJmm.jpg', '1991-04-08', 73, NULL, NULL),
(70, 'Ride the Lightning', 'covers//eQckZ0mgpl2LDMCbYKcbPS0NzEyO8XbU1CxmhMx1.jpg', '1984-07-27', 74, NULL, NULL),
(71, 'Kill \'Em All', 'covers//msj5A00156AYzx93n9ds0fDblk7bQCdlvTk5v1Xo.jpg', '1983-07-25', 74, NULL, NULL),
(72, 'Master of Puppets', 'covers//vmCCJqfU0BKtHgleGlrfQ4pCtpBS0kC6Vomxm0RK.jpg', '1983-03-03', 74, NULL, NULL),
(73, 'Bad', 'covers//xQxGyxeti84Zcdh7F5NFI0vwT6RfrAMdJ5HCIXMZ.jpg', '1987-08-31', 75, NULL, NULL),
(74, 'Off the Wall', 'covers//v8mkQJN5LJzbjCKicA0368QeCg95wKS8W5hyQmII.jpg', '1979-08-10', 75, NULL, NULL),
(75, 'Kill Uncle', 'covers//kCuW3BVc56EX8RKosWTZVTD9ugiBnTwmrHL1uAtu.jpg', '1991-03-04', 77, NULL, NULL),
(76, 'Vauxhall and I', 'covers//8hEA1XzG2Nt1MM5OxpHlpYG8fdWJxu4QaxjVbRqE.jpg', '1994-03-14', 77, NULL, NULL),
(77, 'You Are the Quarry', 'covers//70z9WFhlL4A0UPQGgK0dNf95yQnj9o9amDOUT582.jpg', '2004-05-17', 77, NULL, NULL),
(78, 'Illmatic', 'covers//V9z45dyIjXw7cDrQlNjac3ExXcahcKHCYmvMZUr5.jpg', '1994-04-19', 78, NULL, NULL),
(79, 'Hot August Night', 'covers//jNJTz8hc1yJMu0LYFMxmIyS4o57WvQgnJeD3bwcv.jpg', '1972-12-09', 79, NULL, NULL),
(80, 'Tonight\'s the Night', 'covers//TuyQRhQWilKOfqVuPLIYjve7umKgLUobhJFYYoFP.jpg', '1975-06-20', 80, NULL, NULL),
(81, 'Harvest Moon', 'covers//5ty2Yv3rLZAZxEDMjZQGgH8rh6tZl8s9r3lWSsnf.jpg', '1992-11-02', 80, NULL, NULL),
(82, 'The Boatman\'s Call', 'covers//fL9dGsknRpOjwyXsKEBSJLPF7BRfpAKWs1pkckO0.jpg', '1997-03-03', 81, NULL, NULL),
(83, 'Nevermind', 'covers//73xMzTY0DSEM64lD4X9Y7RdeG0jU5XogYbClU9se.jpg', '1991-09-24', 82, NULL, NULL),
(84, 'In Utero', 'covers//8DLxHhj6R1koiTI17Hwmp7hDIFIpbh5XeHekVsNZ.jpg', '1993-09-21', 82, NULL, NULL),
(85, '(What\'s the Story) Morning Glory?', 'covers//2QOfsqcFzE7GqNQGYHrK4kcRgQBH8Bm7wIw7YR3W.jpg', '1995-10-02', 83, NULL, NULL),
(86, 'Paul Simon', 'covers//JOku3cQBMzH2o8kAaBjWIx6CAPgwoDov6yG4GXAR.jpg', '1972-01-24', 84, NULL, NULL),
(87, 'Pet Shop Boys, actually.', 'covers//KPKYOyr3rh4XwQBHyEajHkvdQ9X9gHqKwTBk7Y7w.jpg', '1987-09-07', 85, NULL, NULL),
(88, 'Peter Gabriel', 'covers//9JbVY8tkgWFHQi1DTgU2VxiPhdlW4CJjVzA4UE9D.jpg', '1972-06-02', 86, NULL, NULL),
(89, 'The Dark Side of the Moon', 'covers//2ILmK4FKjR4kOqFsXayaOTjl0Na2DZNaOuJgFr7U.jpg', '1973-03-01', 87, NULL, NULL),
(90, 'Wish You Were Here', 'covers//RmRUUthlQeppZhqBHGztzi5FwrLdsYA0ka6lgrnV.jpg', '1975-09-12', 87, NULL, NULL),
(91, 'Doolittle', 'covers//qZ6cog9LmE3ItF3gRgKjj4hji9wyaX8gJFRipEgp.jpg', '1989-04-17', 88, NULL, NULL),
(92, 'Prince', 'covers//pNoUZDpCbnxhU8R0BzH9wXgyMw66XmzrxDyJ2GTZ.jpg', '1979-10-19', 89, NULL, NULL),
(93, 'News of the World', 'covers//sAdE4qSbFa2fkXQde0N9Y90KOFlfHpDtiksVHbH2.jpg', '1977-10-28', 90, NULL, NULL),
(94, 'Hot Space', 'covers//jJAOp6IMnxBIV1vfjmuAhcIDfLceB15FzpqA0UHK.jpg', '1982-05-04', 90, NULL, NULL),
(95, 'Queen', 'covers//v1BOQDtWrqNfdjgQpJ8xyY9ggc2qNKJ4BRYtKmXI.jpg', '1973-07-13', 90, NULL, NULL),
(96, 'Jazz', 'covers//mQrSuKO3o28GGL6W84J5vZqFFXwlfL89V7qJWboX.jpg', '1978-11-10', 90, NULL, NULL),
(97, 'The Works', 'covers//mEq4J08UQNSnN6URqZG5wwRNuBLUunCSGdu00hTt.jpg', '1984-02-27', 90, NULL, NULL),
(98, 'Pablo Honey', 'covers//TJ9uDIRz6Vp3GsdF3nDAQqvMA8XUOEOjOINQQC8n.jpg', '1993-02-22', 91, NULL, NULL),
(99, 'Rage Against the Machine', 'covers//FSHiBy74QkqkEoDgG6ZNLwuk8gLpQb3i6CVPTAsW.jpg', '1992-11-03', 92, NULL, NULL),
(100, 'The Battle of Los Angeles', 'covers//bbbYBaKtiE6hknI6qSMlBgrMVYSJyDKOjCcasxth.jpg', '1999-11-02', 92, NULL, NULL),
(101, 'Ramones', 'covers//jkOMM8ed44SgZTczQxqO7lTJcHNvV9QNAuLvykxn.jpg', '1976-04-23', 93, NULL, NULL),
(102, 'Diamond Life', 'covers//NligHEcJz2SstRgs0jDDeigaA5ymxvIosXMGLV9J.jpg', '1984-07-16', 94, NULL, NULL),
(103, 'Sounds of Silence', 'covers//06fljUICyWlWGLoPtTaCgSOpYms7jQrHSJwHR0em.jpg', '1966-01-17', 95, NULL, NULL),
(104, 'Bridge over Troubled Water', 'covers//DHZUrnS9gfgs6ARlAfzX2vWVTnLgNIcBUEZL25l1.jpg', '1970-01-26', 95, NULL, NULL),
(105, 'Goo', 'covers//dDw9U5aWaGddjJ4Ow7hmIsT5koZxnBDGL885Kd2N.jpg', '1990-06-26', 96, NULL, NULL),
(106, 'Sgt. Pepper\'s Lonely Hearts Club Band', 'covers//KF5a755W1ma0OOweSr8Rf4hBP4Fdl7xqkSRQUmf7.jpg', '1967-05-26', 97, NULL, NULL),
(107, 'Help!', 'covers//RTUgNzopCHh4ufO4yMW8JtRIsL0i20z1lX3N3Y5R.jpg', '1965-08-06', 97, NULL, NULL),
(108, 'The Age of Plastic', 'covers//fPg6rfU2aStjH37O7QheOLfbBgKSnqNBL4EPT0OW.jpg', '1980-01-10', 98, NULL, NULL),
(109, 'London Calling', 'covers//1bFg7TpXMkl1IGajEWO4xvjRMijPrngVS3IWo5pt.jpg', '1979-12-14', 99, NULL, NULL),
(110, 'The Best of The Doors', 'covers//qaqVoMSuPwJhOGkoAJ76B7U1HXt7hFifT465JJmX.jpg', '1985-01-01', 100, NULL, NULL),
(111, 'Ready to Die', 'covers//S9UCBTNJwzElkPUNUwWcq51dCejGeY8INHmtD2bJ.jpg', '1994-09-13', 101, NULL, NULL),
(112, 'Music for the Jilted Generation', 'covers//V8QUqKuPKwFV6vyY8Dab5Rq9ffk81M2g8430Z3Sh.jpg', '1994-07-04', 102, NULL, NULL),
(113, 'Hatful of Hollow', 'covers//2hqsUsYmREq9I47kl4oRXrx0Afb3koYve21ePbdC.jpg', '1984-11-12', 103, NULL, NULL),
(114, 'The Queen Is Dead', 'covers//ZNi4Sh1qdEzOBHqJRtZPUqJFsJdHAPja0JPOvVe3.jpg', '1986-06-16', 103, NULL, NULL),
(115, 'The Stone Roses', 'covers//cC904iOgflZRzMHYgbNWfSwDpcRIhXfwFrU250DZ.jpg', '1989-05-02', 104, NULL, NULL),
(116, 'Private Dancer', 'covers//OgT9P2WVJlacsIijbPIFaACzjt4O7EADYPg5XRLe.jpg', '1984-05-29', 105, NULL, NULL),
(117, 'CrazySexyCool', 'covers//50FSyaS6751K9QSZMfqTtTP3WTrIZdgiYGUQayru.jpg', '1994-11-15', 106, NULL, NULL),
(118, 'Tom Petty and the Heartbreakers', 'covers//FDudQIo0g9luudIzpaL6Obfoa6HVwosurLvFZYmV.jpg', '1976-11-09', 107, NULL, NULL),
(119, 'Closing Time', 'covers//1edNQJXlgosfbyHHoxTlYxp6a4A5GbpNNxvnt5jE.jpg', '1973-03-06', 108, NULL, NULL),
(120, 'Mule Variations', 'covers//4ckpkBzdbScOTt4mRrfOhjla0ip80b2RAHXamU3A.jpg', '1999-04-16', 108, NULL, NULL),
(121, 'Contra', 'covers//INVUQrp1lVkJLRjbOlxMb5j1TJSYCkhYnDB9AyhO.jpg', '2010-10-11', 109, NULL, NULL),
(122, 'Band on the Run', 'covers//aUN1JwRKb1lFi3XJdCKUYO1PABATT5u9o3bHeVwp.jpg', '1973-11-30', 110, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bands`
--

CREATE TABLE `bands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bands`
--

INSERT INTO `bands` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(33, 'ABBA', 'bandphotos//kCwqv6pfiPM0g1ZlY0xUPW8pW4M96Mn3ceRlR8uj.jpg', NULL, NULL),
(34, 'AC/DC', 'bandphotos//1Fusly9YGBCi2A5if1WgzFe8aJUnJndaozErNLtO.jpg', NULL, NULL),
(35, 'Beastie Boys', 'bandphotos//lI9Ot5el1uIhG5TrvQjPzc9TLj2uKmb41HCLopim.jpg', NULL, NULL),
(36, 'Billy Idol', 'bandphotos//d8iZclneWW3DrrmqibV6Xzsj9AyOiM5GSFLBBVEo.jpg', NULL, NULL),
(37, 'Björk', 'bandphotos//fFBdXe1F7EajSHgwy486yOqM9sBLVDpwmfPGDAQt.jpg', NULL, NULL),
(38, 'Black Flag', 'bandphotos//blI96PMLSFsXQPlPWsOycn2kB7w4K1EQyUzTc3OS.jpg', NULL, NULL),
(39, 'Black Sabbath', 'bandphotos//ha17AjsEo7g1mIFI3mU4zz307Zx5sORCscc4i3vk.jpg', NULL, NULL),
(40, 'Blur', 'bandphotos//C9cV046LHEaTcaMI2ORd0CmXmYsaw36gHzofl7ZE.jpg', NULL, NULL),
(41, 'Bob Dylan', 'bandphotos//MPEsPm6zHyuN9vE1dz6gqNN0nIuJXAmMMKTq783i.jpg', NULL, NULL),
(42, 'Cat Stevens', 'bandphotos//aFtUGoo8ONZ1WYbSqNfZ2kqbPmHPQR5ftdGLbcGr.jpg', NULL, NULL),
(43, 'David Bowie', 'bandphotos//XZat6YDpSsChksy0cPOA6DQRk9Gvs3Eu7V9w1tr1.jpg', NULL, NULL),
(44, 'De La Soul', 'bandphotos//yXPaxvhLug44kWUxWuuMIMZhiMdPCEMnipJDoGRM.jpg', NULL, NULL),
(45, 'Dennis Wilson', 'bandphotos//ZlmW3D1Ar8Vb2QsFZ4HQVowxOFi0GBlCKD4btdXq.jpg', NULL, NULL),
(46, 'Dusty Springfield', 'bandphotos//H8tXvpOhj6LUUtUOAhZXTDDVAKBuVq8IqAFGCsea.jpg', NULL, NULL),
(47, 'Elliott Smith', 'bandphotos//GAeDPrx9rXR8FnY2R8TDSxYbUkT6yTD2NLeUaGHe.jpg', NULL, NULL),
(48, 'Elvis Costello', 'bandphotos//qnxvyrg5bQqC2fhCry0SXqMCeugiHGfgd0yZcGnx.jpg', NULL, NULL),
(49, 'Elvis Presley', 'bandphotos//FURqnrU7jqE9KOcyvFmQ4IgpKDaMZZIUS5cNuLLl.jpg', NULL, NULL),
(50, 'Erykah Badu', 'bandphotos//EAi56WjvCK3jjcJSaPXXVYnfPsY411bLZWe6j5tQ.jpg', NULL, NULL),
(51, 'FKA twigs', 'bandphotos//EBetMGcVFqzpaCs0XNL48AMGOwN68wEPJWuCo8sm.jpg', NULL, NULL),
(52, 'Fleetwood Mac', 'bandphotos//68vAXhbtZ6YYS7DwzH8its5UETu7u1yqUXxr3sB7.jpg', NULL, NULL),
(53, 'Fugees', 'bandphotos//3U1P6WrxCzZNfdBvMYuN8vvenxosTaTCX27P31Zh.jpg', NULL, NULL),
(54, 'Huey Lewis and the News', 'bandphotos//LSCKYhKgWxP2rRtwwaNuEotd1ye6agnkl0DsNOjJ.jpg', NULL, NULL),
(55, 'Ice Cube', 'bandphotos//ZaoIA7Gp5jelCxPHFugiOzdNKOJiqaJQ5fXD9Oom.jpg', NULL, NULL),
(56, 'Iggy Pop', 'bandphotos//fmo60NqWxAv8kRJE0MS7Jg2VERDoG8psDThHXd9K.jpg', NULL, NULL),
(57, 'Jamiroquai', 'bandphotos//cN5cWj4vx8whOrfC5brVBaKbDmTPsEo9uLEQb5DX.jpg', NULL, NULL),
(58, 'Janelle Monáe', 'bandphotos//FCQ6aMLclIRNn3FTbgfGJubm7iDaHr9CHXTDpeWC.jpg', NULL, NULL),
(59, 'Joan Jett', 'bandphotos//BWHUxU8DXw96ioCpARrCZrzsOo7yDX0dR5Cy7Ewq.jpg', NULL, NULL),
(60, 'John Lennon and Yoko Ono', 'bandphotos//rVCmdqWLSdZEYCpWbs0SitdbuJT71c4iDHoYm7aR.jpg', NULL, NULL),
(61, 'Johnny Cash', 'bandphotos//Ku112oFSbBkA3NkXCDZRdOM42IrYOVQEw9IvFOxC.jpg', NULL, NULL),
(62, 'Joy Division', 'bandphotos//5SowkbV25SlP2Jm5uXIymeuYg5qyvV8yDcEweUKH.jpg', NULL, NULL),
(63, 'Kanye West', 'bandphotos//mu5l4a0MyekaUArEBtYEXGsu9czGFHFftyl95guI.jpg', NULL, NULL),
(64, 'Kendrick Lamar', 'bandphotos//zh7AnNMV40Xxd2RflOKSmQxdkVf2jCrHmhwa672W.jpg', NULL, NULL),
(65, 'Kraftwerk', 'bandphotos//hFSdOw3xEiJvw1s58yFIqmwdUswvVyTlKHpN1s5W.jpg', NULL, NULL),
(66, 'Lady Gaga', 'bandphotos//qHsr2kW8mLxyHxx0YqS9QqyAtyxytDCWXuJoA8ZA.jpg', NULL, NULL),
(67, 'Lana Del Rey', 'bandphotos//PvpJxcQRqn9wW58anfidtpWojxQDrLWRyfiHZVXK.jpg', NULL, NULL),
(68, 'Lauryn Hill', 'bandphotos//gpGIGRY2MjIARyBeysijMGCqCdU0Woh0hzZ6mi6d.jpg', NULL, NULL),
(69, 'Led Zeppelin', 'bandphotos//Suuj0yGtcp1RU0TFounF8uxoR7if0dv2vyk31V6Z.jpg', NULL, NULL),
(70, 'Leonard Cohen', 'bandphotos//Asm2nQHlRqf81NgTbyEafBGFGamvnSKoUYLYmt9t.jpg', NULL, NULL),
(71, 'Lionel Richie', 'bandphotos//Bu3LUOJTLLHPgw9Uu62n9ODPX5CbUrLhuwaeRuFQ.jpg', NULL, NULL),
(72, 'Lykke Li', 'bandphotos//Bm0COWPt2UxEQL9F9Q1199fuV3SVM4icABYkTZQ6.jpg', NULL, NULL),
(73, 'Massive Attack', 'bandphotos//TrT52mWyDyHc4pTrjkZ16RPuAcDVbtwsu4YVThjg.jpg', NULL, NULL),
(74, 'Metallica', 'bandphotos//ObsB8ZPlrWO4Cg9rGfAijFBCIXk457KFgeox0U9Z.jpg', NULL, NULL),
(75, 'Michael Jackson', 'bandphotos//C7fSYtFWORvS41cefkWfEbVOXxXfU0TVoFXt3Icn.jpg', NULL, NULL),
(77, 'Morrissey', 'bandphotos//zuJFWrh7TUqCYuwo5JfOG9duI5t45f5bDzxyCYXJ.jpg', NULL, NULL),
(78, 'Nas', 'bandphotos//5bRBhXtkuPUS3e4dg9RRPsIs0Y4YP7866vMoe5iK.jpg', NULL, NULL),
(79, 'Neil Diamond', 'bandphotos//vEkjpWb7qg4uT1S6OwApScLTvSH8WVWe54ohO1tX.jpg', NULL, NULL),
(80, 'Neil Young', 'bandphotos//nN3HETTyrwe1F7XHEOHywFvRWw99uwkb7zNt2d0r.jpg', NULL, NULL),
(81, 'Nick Cave and the Bad Seeds', 'bandphotos//7eIfI50xkEw1wRm9OY3ZLAzviMDWNkj15cmZNdqA.jpg', NULL, NULL),
(82, 'Nirvana', 'bandphotos//faYYPbkAAfrtcppWjg2MA7weIbpdkUXiAj2zwkkM.jpg', NULL, NULL),
(83, 'Oasis', 'bandphotos//2liquYSJVqWuK3socS7oPQtoPSI0K9Apc7WTIWVo.jpg', NULL, NULL),
(84, 'Paul Simon', 'bandphotos//pcmAaAfFiOxEpgGAOGGGb95FRcPqT2NtvUnecab0.jpg', NULL, NULL),
(85, 'Pet Shop Boys', 'bandphotos//NugwUnfMxNl1JpojMjRSZAYWnsEo5FgGZQ0ckri4.jpg', NULL, NULL),
(86, 'Peter Gabriel', 'bandphotos//p4OpNtntDqKefdZogepzzHGmJWGUBkfx9b0uCx8T.jpg', NULL, NULL),
(87, 'Pink Floyd', 'bandphotos//JRez8td5YQh1JEVsL43kIVuIYpkpWDsxWg4TM97U.jpg', NULL, NULL),
(88, 'Pixies', 'bandphotos//iP3nSYkaJldR071ZDjX39u9LVHlXCccrtcU3FOgB.jpg', NULL, NULL),
(89, 'Prince', 'bandphotos//OOoINtan1US2LqRHxMni1mWTzOrnQyLfXZ1iWRAA.jpg', NULL, NULL),
(90, 'Queen', 'bandphotos//qVta8Yg9R09nXpaExzWKpRKDNmtHDhdoE2SEZJgm.jpg', NULL, NULL),
(91, 'Radiohead', 'bandphotos//ymuYv3B31E91EyUy9g3Y1df385ZP9NOBjPMcLwUv.jpg', NULL, NULL),
(92, 'Rage Against the Machine', 'bandphotos//Qa0LdHj1yBzF9JnR3G58CoWDEJJFt2OQtBghswrO.jpg', NULL, NULL),
(93, 'Ramones', 'bandphotos//iZkvWAqq8bafnw6TmpUOY4VqJgHVY6W9CVSPispl.jpg', NULL, NULL),
(94, 'Sade', 'bandphotos//qg9zSyUsvVMGVlCft04wp3Pha2JM2uGgC5pW0Iep.jpg', NULL, NULL),
(95, 'Simon & Garfunkel', 'bandphotos//nWcqzmLP1Hkm8VA20gSwjJkcCW7ZHsb054DsaGgL.jpg', NULL, NULL),
(96, 'Sonic Youth', 'bandphotos//bOHsyQVqyZpagzL0Radxq2LYnkhdxYuYqM6lI961.jpg', NULL, NULL),
(97, 'The Beatles', 'bandphotos//nJGHNKzThyapBCai5sGJD1kIir1yAKuP5xqOE3MR.jpg', NULL, NULL),
(98, 'The Buggles', 'bandphotos//fQiXjkpgC3hAednchj204yf0ugtT4msYuHU9ED2e.jpg', NULL, NULL),
(99, 'The Clash', 'bandphotos//cY8ekINGx7cw7iiqRfC8ae2OTUMSRoE0Eno1ZyuO.jpg', NULL, NULL),
(100, 'The Doors', 'bandphotos//juOQbxjzMJDNU6zTP4Mfh8APse7Zun1xuY2UZorX.jpg', NULL, NULL),
(101, 'The Notorious B.I.G.', 'bandphotos//NfYTAgfghn8vTiUKP6VU4rS86yvz8okhHTAJUXLK.jpg', NULL, NULL),
(102, 'The Prodigy', 'bandphotos//LNo41zj8smivIOGTMcH9twUf7XHAne7LQ7lkXc5A.jpg', NULL, NULL),
(103, 'The Smiths', 'bandphotos//xC6Do69xtKw5q7yGzIDi1WVmuGjRMCk8Ylfpz0dO.jpg', NULL, NULL),
(104, 'The Stone Roses', 'bandphotos//31KpzUvfY3xc4uXZsGmzJ7nffGq3CQVtoSlgBeee.jpg', NULL, NULL),
(105, 'Tina Turner', 'bandphotos//eG3Y4cl9zzIx8hgdLJ4kQSOVKvbLqmZEQa38zcUN.jpg', NULL, NULL),
(106, 'TLC', 'bandphotos//RZUcGcieEVyVhA8F2AACIFr2xqrh6Q3g9cNSijGO.jpg', NULL, NULL),
(107, 'Tom Petty and the Heartbreakers', 'bandphotos//adXsQWHWqwO294SrEKzbIwTXZqjeHMhanV2Qgpk4.jpg', NULL, NULL),
(108, 'Tom Waits', 'bandphotos//24jtfbGEfbFuJQeDQWOpBTCx1wzyAoMr80ZKhzWp.jpg', NULL, NULL),
(109, 'Vampire Weekend', 'bandphotos//OnaIS32EiXU9RKms7s9aZtCEUqbvXPf26TQYGNN9.jpg', NULL, NULL),
(110, 'Wings', 'bandphotos//33QfldZ5D0Sqs0JC2QAG4uGz3b0wwsM1XPLxeKwG.jpg', NULL, NULL),
(111, 'Banda Teste', NULL, NULL, '2024-03-03 00:54:22'),
(112, 'Kylie Minogue', 'bandphotos//1PMncw7huvbLj6NWW4ZKo2aZZmLYAgt5XGHNct5u.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_25_123725_create_bands_table', 1),
(6, '2024_02_25_124526_create_albums_table', 2),
(7, '2024_02_25_125728_create_bands_table', 3),
(8, '2024_02_25_125734_create_albums_table', 3),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(10, '2024_02_27_001950_add_user_type_to_users_table', 5),
(11, '2024_02_27_002237_add_user_type_to_users_table', 6),
(12, '2024_02_27_002335_add_user_type_to_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mail@ricardoalmeida.pt', '$2y$12$ySFvF2OA6m79Xq5dLZNCmeAiuCYUX9gQlXKVjhRvMG7KrcYzGv.gC', '2024-02-28 22:57:39'),
('teste@quim.com', '$2y$12$NVCdvrhNL8HoL1mtNfw1Ye5FM6M.00EByx8OVaNVWXCMv/6TGsWoG', '2024-02-28 23:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 2,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `email`, `user_type`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Ricardo', NULL, 'mail@ricardoalmeida.pt', 2, NULL, '$2y$12$jhJH3gI/jSi4lXFIPK6yYOooKYz/CQtkSemtMAQbkTsf7tiWoTlPK', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Joaquim Admin', NULL, 'admin@quimrecords.com', 1, NULL, '$2y$12$y.yoyyjFPFzGp8amlwCOR.9MhDgKuIf1HHQP.7Hl6upVOpS4XGHTW', NULL, NULL, NULL, NULL, NULL, '2024-03-01 08:16:14'),
(11, 'User teste', NULL, 'userteste@quim.com', 2, NULL, '$2y$12$5TIfpjYqRDY5LhtR.B3DQO/KUeDtwU2P9nNxC4x8wtDNEJRMu0NR6', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_band_id_foreign` (`band_id`);

--
-- Indexes for table `bands`
--
ALTER TABLE `bands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `bands`
--
ALTER TABLE `bands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_band_id_foreign` FOREIGN KEY (`band_id`) REFERENCES `bands` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
