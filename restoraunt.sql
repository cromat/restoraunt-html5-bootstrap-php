-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2017 at 11:45 
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS restoraunt CHARACTER SET utf8 COLLATE utf8_general_ci;
USE restoraunt;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoraunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `chief`
--

CREATE TABLE `chief` (
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chief`
--

INSERT INTO `chief` (`name`, `description`, `image`, `id`) VALUES
('Vikas Khanna', 'Vikas Khanna is an award winning Michelin starred Indian chef, restaurateur, and cookbook writer, filmmaker, humanitarian and the judge of MasterChef India Season 2, 3, 4, 5 and Masterchef Junior. He is based in New York City. In 2011, People magazine named Khanna in the list of Sexiest Men Alive and also referred to him as "The Hottest Chef of America".', 'uploads/vikas_052313013325.jpg', 6),
('Kunal Kapur', 'Kunal Kapur (born in New Delhi), is an Indian celebrity chef and restaurateur, best known as the host and judge of the TV series MasterChef India Season 1, 2 and 3 on Star Plus and Junior Masterchef India Season 1 and most recently hosting High dignitary events in the country. He is Chef extraordinaire, TV show host, winner of several culinary awards and the author his debut cookbook- A Chef in Every Homeâ€™ He is living his dream of making Indian cuisine the number one cuisine in the world and empowering everyone through power of cooking to become self-sufficient. Chef Kunal has been recognised amongst the Best Chefs in India by National Weekly Magazine - India Today and Indian Culinary maestro Jiggs Kalra titled him as "the next big guy in kebabs and curries in Indiaâ€ at the start of his career.', 'uploads/chef kunal kapoor.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `date_event` date NOT NULL,
  `image` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`name`, `description`, `date_event`, `image`, `id`) VALUES
('Tasting: Desserts & Digestivi', 'An Italian meal is not complete without a dessert, a rich espresso, and finally, the digestivo. As the name suggests, a digestivo is intended to aid in the digestion of a multi-course meal and comes in many variations, such as amaro (bitter), fruit liquors, and grappa. Come discover your favorite dessert and digestivo at this sweet tasting! In this class, guests will:\r\n\r\nTaste traditional sweets from Italy\r\nLearn about typical regional digestivi\r\nTry a selection of Italian digestivi and learn about the ingredients\r\nTake home tasting notes', '2017-01-12', 'uploads/1a03a7fad6fb9777a3610e724b9d156c52a0f6cf.jpeg', 3),
('Hands-on Pizza Party with Ross', 'If youâ€™ve ever enjoyed a Neapolitan-style, perfectly chewy, personal pizza pie at Eataly, you have Rossopomodoro to thank. Italyâ€™s premier producer of authentic Neapolitan pizza, Rossopomodoro is passionate, almost fanatical, about making a visit to one of their restaurants as similar as possible to eating in Napoli itself, the birthplace of Italian pizza as we know it today. ', '2017-01-19', 'uploads/520a22bfda8b89dfdf8d3426bb09fde28e817c29.jpeg', 4),
('Flash Demo: Focus on Ravioli', 'In this demo, youâ€™ll gather round the stove as the Chef of La Scuola makes the perfect winter comfort food - ravioli. Guests will enjoy the finished dish paired with a wine chosen by our beverage experts. You will receive an adapted recipe and wine notes. We cook what we sell, so youâ€™ll be able to find all the featured ingredients right here in our store in order to recreate this simple dish at home!', '2017-01-10', 'uploads/1d3532cce721641356e4c931b09b794d00d2c882.jpeg', 5),
('Back to Basics: Mussels', 'Italian cuisine is varied. Regional Italian dishes are influenced both by the fertile mountainous landscape and the bounty of the sea. As a peninsula, Italy has an abundant supply of seafood. Coastal regions specialize in seafood dishes utilizing everything from mollusks and crustaceans to octopus, squid and fish. Since Boston is also a hub of excellent seafood, Eataly has dedicated a class to learning different ways to prepare (â€œallâ€™italianaâ€) the seafood present at our fish counter.', '2017-01-26', 'uploads/31f51aa3bfcdb09b09485f897bb84f889fb05031.jpeg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `type` int(11) NOT NULL,
  `chief_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`name`, `description`, `image`, `type`, `chief_id`, `id`) VALUES
('Easy yogurt flatbreads', 'Flatbreads are a handy storecupboard staple, but nothing beats soft and fluffy homemade versions. John Torode''s yogurt flatbreads are perfect with a meze mix.', 'uploads/flatbreads.jpg', 2, NULL, 4),
('Katsu curry wrap', 'Your favourite katsu curry in wrap form, ready in minutes! This simple supper is full of flavour, golden brown chicken and needs just 4 ingredients.', 'uploads/katsu-wrap.jpg', 0, NULL, 5),
('Chakalaka', 'This low fat, vibrant chilli from Johannesburg is based on canned beans, tomatoes, onions and chillies. You can add whatever vegetables you have to hand.', 'uploads/soweto-chilli.jpg', 1, NULL, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chief`
--
ALTER TABLE `chief`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chief`
--
ALTER TABLE `chief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
