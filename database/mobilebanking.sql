-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2013 at 11:08 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobilebanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE IF NOT EXISTS `allocation` (
  `allocationId` int(11) NOT NULL AUTO_INCREMENT,
  `allocationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deallocationDate` date DEFAULT NULL,
  `deallocationTime` time DEFAULT NULL,
  `allocatedBy` int(11) DEFAULT NULL,
  `allocatedTo` int(11) DEFAULT NULL,
  `deallocatedBy` int(11) DEFAULT NULL,
  `terminalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`allocationId`),
  KEY `FK_an4yqvp3od4p5ncoqwjk46yg1` (`allocatedBy`),
  KEY `FK_su0hp8166whv32akwy02me7i` (`allocatedTo`),
  KEY `FK_cvehw6eg0qvet7cd058636g98` (`deallocatedBy`),
  KEY `FK_8letdexs0qatf3kes6v3jtjsq` (`terminalId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `allocation`
--

INSERT INTO `allocation` (`allocationId`, `allocationDate`, `deallocationDate`, `deallocationTime`, `allocatedBy`, `allocatedTo`, `deallocatedBy`, `terminalId`) VALUES
(1, '2013-11-08 00:00:00', '2013-12-17', '17:06:09', 1, 2, 1, 1),
(2, '2013-11-08 00:00:00', '2013-12-17', '17:07:08', 1, 3, 1, 2),
(5, '2013-12-17 16:58:14', '2013-12-17', '17:06:52', 1, 2, 1, 1),
(11, '2013-12-17 19:03:37', '2013-12-17', '20:13:28', 1, 3, 1, 8),
(12, '2013-12-17 20:38:18', '2013-12-17', '20:38:47', 1, 3, 1, 8),
(14, '2013-12-17 20:39:18', '2013-12-17', '20:39:34', 1, 2, 1, 8),
(15, '2013-12-17 20:40:19', NULL, NULL, 1, 2, NULL, 8),
(16, '2013-12-18 09:07:54', '2013-12-18', '09:12:28', 1, 4, 1, 10),
(17, '2013-12-18 09:13:35', '2013-12-18', '09:16:30', 1, 5, 1, 10),
(18, '2013-12-18 09:16:39', '2013-12-18', '09:18:14', 1, 2, 1, 10),
(19, '2013-12-18 09:18:31', '2013-12-18', '09:20:35', 1, 6, 1, 10),
(20, '2013-12-18 09:22:18', '2013-12-18', '09:23:25', 1, 3, 1, 10),
(21, '2013-12-18 09:24:19', '2013-12-18', '09:27:43', 1, 2, 1, 10),
(22, '2013-12-18 09:29:05', '2013-12-18', '09:35:21', 1, 4, 1, 10),
(23, '2013-12-18 09:35:31', '2013-12-18', '09:38:12', 1, 2, 1, 10),
(24, '2013-12-18 09:38:23', '2013-12-18', '09:43:11', 1, 2, 1, 10),
(25, '2013-12-18 09:48:07', '2013-12-18', '09:49:39', 1, 2, 1, 10),
(26, '2013-12-18 09:50:19', '2013-12-18', '09:51:05', 1, 4, 1, 10),
(27, '2013-12-18 09:51:41', '2013-12-18', '09:52:57', 1, 7, 1, 10),
(28, '2013-12-18 09:53:53', '2013-12-18', '09:55:28', 1, 6, 1, 10),
(29, '2013-12-18 09:56:26', '2013-12-18', '10:07:30', 1, 6, 1, 10),
(30, '2013-12-18 10:31:22', '2013-12-18', '10:31:39', 1, 4, 1, 10),
(31, '2013-12-18 10:31:59', '2013-12-18', '10:32:38', 1, 2, 1, 10),
(32, '2013-12-18 10:34:16', '2013-12-18', '10:42:15', 1, 5, 1, 10),
(33, '2013-12-18 10:45:15', '2013-12-18', '10:46:11', 1, 5, 1, 10),
(34, '2013-12-18 10:49:27', '2013-12-18', '10:52:55', 1, 7, 1, 10),
(35, '2013-12-18 10:54:37', '2013-12-18', '10:55:25', 1, 4, 1, 10),
(36, '2013-12-18 10:55:36', '2013-12-18', '10:55:56', 1, 3, 1, 10),
(37, '2013-12-18 10:56:06', '2013-12-18', '11:09:05', 1, 4, 1, 10),
(38, '2013-12-18 11:09:20', '2013-12-18', '11:13:14', 1, 4, 1, 10),
(39, '2013-12-18 11:15:13', '2013-12-18', '11:15:56', 1, 2, 1, 10),
(40, '2013-12-18 11:16:10', '2013-12-18', '11:21:00', 1, 5, 1, 10),
(41, '2013-12-18 11:21:10', '2013-12-18', '11:22:03', 1, 6, 1, 10),
(42, '2013-12-18 11:22:38', '2013-12-18', '11:25:22', 1, 3, 1, 10),
(43, '2013-12-18 11:25:30', '2013-12-18', '11:26:15', 1, 4, 1, 10),
(44, '2013-12-18 11:27:55', '2013-12-18', '11:29:37', 1, 3, 1, 10),
(45, '2013-12-18 11:30:36', '2013-12-18', '11:30:48', 1, 6, 1, 10),
(46, '2013-12-18 11:31:28', '2013-12-18', '11:31:44', 1, 5, 1, 10),
(47, '2013-12-18 11:33:48', '2013-12-18', '11:36:20', 1, 4, 1, 10),
(48, '2013-12-18 11:37:53', '2013-12-18', '11:38:06', 1, 6, 1, 10),
(49, '2013-12-18 11:41:05', '2013-12-18', '11:41:12', 1, 2, 1, 10),
(50, '2013-12-18 11:41:26', '2013-12-18', '12:08:10', 1, 3, 1, 10),
(51, '2013-12-18 12:09:58', '2013-12-18', '12:34:54', 1, 4, 1, 10),
(53, '2013-12-18 12:41:32', '2013-12-18', '12:47:31', 1, 2, 1, 10),
(54, '2013-12-18 12:47:54', '2013-12-18', '13:48:59', 1, 5, 1, 10),
(55, '2013-12-18 13:49:14', NULL, NULL, 1, 7, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `refNo` varchar(255) NOT NULL,
  `accountNo` varchar(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `refNo`, `accountNo`, `firstName`, `lastName`, `mobileNo`) VALUES
(1, 'PF-001-00001', 'PA/00001', 'James', 'Mworia', '0721815466'),
(2, 'PF-001-00002', 'PA/00002', 'Daisy', 'Musyoki ', '0718575811'),
(3, 'PF-001-00003', 'PA/00003', 'John', 'Gitu ', '0721657856'),
(4, 'PF-001-00004', 'PA/00004', 'Mick', 'Wakuloba', '0727383353'),
(5, 'PF-001-00005', 'PA/00005', 'Kaari', 'Mlimbitu', '0720353062'),
(6, 'PF-001-00006', 'PA/00006', 'Robert', 'Ombuya', '0700512200'),
(7, 'PF-001-00007', 'PA/00007', 'Jeniffer', 'Ngemu', '0725067011'),
(8, 'PF-001-00008', 'PA/00008', 'Helen', 'Kinyili ', '0735518332'),
(9, 'PF-001-00009', 'PA/00009', 'Serah', 'Njoroge ', '0700564197'),
(10, 'PF-001-00010', 'PA/00010', 'Casty', 'Mbuba', '0726427951'),
(11, 'PF-001-00011', 'PA/00011', 'Irene', 'Keru ', '0721566595'),
(12, 'PF-001-00012', 'PA/00012', 'Ann  ', 'Kamau', '0721496772'),
(13, 'PF-001-00013', 'PA/00013', 'Ann  ', 'Kamiaru ', '0720076870'),
(14, 'PF-001-00014', 'PA/00014', 'Jackson ', 'Namale', '0713577936'),
(15, 'PF-001-00015', 'PA/00015', 'Susan', 'Makau', '0723843702'),
(16, 'PF-001-00016', 'PA/00016', 'Alice', 'Akumu', '0724585189'),
(17, 'PF-001-00017', 'PA/00017', 'Victor', 'Onyango ', '0710176229'),
(18, 'PF-001-00018', 'PA/00018', 'Felister', 'Munyi', '0721993193'),
(19, 'PF-001-00019', 'PA/00019', 'Nelius', 'Karungu ', '0722378460'),
(20, 'PF-001-00020', 'PA/00020', 'Alice', 'Macharia', '0727340103'),
(21, 'PF-001-00021', 'PA/00021', 'Barnes', 'Njunji', '0725945565'),
(22, 'PF-001-00022', 'PA/00022', 'Jane ', 'Njambi', '0711198708'),
(23, 'PF-001-00023', 'PA/00023', 'Lucia', 'Muthiora', '0727918424'),
(24, 'PF-001-00024', 'PA/00024', 'Sylvia', 'Oyugi', '0725695523'),
(25, 'PF-001-00025', 'PA/00025', 'Anne ', 'Eliud', '0727055304'),
(26, 'PF-001-00026', 'PA/00026', 'Lilian', 'Mwangangi', '0726583608'),
(27, 'PF-001-00027', 'PA/00027', 'Daniel', 'Wambua', '0710820515'),
(28, 'PF-001-00028', 'PA/00028', 'Susan', 'Wambua', '0722292180'),
(29, 'PF-001-00029', 'PA/00029', 'Jacinta ', 'Munyao', '0721480131'),
(30, 'PF-001-00030', 'PA/00030', 'Marieta ', 'Munyao', '0728442905'),
(31, 'PF-001-00031', 'PA/00031', 'Jackline', 'Sammy', '0722109092'),
(32, 'PF-001-00032', 'PA/00032', 'Pauline ', 'Onyango ', '0720504984'),
(33, 'PF-001-00033', 'PA/00033', 'Rose ', 'Musyoki ', '0729740391'),
(34, 'PF-001-00034', 'PA/00034', 'Francis ', 'Mbogo', '0719299250'),
(35, 'PF-001-00035', 'PA/00035', 'Tiberius', 'Ongwek', '0712886253'),
(36, 'PF-001-00036', 'PA/00036', 'Fridah', 'Mwangi', '0722780380'),
(37, 'PF-001-00037', 'PA/00037', 'Elizabeth', 'Musyoka ', '0711804558'),
(38, 'PF-001-00038', 'PA/00038', 'Brenda', 'Adero', '0720904449'),
(39, 'PF-001-00039', 'PA/00039', 'Ruth ', 'Aura ', '0725069312'),
(40, 'PF-001-00040', 'PA/00040', 'Joshua', 'Makonjio', '0737435061'),
(41, 'PF-001-00041', 'PA/00041', 'Consolata', 'Oketch', '0716317542'),
(42, 'PF-001-00042', 'PA/00042', 'Miriam', 'Nzuva', '0724582540'),
(43, 'PF-001-00043', 'PA/00043', 'Doris', 'Ndeto', '0713950500'),
(44, 'PF-001-00044', 'PA/00044', 'Thomas', 'Mbiti', '0721230214'),
(45, 'PF-001-00045', 'PA/00045', 'Purity', 'Njeru', '0729510080'),
(46, 'PF-001-00046', 'PA/00046', 'Jane ', 'Njui ', '     '),
(47, 'PF-001-00047', 'PA/00047', 'Terry', 'Njagi', '0724343048'),
(48, 'PF-001-00048', 'PA/00048', 'Priscilla', 'Thuo ', '0721633971'),
(49, 'PF-001-00049', 'PA/00049', 'Mary ', 'Kariuki ', '0724647649'),
(50, 'PF-001-00050', 'PA/00050', 'Ascah', 'Odhiambo', '0723920167'),
(51, 'PF-001-00051', 'PA/00051', 'Margaret', 'kimani', '0725431795'),
(52, 'PF-001-00052', 'PA/00052', 'Peter', 'Kilonzo ', '0720070911'),
(53, 'PF-001-00053', 'PA/00053', 'Ibrahim ', 'Ndegwa', '0728627272'),
(54, 'PF-001-00054', 'PA/00054', 'Julius', 'Ngugi', '0721451106'),
(55, 'PF-001-00055', 'PA/00055', 'George', 'Nyanducha', '0734688825'),
(56, 'PF-001-00056', 'PA/00056', 'Lucas', 'Nyanga`u', '0729001908'),
(57, 'PF-001-00057', 'PA/00057', 'Simon', 'Wambua', '0726677670'),
(58, 'PF-001-00058', 'PA/00058', 'Kelvin', 'David', '0728338356'),
(59, 'PF-001-00059', 'PA/00059', 'Rodah', 'Matheka ', '0723941797'),
(60, 'PF-001-00060', 'PA/00060', 'Felix', 'Obeyia', '0720678057'),
(61, 'PF-001-00061', 'PA/00061', 'Kenneth ', 'Oyeyo', '0721231320'),
(62, 'PF-001-00062', 'PA/00062', 'Joseph', 'Kagumba ', '0724937028'),
(63, 'PF-001-00063', 'PA/00063', 'Josephine', 'Baraza', '0714818590'),
(64, 'PF-001-00064', 'PA/00064', 'Lilian', 'Aloo ', '0715521683'),
(65, 'PF-001-00065', 'PA/00065', 'Mary ', 'Wanyonyi', '0726105336'),
(66, 'PF-001-00066', 'PA/00066', 'Melline ', 'Obiero', '0726933679'),
(67, 'PF-001-00067', 'PA/00067', 'Dickson ', 'Ombogo', '0751507866'),
(68, 'PF-001-00068', 'PA/00068', 'Abednego', 'Nganga', '0710656917'),
(69, 'PF-001-00069', 'PA/00069', 'Stephen ', 'Nyamai', '0725026251'),
(70, 'PF-001-00070', 'PA/00070', 'Samuel', 'David', '0728927974'),
(71, 'PF-001-00071', 'PA/00071', 'Cosmus', 'Mwove', '0721259621'),
(72, 'PF-001-00072', 'PA/00072', 'Julius', 'Kiiru', '0720697165'),
(73, 'PF-001-00073', 'PA/00073', 'Beatrice', 'Njoroge ', '0739714803'),
(74, 'PF-001-00074', 'PA/00074', 'Benard', 'John ', '0702201045'),
(75, 'PF-001-00075', 'PA/00075', 'Fridah', 'Omache', '0721356272'),
(76, 'PF-001-00076', 'PA/00076', 'Naftal', 'Omwaga', '0725407751'),
(77, 'PF-001-00077', 'PA/00077', 'Elizabeth', 'Nyamai', '0720712791'),
(78, 'PF-001-00078', 'PA/00078', 'Collins ', 'Otinga', '0723417786'),
(79, 'PF-001-00079', 'PA/00079', 'Thomas', 'Ogolla', '0729157663'),
(80, 'PF-001-00080', 'PA/00080', 'Millicent', 'Ong`ong`a', '0727331707'),
(81, 'PF-001-00081', 'PA/00081', 'Gladys', 'Muia ', '0725857626'),
(82, 'PF-001-00082', 'PA/00082', 'Stephen ', 'Okwando ', '0736514150'),
(83, 'PF-001-00083', 'PA/00083', 'James', 'Mwangi', '0737766800'),
(84, 'PF-001-00084', 'PA/00084', 'Kiprop', 'Kipkurui', '0724463176'),
(85, 'PF-001-00085', 'PA/00085', 'Kenneth ', 'Kiarie', '0721676918'),
(86, 'PF-001-00086', 'PA/00086', 'Patrick ', 'Mwadime ', '0787771889'),
(87, 'PF-001-00087', 'PA/00087', 'Justus', 'Kilonzo ', '0725925240'),
(88, 'PF-001-00088', 'PA/00088', 'John ', 'Cheruiyot', '0721755745'),
(89, 'PF-001-00089', 'PA/00089', 'Charles ', 'Mathai', '0720943943'),
(90, 'PF-001-00090', 'PA/00090', 'Charles ', 'Matonda ', '0727598442'),
(91, 'PF-001-00091', 'PA/00091', 'Fanice', 'Nyamweya', '0717714701'),
(92, 'PF-001-00092', 'PA/00092', 'Hilary', 'Odhiambo', '0726333626'),
(93, 'PF-001-00093', 'PA/00093', 'Carolyne', 'Onchomba', '0724571946'),
(94, 'PF-001-00094', 'PA/00094', 'Susan', 'Maina', '0727454225'),
(95, 'PF-001-00095', 'PA/00095', 'Juddy', 'Chege', '0713231932'),
(96, 'PF-001-00096', 'PA/00096', 'Janerose', 'Mwangi', '0718557632'),
(97, 'PF-001-00097', 'PA/00097', 'George', 'Ouma ', '0725072779'),
(98, 'PF-001-00098', 'PA/00098', 'Silas', 'Odhiambo', '0726799923'),
(99, 'PF-001-00099', 'PA/00099', 'Fredrick', 'Oketh', '0724446077'),
(100, 'PF-001-00100', 'PA/00100', 'Benedict', 'Okanyana', '0724982343'),
(101, 'PF-001-00101', 'PA/00101', 'Josephat', 'Katoni', '     '),
(102, 'PF-001-00102', 'PA/00102', 'Samuel', 'Otunga', '0705136992'),
(103, 'PF-001-00103', 'PA/00103', 'Rahab', 'Chege', '0725041120'),
(104, 'PF-001-00104', 'PA/00104', 'Nathan', 'Ombito', '0726047064'),
(105, 'PF-001-00105', 'PA/00105', 'Julian', 'Oduor', '0700287537'),
(106, 'PF-001-00106', 'PA/00106', 'Margaret', 'Ndirangu', '     '),
(107, 'PF-001-00107', 'PA/00107', 'Joseph', 'Mwai ', '0729555977'),
(108, 'PF-001-00108', 'PA/00108', 'Cecilia ', 'Mwangi', '0712715070'),
(109, 'PF-001-00109', 'PA/00109', 'Calvin', 'Ambajo', '0722667811'),
(110, 'PF-001-00110', 'PA/00110', 'Asaph', 'Kanyari ', '0720500362'),
(111, 'PF-001-00111', 'PA/00111', 'Miriam', 'Munguti ', '0723232032'),
(112, 'PF-001-00112', 'PA/00112', 'Regina', 'Ngove', '0722699379'),
(113, 'PF-001-00113', 'PA/00113', 'Beatrice', 'Okal ', '0723897469'),
(114, 'PF-001-00114', 'PA/00114', 'Jefurisi', 'Olwanda ', '     '),
(115, 'PF-001-00115', 'PA/00115', 'Lydia', 'Kamau', '0721905675'),
(116, 'PF-001-00116', 'PA/00116', 'Hellen', 'Sakwa', '     '),
(117, 'PF-001-00117', 'PA/00117', 'Simon', 'Ngigi', '0751668884'),
(118, 'PF-001-00118', 'PA/00118', 'Rose ', 'Muthusi ', '0700922831'),
(119, 'PF-001-00119', 'PA/00119', 'Betty', 'Olingo', '0728661448'),
(120, 'PF-001-00120', 'PA/00120', 'Margaret', 'Wanjohi ', '0724668420'),
(121, 'PF-001-00121', 'PA/00121', 'Jackline', 'Masaluvu', '0723817486'),
(122, 'PF-001-00122', 'PA/00122', 'Gabriel ', 'Wanyika ', '     '),
(123, 'PF-001-00123', 'PA/00123', 'Peter', 'Kaburu', '0717570794'),
(124, 'PF-001-00124', 'PA/00124', 'Ebrahim ', 'Wachira ', '0726514214'),
(125, 'PF-001-00125', 'PA/00125', 'Beatrice', 'Munyi', '0724514514'),
(126, 'PF-001-00126', 'PA/00126', 'Billiah ', 'Ondieki ', '     '),
(127, 'PF-001-00127', 'PA/00127', 'Esther', 'Ng`ang`a', '0702197404'),
(128, 'PF-001-00128', 'PA/00128', 'Lucy ', 'Wairimu ', '0710202495'),
(129, 'PF-001-00129', 'PA/00129', 'Francis ', 'Murithi ', '0719755317'),
(130, 'PF-001-00130', 'PA/00130', 'Jackson ', 'Maundu', '0727849900'),
(131, 'PF-001-00131', 'PA/00131', 'Lucy ', 'Njoroge ', '0721532238'),
(132, 'PF-001-00132', 'PA/00132', 'Rabecca ', 'Mutua', '0728316525'),
(133, 'PF-001-00133', 'PA/00133', 'Rodah', 'Osoti', '0712507997'),
(134, 'PF-001-00134', 'PA/00134', 'Ufanisi Shinners', 'Self Help Group ', '     '),
(135, 'PF-001-00135', 'PA/00135', 'Shadrack', 'Muthami ', '0728708750'),
(136, 'PF-001-00136', 'PA/00136', 'Patrick ', 'Malei', '0728938067'),
(137, 'PF-001-00137', 'PA/00137', 'Benjamin', 'Kikuto', '0712395474'),
(138, 'PF-001-00138', 'PA/00138', 'Renson', 'Mwalozi ', '0722449950'),
(139, 'PF-001-00139', 'PA/00139', 'Kennedy ', 'Kimani', '0721435021'),
(140, 'PF-001-00140', 'PA/00140', 'Seth ', 'Aloo ', '     '),
(141, 'PF-001-00141', 'PA/00141', 'Hannah', 'Wangui', '0712275766'),
(142, 'PF-001-00142', 'PA/00142', 'Lucy ', 'Karithi ', '0751597039'),
(143, 'PF-001-00143', 'PA/00143', 'Jumah', 'Musa ', '0724823431'),
(144, 'PF-001-00144', 'PA/00144', 'Julius', 'Ngure', '     '),
(145, 'PF-001-00145', 'PA/00145', 'Peninah ', 'Wangeci ', '0710710125'),
(146, 'PF-001-00146', 'PA/00146', 'Edice', 'Chege', '0729744103'),
(147, 'PF-001-00147', 'PA/00147', 'Jane ', 'wangeci ', '0752840624'),
(148, 'PF-001-00148', 'PA/00148', 'Stephen ', 'Kabiru', '0722551808'),
(149, 'PF-001-00149', 'PA/00149', 'Roderick', 'Matheka ', '0720388137'),
(150, 'PF-001-00150', 'PA/00150', 'Johnathan', 'Kikuto', '0716691937'),
(151, 'PF-001-00151', 'PA/00151', 'Jimmy', 'Oonyu', '0723753424'),
(152, 'PF-001-00152', 'PA/00152', 'Nancy', 'Omariba ', '     '),
(153, 'PF-001-00153', 'PA/00153', 'Judy ', 'Ngigi', '0729231516'),
(154, 'PF-001-00154', 'PA/00154', 'James', 'Etyang', '0722828287'),
(155, 'PF-001-00155', 'PA/00155', 'Alpha', 'Mr   ', '     '),
(156, 'PF-001-00156', 'PA/00156', 'Annastacia', 'Nzioki', '0710112891'),
(157, 'PF-001-00157', 'PA/00157', 'Nancy', 'Maina', '0720622181'),
(158, 'PF-001-00158', 'PA/00158', 'Daniel', 'Rwamba', '0724416345'),
(159, 'PF-001-00159', 'PA/00159', 'Pauline ', 'Ndichu', '0725720999'),
(160, 'PF-001-00160', 'PA/00160', 'Sarah', 'Auma ', '0720523569'),
(161, 'PF-001-00161', 'PA/00161', 'Esther', 'Mmbaya', '0717109107'),
(162, 'PF-001-00162', 'PA/00162', 'Rosemary', 'Wanjiru ', '0722355083'),
(163, 'PF-001-00163', 'PA/00163', 'Samuel', 'Kinuthia', '0724419377'),
(164, 'PF-001-00164', 'PA/00164', 'Kenneth ', 'Gichane ', '0720846452'),
(165, 'PF-001-00165', 'PA/00165', 'Michael ', 'Kiplagat', '0721676026'),
(166, 'PF-001-00166', 'PA/00166', 'Nehemiah', 'Njoroge ', '0723238322'),
(167, 'PF-001-00167', 'PA/00167', 'Samuel', 'Otieno', '     '),
(168, 'PF-001-00168', 'PA/00168', 'Wilson', 'Maina', '0735400054'),
(169, 'PF-001-00169', 'PA/00169', 'Robert', 'Njau ', '0724474170'),
(170, 'PF-001-00170', 'PA/00170', 'Hindu', 'Fatuma', '0712713930'),
(171, 'PF-001-00171', 'PA/00171', 'Christopher     ', 'Mwangi', '0702019459'),
(172, 'PF-001-00172', 'PA/00172', 'James', 'Muipa', '0710494667'),
(173, 'PF-001-00173', 'PA/00173', 'Bethuel ', 'Ogutu', '0720004039'),
(174, 'PF-001-00174', 'PA/00174', 'Moses', 'Odhiambo', '0711489476'),
(175, 'PF-001-00175', 'PA/00175', 'Edwin', 'Okomba', '0726830802'),
(176, 'PF-001-00176', 'PA/00176', 'Shem ', 'Angukwa ', '0725883371'),
(177, 'PF-001-00177', 'PA/00177', 'Fredrick', 'Wambua', '0726893847'),
(178, 'PF-001-00178', 'PA/00178', 'John ', 'Gitonga ', '0724744936'),
(179, 'PF-001-00179', 'PA/00179', 'Peter', 'Oswere', '0713180648'),
(180, 'PF-001-00180', 'PA/00180', 'James', 'Gichohi ', '0724768761'),
(181, 'PF-001-00181', 'PA/00181', 'Daniel', 'Chege', '0721774144'),
(182, 'PF-001-00182', 'PA/00182', 'Irene', 'Murigi', '0725357287'),
(183, 'PF-001-00183', 'PA/00183', 'Eunice', 'Matheka ', '0710348075'),
(184, 'PF-001-00184', 'PA/00184', 'Grace', 'Mungai', '0720910858'),
(185, 'PF-001-00185', 'PA/00185', 'Catherine', 'Kiarie', '0721311280'),
(186, 'PF-001-00186', 'PA/00186', 'Mary ', 'Muchugia', '0713383718'),
(187, 'PF-001-00187', 'PA/00187', 'Antony', 'Ndegwa', '0712333652'),
(188, 'PF-001-00188', 'PA/00188', 'Evance', 'Rajula', '0720916308'),
(189, 'PF-001-00189', 'PA/00189', 'Angela', 'Mulyunga', '0725005798'),
(190, 'PF-001-00190', 'PA/00190', 'Beth ', 'Nyambura', '0714263985'),
(191, 'PF-001-00191', 'PA/00191', 'Faith', 'Kinuthia', '0729225687'),
(192, 'PF-001-00192', 'PA/00192', 'Catherine', 'Nyagaya ', '0727254143'),
(193, 'PF-001-00193', 'PA/00193', 'Zainab', 'Mohammed', '0725869827'),
(194, 'PF-001-00194', 'PA/00194', 'Charles ', 'Mukuha', '0727482033'),
(195, 'PF-001-00195', 'PA/00195', 'Grace', 'Kamau', '0714352401'),
(196, 'PF-001-00196', 'PA/00196', 'Ruth ', 'Otieno', '0718869879'),
(197, 'PF-001-00197', 'PA/00197', 'Josephine', 'Mworia', '0721797962'),
(198, 'PF-001-00198', 'PA/00198', 'Vincent ', 'Awino', '0772228922'),
(199, 'PF-001-00199', 'PA/00199', 'Florence', 'Mukaru', '0714111458'),
(200, 'PF-001-00200', 'PA/00200', 'Pauline ', 'Muruguru', '0725570676'),
(201, 'PF-001-00500', 'PF-001', 'Tom', 'Kimani', '0729472421');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `isArchived` tinyint(1) NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupId`, `description`, `groupName`, `isArchived`) VALUES
(1, 'Officers collecting Savings and Deposit data from the field', 'fieldofficer', 0),
(2, 'User with the Right to manage the Admin section', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE IF NOT EXISTS `terminal` (
  `terminalId` int(11) NOT NULL AUTO_INCREMENT,
  `imeiCode` varchar(255) DEFAULT NULL,
  `terminalName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`terminalId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `terminal`
--

INSERT INTO `terminal` (`terminalId`, `imeiCode`, `terminalName`) VALUES
(1, '2536-89567-56', 'Huawei-IDEOS'),
(2, '2536-89567-7020', 'Huawei-IDEOS'),
(3, '2536-89567-56432423', 'Browser-test'),
(4, '9DAC7E3E-B7E4-42ED-B6B0-116193220DF1', 'browser'),
(8, '947951AF-122F-4D30-8DD9-2D5142A83FA8', 'browser'),
(10, '03F28966-AE6B-4DF5-913E-6DE097070C01', 'browser');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_amount` int(11) NOT NULL,
  `transaction_code` varchar(255) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_time` time DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `terminalId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `FK_send6w4r4ki8r2ld9cxhpj2ww` (`customerId`),
  KEY `FK_oqtli5sk4tt5pvejfaarh5dj7` (`terminalId`),
  KEY `FK_5rhain2quupx7wxm91lug2sls` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_amount`, `transaction_code`, `transaction_date`, `transaction_time`, `transaction_type`, `customerId`, `terminalId`, `userId`) VALUES
(1, 500, 'FN3076271', '2013-12-01', '14:25:09', 'Deposit', 201, 1, 2),
(2, 500, 'YO6DC9F46', '2013-12-01', '12:18:06', 'Deposit', 201, 1, 2),
(3, 2000, 'REFFFA11D', '2013-12-01', '12:26:53', 'Deposit', 201, 1, 2),
(4, 3000, 'RW38FD738', '2013-12-02', '12:28:09', 'Deposit', 201, 1, 2),
(5, 500, 'WQF49FA39', '2013-12-01', '12:35:31', 'Deposit', 201, 1, 2),
(6, 2000, 'AN3DCF701', '2013-12-02', '12:39:25', 'Deposit', 201, 1, 2),
(7, 200, 'QOB6A9ECA', '2013-12-01', '12:41:54', 'Deposit', 1, 1, 2),
(8, 300, 'LCAB7601E', '2013-12-02', '12:43:06', 'Deposit', 201, 1, 2),
(9, 500, 'VL0699B16', '2013-12-02', '12:49:32', 'Deposit', 201, 1, 2),
(10, 30000, 'VNBCE6E5F', '2013-12-01', '12:57:58', 'Deposit', 201, 1, 2),
(11, 3000, 'YW9DE51BC', '2013-12-02', '13:14:02', 'Deposit', 201, 1, 2),
(12, 3000, 'EP3A2CF1A', '2013-12-01', '13:32:49', 'Deposit', 201, 1, 2),
(13, 500, 'JGD72FA12', '2013-12-02', '15:21:07', 'Deposit', 201, 1, 2),
(14, 300, 'QG8A62291', '2013-12-01', '15:21:31', 'Deposit', 201, 1, 2),
(15, 1000, 'OD547B606', '2013-12-02', '17:50:52', 'Deposit', 201, 1, 2),
(16, 4000, 'OB09DBA9B', '2013-12-02', '18:46:23', 'Deposit', 201, 1, 3),
(17, 500, 'DLF4913EF', '2013-12-02', '19:04:45', 'Deposit', 201, 1, 2),
(18, 3000, 'QOF5D4A79', '2013-12-02', '20:43:45', 'Deposit', 201, 1, 3),
(19, 500, 'WVAFC34FF', '2013-12-02', '20:46:31', 'Deposit', 201, 1, 2),
(20, 10, 'XWCC919F8', '2013-12-03', '11:56:50', 'Mini-Statement', 201, 1, 2),
(21, 10, 'MI9555A32', '2013-12-03', '12:33:33', 'Mini-Statement', 201, 1, 2),
(22, 10, 'EP441638D', '2013-12-03', '13:35:08', 'Mini-Statement', 201, 1, 2),
(23, 10, 'RA09CA959', '2013-12-03', '13:41:25', 'Mini-Statement', 201, 1, 2),
(24, 300, 'TR9F95065', '2013-12-03', '14:20:42', 'Deposit', 201, 1, 2),
(25, 3000, 'JX4320156', '2013-12-03', '14:29:30', 'Deposit', 1, 1, 2),
(26, 5000, 'AXD8F3B06', '2013-12-03', '14:32:44', 'Deposit', 1, 1, 2),
(27, 10, 'VZA3B81EF', '2013-12-03', '14:34:00', 'Mini-Statement', 1, 1, 2),
(28, 4000, 'IRBB6EDC3', '2013-12-03', '14:38:36', 'Deposit', 1, 1, 3),
(29, 400, 'JV6620354', '2013-12-13', '12:27:40', 'Deposit', 1, 1, 2),
(30, 3000, 'QA8E2A6A3', '2013-12-18', '11:47:11', 'Deposit', 197, 10, 1),
(31, 500, 'IQD9A7830', '2013-12-18', '11:49:59', 'Deposit', 201, 10, 3),
(32, 40000, 'ITBF9ABA0', '2013-12-18', '11:56:37', 'Deposit', 1, 10, 3),
(33, 40000, 'ATCD76E34', '2013-12-18', '11:57:57', 'Deposit', 1, 10, 3),
(34, 40000, 'LI9444FE8', '2013-12-18', '11:58:17', 'Deposit', 1, 10, 3),
(35, 40000, 'UK1EEDFA9', '2013-12-18', '12:00:14', 'Deposit', 1, 10, 3),
(36, 40000, 'XBC4FDD34', '2013-12-18', '12:03:20', 'Deposit', 1, 10, 3),
(37, 3000, 'OT6A35D62', '2013-12-18', '12:42:20', 'Deposit', 201, 10, 2),
(38, 3000, 'SY3E30D61', '2013-12-18', '12:45:27', 'Deposit', 201, 10, 2),
(39, 600, 'JKAE33CD0', '2013-12-18', '13:03:13', 'Deposit', 201, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `isArchived` tinyint(1) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `email`, `firstName`, `isArchived`, `lastName`, `password`, `userName`) VALUES
(1, 'tosh0948@gmail.com', 'Tom', 0, 'Kimani', 'gitaru09', 'TomKim'),
(2, 'mworia@empire.co.ke', 'James', 0, 'Mworia', 'mworia', 'james'),
(3, 'mworia@empire.co.ke', 'David', 0, 'Mworia', 'mworia', 'david'),
(4, 'joan@empire.com', 'Joan', 0, 'Wairimu', 'pass', 'joan'),
(5, 'mwaniki@empire.co.ke', 'Jonathan', 0, 'Mwaniki', 'pass', 'mwaniki'),
(6, 'paul@empire.co.ke', 'Paul', 0, 'Njoroge', 'pass', 'paul'),
(7, 'simon', 'Simon', 0, 'Njoroge', 'pass', 'samuel');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  KEY `FK_kh74unh9mo8feobohtjmpwanc` (`userId`),
  KEY `FK_57trlt930ayrk3p71993hx1hv` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`groupId`, `userId`) VALUES
(1, 1),
(2, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocation`
--
ALTER TABLE `allocation`
  ADD CONSTRAINT `FK_8letdexs0qatf3kes6v3jtjsq` FOREIGN KEY (`terminalId`) REFERENCES `terminal` (`terminalId`),
  ADD CONSTRAINT `FK_an4yqvp3od4p5ncoqwjk46yg1` FOREIGN KEY (`allocatedBy`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `FK_cvehw6eg0qvet7cd058636g98` FOREIGN KEY (`deallocatedBy`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `FK_su0hp8166whv32akwy02me7i` FOREIGN KEY (`allocatedTo`) REFERENCES `user` (`userId`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK_5rhain2quupx7wxm91lug2sls` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `FK_oqtli5sk4tt5pvejfaarh5dj7` FOREIGN KEY (`terminalId`) REFERENCES `terminal` (`terminalId`),
  ADD CONSTRAINT `FK_send6w4r4ki8r2ld9cxhpj2ww` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Constraints for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD CONSTRAINT `FK_57trlt930ayrk3p71993hx1hv` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`),
  ADD CONSTRAINT `FK_kh74unh9mo8feobohtjmpwanc` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);
