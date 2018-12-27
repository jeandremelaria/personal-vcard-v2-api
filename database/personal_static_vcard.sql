-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 05:53 PM
-- Server version: 10.1.34-MariaDB
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
-- Database: `personal_static_vcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `id_resume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `year`, `id_resume`) VALUES
(3, ' 2nd Place, ABC Print Competition, 16x20 Category', 2017, 1),
(4, 'Global Photography Award, Portrait Category', 2016, 1),
(5, '3rd Place, Contemporary Photograph Award, Ashford Arts Center', 2015, 1),
(6, 'Honorable Mention, LensFirst, Still Life', 2015, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `budget_range` int(11) NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_costumer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `budget_range`, `newsletter`, `date`, `id_costumer`) VALUES
(1, 200, 1, '2018-08-02 12:40:22', 2),
(2, 500, 0, '2018-08-02 12:40:22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`id`, `firstname`, `lastname`, `email`, `id_user`) VALUES
(2, '', '', '', 1),
(3, 'Fons', 'Winklaar', 'f.winklaar@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `to_present` tinyint(1) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `course_highlights` text NOT NULL,
  `id_resume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `title`, `year`, `to_present`, `company_name`, `company_city`, `course_highlights`, `id_resume`) VALUES
(1, 'Bachelor of Fine Arts (BFA), Major in Photography', 2013, 0, 'ABC Institute of New Jersey', 'Stamford', 'Digital Photography, Graphics in Print Media, Lighting for Photography, Innovations in Digital Imaging, Photographic Aesthetics, Color Theory, The Business of Photography', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `function` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `year` year(4) NOT NULL,
  `to_present` tinyint(1) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `id_resume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `function`, `summary`, `year`, `to_present`, `company_name`, `company_city`, `id_resume`) VALUES
(1, 'Photographer', 'Complete studio photography assignments, from family portraits to weddings, engagements, corporate headshots, pets, holiday themes and infant/toddler photo shoots. Leverage interpersonal skills to quickly build rapport with subjects. Credited by company owner for helping drive an average 10% revenue increase YOY.', 2013, 1, 'ABC Company', 'Atlantic City\r\n', 1),
(3, 'Photography studio technician', 'Completed 5 months internship at a leading Sometown photography studio. Provide retouching services, image optimization, color conversions/corrections and other digital support for commercial clients.', 2013, 0, 'Mary jones studio', 'Austin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolioimage`
--

CREATE TABLE `portfolioimage` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `model_firstname` varchar(255) NOT NULL,
  `model_lastname` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolioimage`
--

INSERT INTO `portfolioimage` (`id`, `image`, `model_firstname`, `model_lastname`, `year`, `id_user`) VALUES
(1, 'image.png', 'Grayson', 'Eliana', 2016, 1),
(2, 'image2.jpg', 'Terrell', 'Rocha', 2018, 1),
(3, 'image.jpg', 'Shamar', 'Browning', 2015, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `id_user`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `dribbble` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `facebook`, `instagram`, `twitter`, `dribbble`, `id_user`) VALUES
(1, 'www.facebook.com', 'www.instagram.com', 'www.twitter.com', 'www.dribbble.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `software` text NOT NULL,
  `id_resume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `camera`, `software`, `id_resume`) VALUES
(1, 'Canon EOS 5D Mark III ', 'Adobe Creative Cloud (Photoshop, Lightroom, Illustrator, InDesign, Experience Design, Premiere Pro, After Effects, Animate, Dreamweaver, Fuse, Adobe Muse, Acrobat Pro DC); ActionScript; Final Cut Pro X; QuarkXPress; Capture One Pro; macOS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `profile_title` varchar(255) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `profile_summary` text NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `website_logo` varchar(255) NOT NULL,
  `website_icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `user_password`, `firstname`, `lastname`, `email`, `phone`, `profile_title`, `profile_photo`, `profile_summary`, `website_url`, `website_logo`, `website_icon`) VALUES
(1, 'Santush20189', '12345', ' Santush', 'Deb', 'santush_deb@gmail.com', 2147483647, 'Photographer - Saint Studios', 'profile_photo.jpg', 'Creative, high-energy photographer producing premium-quality photos in studio settings. Dedicated to creating memories that last a lifetime while driving sales and studio profits. Manage all facets of photo shoots including scheduling, designing sets, shooting, photo editing, collaborating with clients and closing add-on sales. Strong digital/technical skills; use Adobe Photoshop Lightroom CC daily.', 'www.santushdeb.com', 'logo.png', 'icon.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_resume` (`id_resume`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_costumer` (`id_costumer`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_resume` (`id_resume`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_resume` (`id_resume`);

--
-- Indexes for table `portfolioimage`
--
ALTER TABLE `portfolioimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_resume` (`id_resume`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolioimage`
--
ALTER TABLE `portfolioimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`id_resume`) REFERENCES `resume` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_costumer`) REFERENCES `costumer` (`id`);

--
-- Constraints for table `costumer`
--
ALTER TABLE `costumer`
  ADD CONSTRAINT `costumer_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`id_resume`) REFERENCES `resume` (`id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`id_resume`) REFERENCES `resume` (`id`);

--
-- Constraints for table `portfolioimage`
--
ALTER TABLE `portfolioimage`
  ADD CONSTRAINT `portfolioimage_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD CONSTRAINT `socialmedia_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`id_resume`) REFERENCES `resume` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
