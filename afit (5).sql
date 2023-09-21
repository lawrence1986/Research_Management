-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 12:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afit`
--

-- --------------------------------------------------------

--
-- Table structure for table `attention`
--

CREATE TABLE `attention` (
  `id` int(11) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `attention_note` varchar(2000) DEFAULT NULL,
  `attention_status` tinyint(1) NOT NULL DEFAULT 0,
  `project_id` int(6) NOT NULL,
  `type` varchar(20) NOT NULL,
  `close_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attention`
--

INSERT INTO `attention` (`id`, `date_created`, `attention_note`, `attention_status`, `project_id`, `type`, `close_date`) VALUES
(3, '07-06-2020 21:38 PM', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</span></p>', 2, 3, 'project', '07-06-2020 21:47 PM'),
(4, '07-06-2020 21:53 PM', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', 2, 3, 'project', '07-06-2020 23:46 PM'),
(5, '07-06-2020 22:02 PM', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', 2, 3, 'task', '07-06-2020 22:02 PM'),
(6, '07-06-2020 22:03 PM', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. <br /></span></p>', 2, 3, 'task', '07-06-2020 22:03 PM'),
(7, '07-06-2020 23:10 PM', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p>', 1, 3, 'task', '07-06-2020 23:10 PM'),
(9, '02-07-2020 00:38 AM', '<p>vsf</p>', 1, 4, 'project', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `chapter_title` varchar(400) NOT NULL,
  `publisher` varchar(400) NOT NULL,
  `authors` varchar(400) NOT NULL,
  `year` int(4) NOT NULL,
  `chapter_no` varchar(50) NOT NULL,
  `page_no` varchar(50) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `user_id` int(6) NOT NULL,
  `project_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `chapter_title`, `publisher`, `authors`, `year`, `chapter_no`, `page_no`, `date_created`, `user_id`, `project_id`) VALUES
