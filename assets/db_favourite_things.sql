-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 08:14 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE db_favourite_things;
USE db_favourite_things;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--


CREATE TABLE `tbl_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  `Icon` varchar(50) NOT NULL,
  `QuickDesc` varchar(600) NOT NULL,
  `Creator` varchar(50) NOT NULL,
  `Misc` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`ID`, `Name`, `Icon`, `QuickDesc`, `Creator`, `Misc`) VALUES
(1, 'Harry Potter', 'hpPromo.jpg', 'Harry Potter is a series of fantasy novels and books, following the school life of Harry Potter and his friends Ron Weasley and Hermione Granger.', 'J.K Rowling', ''),
(2, 'World of Warcraft', 'wowPromo.jpg', 'World of Warcraft is a fantasy MMORPG set in the Warcraft universe. World of Warcraft is set in the world of Azeroth, following adventurers, heroes and villains alike.', 'Blizzard Entertainment', ''),
(3, 'Sword Art Online', 'saoPromo.png', 'Sword Art Online is a Japanese manga, light novel, anime and movie series set in the virtual world of Aincrad. The story follows Kazuto \"Kirito\" Kirigiya and Asuna Yuuki attempting to escape the virtual world.', 'Reki Kawahara', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_specific`
--


CREATE TABLE `tbl_product_specific` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `prodID` int(10) NOT NULL,
  `Content1` varchar(25) NOT NULL,
  `Content2` varchar(25) NOT NULL,
  `Content3` varchar(25) NOT NULL,
  `Para1` varchar(700) NOT NULL,
  `Para2` varchar(700) NOT NULL,
  `Para3` varchar(700) NOT NULL,
  `MiscInfo` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_specific`
--

INSERT INTO `tbl_product_specific` (`ID`, `prodID`, `Content1`, `Content2`, `Content3`, `Para1`, `Para2`, `Para3`, `MiscInfo`) VALUES
(1, 1, 'images/hp1.jpg', 'images/hp2.jpg', 'images/hp3.jpg', 'Harry Potter is a fantasy series that started on July 26th, 1997 as a book series written by J.K Rowling. The story follows an 11 year old Harry Potter, as he finds out his true heritage as a wizard, <span id=\"italics\">\"an\' a thumpin\' good\'un I\'d say\"</span>. This then leads into Harry finding out about the wizarding world, making new friends in the form of Hermione Granger and Ron Weasley, and getting into trouble, dealing with adolescence, and being students at a boarding school in the middle of Scotland all the while dealing with dark forces and learning values such as compassion, friendship, bravery and love. ', 'This series is important to me, as I grew up with it, learned from it, and was inspired by it. As a child, influential media is everywhere, anything anyone says can have an impact. With this, growing up in a time where the biggest media for a child was Pixar movies, there wasn\'t much in the way to latch on to as concrete influence for my future years, except for Harry Potter. A world more immersive than the real one (as a kid), watching Harry and his friends get into ridiculous situations, that I now realize are more metaphorical than anything, and just generally wanting to be a wizard, allowed me to latch on easily as a kid and never let go.', 'As much as I still love the fantasy and world that Harry Potter exists in, the reason I still love the stories after all these years, is because I grew up with it and the characters. Going through family trauma, feeling hopeless and lost, reaching adolescence and going through puberty with these characters, felt very real, and still does. I learned that \"Happiness can be found, even in the darkest of times, if one only remembers to turn on the light.\" - Dumbledore. I learned the importance of friendship, kindness, bravery, love and so much more, as cheesy as it is. Harry Potter has more meaning to me than almost anything, and I\'m not ashamed to admit it.', 'My Pottermore house is Slytherin, yet all of my HP apparel that I own is Gryiffindor. I owned two wands, one of Luna Lovegood, and one of Draco Malfoy, though I gave the Draco one away to a friend as a birthday gift. If I were to want to learn anything from Hogwarts, it would be charms. My patronus is a Black Stallion.'),
(2, 2, 'images/wow1.jpg', 'images/wow2.jpg', 'images/wow3.jpg', 'World of Warcraft is a fantasy MMORPG created by Blizzard Entertainment. The game was released on November 23, 2004 and has players traverse the world of Azeroth, completing quests, gaining loot, making friends, raiding dungeons and so much more. Create a hero from 13 races and 12 classes, and start your adventure.', 'World of Warcraft drew me in at a young age. In 2007 I was 10 years old, and my mother was looking for a baby sitter, but couldn\'t find one that wouldn\'t overcharge (we weren\'t a wealthy family). Instead, she found my attraction to video games, and saw me playing World of Warcraft, but only the free version. The game kept my attention better than any babysitter, and so instead, she purchased a subscription for me, and used that as a surrogate babysitter, preparing food before she left and letting me heat it in the microwave. Since than, I\'ve been hooked. This was an obvious latch to my younger self, as Harry Potter, another fantasy based series, was already ingrained into who I was.', 'What makes WoW so special to me now, is the relationships I\'ve built through it, the experiences I\'ve gained from it. The stories, characters, loot, gameplay and everything else, it\'s all still magical. There is a reason why \"World of Warcrack\" was a big term in the late 2000\'s, it\'s an addictive game, but not necessarily in a bad way. The game also still provides me with friendships that have lasted for years, new ones to be gained, and current ones that are strengthened just by having a passion for this game. We talk about the next big thing planned, schedule raid nights, play drinking PVP and so much more. WoW is a big part of my life, and that\'s likely to never change. ', 'My first ever character was a Human Paladin, and my second was a Night Elf Druid. My current main character is a Human Rogue, and my favourite character is a Lightforged Priest. My favourite expansion was Legion.'),
(3, 3, 'images/sao1.jpg', 'images/sao2.png', 'images/sao3.jpg', 'Sword Art Online (SAO) is a fantasy light novel, graphic novel, anime and movie series created by Reki Kawahara. The story follows Kazuto Kirigaya (AKA Kirito) as he and 10 thousand other people get stuck in the virtual video game world of Sword Art Online. The aim of the game and method of escape, is to climb all 100 floors of the tower named Aincrad, and defeat the final boss. Along the way, Kirito meets a number of friends and faces that follow his journey to the top, namely: Asuna Yuuki, Klein, Agil, Silica, Lisbeth, Yui and more. The journey is long and extracts a heavy death toll, but the players persevere and beat the game. ', 'The SAO anime holds a dear place in my heart, as it is the first anime I had watched from start to finish in binge format. In my childhood, I would grow up watching odd episodes of Yu-Gi-Oh, Dragon Ball, etc. on Cartoon Network, but they were episodes that were never in order and just one offs as a kid. But in 2012, I opened up to watching anime for the first time, and was recommended this one to start. It fit me as a person, watching Kirito travel through this MMO, much like WoW, and filling the fantasy void that I was missing after Harry Potter had ended. I quickly fell in love with the series, and would watch new episodes of each series with friends, immediately upon release.', 'What makes this so special for me, is the timing and reason for watching it. Anime was just starting to boom with the people that I knew, but I never got into it as I felt like none of it fitted my personality at all. But then, an online friend who I was just starting to get closer to at the time, recommended SAO to me, and watched it with me. It was my first anime, and really drove a stronger connection with some of my best friends now. SAO objectively, is pretty bad, but that doesn\'t matter to me. I love the premise, the world, and the connections and friendships that deepened just through watching an anime.  ', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
