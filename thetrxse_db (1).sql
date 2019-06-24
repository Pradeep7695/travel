-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2019 at 05:25 AM
-- Server version: 5.6.43-84.3-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thetrxse_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `about_desc` longtext,
  `service1` varchar(255) DEFAULT NULL,
  `service2` varchar(255) DEFAULT NULL,
  `service3` varchar(255) DEFAULT NULL,
  `service4` varchar(255) DEFAULT NULL,
  `about_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_desc`, `service1`, `service2`, `service3`, `service4`, `about_img`, `created_at`) VALUES
(5, '<p>We feel obliged to introduce our ambitious Travel venture&nbsp;<strong>&quot;The Travel Firm&quot;</strong>&nbsp;as an entity which takes care of any tour and travel requirement of its esteemed clients at global level. The Travel Firm has been venturing into a new geographic area and making the utmost effort to make the best deal available to its clients.<strong>&nbsp;</strong><strong>Our Services Include -&nbsp;</strong>Air, Hotel &amp; Railway reservations; Domestic &amp; International Holiday Packages; Visa Assistance; Foreign Exchange; Corporate bookings; Car Rentals &amp; almost everything related to travel...</p>\r\n\r\n<p>The Travel Firm is a one-stop enterprise that offers a complete range of travel related solutions. Superior knowledge, efficient planning and to anticipate and resolve potential problems if any, along the way are reasons behind our success.</p>\r\n\r\n<p><strong>WE ASSURE YOU THAT YOUR TRAVEL WILL BE FUN, SAFE, ECONOMICAL, INFORMATIVE, COMFORTABLE &amp; MEMORABLE !!!</strong></p>\r\n', 'Depending on each other to do the right thing in all situations, we aim at assuring best services at an economical rate', 'Continuously doing the right thing that results in win-win situations for all ', 'We will be our customer\'s preferred choice by providing them services that exceed their expectation. For doing this, we have 24 hours assistance for customers on Phone call, Email & WhatsApp', 'Working together to ensure that our clients receive the best service right from booking the tour to finishing the tour', 'http://thetravelfirm.in/uploads/why-choose-us.jpg', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@thetravelfirm.in', '111111');

-- --------------------------------------------------------

--
-- Table structure for table `car_rent`
--

CREATE TABLE `car_rent` (
  `id` int(11) NOT NULL,
  `car_desc` longtext,
  `car_rule` longtext,
  `car_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_rent`
--

INSERT INTO `car_rent` (`id`, `car_desc`, `car_rule`, `car_img`, `created_at`) VALUES
(3, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.\r\n\r\nWorld Travel Visa Rules:-', 'Ferari', 'http://thetravelfirm.in/ci/uploads/car1.jpg', '2019-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `contactno` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contactno`, `email`, `address`, `created_at`) VALUES
(3, '+91-9137178720 | 022-25600030', 'info@thetravelfirm.in', '207, 2nd Floor, Runwal Heights, LBS Marg, Opp. Nirmal Lifestyle, Mulund (W), Mumbai - 400080', '2019-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `domestic_package`
--

CREATE TABLE `domestic_package` (
  `id` int(11) NOT NULL,
  `domestic_trip_name` varchar(255) DEFAULT NULL,
  `domestic_price` varchar(255) NOT NULL,
  `domestic_trip_day` varchar(255) NOT NULL,
  `domestic_desc` longtext NOT NULL,
  `domestic_img` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domestic_package`
--

INSERT INTO `domestic_package` (`id`, `domestic_trip_name`, `domestic_price`, `domestic_trip_day`, `domestic_desc`, `domestic_img`, `created_at`) VALUES
(2, 'Kashmir', '14999 PP', '5 Night 6 Day', '<p>Kashmir is a state in northern India Popularly known as the &quot;Paradise on the Earth&quot; the state is world famous for its scenic splendor, snow-capped mountains, plentiful wildlife, exquisite. Its Really Beautifull Place.</p>\r\n', 'http://thetravelfirm.in/uploads/kasmir1.jpg', '2019-05-06'),
(3, 'Ladakh', '19999 PP', '7 Night 8 Day', '<p>Ladakh, a word which means &quot;land of high passes&quot;, is a region in the state of Jammu and Kashmir of Northern India.</p>\r\n', 'http://thetravelfirm.in/uploads/tour_ladakh1.jpg', '2019-05-06'),
(4, 'Sikkim', '18999 PP', '6 Night 7 Day', '<p>Sikkim is a state in northeast India, bordered by Bhutan.Pelling A paradise in West&nbsp;Sikkim. Around 10 km from Gyalshing, Pelling is today emerging as the second biggest&nbsp;<em>tourist</em>&nbsp;destination in the state after Gangtok.</p>\r\n', 'http://thetravelfirm.in/uploads/sikkim1.jpg', '2019-05-06'),
(5, 'Himachal', '18999 PP', '6 Night 7 Day', '<p>Himachal is known paradise for nature lovers. Its Beauty of Natural Places. Rivers and Mountains. Visited Place Kullu Manali.</p>\r\n', 'http://thetravelfirm.in/uploads/Himachal1.jpg', '2019-05-06'),
(6, 'Uttarakhand', '17999 PP', '5 Night 6 Day', '<p>Uttarakhand, a state in northern India crossed by the Himalayas, Its Best Place For Touring with Hill Station &amp;&nbsp;Natural Beauty.</p>\r\n', 'http://thetravelfirm.in/uploads/utarakhand1.jpg', '2019-05-06'),
(7, 'Kerala', '15999 PP', '5 Night 6 Day', '<p>Kerala, a state situated on the tropical Malabar Coast of southwestern India, is one of the most popular tourist destinations in the country. Named as one of the ten paradises of the world by National Geographic Traveler, Kerala is famous especially for its ecotourism initiatives and beautiful backwaters.</p>\r\n', 'http://thetravelfirm.in/uploads/kerla1.jpg', '2019-05-06'),
(8, 'Andaman', '17999 PP', '5 Night 6 Day', '<p>The Andaman Islands are an Indian archipelago in the Bay of Bengal. These roughly 300 islands are known for their palm-lined, white-sand beaches, mangroves and tropical rainforests.</p>\r\n', 'http://thetravelfirm.in/uploads/andaman1.png', '2019-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `foreignexchange`
--

CREATE TABLE `foreignexchange` (
  `id` int(11) NOT NULL,
  `foreign_desc` longtext,
  `foreign_rule` longtext,
  `foreign_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `img_gallery`
--

CREATE TABLE `img_gallery` (
  `id` int(11) NOT NULL,
  `img_name` varchar(50) DEFAULT NULL,
  `t_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img_gallery`
--

INSERT INTO `img_gallery` (`id`, `img_name`, `t_img`, `created_at`) VALUES
(9, 'peris', 'http://thetravelfirm.in/uploads/effile-tower1.jpg', '2019-04-30'),
(10, 'thailand', 'http://thetravelfirm.in/uploads/thailand-wallpaper-22.jpg', '2019-04-30'),
(11, 'Manali', 'http://thetravelfirm.in/uploads/manali.jpg', '2019-04-30'),
(12, 'parague', 'http://thetravelfirm.in/uploads/pargue.jpg', '2019-04-30'),
(13, 'Singapore', 'http://thetravelfirm.in/uploads/singapore.jpg', '2019-04-30'),
(14, 'Andaman', 'http://thetravelfirm.in/uploads/andaman2.png', '2019-05-06'),
(15, 'kerala', 'http://thetravelfirm.in/uploads/kerla2.jpg', '2019-05-06'),
(16, 'Sikkim', 'http://thetravelfirm.in/uploads/sikkim2.jpg', '2019-05-06'),
(17, 'Himanchal', 'http://thetravelfirm.in/uploads/Himachal2.jpg', '2019-05-06'),
(18, 'Utarakhand', 'http://thetravelfirm.in/uploads/utarakhand2.jpg', '2019-05-06'),
(19, 'Bali', 'http://thetravelfirm.in/uploads/bali2.jpg', '2019-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `international_package`
--

CREATE TABLE `international_package` (
  `id` int(11) NOT NULL,
  `intern_trip_name` varchar(255) DEFAULT NULL,
  `intern_trip_price` varchar(255) DEFAULT NULL,
  `intern_trip_day` varchar(255) DEFAULT NULL,
  `intern_trip_desc` longtext,
  `intern_trip_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `international_package`
--

INSERT INTO `international_package` (`id`, `intern_trip_name`, `intern_trip_price`, `intern_trip_day`, `intern_trip_desc`, `intern_trip_img`, `created_at`) VALUES
(2, 'Bali', '17999 PP', '4 Night 5 Day', '<p><strong>Bali&nbsp;</strong>is Indonesia&#39;s most famous island,&nbsp;<strong>Bali</strong>&nbsp;is the best place for any&nbsp;<strong>tourist</strong>&nbsp;who needs a week of absolute relaxation, fragrant cuisine, scenic beauty and a galore of culture and tradition.</p>\r\n', 'http://thetravelfirm.in/uploads/bali1.jpg', '2019-05-06'),
(3, 'Thailand (Bangkok & Pattaya)', '13999 PP', '4 Night 5 Day', '<p>Thailand is the Most and Famous place for touring.&nbsp;&nbsp;Its popularity as a tourist destination owes a great deal to its benign climate.&nbsp;</p>\r\n', 'http://thetravelfirm.in/uploads/thailand-wallpaper-24.jpg', '2019-05-06'),
(4, 'Phuket & Krabi', '21999 PP', '4 Night 5 Day', '<p>Krabi, on southern Thailand&rsquo;s west coast, is a province characterized by craggy, sheer limestone cliffs, dense mangrove forests, and more than a hundred offshore islands.</p>\r\n', 'http://thetravelfirm.in/uploads/krabi2.jpg', '2019-05-06'),
(5, 'Bangkok, Phuket & Krabi', '23999 PP', '5 Night 6 Day', '<p>Krabi, on southern Thailand&rsquo;s west coast, is a province characterized by craggy, sheer limestone cliffs, dense mangrove forests, and more than a hundred offshore islands.</p>\r\n', 'http://thetravelfirm.in/uploads/krabi3.jpg', '2019-05-06'),
(6, 'Singapore', '24999 PP', '4 Night 5 Day', '<p><strong>Singapore&nbsp;</strong>is a small and progressive island-nation. It is both a city and a country located in Southeast Asia. it&#39;s wonderful place for touring.</p>\r\n', 'http://thetravelfirm.in/uploads/singapore1.jpg', '2019-05-06'),
(7, 'Dubai', '22999 PP', '4 Night 5 Day', '<p><strong>Dubai</strong>&nbsp;is the alchemy of profound traditions and a futuristic vision. The vivacious city is perched on the Gulf coastline and is the most cosmopolitan and modern destination in the Middle East. ... It has become a hot destination for holidays with family and&nbsp;<strong>tourists</strong>&nbsp;from every part of the world are headed to&nbsp;<strong>Dubai</strong>.</p>\r\n', 'http://thetravelfirm.in/uploads/only-in-dubai.jpg', '2019-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `popular_tour`
--

CREATE TABLE `popular_tour` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_img` text,
  `url_link` longtext NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular_tour`
--

INSERT INTO `popular_tour` (`id`, `package_name`, `package_price`, `package_img`, `url_link`, `created_at`) VALUES
(12, 'Thailand ', 13999, 'http://thetravelfirm.in/uploads/thailand-wallpaper-21.jpg', 'http://thetravelfirm.in/contact-us', '2019-04-30'),
(14, 'Singapore', 24999, 'http://thetravelfirm.in/uploads/singapore2.jpg', 'http://thetravelfirm.in/contact-us', '2019-05-06'),
(15, 'Bali', 17999, 'http://thetravelfirm.in/uploads/bali3.jpg', 'http://thetravelfirm.in/contact-us', '2019-05-06'),
(16, 'Dubai', 22999, 'http://thetravelfirm.in/uploads/only-in-dubai1.jpg', 'http://thetravelfirm.in/contact-us', '2019-05-06'),
(17, 'Kerala', 15999, 'http://thetravelfirm.in/uploads/kerla3.jpg', 'http://thetravelfirm.in/contact-us', '2019-05-06'),
(18, 'Sikkim', 18999, 'http://thetravelfirm.in/uploads/sikkim3.jpg', 'http://thetravelfirm.in/contact-us', '2019-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(11) NOT NULL,
  `policy_desc` longtext,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `policy_desc`, `created_at`) VALUES
(4, '<p><strong>Lorem ipsum</strong> dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>\r\n\r\n<p><strong>Privacy Policy Rules:-</strong></p>\r\n\r\n<ol>\r\n	<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n	<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n	<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n	<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n</ol>\r\n', '2019-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(255) DEFAULT NULL,
  `slider_text` varchar(55) DEFAULT NULL,
  `slider_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `term_desc` longtext,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `term_desc`, `created_at`) VALUES
(3, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Lorem ipsum</strong> dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>\r\n\r\n			<p><strong>Terms &amp; Condition Rules:-</strong></p>\r\n\r\n			<ol>\r\n				<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n				<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n				<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n				<li>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `client_name` varchar(50) DEFAULT NULL,
  `client_img` text,
  `review` longtext,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `client_name`, `client_img`, `review`, `created_at`) VALUES
(5, 'Anup Srivastava', 'http://thetravelfirm.in/uploads/no-user2.jpg', '<p>One of the best Travel agency for touring.. best deal for me.</p>\r\n', '2019-04-26'),
(6, 'Pradeep', 'http://thetravelfirm.in/uploads/no-user1.jpg', '<p>Its really nice and best service for tours and travel.&nbsp; happy with service.</p>\r\n', '2019-04-26'),
(7, 'Sagar Angre', 'http://thetravelfirm.in/uploads/Testimonial-Icon.png', '<p>I am really happy with the services given by the travel from Mulund west it is one of the best company for tour packages and I am already recommended to all my friends and colleagues thank you so much.</p>\r\n', '2019-04-30'),
(8, 'Deependra', 'http://thetravelfirm.in/uploads/logo.jpg', '<p>Nice... Good Luck</p>\r\n', '2019-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tourpackage`
--

CREATE TABLE `tourpackage` (
  `id` int(11) NOT NULL,
  `trip_name` varchar(255) DEFAULT NULL,
  `trip_day` varchar(255) DEFAULT NULL,
  `package_price` varchar(255) NOT NULL,
  `trip_desc` longtext,
  `trip_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourpackage`
--

INSERT INTO `tourpackage` (`id`, `trip_name`, `trip_day`, `package_price`, `trip_desc`, `trip_img`, `created_at`) VALUES
(4, 'Kashmir', '5 Night 6 Day', '14999  PP', '<p>Kashmir is a state in northern India Popularly known as the &quot;Paradise on the Earth&quot; the state is world famous for its scenic splendor, snow-capped mountains, plentiful wildlife, exquisite. Its Really Beautifull Place.</p>\r\n', 'http://thetravelfirm.in/uploads/kasmir.jpg', '2019-05-04'),
(5, 'Ladakh', '7 Night 8 Day', '19999 PP', '<p>Ladakh, a word which means &quot;land of high passes&quot;, is a region in the state of Jammu and Kashmir of Northern India.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://thetravelfirm.in/uploads/tour_ladakh.jpg', '2019-05-04'),
(6, 'Sikkim', '6 Night 7 Day', '18999 PP', '<p>Sikkim is a state in northeast India, bordered by Bhutan.Pelling A paradise in West&nbsp;<em>Sikkim</em>. Around 10 km from Gyalshing, Pelling is today emerging as the second biggest&nbsp;<em>tourist</em>&nbsp;destination in the state after Gangtok</p>\r\n', 'http://thetravelfirm.in/uploads/sikkim.jpg', '2019-05-04'),
(7, 'Himachal', '6 Night 7 Day', '18999', '<p>Himachal is known paradise for nature lovers. Its Beauty of Natural Places. Rivers and Mountains. Visited Place Kullu Manali.</p>\r\n', 'http://thetravelfirm.in/uploads/Himachal.jpg', '2019-05-04'),
(8, 'Uttarakhand', '5 Night 6 Day', '17999 PP', '<p>Uttarakhand, a state in northern India crossed by the Himalayas, Its Best Place For Touring with Hill Station &amp;&nbsp;Natural Beauty.</p>\r\n', 'http://thetravelfirm.in/uploads/utarakhand.jpg', '2019-05-04'),
(9, 'Kerala', '5 Night 6 Day', '15999 PP', '<p>Kerala, a state situated on the tropical Malabar Coast of southwestern India, is one of the most popular tourist destinations in the country. Named as one of the ten paradises of the world by National Geographic Traveler, Kerala is famous especially for its ecotourism initiatives and beautiful backwaters.</p>\r\n', 'http://thetravelfirm.in/uploads/kerla.jpg', '2019-05-04'),
(10, 'Andaman', '5 Night 6 Day', '17999 PP', '<p>The Andaman Islands are an Indian archipelago in the Bay of Bengal. These roughly 300 islands are known for their palm-lined, white-sand beaches, mangroves and tropical rainforests.</p>\r\n', 'http://thetravelfirm.in/uploads/andaman.png', '2019-05-04'),
(11, 'Thailand (Bangkok  Pattaya)', '4 Night 5 Day', '13999', '<p>Thailand is the Most and Famous place for touring.&nbsp;&nbsp;Its popularity as a tourist destination owes a great deal to its benign climate.&nbsp;</p>\r\n', 'http://thetravelfirm.in/uploads/thailand-wallpaper-23.jpg', '2019-05-04'),
(12, 'Phuket-Krabi', '4 Night 5 Day', '21999 PP', '<p>Krabi, on southern Thailand&rsquo;s west coast, is a province characterized by craggy, sheer limestone cliffs, dense mangrove forests, and more than a hundred offshore islands.</p>\r\n', 'http://thetravelfirm.in/uploads/krabi.jpg', '2019-05-04'),
(13, 'Bangkok Phuket Krabi ', '5 Night 6 Day', '23999 PP', '<p>Krabi, on southern Thailand&rsquo;s west coast, is a province characterized by craggy, sheer limestone cliffs, dense mangrove forests, and more than a hundred offshore islands.</p>\r\n', 'http://thetravelfirm.in/uploads/krabi1.jpg', '2019-05-04'),
(14, 'Bali', '4 Night 5 Day', '17999 PP', '<p><strong>Bali </strong>is Indonesia&#39;s most famous island,&nbsp;<strong>Bali</strong>&nbsp;is the best place for any&nbsp;<strong>tourist</strong>&nbsp;who needs a week of absolute relaxation, fragrant cuisine, scenic beauty and a galore of culture and tradition.</p>\r\n', 'http://thetravelfirm.in/uploads/bali.jpg', '2019-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `travel_insurance`
--

CREATE TABLE `travel_insurance` (
  `id` int(11) NOT NULL,
  `travel_desc` longtext,
  `travel_rule` longtext,
  `travel_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_slider`
--

CREATE TABLE `video_slider` (
  `id` int(11) NOT NULL,
  `video` text,
  `video_title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_slider`
--

INSERT INTO `video_slider` (`id`, `video`, `video_title`, `mime_type`, `created_at`) VALUES
(4, 'http://thetravelfirm.in/uploads/330149744.mp4', 'test', 'video/mp4', '2019-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `visa`
--

CREATE TABLE `visa` (
  `id` int(11) NOT NULL,
  `visa_desc` longtext,
  `visa_rule` longtext NOT NULL,
  `visa_img` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visa`
--

INSERT INTO `visa` (`id`, `visa_desc`, `visa_rule`, `visa_img`, `created_at`) VALUES
(2, '<h3><strong>SINGAPORE</strong></h3>\r\n\r\n<p><strong>&nbsp;DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>35x45mm (Two) 80%</li>\r\n	<li>Visa Form 14A</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>Occupation Proofs (Id Card, Visit Card, GST Certification, Leave Letter)</li>\r\n	<li><strong>Process: 4 Working days</strong></li>\r\n</ul>\r\n', 'Testing', 'http://thetravelfirm.in/uploads/home-travel-logo.png', '2019-04-26'),
(5, '<h2><strong>PHILIPPINES</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 8-10 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo.png', '2019-05-04'),
(6, '<h2><strong>MALAYSIA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Two)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>Bank Statement</li>\r\n	<li><strong>Process: 5 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo1.png', '2019-05-04'),
(7, '<h2><strong>SOUTH KOREA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 5-6 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo2.png', '2019-05-04'),
(8, '<h2><strong>THAILAND</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>Bank Statement</li>\r\n	<li><strong>Process: 3&nbsp;Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo3.png', '2019-05-04'),
(9, '<h2><strong>SOUTH AFRICA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 40k- 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo4.png', '2019-05-04'),
(10, '<h2><strong>CHINA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Two)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form PDF Online&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>Day To Day Itinerary</li>\r\n	<li>Other Categories Contact GV Team (urgent Extra)</li>\r\n	<li><strong>Process: 4&nbsp;Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo5.png', '2019-05-04'),
(11, '<h2><strong>FRANCE</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form (O)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 3-4&nbsp;Working days</strong></li>\r\n	<li><strong>NOTE:-&nbsp;&nbsp;BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo6.png', '2019-05-04'),
(12, '<h2><strong>BANGLADESH</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Two) 80%&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n	<li>Visa Form 14A&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>Occupation Proofs</li>\r\n	<li><strong>Process: 10 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo7.png', '2019-05-04'),
(13, '<h2><strong>GERMANY</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form (O)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo8.png', '2019-05-04'),
(14, '<h2><strong>UK</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;DS 160&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15&nbsp;Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo9.png', '2019-05-04'),
(15, '<h2><strong>ITALY</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15&nbsp;Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo10.png', '2019-05-04'),
(16, '<h2><strong>CANADA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form + Family Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 35-40&nbsp;Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo11.png', '2019-05-04'),
(17, '<h2><strong>USA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form DS 160&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo12.png', '2019-05-04'),
(18, '<h2><strong>SWITZERLAND</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo13.png', '2019-05-04'),
(19, '<h2><strong>CROATIA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n	<li><strong>Note: Personal Presence</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo14.png', '2019-05-04'),
(20, '<h2><strong>NETHERLANDS</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp; (O)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 10-15 Working days</strong></li>\r\n	<li><strong>Note: BioMetrics</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo15.png', '2019-05-04'),
(21, '<h2><strong>NEW ZEALAND</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 8-10&nbsp;Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo16.png', '2019-05-04'),
(22, '<h2><strong>AUSTRALIA</strong></h2>\r\n\r\n<p><strong>DOCUMENTS CHECKLIST</strong></p>\r\n\r\n<ul>\r\n	<li>Passport + Old Passport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>35x45mm (Three)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>Visa Form (O)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Covering letter&nbsp;</li>\r\n	<li>Air Ticket&nbsp;</li>\r\n	<li>Hotel Confirmation&nbsp;</li>\r\n	<li>ITR 3Yrs, Leave Letter</li>\r\n	<li>Bank Statement 6 Mths</li>\r\n	<li>Salary slips 3 Months</li>\r\n	<li><strong>Process: 20-25 Working days</strong></li>\r\n</ul>\r\n', '', 'http://thetravelfirm.in/uploads/travel-logo17.png', '2019-05-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_rent`
--
ALTER TABLE `car_rent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domestic_package`
--
ALTER TABLE `domestic_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreignexchange`
--
ALTER TABLE `foreignexchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_gallery`
--
ALTER TABLE `img_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `international_package`
--
ALTER TABLE `international_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_tour`
--
ALTER TABLE `popular_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourpackage`
--
ALTER TABLE `tourpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_insurance`
--
ALTER TABLE `travel_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_slider`
--
ALTER TABLE `video_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa`
--
ALTER TABLE `visa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_rent`
--
ALTER TABLE `car_rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `domestic_package`
--
ALTER TABLE `domestic_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foreignexchange`
--
ALTER TABLE `foreignexchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_gallery`
--
ALTER TABLE `img_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `international_package`
--
ALTER TABLE `international_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `popular_tour`
--
ALTER TABLE `popular_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tourpackage`
--
ALTER TABLE `tourpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `travel_insurance`
--
ALTER TABLE `travel_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_slider`
--
ALTER TABLE `video_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visa`
--
ALTER TABLE `visa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