(2, 'Findings  of the South', '', 'Iheme & Prince T. Publishing', 'Kenneth G. ', 2001, '23', '21', '06-06-2020 20:07 PM', 6, 3),
(3, 'Rogues in Disguise', '', 'The Civil War, Layman\'s View', 'Chidi M.', 1986, '', '203', '06-06-2020 22:27 PM', 6, 3),
(4, 'Tiger Wolves Battle for Mankind', '', 'TM Lewis House', 'Greg F.', 1990, '4', '223 - 234', '02-07-2020 10:16 AM', 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `conference_title` varchar(400) NOT NULL,
  `authors` varchar(400) NOT NULL,
  `year` int(4) NOT NULL,
  `location` varchar(50) NOT NULL,
  `page_no` int(6) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `user_id` int(6) NOT NULL,
  `project_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conference`
--

INSERT INTO `conference` (`id`, `title`, `conference_title`, `authors`, `year`, `location`, `page_no`, `date_created`, `user_id`, `project_id`) VALUES
(1, 'Sustainable Growth in the Physics Field', 'The Perks of a Scientific World', 'Freddy L., Greg O\' Leonardo', 2014, 'Kansas, USA', 12, '06-06-2020 10:23 AM', 6, 0),
(2, 'Sustainable Growth in the Physics Field', 'The Perks of a Scientific World in the 20th Century', 'Freddy L., Greg O\' Leonardo', 2014, 'Kansas, USA', 12, '06-06-2020 09:34 AM', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `code`, `status`, `date_created`) VALUES
(1, 'Science, Technology and Innovation', 'STI', 1, '02-05-2020 18:23 PM'),
(2, 'Humanities and Social Sciences', 'HSS', 1, '02-05-2020 18:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `journal_title` varchar(400) NOT NULL,
  `authors` varchar(400) NOT NULL,
  `year` int(4) NOT NULL,
  `vol` varchar(50) NOT NULL,
  `issue` varchar(50) NOT NULL,
  `page_no` int(6) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `user_id` int(6) NOT NULL,
  `project_id` int(6) NOT NULL,
  `quality` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `title`, `journal_title`, `authors`, `year`, `vol`, `issue`, `page_no`, `date_created`, `user_id`, `project_id`, `quality`) VALUES
(1, 'The Reforms of Policy', 'Tenets of Policy in 20th Century', 'J. Leonard, P. Francis', 1990, '3', '234', 1002, '06-06-2020 09:24 AM', 0, 0, ''),
(2, 'The Reforms of Policy', 'Tenets of Policy in 20th Century', 'J. Leonard, P. Francis', 1995, '3', '234', 1003, '06-06-2020 10:27 AM', 6, 3, ''),
(4, 'Time travel', 'Time Travel', 'F. Foxworth', 1983, '1', '1', 12, '02-07-2020 10:08 AM', 8, 4, 'Q2');

-- --------------------------------------------------------

--
-- Table structure for table `menugroup`
--

CREATE TABLE `menugroup` (
  `id` int(11) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `Url` varchar(600) NOT NULL,
  `HasMenuItems` tinyint(3) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  `MenuGroupOrder` int(3) NOT NULL,
  `status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menugroup`
--

INSERT INTO `menugroup` (`id`, `Code`, `Text`, `Url`, `HasMenuItems`, `Icon`, `MenuGroupOrder`, `status`) VALUES
(1, 'acategory', 'Category', '../admin/department_list', 0, 'la la-briefcase', 1, 1),
(2, 'amembers', 'Members', '../admin/member_list', 0, 'la la-users', 2, 1),
(7, 'amilestones', 'Project Milestones', '.', 0, '.', 0, 1),
(3, 'aprojects', 'Projects', '../admin/project_list', 0, 'la la-building', 3, 1),
(5, 'asecurity', 'Security', '#', 1, 'la la-unlock', 5, 1),
(4, 'asettings', 'Settings', '../admin/settings', 0, 'la la-cog', 4, 1),
(9, 'attention_required', 'Attention Required', '.', 0, '.', 0, 1),
(6, 'auploads', 'Project Uploads', '.', 0, '.', 0, 1),
(8, 'authorize', 'Authorize', '../admin/authorize', 0, '.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `GroupCode` varchar(20) NOT NULL,
  `HasMenuItems` tinyint(3) NOT NULL,
  `TopMenuCode` varchar(20) NOT NULL,
  `Url` varchar(600) NOT NULL,
  `MenuItemOrder` int(3) NOT NULL,
  `status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `Code`, `Text`, `GroupCode`, `HasMenuItems`, `TopMenuCode`, `Url`, `MenuItemOrder`, `status`) VALUES
(1, 'aroles', 'Roles', 'asecurity', 0, '', '../admin/role_list', 1, 1),
(2, 'ausers', 'Users', 'asecurity', 0, '', '../admin/user_list', 2, 1),
(3, 'change_password', 'Change Password', 'asecurity', 0, '', '../admin/change_password', 3, 1),
(4, 'acategory', 'Category', 'acategory', 0, '', '../admin/department_list', 1, 1),
(5, 'amembers', 'Members', 'amembers', 0, '', '../admin/member_list', 1, 1),
(6, 'aprojects', 'Projects', 'aprojects', 0, '', '../admin/project_list', 1, 1),
(7, 'asettings', 'Settings', 'asettings', 0, '', '../admin/settings', 1, 1),
(8, 'amilestones', 'Project Milestones', 'amilestones', 0, '', '.', 0, 1),
(9, 'auploads', 'Project Uploads', 'auploads', 0, '', '.', 0, 1),
(10, 'authorize', 'Authorize', 'authorize', 0, '.', '../admin/authorize', 0, 1),
(11, 'attention_required', 'Attention Required', 'attention_required', 0, '.', '.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `recipient` varchar(50) NOT NULL,
  `sendername` varchar(50) NOT NULL,
  `body` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `title`, `recipient`, `sendername`, `body`) VALUES
(21, 'Project Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>Conservation of Power in the East - Most Secure Approach<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(22, 'Project Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>Conservation of Power in the East - Most Secure Approach<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(23, 'Project Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>variations of passages of Lorem Ipsum<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(24, 'AFIT_RMS Registration', 'jonas@gg.com', 'AFIT-RMS', '<p>Dear Dibia<br/><br/>\r\n                            You have successfully been registered on AFIT Research Management System. Your login details below.<br/><br/>\r\n                            <strong>Username: </strong> jonas@gg.com<br/>\r\n                            <strong>Password: </strong> 6982qlBidI<br/>\r\n                            Please change password after login.                          \r\n                            <br/><br/>\r\n                            Regards,\r\n                            <br/><br/>\r\n                            AFIT-RMS.</p><a href=\"http://localhost/afit/\" style=\"display: inline-block; color: #fff; text-decoration:none; text-align: center; background-color: #0053a6; padding: 8px;\">Login</a>'),
(25, 'Project Pending', 'conwunyirigbo@gmail.com', 'AFIT_RMS', 'A project status has been changed to <strong>pending</strong>. See details below:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Project Pending'),
(26, 'Ongoing Pending', 'conwunyirigbo@gmail.com', 'AFIT_RMS', 'A project status has been changed to <strong>ongoing</strong>. See details below:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Ongoing Pending'),
(27, 'Ongoing Pending', 'conwunyirigbo@gmail.com', 'AFIT_RMS', 'A project status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Ongoing Pending'),
(28, 'Project Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>variations of passages of Lorem Ipsum<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(29, 'Project Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>variations of passages of Lorem Ipsum<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(30, 'Attention Required in Your Project', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: </br/><strong>Project Status</strong>: Attention Required'),
(31, 'Attention Required in Your Project', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: </br/><strong>Project Status</strong>: Attention Required'),
(32, 'Attention Required in Your Project', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(33, 'Attention Required in Your Project', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(34, 'Attention Has Been Modified', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(35, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(36, 'Attention Opened', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been opened. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(37, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(38, 'Project Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>variations of passages of Lorem Ipsum<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(39, 'Project Completed', 'conwunyirigbo@gmail.com', 'AFIT_RMS', 'A project status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Project Completed'),
(40, 'Attention Required in Your Project', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(41, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: variations of passages of Lorem Ipsum</br/><strong>Project Status</strong>: Attention Required'),
(42, 'Project Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>variations of passages of Lorem Ipsum<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(43, 'Project Completed', 'conwunyirigbo@gmail.com', 'AFIT_RMS', 'A project status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Project Completed'),
(44, 'Ongoing Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'A Task status has been changed to <strong>ongoing</strong>. See details below:<br/><strong>Project Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Ongoing Task'),
(45, 'Task Completed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'A task status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Task Completed'),
(46, 'Task Completed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'A task status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Task Completed'),
(47, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(48, 'Attention Required in Your Task', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(49, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(50, 'Attention Required in Your Task', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(51, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(52, 'Attention Required in Your Task', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(53, '', 'samuelokunu@gmail.com', 'AFIT_RMS', '<strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(54, '', 'bellahadida2017@gmail.com', 'AFIT_RMS', '<strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(55, 'Attention Has Been Modified', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(56, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(57, 'Attention Has Been Modified', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(58, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(59, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(60, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(61, 'Attention Opened', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been opened. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Required'),
(62, 'Attention Opened', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been opened. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Required'),
(63, 'Attention Has Been Modified', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(64, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your task has been modified by your team leader. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Task Status</strong>: Attention Required'),
(65, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(66, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(67, 'Attention Opened', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been opened. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Required'),
(68, 'Attention Opened', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been opened. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Required'),
(69, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(70, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(71, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(72, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(73, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(74, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(75, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(76, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Lorem Ipsum Dolor sit Amet</br/><strong>Current Status</strong>: Attention Closed'),
(77, 'Task Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your task has been confirmed as complete.<br/><br/><strong>Task Title: </strong>Lorem Ipsum Dolor sit Amet<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(78, 'Task Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your task has been confirmed as complete.<br/><br/><strong>Task Title: </strong>Lorem Ipsum Dolor sit Amet<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(79, 'Ongoing Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'A Task status has been changed to <strong>ongoing</strong>. See details below:<br/><strong>Project Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Ongoing Task'),
(80, 'Attention Required in Your Project', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(81, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(82, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(83, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(84, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(85, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(86, 'Attention Required in Your Project', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(87, 'Attention Required in Your Project', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(88, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Closed'),
(89, 'Attention Opened', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been opened. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Required'),
(90, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Closed'),
(91, 'Attention Required in Your Project', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(92, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(93, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Closed'),
(94, 'Attention Opened', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been opened. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Required'),
(95, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Closed'),
(96, 'Project Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>Conservation of Power in the East - Most Secure Approach<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(97, 'Task Completed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'A task status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Task Completed'),
(98, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Attention Required'),
(99, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Attention Required'),
(100, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Current Status</strong>: Attention Closed'),
(101, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Attention Required'),
(102, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Current Status</strong>: Attention Closed'),
(103, 'Attention Required in Your Task', 'samuelokunu@gmail.com', 'AFIT_RMS', 'Your attention is required in one of your task. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Task Status</strong>: Attention Required'),
(104, 'Attention Closed', 'samuelokunu@gmail.com', 'AFIT_RMS', 'The attention added to the your task has been closed. Task details:<br/><strong>Task Title</strong>: Site Visitation</br/><strong>Current Status</strong>: Attention Closed'),
(105, 'Task Confirmed as completed', 'samuelokunu@gmail.com', 'AFIT-RMS', 'Dear Adamu<br/> Your task has been confirmed as complete.<br/><br/><strong>Task Title: </strong>Site Visitation<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(106, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(107, 'Attention Has Been Modified', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Attention required added to your project has been modified by admin. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Project Status</strong>: Attention Required'),
(108, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Conservation of Power in the East - Most Secure Approach</br/><strong>Current Status</strong>: Attention Closed'),
(109, 'Project Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>Conservation of Power in the East - Most Secure Approach<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(110, 'AFIT-RMS Password Reset', 'jonas@gg.com', 'AFIT-RMS Admin', 'Your Password was recently reset by an administrator.<br/><br/>\r\n            <br/>If you did not request a password reset, please notify the administration immediately'),
(111, 'Project Completed', 'info@zeal.com.ng', 'AFIT_RMS', 'A project status has been changed to <strong>completed</strong> and awaits confirmation. See details below:<br/><strong>Project Title</strong>: Development of Template for Forensic Care in Nigeria</br/><strong>Project Status</strong>: Project Completed'),
(112, 'Attention Required in Your Project', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Development of Template for Forensic Care in Nigeria</br/><strong>Project Status</strong>: Attention Required'),
(113, 'Attention Closed', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been closed. Project details:<br/><strong>Project Title</strong>: Development of Template for Forensic Care in Nigeria</br/><strong>Current Status</strong>: Attention Closed'),
(114, 'Attention Opened', 'bellahadida2017@gmail.com', 'AFIT_RMS', 'The attention added to the your project has been opened. Project details:<br/><strong>Project Title</strong>: Development of Template for Forensic Care in Nigeria</br/><strong>Current Status</strong>: Attention Required'),
(115, 'Project Confirmed as completed', 'bellahadida2017@gmail.com', 'AFIT-RMS', 'Dear Bella<br/> Your project has been confirmed as complete.<br/><br/><strong>Project Title: </strong>Development of Template for Forensic Care in Nigeria<br/><strong>Status: </strong> Complete & Confirmed.<br/><br/>Admin.<br/>AFIT-RMS'),
(116, 'New Project Assigned to You', 'jonas@gg.com', 'AFIT_RMS', '<p>Dear Dibia, <br/> a project has been assigned to you on AFIT-RMS. Login to view your new project.</p><br/><br/><a href=\"http://localhost/afit/index\" style=\"display: inline-block; color: #fff; text-decoration:none; text-align: center; background-color: #0053a6; padding: 8px;\">Login</a>'),
(117, 'AFIT-RMS Password Reset', 'joshtom@gg.com', 'AFIT-RMS Admin', 'Your Password was recently reset by an administrator.<br/><br/>\r\n            <br/>If you did not request a password reset, please notify the administration immediately'),
(118, 'Attention Required in Your Project', 'jonas@gg.com', 'AFIT_RMS', 'Your attention is required in your project. Project details:<br/><strong>Project Title</strong>: Machine Servicing Techniques</br/><strong>Project Status</strong>: Attention Required');

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

CREATE TABLE `patent` (
  `id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `authors` varchar(400) NOT NULL,
  `year` int(4) NOT NULL,
  `patent_no` int(6) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `user_id` int(6) NOT NULL,
  `project_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patent`
--

INSERT INTO `patent` (`id`, `title`, `authors`, `year`, `patent_no`, `date_created`, `user_id`, `project_id`) VALUES
(1, 'Lewd Procedures of Nigeria', 'Henry Abba', 2012, 9002, '06-06-2020 20:37 PM', 6, 1),
(2, 'Good Health in Crisis', 'Crisis Management Study in Africa', 2013, 12, '06-06-2020 22:38 PM', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(6000) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `team_leader_id` int(6) NOT NULL,
  `co_leader_id` int(6) NOT NULL,
  `max_team_members` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `department_id` int(6) NOT NULL,
  `leader_completion_date` varchar(50) NOT NULL,
  `completion_date` varchar(50) NOT NULL,
  `percentage_completed` int(3) NOT NULL,
  `admin_status` tinyint(1) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `attention_note` varchar(2000) DEFAULT NULL,
  `attention_date` varchar(50) DEFAULT NULL,
  `attention_modify_date` varchar(50) NOT NULL,
  `show_attn_team` tinyint(1) NOT NULL,
  `attention_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `code`, `title`, `description`, `date_created`, `start_date`, `due_date`, `team_leader_id`, `co_leader_id`, `max_team_members`, `status`, `department_id`, `leader_completion_date`, `completion_date`, `percentage_completed`, `admin_status`, `priority`, `attention_note`, `attention_date`, `attention_modify_date`, `show_attn_team`, `attention_status`) VALUES
(1, 'Forensic_care', 'Development of Template for Forensic Care in Nigeria', '<p style=\"font-size: 17.3333px;\"><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\r\n<p style=\"font-size: 17.3333px;\"><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p>', '05-05-2020 00:44 AM', '28-05-2020', '25-06-2020', 6, 0, 5, 1, 1, '18-06-2020 11:44 AM', '22-06-2020 17:59 PM', 100, 1, 'critical', '', '', '', 0, 0),
(2, 'Lorem_Ipsum', 'variations of passages of Lorem Ipsum', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </span></p>\r\n<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '05-05-2020 01:04 AM', '21-05-2020', '30-05-2020', 3, 0, 5, 1, 1, '31-05-2020', '31-05-2020 23:59 PM', 100, 1, 'medium', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span></p>', '31-05-2020 11:58 PM', '31-05-2020 23:58 pm', 1, 2),
(3, 'CONEAST01', 'Conservation of Power in the East - Most Secure Approach', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </span></p>', '12-05-2020 00:46 AM', '27-05-2020', '30-05-2020', 6, 0, 0, 1, 1, '01-06-2020 08:29 AM', '07-06-2020 23:46 PM', 100, 1, 'high', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '07-06-2020 09:53 PM', '07-06-2020 23:46 pm', 0, 2),
(4, 'Machine_Techs', 'Machine Servicing Techniques', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '29-06-2020 23:01 PM', '24-06-2020', '30-06-2020', 9, 8, 0, 2, 2, '', '', 2, 2, 'high', '<p>vsf</p>', '02-07-2020 12:38 AM', '02-07-2020 12:38 AM', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_milestones`
--

CREATE TABLE `project_milestones` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `percentage` int(3) NOT NULL,
  `team_leader_id` int(11) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_milestones`
--

INSERT INTO `project_milestones` (`id`, `project_id`, `description`, `percentage`, `team_leader_id`, `date_created`) VALUES
(1, 1, 'Conducted unit testing on various zones for the project', 20, 6, '11-05-2020 23:53 pm'),
(2, 1, 'Water Transmission across communities has been completed.', 30, 6, '12-05-2020 00:14 am'),
(3, 3, 'Site visitation', 10, 6, '12-05-2020 00:53 AM'),
(4, 3, 'Negotiation with important parties.', 15, 6, '12-05-2020 00:56 AM'),
(5, 1, '', 45, 6, '15-05-2020 16:43 PM'),
(6, 2, 'fsd', 100, 3, '03-06-2020 08:39 AM'),
(7, 4, 'Formula 1 Description technique', 2, 8, '02-07-2020 09:56 AM');

-- --------------------------------------------------------

--
-- Table structure for table `project_photos`
--

CREATE TABLE `project_photos` (
  `id` int(11) NOT NULL,
  `project_id` int(6) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `project_milestone_id` int(11) NOT NULL,
  `caption` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_photos`
--

INSERT INTO `project_photos` (`id`, `project_id`, `photo`, `project_milestone_id`, `caption`) VALUES
(8, 1, '5e7af6d2-f6f9-4b86-98b8-fff0784dee52.jpg', 5, 'Location inspection'),
(9, 1, 'b05904d4-f000-4724-9765-3d97672602f1.jpg', 5, 'Preparation of materials'),
(10, 1, 'ce834e3c-e0c9-4ed2-868a-2d29e1373b79.jpg', 5, 'Site preparation'),
(11, 1, '569101b0-6416-4cf5-9afa-80b57e260431.jpg', 5, 'Structure laying in progress'),
(12, 2, 'photoproject61.jpg', 6, 'xncmvds'),
(13, 2, 'photoproject62.jpg', 6, 'nzxcb');

-- --------------------------------------------------------

--
-- Table structure for table `project_uploads`
--

CREATE TABLE `project_uploads` (
  `id` int(11) NOT NULL,
  `caption` varchar(400) NOT NULL,
  `file` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_milestone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_uploads`
--

INSERT INTO `project_uploads` (`id`, `caption`, `file`, `project_id`, `project_milestone_id`) VALUES
(2, 'Zone Capture Document', 'Zone_Capture_Document.jpg', 1, 1),
(4, 'fsd', 'fsd.jpg', 1, 2),
(5, 'czdch', 'czdch.jpg', 2, 6),
(6, 'znbc', 'znbc.jpg', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `roleauth`
--

CREATE TABLE `roleauth` (
  `id` int(11) NOT NULL,
  `roleid` int(6) NOT NULL,
  `groupcode` varchar(20) NOT NULL,
  `menucode` varchar(20) NOT NULL,
  `allow_new` tinyint(3) NOT NULL,
  `allow_view` tinyint(3) NOT NULL,
  `allow_update` tinyint(3) NOT NULL,
  `allow_delete` tinyint(3) NOT NULL,
  `allow_auth` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roleauth`
--

INSERT INTO `roleauth` (`id`, `roleid`, `groupcode`, `menucode`, `allow_new`, `allow_view`, `allow_update`, `allow_delete`, `allow_auth`) VALUES
(33, 1, 'acategory', 'acategory', 1, 1, 1, 1, 1),
(34, 1, 'amembers', 'amembers', 1, 1, 1, 1, 1),
(35, 1, 'amilestones', 'amilestones', 1, 1, 1, 1, 1),
(36, 1, 'aprojects', 'aprojects', 1, 1, 1, 1, 1),
(37, 1, 'asecurity', 'change_password', 1, 1, 1, 1, 1),
(38, 1, 'asettings', 'asettings', 1, 1, 1, 1, 1),
(39, 1, 'auploads', 'auploads', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `status`) VALUES
(1, 'ADMIN', 'Admin', 1),
(2, 'SUB_ADMIN', 'Sub Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `admin_email`) VALUES
(1, 'info@zeal.com.ng');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(6000) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `team_leader_id` int(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `completion_date` varchar(50) NOT NULL,
  `team_completion_date` varchar(50) NOT NULL,
  `percentage_completed` int(3) NOT NULL,
  `leader_status` tinyint(1) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `attention_note` varchar(2000) NOT NULL,
  `attention_date` varchar(50) NOT NULL,
  `attention_modify_date` varchar(50) NOT NULL,
  `show_attn_team` tinyint(1) NOT NULL,
  `attention_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `project_id`, `code`, `title`, `description`, `date_created`, `start_date`, `due_date`, `team_leader_id`, `status`, `completion_date`, `team_completion_date`, `percentage_completed`, `leader_status`, `priority`, `attention_note`, `attention_date`, `attention_modify_date`, `show_attn_team`, `attention_status`) VALUES
(1, 1, 'Task 1', 'Lorem Ipsum Dolor sit Amet', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\"><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '11-05-2020 02:28 AM', '13-05-2020', '30-05-2020', 0, 1, '01-06-2020 14:33 PM', '01-06-2020 10:50 AM', 100, 1, 'high', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\"><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span></p>', '01-06-2020 12:22 PM', '01-06-2020 14:33 pm', 0, 2),
(2, 2, 'Site', 'Site Visitation', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\"> Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es. </span></p>', '13-05-2020 00:04 AM', '11-05-2020', '29-05-2020', 0, 2, '', '01-06-2020 08:57 AM', 100, 0, 'high', '', '', '', 0, 2),
(3, 1, 'Site ', 'Site Visitation', '<p><strong style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '14-05-2020 13:54 PM', '04-05-2020', '31-05-2020', 0, 1, '07-06-2020 23:10 PM', '07-06-2020 22:00 PM', 100, 1, 'medium', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p>', '07-06-2020 11:10 PM', '07-06-2020 23:10 pm', 0, 2),
(4, 3, 'Site', 'Site Visitation', '<p><strong style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\">, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '14-05-2020 13:56 PM', '06-05-2020', '04-06-2020', 0, 0, '', '', 0, 0, 'medium', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_members`
--

CREATE TABLE `task_members` (
  `id` int(11) NOT NULL,
  `team_member_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_members`
--

INSERT INTO `task_members` (`id`, `team_member_id`, `task_id`) VALUES
(7, 3, 1),
(8, 6, 1),
(9, 6, 2),
(12, 3, 3),
(13, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `task_milestones`
--

CREATE TABLE `task_milestones` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `percentage` int(3) NOT NULL,
  `team_member_id` int(11) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_milestones`
--

INSERT INTO `task_milestones` (`id`, `task_id`, `description`, `percentage`, `team_member_id`, `date_created`) VALUES
(1, 1, 'Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.', 30, 6, '13-05-2020 00:47 AM'),
(2, 1, 'Water Transmission across communities has been completed.', 35, 6, '13-05-2020 00:48 AM'),
(3, 2, 'Map drawn and land surveyed.', 50, 6, '13-05-2020 00:54 AM'),
(4, 1, 'Process initiations and resources', 45, 6, '13-05-2020 22:58 PM'),
(5, 3, '', 15, 3, '15-05-2020 12:55 PM'),
(8, 1, 'Material inspection - 21-05-2020', 65, 6, '21-05-2020 11:52 AM');

-- --------------------------------------------------------

--
-- Table structure for table `task_photos`
--

CREATE TABLE `task_photos` (
  `id` int(11) NOT NULL,
  `task_id` int(6) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `task_milestone_id` int(11) NOT NULL,
  `caption` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_photos`
--

INSERT INTO `task_photos` (`id`, `task_id`, `photo`, `task_milestone_id`, `caption`) VALUES
(11, 1, '5e7af6d2-f6f9-4b86-98b8-fff0784dee52.jpg', 8, 'Collating of results'),
(12, 1, 'ce834e3c-e0c9-4ed2-868a-2d29e1373b79.jpg', 8, 'site inspecting');

-- --------------------------------------------------------

--
-- Table structure for table `task_uploads`
--

CREATE TABLE `task_uploads` (
  `id` int(11) NOT NULL,
  `caption` varchar(400) NOT NULL,
  `file` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_milestone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_uploads`
--

INSERT INTO `task_uploads` (`id`, `caption`, `file`, `task_id`, `task_milestone_id`) VALUES
(1, 'laboris', 'laboris.jpg', 1, 1),
(12, 'Photo 1', 'Photo_1.jpg', 1, 4),
(13, 'gfyft', 'gfyft.jpg', 1, 2),
(14, 'Journal 1.2', 'Journal_1.2.jpg', 1, 8),
(15, 'Journal 1.3', 'Journal_1.3.jpg', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `title` varchar(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `othernames` varchar(255) NOT NULL,
  `pword` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(250) NOT NULL DEFAULT 'client',
  `department_id` int(6) NOT NULL,
  `date_created` varchar(250) DEFAULT NULL,
  `reset_key` varchar(60) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `firstname`, `lastname`, `othernames`, `pword`, `email`, `phone`, `role`, `department_id`, `date_created`, `reset_key`, `photo`, `is_active`) VALUES
(1, '', 'Admin', '', '', '9273f610016b747604d6f96c18758d245b32d25b', 'admin', '', 'super_admin', 0, '02-05-2020', '', '', 1),
(3, 'Prof.', 'Adamu', 'Okunu', 'Samuel', 'a4e2797c7e22158cfaab6849e608e1b8506cf675', 'samuelokunu@gmail.com', '08090009000', 'user', 1, '03-05-2020', '', 'member3.jpg', 1),
(6, 'Mrs.', 'Bella', 'Hadida', 'James', 'a4e2797c7e22158cfaab6849e608e1b8506cf675', 'bellahadida2017@gmail.com', '08009098890', 'user', 1, '03-05-2020', '', 'member6.jpg', 1),
(8, 'Dr.', 'Joshua', 'Akede', '', '7c222fb2927d828af22f592134e8932480637c0d', 'joshtom@gg.com', '08099887766', 'user', 2, '04-05-2020', '', 'member8.jpg', 1),
(9, 'Dr.', 'Dibia', 'Okwe', 'Jonas', '7c222fb2927d828af22f592134e8932480637c0d', 'jonas@gg.com', '0000', 'user', 2, '31-05-2020', '', 'member9.jpg', 1),
(10, '', 'Chidiebere', 'Onwunyirigbo', '', '7c222fb2927d828af22f592134e8932480637c0d', 'conwunyirigbo@gmail.com', '', 'admin', 0, '02-06-2020', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `userid` int(6) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `userid`, `roleid`) VALUES
(2, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attention`
--
ALTER TABLE `attention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menugroup`
--
ALTER TABLE `menugroup`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patent`
--
ALTER TABLE `patent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_milestones`
--
ALTER TABLE `project_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_photos`
--
ALTER TABLE `project_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_uploads`
--
ALTER TABLE `project_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleauth`
--
ALTER TABLE `roleauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_members`
--
ALTER TABLE `task_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_milestones`
--
ALTER TABLE `task_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_photos`
--
ALTER TABLE `task_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_uploads`
--
ALTER TABLE `task_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attention`
--
ALTER TABLE `attention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menugroup`
--
ALTER TABLE `menugroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `patent`
--
ALTER TABLE `patent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_milestones`
--
ALTER TABLE `project_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project_photos`
--
ALTER TABLE `project_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_uploads`
--
ALTER TABLE `project_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roleauth`
--
ALTER TABLE `roleauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task_members`
--
ALTER TABLE `task_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task_milestones`
--
ALTER TABLE `task_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task_photos`
--
ALTER TABLE `task_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `task_uploads`
--
ALTER TABLE `task_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
