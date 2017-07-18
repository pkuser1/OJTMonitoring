-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 07:58 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojtmonitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `ad_id` int(11) NOT NULL,
  `title` enum('Mr.','Ms.','Mrs.','Dr.','') NOT NULL,
  `adviser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advisers`
--

INSERT INTO `advisers` (`ad_id`, `title`, `adviser`) VALUES
(1, '', 'No Adviser'),
(2, 'Ms.', 'Maria Concepcion Clemente'),
(3, 'Mr.', 'Carlos Ben Montes'),
(4, 'Mr.', 'Lambert Famorca'),
(5, 'Mr.', 'Randy Domantay'),
(6, 'Mr.', 'Roderick Makil'),
(7, 'Mrs.', 'Beverly Ferrer'),
(8, 'Ms.', 'Ria Andrea Nana'),
(9, 'Mr.', 'Dalos Miguel'),
(10, 'Mr.', 'Laurence Balmeo'),
(11, 'Mr.', 'Ronald Ali Mangaliag'),
(12, 'Mr.', 'Benedict Bacani'),
(15, 'Mr.', 'fgfg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `coid` int(11) NOT NULL,
  `coname` varchar(100) NOT NULL,
  `coaddress` varchar(300) NOT NULL,
  `company_head` varchar(60) NOT NULL,
  `position` varchar(60) NOT NULL,
  `contact_person` varchar(60) DEFAULT NULL,
  `cp_position` varchar(60) DEFAULT NULL,
  `typeofcompany` varchar(45) NOT NULL DEFAULT 'Private',
  `release_moa` varchar(20) DEFAULT NULL,
  `receive_moa` varchar(20) DEFAULT NULL,
  `remark_moa` varchar(300) DEFAULT NULL,
  `moa` varchar(45) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`coid`, `coname`, `coaddress`, `company_head`, `position`, `contact_person`, `cp_position`, `typeofcompany`, `release_moa`, `receive_moa`, `remark_moa`, `moa`) VALUES
(1, 'No Company', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A', '', '', '', 'no'),
(2, 'DocPro Business Solutions, Inc.', 'Mezzanine Floor, CYA Centrum Bldg., Military Cut-Off, Kennon Road, Baguio City, 2600 Benguet', 'Rudy Baltazar Clemente Jr.', 'Owner ', 'Jonas Lacangan Escobar', 'IT Developer', 'Private', '2017-06-16', '2017-06-30', '', 'no'),
(3, 'Linkage', 'Quezon Hill, Road 1, Calle Uno, Baguio City, 2600 Benguet', 'Cristina Chua', 'Human Resource  Manager', 'Tristan Marvin Leybag', 'Senior Developer', 'Private', '2017-07-07', '', 'Sent via Email. With Changes.', 'no'),
(4, 'NOKIA Manila Technology Center', 'Building 1 UP Ayala Land TechnoHub, Commonwealth Avenue Barangay UP Campus, Diliman, 1101 Quezon City', 'Joanne Faye S. Caparas', 'Recruitment & University Relations Specialist', 'Joanne Faye S. Caparas', 'Recruitment & University Relations Specialist', 'Private', NULL, NULL, NULL, 'no'),
(5, 'Philippine Military Academy', 'Fort Del Pilar, Loakan Road, Baguio, 2600 Benguet', 'Maria Monica C. Costales, PhD', 'Supervising Admin Officer (HRMO) Chief', 'Efren Tabtab', 'Information Systems Analyst', 'Government', '2017-06-17', '', '', 'yes'),
(6, 'ITCert Training Solutions', 'G/F SAJJ Building, Rimando Road, Baguio City, 2600 Benguet', 'Lou Philip Beltran', 'CEO', 'Fhovie de La Cruz', 'Executive Assistant', 'Private', '2017-06-16', '2017-06-17', ' Process done. Signed by both parties. June 21,2017', 'yes'),
(7, 'Noble Trends Unbound Inc.', 'The Norwegian Collection Inc Bldg, Baguio Economic Zone, Loakan Rd, Baguio City, 2600 Benguet', 'Rafael R. Orpilla', 'President & CEO', 'Minerva Moran', 'IT Department Manager', 'Private', '2017-06-16', '2017-06-23', ' Process done. Signed by both parties June 21,2017.', 'yes'),
(8, 'MOOG Control Corporation', ' Baguio Economic Zone, Loakan Road, Baguio City, 2600 Benguet', 'Francisca Moredo', 'Human Resource Manager', 'Ryah Claudette Sarile', 'Human Resource Staffing Officer', 'Private', '2017-06-17', '', '', 'no'),
(9, 'Chungdahm International', 'RSVP Building, 4 First Road, Quezon Hill, Baguio City, 2600 Benguet', 'Benigno Rosalino D. Cariaga', 'Operations Manager & Network Administrator', 'Jukailah Aryl Marcel', 'IT Staff', 'Private', '2017-06-16', '2017-06-21', ' Process done. Both signed by the parties June 21,2017.', 'yes'),
(10, 'Benguet Provincial Capitol', 'Halsema Highway, La Trinidad, 2601 Benguet', 'Gov. Cresencio C. Pacalso', 'Provincial Governor', 'Jenny Rose Borja', 'Information Systems Analyst III', 'Government', '2017-06-16', '', '', 'no'),
(11, 'Coca - Cola FEMSA Bottlers Philippines Inc.', 'Bued, Urdaneta - Calasiao Road, Calasiao, 2418 Pangasinan', 'Susano Silungan', 'Region Manager', 'Michael D. Fabroa', 'Human Resource Executive', 'Private', '', '', '', 'yes'),
(12, 'Sitel', 'Standard Factory Building 2, Baguio Economic Zone, Loakan Road, Baguio City, 2600 Benguet', 'Craig Reines', 'Chief Operator of Operations', ' Cherry Amor Escobio', 'Regional IT Manager', 'Private', '2017-08-10', '', '', 'no'),
(13, 'Pru Life UK', '3rd Floor DBP Building, Lower Session Road, Baguio City, 2600 Benguet', 'Olivia Nicia Estera Coloma', 'Area Manager', 'Bernadette Pangket Te-em', 'Assistant Unit Manager', 'Private', '2017-08-10', '2017-08-10', NULL, 'no'),
(14, 'Baguio City Hall', 'Baguio City Hall, City Hall Drive, Baguio City, 2600 Benguet', 'Hon. Mauricio Domogan', 'City Mayor', 'Mario Diaz', 'MITD Head', 'Government', '2017-06-16', '', '', 'no'),
(15, 'Utalk Tutorial Services', '#11 First Road, Quezon Hill, Baguio City, 2600 Benguet', 'Wangshu Li', 'General Manager', 'Don Benary Lagadan', 'Software Applications Developement Manager', 'Private', '2017-06-17', '2017-06-23', 'Process done. Signed by both parties.', 'yes'),
(16, 'Baguio City Hall - Office of the City Councilor', 'Baguio City Hall, City Hall Drive, Baguio City, 2600 Benguet', 'Leandro B. Yangot Jr.', 'City Councilor', 'Marvin Binay-an', 'Local Legislative Staff Assistant', 'Government', '2017-06-16', '2017-06-22', 'Signed by SLU. ', 'yes'),
(17, 'Labrador Munincipal Hall - Accounting Office', 'Labrador Municipal Hall, Poblacion, Labrador, 2402 Pangasinan', 'Hon. Dominador V. Arenas', 'Municipal Mayor', 'Fern Ann S. Zambrano', 'Municipal Accountant', 'Government', '2017-06-16', '', 'Sent via Email.', 'no'),
(18, 'Philippine Statistics Authority - CAR', '141 Abanao Extension, Baguio City, 2600 Benguet', 'Villafe P. Alibuyog', 'Regional Director', 'Aldrin Federico Bahit Jr.', 'OIC-Chief', 'Government', NULL, '2017-07-08', NULL, 'no'),
(19, 'Metphil Medical Company', '3F Insular Life Building, Abanao Extension, Baguio City, 2600 Benguet', 'Jocelyn G. Punsalang', 'Corporate Secretary', 'Ivy Gayon', 'Human Resource Manager', 'Private', '2017-06-16', '2017-06-20', 'Both signed by the parties June 21,2017. Process Done as of June 22, 2017', 'yes'),
(21, 'Department of Interior and Local Government - CAR', 'Upper Session Road, 125 Corner North Drive, Baguio City, 2600 Benguet', 'Engr. Marlo L. Iringan', 'Regional Director', 'Zaldy B. Papat-Iw', 'Regional Information Technology Officer ', 'Government', '2017-06-21', '2017-06-22', ' Process done. Signed by both parties.', 'yes'),
(22, 'ITech PFS Technology Inc.', ' Unit 3-D West Burnham Place, Kisad Road, Baguio, 2600 Benguet', 'Sharon Dalang', 'Branch Manager', 'Terence Libatique', 'Team Leader', 'Private', '2017-06-16', '2017-06-30', ' Process done. Signed by both parties. For pickup.', 'yes'),
(23, 'Department of Agrarian Reform - CAR', '#39 M. Roxas Street, Barangay Tabora, Baguio City, 2600 Benguet', 'Atty. Marjorie P. Ayson', 'Regional Director', 'Virginia D. Aycud', 'Regional Director', 'Government', '2017-06-17', '', '', 'no'),
(24, 'Department of Education - Baguio City Division', '#82 Military Cut-Off, Baguio City, 2600 Benguet', 'Josef Eric Oliveros', 'Computer Operator II', 'Harris Dizon', 'IT Officer 1', 'Government', '2017-06-15', '2017-06-24', ' Process done. Signed by both parties June 21,2017.', 'yes'),
(25, 'Gottes Segen Language Tutorial Center', 'Rm. A4, Juniper Building, Bonifacio Street, Baguio City, 2600 Benguet', 'Alpha Mae Pacio', 'School Director', 'Henry Balusdan Jr.', 'School Secretary', 'Private', '2017-06-22', '2017-06-23', 'Process done. Signed by both parties. For pickup.', 'yes'),
(26, 'GMS Technology', 'Room 303, Lopez Building, La Brea Inn, Lower Session Road, Camp John Hay, Baguio, 2600 Benguet', 'Arch. Gueliro M. Sugano', 'Director', 'Marilou T. Awingan', 'Registrar', 'Private', '2017-06-29', '', '', 'no'),
(27, 'Saint Louis University - SCIS Dean\'s Office', '3rd Floor Diego Silang Building, Saint Louis University, Bonifacio Street, Baguio City, 2600 Benguet', 'Dr. Cecilia A. Mercado', 'School Dean', 'Dr. Cecilia A. Mercado', 'School Dean', 'Private', '', '', 'Done.', 'yes'),
(28, 'Philippine Health Insurance Corporation', '#19, SN Oriental Building, Leonard Wood Rd, Baguio, 2600 Benguet', 'Atty. Jerry F. Ibay', 'Regional Vice President', 'Vincent T. Abellanosa', 'IT Officer II', 'Government', '', '', '', 'no'),
(29, 'Philippine Scandinavian IT Services Inc.', 'The Penthouse, 5/F G.A.Yupangco Bldg., 339 Sen. Gil J. Puyat Ave. cor. N. Garcia St., Belair, 1209 Makati City ', 'Rachel Christensen', 'Director', 'John David De La Cruz', 'Business Development Manager', 'Private', '2017-06-17', '2017-06-29', 'Sent via Email.', 'no'),
(30, 'Baguio-Benguet Community Credit Cooperative', '#56 Cooperative Street, Assumption Road, Baguio City, 2600 Benguet', 'Mary Ann B. Bungag', 'Manager', 'Henvi Francis A. Salon', 'Staff', 'Private', '2017-06-16', '2017-06-22', ' Process done. Signed by both parties July 7, 2017.', 'yes'),
(31, 'Post Ad Ventures Inc.', '599 Pina Ave, Sampaloc, Manila, 1016 Metro Manila', 'John Mateos Ong', 'Productions Director', 'Flor Hardin', 'Database Manager', 'Private', '2017-06-17', '', 'Sent via Email.', 'no'),
(32, 'Syner G Outsourcing Inc.', '#2 Lower Ground Floor, Roman Ayson Road, Cresencia Village, Baguio City, 2600 Benguet', 'Ma. Theresa Yasay', 'President', 'Joseph Alsisto', 'Human Resource', 'Private', '2017-06-16', '2017-07-05', 'Process done. Signed by both parties.', 'yes'),
(33, 'Incubix Technologies Inc. ', '28/F WideOut Office, Pacific Star Building, Makati Avenue cor. Gil Puyat Avenue Makati City, 1227 Metro Manila', 'John San Pedro', 'CEO', 'Carmela Baronda', 'Human Resource Manager', 'Private', '2017-06-16', '2017-07-01', 'Sent via Email. Received July 1, 2017. ', 'no'),
(34, 'Pru Life UK - Magnetite 2 Branch', '3/F DBP Building, Lower Session Road, Baguio City, 2600 Benguet', 'Myrna Lazo Solimen', 'Branch Manager', 'Chairmaine O. Majan', 'Branch Secretary', 'Private', '2017-06-29', '2017-07-05', NULL, 'no'),
(36, 'Department of Environment and Natural Resources - CAR', 'DENR Compound, Gibraltar, Baguio City, 2600 Benguet', 'Engr. Ralph C. Pablo', 'Regional Director', 'Engr. Ralph C. Pablo', 'Regional Director', 'Government', NULL, NULL, NULL, 'no'),
(37, 'Convergys', 'Building A, Baguio-AyalaLand TechnoHub, John Hay Special Tourism Economic Zone, Loakan Road, Baguio City, 2600 Benguet', 'Ma. Faye Castillo', 'Recruitment Manager', 'Levi Ortiguero', 'Human Resource Coordinator', 'Private', '2017-06-20', '2017-06-21', ' Process done. Signed by both parties.', 'yes'),
(38, 'Virtuosearch Inc.', '2/F Calle Uno Coworking Space, #3 Josefa Llanes Escoda St. First Road, cor. Naguilian Rd., Quezon Hill, Baguio City, 2600 Benguet', 'Melanie Racela', 'Head of Research', 'Shella Ciano', 'Trainer', 'Private', '2017-06-22', '2017-06-30', '', 'no'),
(39, 'Alta Philippines IT Solutions and Web Page Design Inc.', '16F N3 Burgundy Corporate Tower, 152 Sen. Gil Puyat, Makati City', 'Edwin Cawaling Jr.', 'Human Resource  Director', 'Mark Rester Daquigan', 'Web Developer', 'Private', '2017-06-17', '2017-06-24', ' Process done. Signed by both parties July 1, 2017.', 'yes'),
(40, '8Layer Technologies, Inc.', ' Unit 503, Seven East Capitol Building, East Capitol Drive cor. Sta. Rosa St., Brgy. Kapitolyo, Pasig, 1603 Metro Manila', 'Nestee Macadaeg II', 'CEO', 'Crichelle O. Calungcagon', 'Admin / Purchasing', 'Private', '2017-06-16', '', 'Sent via Email..', 'no'),
(41, 'On Semiconductor Manufacturing Philippines', 'Luisita Industrial Park, San Miguel, Tarlac City, 2301 Tarlac', 'Eleonor Gallardo', 'Human Resource Manager', 'Beth Pajaro', 'Human Resource Staff', 'Private', '2017-06-16', '2017-06-22', ' Process done. Signed by both parties June 29,2017.', 'yes'),
(42, 'Trend Micro', '8th Floor Tower 2, The Rockwell Business Center, 1600, Ortigas Avenue, Pasig City, Metro Manila', 'Anna Rizelle O. Cordero', 'Human Resource Director', 'Joanna Aguinaldo', 'Human Resource Recruitment Supervisor', 'Private', '2017-06-16', '', 'Sent via Email.', 'no'),
(43, 'Sutherland Global Services', 'Ground Floor Luke Foundation Building, 90 Leonard Wood Road, Corner Cabinet Hill, Baguio City, 2600 Benguet', 'Lorie Ann Damasco', 'Senior Recruitment Specialist', 'Patricia Jett Garcia', 'Sourcing Specialist', 'Private', '2017-06-17', '2017-06-30', 'Process done. Signed by both parties.', 'yes'),
(44, 'Acestar Solutions and Trading Inc.', 'Norwegian Collections Building, Loakan Rd, Greenwater Village, Baguio, 2600 Benguet', 'Rowena E. Samson', 'Operations Manager', 'Follezer G. Samson', 'Personnel and Administration Manager', 'Private', '2017-06-17', '2017-06-19', ' Process done. Signed by both parties June 21,2017.', 'yes'),
(45, 'John Hay Management Corporation - ICT Department', 'John Hay Special Economic Zone, Camp John Hay, Baguio City, 2600 Benguet', 'Allan R. Garcia', 'President & CEO', 'Danny B. Lawatan', 'Human Resource Manager', 'Government', '2017-06-24', '', '', 'no'),
(46, 'Sycip Gorres Velayo & Co. Member Firm of Ernst and Young Global', '6760 Ayala Avenue, Makati City, 1226 Metro Manila', 'Jennifer Louise C. Chua', 'Human Resource Associate', 'Fitz Gerard M. Flaga', 'IT Associate', 'Private', '2017-06-16', '', 'Sent via Email.', 'no'),
(47, 'AKTUS Global Management Inc.', 'Unit 2005B 20th Floor West Tower, Philippine Stock Exchange Center, Exchange Road, Ortigas Center, Pasig, 1604 Metro Manila', 'Prenilie T. Alvarez', 'Recruitment Head / Assistant Manager', 'Vonn Jammel D. Metran', 'Product Lead, Commercial Apps', 'Private', '2017-06-16', '', 'Sent via Email.', 'no'),
(48, 'Saint Louis University EISSIF', 'CCA Room C016, Saint Louis University, Bonifacio St., Baguio City, 2600 Benguet', 'Edmund B. Benavidez', 'Director', 'Edmund B. Benavidez', 'Director', 'Private', '', '', 'Done.', 'yes'),
(49, 'National Telecommunications Commission - CAR', 'Leonard Wood Road, Baguio City, 2600 Benguet', 'Engr. Dante M. Vengua', 'Officer-in-Charge', 'Victoria Panelo', 'Administrative Aide VI', 'Government', '2017-06-21', '2017-06-29', '', 'no'),
(50, 'Manulife', '2nd Floor, E.S. Clemente Building, Shanum Street, Corner Otek Street, Baguio, 2600 Benguet', 'Berna Gracia Dimarucot', 'AAH', 'Joey Mejia', 'Unit Head', 'Private', '2017-06-21', '', '', 'no'),
(51, 'Saint Louis University - SCIS IT/CS Department', '3rd Floor Diego Silang Building, Saint Louis University, Bonifacio St., Baguio City, 2600 Benguet', 'Ma. Concepcion Clemente', 'Department Head', 'Ma. Concepcion Clemente', 'Department Head', 'Private', '', '', 'Done.', 'yes'),
(52, 'Saint Louis University - ICTR Laboratory', '3rd Floor Diego Silang Building, Saint Louis University, Bonifacio St., Baguio City, 2600 Benguet', 'Carlos Ben Montes', 'Officer-in-Charge', 'Carlos Ben Montes', 'Officer-in-Charge', 'Private', '', '', 'Done.', 'yes'),
(53, 'Device Dynamics Asia', 'LGF The Norwegian Building PEZA, Loakan Rd, Camp John Hay, Baguio, 2600 Benguet', 'Gilbert I. Mabutas', 'General Manager', 'Shirley Joy L. Cabral', 'Human Resource - Supervisor', 'Private', '2017-06-17', '', '', 'no'),
(54, 'Accent Micro Technologies Incorporated', '8/F East Tower, Philippine Stock Exchange, Center, Exchange Road, Ortigas Center, Pasig City 1605', 'Allyxon Cua', 'CEO & President', 'Richard Cruz', 'Supervisor', 'Private', '2017-06-30', '', '', 'no'),
(55, 'Baguio Teacher\'s Camp', ' Leonard Wood Road, Baguio City, 2600 Benguet', 'Diosdado  S. Medina, Ed.D', 'Camp Superintendent', 'Mary Jane B. Contapay', 'Administrative Office V', 'Government', '2017-06-17', '2017-06-21', '', 'no'),
(58, 'Advanced World Solutions Inc.', 'Unit 3B 3/F Multinational Bancorp Center, 6805 Ayala Avenue, Makati City', 'Isabelo Boots M. Baldoz', 'Senior R&D Manager', 'Raziela A. Cabichuelas', 'Human Resource Supervisor', 'Private', '2017-06-23', '', '', 'no'),
(59, 'Cambridge University Press', '2/F, 357 Sen. Gil J. Puyat Ave, Makati, 1200 Metro Manila', 'Robert Ritchie L. Calo', 'Human Resource Business Partner', 'Mary Joy Adlawan', 'Quality Assurance Team Lead', 'Private', '2017-06-17', '', '', 'no'),
(60, 'PLDT, Inc.', '7/F IT Division PLDT Makati General Office, Legaspi cor. dela Rosa Street, Makati City, 1604 Metro Manila', 'Iluminada D. Pama', 'Division Head, IT-HOME', 'Ma. Elena M. Yumang', 'IT Center Head', 'Private', '2017-06-17', '', 'Process done. Signed by both parties June 29, 2017.', 'yes'),
(61, 'Camp John Hay Golf Club, Inc.', 'Camp John Hay, Loakan Rd, Baguio, 2600 Benguet', 'Lou Philip Beltran', 'IT Head', 'Lou Philip Beltran', 'IT Head', 'Private', '2017-06-29', NULL, NULL, 'no'),
(62, 'Zameco II', 'National Highway, Castillejos, 2208 Zambales', 'Engr. Alvin M. Farrales', 'General Manager', 'Peter Paul Dominguez', 'Network Administrator', 'Government', NULL, NULL, NULL, 'no'),
(63, 'Texas Instruments', 'PEZA Loakan Road, Baguio City, 2600 Benguet', 'Manie Mendoza', 'Recuritment Manager', 'Manie Mendoza', 'Recuritment Manager', 'Private', '', '', 'With previous MOA.', 'yes'),
(64, 'Bureau of Local Government Finance', '#75 Ferguson Road, Baguio City, 2600 Benguet', 'Ma. Florizelda A. Enriquez', 'OIC - Regional Director', 'Geraldine Degay', 'Administrative Office V', 'Government', '2017-06-17', '2017-06-22', ' Process done. Signed by both parties. ', 'yes'),
(65, 'Zoomanity Group ', '3rd Floor Yupangco Building, 339 Senator Gil Puyat Avenue, Makati, 1200 Metro Manila', 'Robert L. Yupangco', 'President & CEO', 'Karren L. Cernal', 'OIC, Advertising & PR / Digital Marketing', 'Private', '2017-06-23', '', 'Sent revised via Email.', 'no'),
(66, 'Pru Life - Magnetite 3 Branch', '3/F DBP Building, Lower Session Road, Baguio City, 2600 Benguet', 'Celia Kun', 'Branch Manager', 'Rebecca N. Diaz', 'Unit Manager', 'Private', '2017-06-22', '2017-06-30', '', 'no'),
(67, 'Rizal Commercial Banking Corporation', '10F RCBC Savings Bank Corporate Center, 26th & 25th Streets, Bonifacio Global City, Taguig City, 1634 Metro Manila', 'Tricia Marcelo', 'Recruitment Head', 'Mercedes Mendoza III', 'Project Manager', 'Private', NULL, NULL, NULL, 'no'),
(68, 'Biz-Core Marketing And Advertising', '13 San Luis Village, Diamond Subd., Baguio City, 2600 Benguet', 'Michael Baliton', 'Managing Owner', 'Gelli Mae M. Maramba', 'Marketing Executive/Graphics Designs', 'Private', '2017-06-27', '', 'Received June 30, 2017.', 'no'),
(69, 'Vivixx Corporation', '21F Calle Uno Coworking Space, First Rd. cor., Naguilian Road, Baguio City, 2600 Benguet', 'Andrea Vicla C. Estrada', 'Executive  Director', 'Berannie Balag', 'School Registrar', 'Private', '2017-06-27', '2017-07-03', '', 'no'),
(70, 'Danalex Corporation', 'Room 8, Nevada Square Building, #2 Loakan Road, Baguio City, 2600 Benguet', 'Isidro Baquilar', 'CEO', 'Rodel Ballungay', 'Art Director', 'Private', NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `idnum` int(11) NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(35) CHARACTER SET latin1 NOT NULL,
  `courseyear` varchar(10) CHARACTER SET latin1 NOT NULL,
  `mobile_number` varchar(18) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `coid` int(11) DEFAULT '1',
  `release_endorsement` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `receive_endorsement` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `remark_endorsement` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `endorsement` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `release_waiver` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `receive_waiver` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `remark_waiver` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `waiver` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `release_evaluation` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `receive_evaluation` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `remark_evaluation` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `evaluation` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `status` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'Incomplete',
  `ad_id` int(11) NOT NULL,
  `classcode` int(11) DEFAULT NULL,
  `vis_status` varchar(3) NOT NULL DEFAULT 'no',
  `remark_visit` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`idnum`, `last_name`, `first_name`, `courseyear`, `mobile_number`, `email`, `coid`, `release_endorsement`, `receive_endorsement`, `remark_endorsement`, `endorsement`, `release_waiver`, `receive_waiver`, `remark_waiver`, `waiver`, `release_evaluation`, `receive_evaluation`, `remark_evaluation`, `evaluation`, `status`, `ad_id`, `classcode`, `vis_status`, `remark_visit`) VALUES
(993234, 'Ocampo', 'Macario', 'BSCS 4', '000-000-0000', '993234@slu.edu.ph', 27, '', '', '', 'yes', '', '', '', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2107368, 'ObeÃ±a', 'Jason', 'BSIT 4', '939-010-5758', 'obenajason@gmail.com', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9316, 'no', ''),
(2108867, 'Afsarikashi', 'Mehdi', 'BSIT 4', '906-265-8383', 'ix56@yahoo.com', 24, 'June 05 2017', 'June 08 2017', 'With reply of YES', 'yes', '', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9316, 'no', ''),
(2115153, 'Criste', 'Princess Marie Rose', 'BSIT 4', '915-676-4014', 'cescriste@gmail.com', 37, 'June 16 2017', 'June 17 2017', 'With reply of YES.', 'yes', 'June 17 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 5, 9319, 'no', ''),
(2117919, 'Belocura', 'Lairde Vincent', 'BSIT 4', '935-314-6797', 'lairde29@gmail.com', 49, 'June 07 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 4, 9320, 'no', ''),
(2120329, 'Rull', 'Alexandria', 'BSIT 4', '977-257-0566', 'ahlexrull@gmail.com', 68, 'June 23 2017', 'June 24 2017', 'With reply of YES.', 'yes', 'June 24 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 11, 9319, 'no', ''),
(2121920, 'Espiritu', 'Christopher Edrian L.', 'BSIT 3', '975-008-1447', '2121920@slu.edu.ph', 5, 'May 30 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2122776, 'Galletes', 'Jon Diel', 'BSIT 4', '917-678-3456', 'jongalletes18@gmail.com', 70, 'June 24 2017', '', '', 'no', 'June 24 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 5, 9318, 'no', ''),
(2122831, 'Salazar', 'Jean Michael', 'BSIT 4', '977-086-2591', 'jmsalazar0111@gmail.com', 49, 'June 15 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', 'June 20 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9318, 'no', ''),
(2123700, 'Oydoc', 'Raya Marie', 'BSIT 4', '946-520-1245', 'rayaoydoc@gmail.com', 24, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 4, 9318, 'no', ''),
(2123961, 'Aberin', 'Alvin Jan R.', 'BSCS 4', '915-130-3051', 'alvinaberin@gmail.com', 43, 'June 07 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'yes', ' fhfghfghfg'),
(2124586, 'Apostol', 'Shirlene Joy G.', 'BSIT 4', '956-559-6293', 'shirleneapostol008@gmail.com', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9319, 'no', ''),
(2125185, 'Orian', 'John Kevin', 'BSIT 4', '999-901-4045', 'kevin.orian@yahoo.com', 24, 'June 07 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 15 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 4, 9320, 'no', ''),
(2125241, 'Ishii', 'Satoyoshi', 'BSIT 4', '920-711-6402', 'ishiisatoyoshi@gmail.com', 38, 'June 07 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9320, 'no', ''),
(2126126, 'Barbuco', 'Christian Aris T.', 'BSIT 3', '906-262-0907', 'ArisBarbuco@gmail.com', 38, 'June 07 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9320, 'no', ''),
(2127538, 'Rai', 'Michael Angelo', 'BSIT 4', '926-082-7646', 'michaelangelorai@gmail.com', 68, 'June 23 2017', 'June 24 2017', 'With reply of YES.', 'yes', 'June 24 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 11, 9320, 'no', ''),
(2130240, 'Tomines', 'Steven Michael', 'BSIT 3', '977-303-8070', 'tomines.steven@gmail.com', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 08 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9317, 'no', ''),
(2130906, 'Marquez', 'Jorge Clarence', 'BSCS 4', '930-178-1349', 'jorgeclarence007@gmail.com', 43, 'June 07 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2131506, 'Julhusin', 'Jomari', 'BSIT 3', '936-588-6378', 'jomari-hunter1200@yahoo.com', 32, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9316, 'no', ''),
(2132368, 'Opiniano', 'Kieth Christian R.', 'BSIT 4', '998-997-1496', 'kiethopiniano21@gmail.com', 36, 'June 07 2017', '', NULL, 'no', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2132852, 'Nuezca', 'Jorge Kenneth', 'BSIT 4', '000-000-0000', 'nuezcajorge@gmail.com', 18, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9318, 'no', ''),
(2133154, 'Mariano', 'Clark', 'BSCS 4', '917-932-2197', '2133154@slu.edu.ph', 55, 'May 26 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2133376, 'De Guzman', 'Jay Esmane', 'BSIT 4', '905-142-5944', 'jayyydeguzman@gmail.com', 53, 'June 06 2017', 'June 13 2017', 'With reply of YES', 'yes', 'June 13 2017', 'June 14 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 4, 9320, 'no', ''),
(2133513, 'Cayago', 'Zam', 'BSCS 4', '916-779-1813', 'zcayago@gmail.com', 43, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2133901, 'Ragandap', 'Jan Michael', 'BSIT 4', '933-471-1330', 'janxmichael1608@gmail.com', 53, 'June 06 2017', 'June 13 2017', 'With reply of YES', 'yes', 'June 13 2017', 'June 14 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 4, 9320, 'no', ''),
(2133981, 'Soledad', 'Genie', 'BSIT 4', '997-294-9283', 'geniesoledad112295@gmail.com', 53, 'June 06 2017', 'June 13 2017', 'With reply of YES', 'yes', 'June 13 2017', 'June 14 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2135009, 'Bacwaden', 'Rryhana Shaye G.', 'BSIT 4', '910-787-1958', 'rrhybacwaden@gmail.com', 45, 'June 07 2017', '', '', 'no', 'June 24 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 9320, 'yes', ' '),
(2135211, 'Sam', 'Paul Christian C.', 'BSIT 3', '905-144-0423', 'paulchristiansam@gmail.com', 37, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9318, 'no', ''),
(2135293, 'Manzano', 'Jayson Garcia', 'BSIT 4', '917-417-8392', 'jmanzano0896@gmail.com', 44, 'June 13 2017', '', 'With reply of YES', 'yes', 'June 13 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 1, 9320, 'no', ''),
(2136158, 'Bernal', 'Richard Den', 'BSIT 4', '977-176-5997', 'bernal.chad@gmail.com', 64, 'June 15 2017', 'June 19 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 5, 9320, 'no', ''),
(2136469, 'Pelwigan', 'Darryl', 'BSIT 4', '907-088-0610', 'pdarrylgalyong@gmail.com', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 08 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9318, 'no', ''),
(2136625, 'Paredes', 'Diodatus', 'BSIT 4', '906-504-2640', 'thunderblaze2010@gmail.com', 26, 'June 03 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 10, 9320, 'no', ''),
(2136933, 'Bumidang', 'Luke', 'BSIT 4', '935-718-6906', 'jbacosta749@gmail.com', 44, 'June 07 2017', '', 'With reply of YES', 'yes', 'June 13 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 1, 9320, 'no', ''),
(2140097, 'Santos', 'Christopher', 'BSIT 3', '917-926-2670', '2140097@slu.edu.ph', 10, 'June 10 2017', 'June 10 2017', 'With reply of YES', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 9, 9320, 'no', ''),
(2140178, 'Medina', 'Isaac Emmanuel', 'BSCS 4', '000-000-0000', '2140178@slu.edu.ph', 4, 'May 25 2017', '', 'Online', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2140198, 'Cachero', 'Jean Louis', 'BSIT 4', '995-276-4399', 'jeanlouis1151@gmail.com', 52, 'June 08 2017', '', '', 'yes', 'June 08 2017', '', '', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2140366, 'Dagang', 'Sean Arvin', 'BSIT 4', '917-461-9410', 'arvin.dagang09@gmail.com', 38, 'June 06 2017', 'June 7 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 07 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9320, 'no', ''),
(2140426, 'Sano-an', 'Emilion', 'BSIT 4', '949-352-5942', 'e.sanoan@outlook.ph', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9316, 'no', ''),
(2140556, 'Ugaldo', 'Jovi Rose E.', 'BSCS 4', '909-154-3610', 'joviroseugaldo@gmail.com', 23, 'June 01 2017', 'June 05 2017', 'With reply of YES', 'yes', '', 'June 17 2017', 'WITH sign of the company', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2142377, 'Edades', 'Olizar Bryn', 'BSIT 4', '926-267-8198', 'bryn.edades@gmail.com', 38, 'June 08 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9320, 'no', ''),
(2142825, 'Tolentino', 'Bianca Fleur', 'BSIT 4', '936-773-5284', 'tolentino_biancafleur@yahoo.com', 12, 'June 08 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2143094, 'Garlejo', 'Galo Berlyn', 'BSIT 3', '906-359-1886', 'gbgarlejo@gmail.com', 22, 'June 05 2017', '', 'With reply of YES', 'yes', 'June 15 2017', 'June 15 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2143185, 'Alawas', 'Crislyn', 'BSIT 4', '946-514-2097', 'alawascrislyn@gmail.com', 33, 'June 10 2017', '', '', 'no', 'June 10 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9317, 'no', ''),
(2143278, 'De Leon', 'Dominik Felix', 'BSCS 4', '975-258-4985', '2143278@slu.edu.ph', 55, 'May 26 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2143744, 'Sabiano', 'Diana Rose', 'BSIT 3', '950-320-3219', 'dee29sabiano@gmail.com', 33, 'June 06 2017', '', '', 'no', 'June 10 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9317, 'no', ''),
(2143766, 'Uy', 'Michael Vincent', 'BSCS 4', '939-928-6021', 'michaeluy@gmail.com', 43, 'June 07 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2143782, 'Quezada', 'Paul Ian', 'BSIT 3', '946-550-8896', '2143782@slu.edu.ph', 13, 'June 11 2017', 'June 13 2017', 'With reply of YES', 'yes', 'June 13 2017', 'June 19 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 6, 9316, 'no', ''),
(2143836, 'Lalas', 'Lucky Christian', 'BSIT 4', '927-299-3633', 'miyahira.christian@gmail.com', 23, 'June 15 2017', 'June 27 2017', 'With reply of YES.', 'yes', 'June 27 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 11, 9319, 'no', ''),
(2143871, 'Aquino', 'Raja Mecca Z.', 'BSIT 3', '955-340-0512', 'rajaa.aquino@gmail.com', 37, 'June 06 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9319, 'no', ''),
(2144062, 'Quiambao', 'Ryan Christopher R.', 'BSIT 3', '956-559-6266', '2144062@slu.edu.ph', 69, 'June 19 2017', 'June 21 2017', 'With reply of YES', 'yes', 'June 21 2017', 'June 27 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9319, 'no', ''),
(2144074, 'Oliva', 'Lovelace Zennia', 'BSIT 4', '948-127-3131', 'lhaceoliva@gmail.com', 14, 'June 02 2017', '', 'With reply of YES', 'yes', '', 'June 05 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9320, 'no', ''),
(2144190, 'Hirai', 'Erika Mae C.', 'BSIT 3', '915-896-4178', 'hiraierika@yahoo.com', 17, 'June 05 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 5, 9317, 'no', ''),
(2144251, 'Cabildo', 'Christine Joy', 'BSIT 4', '905-398-3127', 'Joy_cabildo24@yahoo.com', 14, 'June 02 2017', '', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9317, 'no', ''),
(2144273, 'Cogasi', 'Swira Claire', 'BSIT 3', '995-145-1756', 'cswiraclaire@gmail.com', 10, 'June 05 2017', 'June 06 2017', 'With reply of YES', 'yes', '', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 9, 9319, 'no', ''),
(2144311, 'Chu', 'Amariz Joy', 'BSIT 4', '942-849-2097', 'amarizchu@gmail.com', 33, 'June 10 2017', '', '', 'no', 'June 10 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9319, 'no', ''),
(2144592, 'Goyo', ' Gloridhel', 'BSIT 3', '905-181-8197', '2144592@slu.edu.ph', 14, 'June 05 2017', '', 'With reply of YES', 'yes', '', '', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9317, 'no', ''),
(2144690, 'Abad', 'Mark Joseph C.', 'BSIT 4', '915-285-6391', 'ramjosh0002@gmail.com', 10, 'June 02 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 10 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 1, 9318, 'yes', ' dfghdfhdfhh'),
(2144780, 'Beltran', 'Christian', 'BSIT 3', '915-271-0190', 'c.beltran27@yahoo.com', 12, 'June 08 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2145098, 'Estacio', 'Lemuel', 'BSIT 3', '915-942-8736', 'estacio.lemuel@gmail.com', 12, 'June 08 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2145473, 'Bitmead', 'Steven Gregory', 'BSIT 4', '928-348-4843', 'bitmeadsteven@gmail.com', 2, 'June 01 2017', 'June 03 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9320, 'no', ''),
(2146153, 'Francisco', 'Timothy Redd', 'BSIT 3', '916-140-3309', 't.reddfrancisco@gmail.com', 42, 'June 02 2017', '', 'Online', 'yes', 'June 08 2017', 'June 09 2017', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9320, 'no', ''),
(2146163, 'Amos', 'Resilyn C.', 'BSIT 3', '948-213-4252', 'resilyn.ra@gmail.com', 48, 'June 07 2017', '', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9320, 'yes', ' '),
(2146417, 'Ronquillo', 'Lyra Joyce', 'BSIT 4', '997-264-2226', '2146417@slu.edu.ph', 14, 'June 02 2017', '', 'With reply of YES', 'yes', '', 'June 05 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9319, 'no', ''),
(2146624, 'Alinso', 'Ian Paul M.', 'BSIT 3', '909-808-0680', 'yanzkytootsky@gmail.com', 10, 'May 31 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 9316, 'yes', ' '),
(2146986, 'Belino', 'Alysson', 'BSIT 4', '977-825-3744', 'belinoalysson@gmail.com', 48, 'June 08 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 08 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9316, 'yes', ' '),
(2147643, 'Festejo', 'Leo Dominique Angelo M.', 'BSCS 4', '920-625-1553', 'leofestejo@gmail.com', 23, 'June 01 2017', 'June 05 2017', 'With reply of YES', 'yes', '', 'June 17 2017', 'WITH sign of the company', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2147790, 'Arzadon', 'CD Mae D.', 'BSIT 3', '906-254-5652', 'cdmarzadonlook@gmail.com', 25, 'June 02 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'WITHOUT SIGN from the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9320, 'no', ''),
(2147840, 'Dela PeÃ±a', 'Adriana Jenar', 'BSIT 3', '955-702-0307', 'ajdp927@gmail.com', 33, 'June 05 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 05 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9317, 'no', ''),
(2150048, 'Testado', 'Janriel G.', 'BSIT 3', '908-304-6060', 'testado.janriel@gmail.com', 31, 'June 2 2017', 'June 10 2017', 'With reply of YES. Submitted through online', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 11, 9319, 'no', ''),
(2150065, 'Zheng', 'Mary Anne (Wen Yao)', 'BSIT 3', '906-359-6319', 'maryannezheng@gmail.com', 63, 'June 1 2017', 'June 17 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 5, 9316, 'no', ''),
(2150084, 'Zheng', 'Mary Jane (Wen Ya) Q.', 'BSIT 3', '977-198-2259', '2150084@slu.edu.ph', 5, 'May 30 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2150218, 'Genove', 'Sean Dustine ', 'BSIT 3', '935-375-7297', '2150218@slu.edu.ph', 59, 'June 08 2017', '', 'Sent through Email.', 'yes', 'June 08 2017', '', 'Sent through Email.', 'no', '', '', '', 'no', 'Incomplete', 8, 9316, 'no', ''),
(2150278, 'Sayco', 'Ma. Danavie', 'BSIT 3', '999-771-4840', 'dnvsayco@gmail.com', 42, 'June 02 2017', '', 'Online', 'yes', 'June 05 2017', 'June 06 2017', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9318, 'no', ''),
(2150300, 'Redondo', 'James Patrick O.', 'BSIT 3', '935-777-1603', 'jmspredondo@gmail.com', 47, 'June 05 2017', 'June 06 2017', 'Received Via Online', 'yes', 'June 05 2017', 'June 06 2017', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9318, 'no', ''),
(2150378, 'Sevilla', 'Louella Darlene', 'BSCS 3', '000-000-0000', '2143278@slu.edu.ph', 42, 'June 02 2017', '', 'Online', 'yes', 'June 05 2017', 'June 06 2017', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2150387, 'Fernandez', 'Alainne', 'BSCS 3', '977-105-9696', 'fernandezalainne@gmail.com', 22, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 15 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2150417, 'Maganes', 'Earvin Grant ', 'BSIT 3', '000-000-0000', '2150417@slu.edu.ph', 42, 'June 02 2017', '', 'Processed Online.', 'yes', 'June 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 8, 9319, 'no', ''),
(2150428, 'Fama', 'Charlene T.', 'BSIT 3', '926-854-9704', '2150428@slu.edu.ph', 5, 'May 30 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2150485, 'Castro', 'Marian Roane B.', 'BSIT 3', '927-641-8951', '2150485@slu.edu.ph', 9, 'May 30 2017', 'May 31 2017', 'With reply of YES', 'yes', 'May 31 2017', 'June 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2150506, 'Laban', 'Joshua N.', 'BSIT 3', '908-782-1365', '2150506@slu.edu.ph', 5, 'May 30 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2150509, 'Donglawen', 'Dean Earl O.', 'BSIT 3', '939-371-1020', 'deanfailed@gmail.com', 8, 'June 02 2017', 'June 23 2017', 'With reply of YES.', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9319, 'no', ''),
(2150521, 'DasmariÃ±as', 'Walter Angelo', 'BSIT 3', '995-643-1154', 'walterangelo@gmail.com', 39, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 10 2017', 'July 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9320, 'no', ''),
(2150536, 'Del Rosario', 'Jerome D.', 'BSCS 3', '915-347-8922', '2150536@slu.edu.ph', 15, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2150602, 'Uematsu', 'Hiromi Kenan ', 'BSCS 3', '000-000-0000', '2150602@slu.edu.ph', 60, '', '', 'Online. Processed by Ma\'am Macon.', 'yes', '', '', 'Online. Processed by Ma\'am Macon.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2150792, 'Saringan', 'Danielle Shaerene R.', 'BSIT 3', '932-473-6421', 'danielleshaerene@gmail.com', 21, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 08 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 9, 9316, 'no', ''),
(2150804, 'Catalan', 'Paul Jimuel', 'BSCS 3', '949-504-9038', '2150804@slu.edu.ph', 55, 'May 26 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2150822, 'Dicen', 'Shania Isabelle H.', 'BSCS 3', '995-995-7372', 'shaniadicen@gmail.com', 63, 'June 2 2017', 'June 17 2017', 'With reply of YES', 'yes', 'June 17 2017', '', '', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2150834, 'Yu', 'Rommel Justin', 'BSIT 3', '955-317-1650', 'rommelyu750@gmail.com', 32, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9317, 'no', ''),
(2150854, 'Malones', 'David Benedict', 'BSIT 3', '916-457-1093', 'david012098@gmail.com', 46, 'June 06 2017', 'June 08 2017', 'With reply of YES.', 'yes', 'June 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 8, 9316, 'no', ''),
(2150890, 'Tomines', 'Christine Minamori', 'BSIT 3', '000-000-0000', '2150890@slu.edu.ph', 42, 'June 02 2017', '', 'Processed Online.', 'yes', 'June 07 2017', '', 'Sent through Email.', 'no', '', '', '', 'no', 'Incomplete', 8, 9319, 'no', ''),
(2150907, 'Cardenas', 'David Wyatt ', 'BSCS 3', '000-000-0000', '2150907@slu.edu.ph', 4, 'May 25 2017', '', 'Online', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2150915, 'Eslao', 'Mark Joshua', 'BSIT 3', '927-288-7466', '2150915@slu.edu.ph', 9, '', 'May 31 2017', 'With reply of YES', 'yes', 'May 31 2017', 'June 02 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9316, 'no', ''),
(2150936, 'Jimenez', 'Zebedee V.', 'BSCS 3', '917-508-0254', '2150936@slu.edu.ph', 19, 'June 01 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'WITHOUT SIGN from the company', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2150942, 'Mondiguing', 'Ali Brian ', 'BSCS 3', '918-482-3559', '2150942@slu.edu.ph', 61, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Without sign from the company', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2150958, 'Delson', 'Teodoro Jr.', 'BSIT 3', '905-326-1886', 'teodelson23@gmail.com', 22, 'June 05 2017', '', 'With reply of YES', 'yes', 'June 13 2017', 'June 15 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2150964, 'Ocampo', 'Jessie James', 'BSIT 3', '935-501-0658', '2150964@slu.edu.ph', 8, 'June 06 2017', 'June 23 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'Signed by the Company', 'yes', '', '', '', 'no', 'Incomplete', 5, 9319, 'no', ''),
(2150989, 'Aspiras', 'Adrian John ', 'BSCS 3', '915-865-2108', '2150989@slu.edu.ph', 61, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Without sign from the company', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'yes', ' '),
(2151084, 'Carantes', 'Ethnica Jaya', 'BSCS 3', '915-813-7110', 'carantesethnica@gmail.com', 22, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 15 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2151128, 'David', 'Josepablo Jr. E.', 'BSCS 3', '915-869-9162', '2151128@slu.edu.ph', 19, 'June 01 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'WITHOUT SIGN from the company', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2151211, 'Caballar', 'Randall Elijah', 'BSIT 3', '917-680-0658', '2151211@slu.edu.ph', 22, 'June 02 2017', 'June 14 2017', 'With reply of YES', 'yes', 'June 14 2017', 'June 16 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2151220, 'Viray', 'Froilan Mark', 'BSIT 3', '956-128-2968', 'f.markviray18@gmail.com', 11, 'June 06 2017', '', 'Received Via Online', 'yes', '', '', 'Received via Online', 'yes', '', '', '', 'no', 'Complete', 5, 9316, 'no', ''),
(2151252, 'Guieb', 'Rey Meljohn S.', 'BSIT 3', '927-718-5206', 'reymeljohnguieb22@gmail.com', 31, 'June 02 2017', 'June 10 2017', 'With reply of YES. Submitted through online', 'yes', 'June 10 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 11, 9318, 'no', ''),
(2151287, 'Bangui', 'Heinrich P.', 'BSIT 3', '919-684-0747', 'heinrichbangui@gmail.com', 14, 'June 2 2017', 'June 05 2017', 'With reply of YES', 'yes', '', 'June 05 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9317, 'no', ''),
(2151299, 'Kolodzik', 'Rio Vann ', 'BSCS 3', '000-000-0000', '2151299@slu.edu.ph', 60, '', '', 'Online. Processed by Ma\'am Macon.', 'yes', '', '', 'Online. Processed by Ma\'am Macon.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2151305, 'Mauri', 'Diane Kaye', 'BSIT 3', '975-906-3957', 'kayemauri@gmail.com', 58, 'June 9 2017', '', 'Online. Processed by Ma\'am Macon.', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9316, 'no', ''),
(2151355, 'Lagunilla', 'Kenneth O.', 'BSIT 3', '948-790-7421', 'kennethlagunilla44@gmail.com', 58, 'June 9 2017', '', 'With reply of YES. Submitted through online', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9318, 'no', ''),
(2151372, 'Eguilos', 'Jules Marvin', 'BSCS 3', '995-148-0811', 'jmeguilos@gmail.com', 65, 'June 15 2017', '', 'Processed by Ma\'am Macon', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 1, 0, 'no', ''),
(2151386, 'Viloria', 'Kristine Mae', 'BSIT 3', '995-103-2417', '2151386@slu.edu.ph', 50, 'June 07 2017', 'June 07 2017', 'With reply of YES', 'yes', '', '', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 4, 9320, 'no', ''),
(2151401, 'Licud', 'Ronald C.', 'BSIT 3', '916-415-1960', 'rlicud7@gmail.com', 39, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 10 2017', 'July 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2151434, 'AÃ±onuevo', 'James R.', 'BSIT 3', '927-654-6959', '2151434@slu.edu.ph', 54, 'June 09 2017', 'June 30 2017', 'With reply of YES', 'yes', 'June 09 2017', '', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 1, 9319, 'no', ''),
(2151445, 'Miranda', 'Janina Valerie B.', 'BSIT 3', '999-370-2753', 'mirandajaninavalerie@gmail.com', 7, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'Signed by the Company', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2151524, 'Pagaduan', 'Sherene Joyce', 'BSIT 3', '977-821-9050', 'shenmp13@gmail.com', 39, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 10 2017', 'July 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2151666, 'Andawi', 'Mark Jr. A.', 'BSIT 3', '995-235-1069', 'markandawi@gmail.com', 14, 'June 2 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Incomplete', 7, 9318, 'no', ''),
(2151676, 'Sahagun', 'Sean William', 'BSCS 3', '921-225-6287', 'williamsahagun@gmail.com', 61, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Without sign from the company', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2151688, 'Manantan', 'John Carlo', 'BSCS 3', '906-255-7565', 'johncarlomanantan@gmail.com', 22, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 15 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2151698, 'Marcelo', 'Aira Joy', 'BSIT 3', '906-579-0143', 'airamarcelo@gmail.com', 39, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 10 2017', 'July 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2151727, 'Ramirez', 'Emari Sandra S.', 'BSIT 3', '905-932-2599', 'emsan-ramz05@gmail.com', 29, 'June 02 2017', '', 'Sent via Online', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9319, 'no', ''),
(2151733, 'Reynon', ' Paul Kennedy', 'BSCS 3', '995-995-7373', 'kennedyreynon@gmail.com', 65, 'June 15 2017', '', 'Online. Processed by Ma\'am Macon.', 'no', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 1, 0, 'no', ''),
(2151796, 'Garcia', 'Jay B.', 'BSIT 3', '926-340-5206', '2151796@slu.edu.ph', 5, 'May 30 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2151803, 'Prado', 'Jhennie Caroline Hiyasmin', 'BSCS 3', '917-733-5665', '2151803@slu.edu.ph', 55, 'May 26 2017', 'June 16 2017', 'With reply of YES', 'yes', 'June 16 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2151809, 'Jacob', 'Princess', 'BSIT 3', '947-982-8931', '2151809@slu.edu.ph', 9, 'May 26 2017', '', 'With reply of YES', 'yes', '', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9316, 'no', ''),
(2151828, 'Erese', 'Erico Alfonz S.', 'BSCS 3', '916-575-5144', '2151828@slu.edu.ph', 41, 'June 06 2017', '', 'Processed Online.', 'yes', 'June 06 2017', '', 'Sent through Email.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2151837, 'Cabanban', 'Eldridge', 'BSIT 3', '915-708-3555', 'eldridge.cabanban@gmail.com', 18, 'June 02 2017', '', 'With reply of YES', 'yes', 'July 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9319, 'no', ''),
(2151848, 'Araos', 'Angelo Austin T.', 'BSIT 3', '905-368-0799', '2151848@slu.edu.ph', 22, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2151857, 'Villacentino', 'Catherine Mae', 'BSIT 3', '927-848-9960', 'cmmv1126@gmail.com', 7, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2151872, 'Abellera', 'Karl Andaya', 'BSIT 3', '000-000-0000', '2151872@slu.edu.ph', 4, 'May 25 2017', '', 'Online', 'yes', '', '', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 12, 9318, 'no', ' '),
(2151890, 'Soy', 'Tyrone Joshua', 'BSIT 3', '935-794-6065', 'soy.tyrone@gmail.com', 58, 'June 9 2017', '', 'Online. Processed by Ma\'am Macon.', 'no', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9317, 'no', ''),
(2151928, 'Rivera', 'Duke Carlos', 'BSIT 3', '926-881-8050', 'riveraduke@gmail.com', 22, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9320, 'no', ''),
(2151951, 'Carreon', 'Engelyn', 'BSIT 3', '956-597-8070', 'engelyn.carreon@gmail.com', 7, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2152009, 'Mina', 'Apollo Joshua', 'BSIT 3', '915-480-0448', 'apollomina1@gmail.com', 51, 'June 08 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 08 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 2, 9320, 'no', ''),
(2152015, 'Viloria', 'Dixon Aldwin O.', 'BSIT 3', '905-229-6579', '2152015@slu.edu.ph', 5, 'June 01 2017', 'June 07 2017', 'With reply of YES', 'yes', 'July 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9319, 'no', ''),
(2152023, 'Balicha', 'Elmer', 'BSIT 3', '915-395-6050', 'elmerbalicha@gmail.com', 5, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9318, 'no', ''),
(2152026, 'Aquino', 'Ryan Christian', 'BSIT 3', '000-000-0000', 'ryan_aquino009@yahoo.com', 8, 'June 06 2017', 'June 23 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9318, 'no', ''),
(2152028, 'Leonardo', 'Vironica M.', 'BSIT 3', '916-895-6234', 'vironicaleonardo@gmail.com', 12, 'June 08 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9318, 'no', ''),
(2152056, 'Cabantac', 'Emmanuel Alfonso B.', 'BSIT 3', '975-862-8947', '081197eabc@gmail.com', 31, 'June 02 2017', 'June 10 2017', 'With reply of YES. Submitted through online', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 11, 9318, 'no', ''),
(2152110, 'Dy', 'Jamaica Marie T.', 'BSIT 3', '906-595-7741', 'jmdy111397@gmail.com', 32, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9317, 'no', ''),
(2152127, 'Geraldez', 'Maureen Serote', 'BSIT 3', '916-774-7700', 'geraldezmau@gmail.com', 42, 'June 02 2017', '', 'Processed Online.', 'yes', 'June 06 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 8, 9317, 'no', ''),
(2152142, 'Dadula', 'Jason Paul M.', 'BSCS 3', '995-763-5322', '2152142@slu.edu.ph', 15, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2152155, 'Halos', 'Neri Mae', 'BSIT 3', '917-525-5137', '2152155@slu.edu.ph', 9, '', 'May 31 2017', 'With reply of YES', 'yes', '', 'June 02 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 4, 9316, 'no', ''),
(2152165, 'Castro', 'Alissa ', 'BSCS 3', '000-000-0000', '2152165@slu.edu.ph', 42, 'June 02 2017', '', 'Processed Online.', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2152176, 'Cabalse', 'Ariane Faye E.', 'BSIT 3', '995-487-5955', '2152176@slu.edu.ph', 51, 'June 07 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 09 2017', 'Passed to Ma\'am Macon.', 'yes', '', '', '', 'no', 'Complete', 2, 9319, 'no', ''),
(2152181, 'Taccayan', 'Danzel', 'BSIT 3', '906-172-8207', 'taccayandanzel@gmail.com', 22, 'June 12 2017', 'June 13 2017', 'With reply of YES', 'yes', 'June 15 2017', 'June 16 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2152195, 'Gagelonia', 'Jenmar R.', 'BSIT 3', '927-874-6586', '2152195@slu.edu.ph', 5, 'May 30 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2152201, 'Bayote', 'Rusell', 'BSIT 3', '916-414-6533', 'rusellbayote@gmail.com', 14, 'June 2 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 05 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9318, 'no', ''),
(2152214, 'Malicdem', 'Leo', 'BSIT 3', '956-851-5595', '2152214@slu.edu.ph', 18, 'June 02 2017', '', 'With reply of YES', 'yes', 'July 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9318, 'no', ''),
(2152242, 'Gonzales', 'Jepanee Abishei T.', 'BSIT 3', '930-709-8602', 'jepanee.abishei@gmail.com', 16, 'June 1 2017', 'June 5 2017', 'With reply of YES', 'yes', 'June 5 2017', '', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 7, 9317, 'no', ''),
(2152281, 'Calpito', 'Maureen Nicole', 'BSIT 3', '949-179-0004', 'maureenicolecalpito17@gmail.com', 12, 'June 08 2017', 'June 10 2017', 'With reply of YES', 'yes', 'June 10 2017', 'July 4 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 9317, 'no', ''),
(2152333, 'Malabanan', 'Coleen Gabrielle M.', 'BSIT 3', '995-106-5399', 'gabmapalo@gmail.com', 29, 'June 02 2017', '', 'Sent via Online', 'yes', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9319, 'no', ''),
(2152430, 'Dela Rosa', 'Mon Joel C.', 'BSIT 3', '917-840-4967', 'cszets@gmail.com', 3, 'June 01 2017', 'June 07 2017', 'With reply of YES', 'yes', '', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 9, 9317, 'no', ''),
(2152544, 'Arbolente', 'Kathleen Dianne A.', 'BSIT 3', '915-382-1592', '2152544@slu.edu.ph', 51, 'June 07 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 15 2017', 'Passed to Ma\'am Macon.', 'yes', '', '', '', 'no', 'Complete', 2, 9320, 'no', ''),
(2152557, 'Argao', 'Joneil S.', 'BSIT 3', '939-552-5668', 'joneilargao.ja@gmail.com', 62, 'June 07 2017', 'June 07 2017', 'With reply of YES.', 'yes', 'June 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 9316, 'no', ''),
(2152573, 'Castillo', 'Mark Ryan B.', 'BSIT 3', '936-749-3763', 'markryanc23@gmail.com', 14, 'May 31 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 7, 9316, 'no', ''),
(2152598, 'Culbengan', 'Denver P.', 'BSIT 3', '915-420-8813', 'crimelight24@gmail.com', 37, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 9318, 'no', ''),
(2152813, 'Cayabyab', 'Dianne Alyza', 'BSIT 3', '930-942-1945', 'diannecayabyab@gmail.com', 28, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'WITHOUT SIGN from the company', 'yes', '', '', '', 'no', 'Incomplete', 4, 9317, 'no', ''),
(2152826, 'Marfil', 'Marvie Yuki', 'BSIT 3', '926-002-3117', 'marvieyuki06@gmail.com', 22, 'June 02 2017', 'June 05 2017', 'With reply of YES', 'yes', '', 'June 19 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2152834, 'Centino', 'Sarah Mae E.', 'BSIT 3', '910-929-0518', '2152824@slu.edu.ph', 37, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 13 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 12, 9318, 'no', ''),
(2152844, 'Dalayoan', 'Clint Deric', 'BSIT 3', '995-816-7067', 'c.dalayoan@gmail.com', 22, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 14 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2152873, 'Mones', 'Angelica R.', 'BSCS 3', '995-220-2765', '2152873@slu.edu.ph', 23, 'June 01 2017', 'June 05 2017', 'With reply of YES', 'yes', '', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2153020, 'Bernardez', 'Marileus', 'BSIT 3', '926-008-6355', 'marileusbernardez@gmail.com', 38, 'June 08 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9317, 'no', ''),
(2153094, 'Turqueza', 'Katherine A.', 'BSIT 3', '935-290-0979', 'turquezakath@gmail.com', 6, 'May 31 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 7, 9316, 'no', ''),
(2153118, 'Fernandez', 'Mariella', 'BSIT 3', '917-413-1225', '2153118@slu.edu.ph', 18, 'June 02 2017', '', 'With reply of YES', 'yes', 'July 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9318, 'no', ''),
(2153202, 'Dumdum', 'Ma. Jasiel Faye', 'BSIT 3', '998-853-8924', '2153202@slu.edu.ph', 51, 'June 07 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 17 2017', '', 'Passed to Ma\'am Macon.', 'no', '', '', '', 'no', 'Incomplete', 2, 9319, 'no', ''),
(2153240, 'Alcaide', 'Arvince Neil A.', 'BSIT 3', '920-297-3256', 'alcaidearvince@gmail.com', 21, 'June 1 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 12, 9320, 'no', '  '),
(2153271, 'Dullao', 'Jeanne C.', 'BSIT 3', '905-807-5550', '2153270@slu.edu.ph', 5, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9318, 'no', ''),
(2153357, 'Valdez', 'Raphael', 'BSIT 3', '936-638-1495', 'raphaelmoa12@gmail.com', 3, 'June 01 2017', 'June 07 2017', 'With reply of YES', 'yes', '', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 9, 9316, 'no', ''),
(2153455, 'Zipagan', 'Jerome N.', 'BSIT 3', '950-677-7313', '2153455@slu.edu.ph', 5, 'May 30 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2153674, 'Leonen', 'Aerhielle Cassandra', 'BSIT 3', '905-601-0355', '2153674@slu.edu.ph', 37, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9320, 'no', ''),
(2153777, 'Luna', 'Jaryd Reeve', 'BSIT 3', '919-616-6720', 'jarydluna28@gmail.com', 34, 'June 15 2017', 'June 20 2017', 'With reply of YES', 'yes', 'June 21 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9317, 'no', ''),
(2153781, 'Bigornia', 'Krizzhia', 'BSIT 3', '995-148-1710', 'kc.bigornia@gmail.com', 32, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 09 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9316, 'no', ''),
(2153797, 'De Guzman', 'Ryan Christian', 'BSIT 3', '906-476-3486', '2153797@slu.edu.ph', 37, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 20 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9318, 'no', ''),
(2153820, 'Delos Santos', 'Juan Miguel', 'BSIT 3', '956-597-8035', '2153820@slu.edu.ph', 22, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 13 2017', 'June 22 2017', 'Signed by the  Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9318, 'no', ''),
(2153904, 'Dispo', 'Cyrene', 'BSIT 3', '946-354-4299', 'cyrenejanedispo132@gmail.com', 6, 'June 07 2017', '', 'With reply of YES', 'yes', 'June 07 2017', 'June 07 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 7, 9316, 'no', ''),
(2153948, 'Suarez', 'Benedict', 'BSIT 3', '906-476-3492', '2153948@slu.edu.ph', 37, 'June 06 2017', '', 'With reply of YES', 'yes', 'June 07 2017', 'July 01 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9319, 'no', ''),
(2153974, 'Maslian', 'Averey Del-isen', 'BSIT 3', '948-680-8965', '2153974@slu.edu.ph', 18, 'June 02 2017', '', 'With reply of YES', 'yes', 'July 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9318, 'no', ''),
(2154144, 'Ocado', 'Jennelyn N.', 'BSIT 3', '977-426-3008', 'jennocado@gmail.com', 7, 'June 06 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 06 2017', 'June 06 2017', 'WITHOUT SIGN from the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2154183, 'Manzon', 'Jake James', 'BSIT 3', '910-400-8500', 'manzonjake15@gmail.com', 30, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 10, 9316, 'no', ''),
(2154189, 'Abalos', 'Joshua James A.', 'BSIT 3', '917-133-2858', 'jamesabalos@gmail.com', 30, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 1, 9318, 'no', ' '),
(2154223, 'Jaramel', 'Kenneth D.', 'BSIT 3', '930-565-9133', 'kennethjaramel@gmail.com', 30, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 10, 9316, 'no', ''),
(2154225, 'Torres', 'Princess Janyl', 'BSIT 3', '933-283-1555', 'princess.janyl.19@gmail.com', 66, 'June 07 2017', 'June 17 2017', 'With reply of YES', 'yes', 'June 17 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9316, 'no', ''),
(2154269, 'Romero', 'Caesar Jim V.', 'BSIT 3', '997-614-2095', 'caesarromero1805@gmail.com', 11, 'May 30 2017', 'May 31 2017', 'With reply of YES', 'yes', '', '', 'Signed by the company', 'yes', '', '', '', 'no', 'Complete', 5, 9316, 'no', ''),
(2154291, 'Cabilar', 'Nonito Jr.', 'BSIT 3', '909-891-1000', 'nonitocabilar@gmail.com', 30, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9319, 'no', ''),
(2154295, 'Agcon', 'April Joy', 'BSCS 3', '915-921-4569', 'joy.agcon@gmail.com', 22, 'May 30 2017', 'May 31 2017', 'With reply of YES', 'yes', '', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'yes', ' '),
(2154375, 'Prades', 'Jamina Jasren S.', 'BSIT 3', '927-778-3935', '2154375@slu.edu.ph', 51, 'June 07 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 17 2017', 'June 19 2017', 'Passed to Ma\'am Macon.', 'yes', '', '', '', 'no', 'Complete', 2, 9319, 'no', ''),
(2154396, 'Benitez', 'Jinci Clyde', 'BSIT 3', '926-097-6790', 'jclydebenitez@gmail.com', 34, 'June 15 2017', 'June 20 2017', 'With reply of YES', 'yes', 'June 21 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 12, 9317, 'no', ''),
(2154439, 'MariÃ±as', 'Phebe Chris', 'BSIT 3', '928-267-0578', 'phebecris@yahoo.com', 34, 'June 15 2017', 'June 20 2017', 'With reply of YES', 'yes', 'June 21 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9317, 'no', ''),
(2154585, 'Garcia', 'Zsarlene Alyza', 'BSIT 3', '906-477-0252', 'zsarlenealyza@gmail.com', 12, 'June 08 2017', 'June 10 2017', 'Sent via Online', 'yes', 'June 10 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 8, 9317, 'no', ''),
(2154715, 'Aurelio', 'Jan Lorenz', 'BSIT 3', '927-718-6041', 'jl.aurelio@gmail.com', 22, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', '', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9318, 'no', ''),
(2154810, 'Bravo', 'Ma. Micaela P.', 'BSIT 3', '995-148-0646', '2154810@slu.edu.ph', 52, 'June 04 2017', '', 'With reply of YES', 'yes', 'June 08 2017', 'June 9 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9319, 'no', ''),
(2154904, 'Pulido', 'Jessa Camille E.', 'BSIT 3', '977-338-2909', 'jessacamille.jc@gmail.com', 21, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 19 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 9, 9316, 'no', ''),
(2155651, 'Caguioa', 'Ma. Christine', 'BSIT 3', '926-904-4317', '2155651@slu.edu.ph', 5, 'June 06 2017', 'June 07 2017', 'With reply of YES', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9318, 'no', ''),
(2155673, 'Baucas', 'Marinel', 'BSIT 3', '946-195-1582', '2150964@slu.edu.ph', 7, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 4, 9317, 'no', ''),
(2155703, 'Lopez', 'Ramon Franco', 'BSIT 3', '916-278-3918', '2155703@slu.edu.ph', 8, 'June 01 2017', 'June 23 2017', 'With reply of YES', 'yes', 'June 10 2017', 'June 17 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 5, 9319, 'no', ''),
(2155757, 'Leones', 'Alfa Leizel', 'BSIT 3', '908-965-1798', 'alfaleones199@gmail.com', 66, 'June 08 2017', 'June 17 2017', 'With reply of YES', 'yes', 'June 17 2017', 'June 22 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 6, 9316, 'no', ''),
(2155789, 'De Alban', 'Kristine Jorgia', 'BSIT 3', '916-625-6814', '2155789@slu.edu.ph', 18, 'June 02 2017', '', 'With reply of YES', 'yes', 'July 08 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 2, 9318, 'no', ''),
(2155794, 'Maniti', 'Aldrienne Janne', 'BSIT 3', '916-457-1093', 'aldriennej@gmail.com', 22, 'June 05 2017', 'June 05 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 15 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9320, 'no', ''),
(2155825, 'Sarmiento', 'Franchesca Miguelle R.', 'BSCS 3', '999-433-6485', '2155825@slu.edu.ph', 7, 'June 07 2017', 'June 19 2017', 'With reply of YES', 'yes', 'June 19 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2155912, 'Ragay', 'Claudine Joy P.', 'BSIT 3', '906-359-3252', '2155912@slu.edu.ph', 5, 'May 30 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', '');
INSERT INTO `students` (`idnum`, `last_name`, `first_name`, `courseyear`, `mobile_number`, `email`, `coid`, `release_endorsement`, `receive_endorsement`, `remark_endorsement`, `endorsement`, `release_waiver`, `receive_waiver`, `remark_waiver`, `waiver`, `release_evaluation`, `receive_evaluation`, `remark_evaluation`, `evaluation`, `status`, `ad_id`, `classcode`, `vis_status`, `remark_visit`) VALUES
(2155957, 'Langit', 'Ismael Cruz', 'BSIT 3', '915-104-6069', 'ismaelcruzlangit@gmail.com', 51, 'June 08 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Passed to Maam Macon', 'yes', '', '', '', 'no', 'Complete', 2, 9320, 'no', ''),
(2156068, 'Canaria', 'Patricia Anne', 'BSCS 3', '926-954-5636', 'canariapatriciaanne@gmail.com', 40, 'June 07 2017', '', 'With reply of YES. Submitted through online', 'yes', '', '', 'WITHOUT SIGN from the company', 'yes', '', '', '', 'no', 'Incomplete', 1, 0, 'no', ''),
(2156157, 'Antero', 'Randy Ezekiel Jr.', 'BSIT 3', '906-207-0025', 'anterorandy@gmail.com', 30, 'June 02 2017', 'June 06 2017', 'With reply of YES', 'yes', 'June 05 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 9316, 'no', ''),
(2156164, 'Basco', 'John Allen E.', 'BSIT 3', '915-289-3946', 'allenbasco@gmail.com', 51, 'June 08 2017', 'June 09 2017', 'With reply of YES', 'yes', 'June 08 2017', 'June 13 2017', 'Passed to Maam Macon', 'yes', '', '', '', 'no', 'Complete', 2, 9320, 'no', ''),
(2156179, 'Bobadilla', 'Karl Genesis P.', 'BSIT 3', '906-273-3646', '2156179@slu.edu.ph', 5, 'May 30 2017', 'June 01 2017', 'With reply of YES', 'yes', 'June 01 2017', 'June 06 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 6, 9316, 'no', ''),
(2156233, 'Wooden', 'Delson Markis A.', 'BSIT 3', '909-228-2423', '2156233@slu.edu.ph', 5, 'June 01 2017', '', 'With reply of YES', 'yes', 'July 07 2017', '', '', 'no', '', '', '', 'no', 'Incomplete', 6, 9319, 'no', ''),
(2156523, 'Pagayonan', 'Elijah C.', 'BSIT 3', '907-379-6194', 'pagayonaneli@gmail.com', 42, 'June 02 2017', '', 'Processed Online.', 'yes', 'June 05 2017', 'June 06 2017', 'Sent through Email.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9318, 'no', ''),
(2156749, 'Diaz', 'Stephen Paul', 'BSIT 3', '947-877-6726', 'stephendiaz263@gmail.com', 34, 'June 15 2017', 'June 21 2017', 'With reply of YES', 'yes', 'June 21 2017', 'June 29 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 8, 9320, 'no', ''),
(2157015, 'Sanchez', 'Daiben Angelo A.', 'BSIT 3', '956-819-3381', 'daibenangelosanchez@gmail.com', 37, 'June 06 2017', 'June 08 2017', 'With reply of YES', 'yes', 'June 07 2017', 'June 09 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 8, 9317, 'no', ''),
(2157588, 'Ravino', 'Jacob', 'BSIT 3', '907-321-6930', 'onivarjj@gmail.com', 31, 'June 02 2017', 'June 10 2017', 'With reply of YES. Submitted through online', 'yes', 'June 10 2017', 'June 10 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Incomplete', 11, 9319, 'no', ''),
(2158817, 'Lee', 'Mandy Maurice', 'BSCS 3', '926-968-8509', 'mandyhaolee@gmail.com', 67, '', '', 'Processed Online.', 'no', '', '', '', 'no', '', '', '', 'no', 'Incomplete', 12, 0, 'no', ''),
(2158841, 'Lopez', 'Samantha Marie', 'BSCS 3', '917-588-9848', 'samlopez92595@gmail.com', 22, 'June 2 2017', '', 'With reply of YES', 'yes', 'June 15 2017', 'June 21 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 12, 0, 'no', ''),
(2159296, 'Radie', 'Patricia Mae', 'BSIT 3', '949-502-1515', '2159296@slu.edu.ph', 52, 'June 04 2017', '', 'With reply of YES', 'yes', 'June 08 2017', 'June 9 2017', 'Signed by the Company.', 'yes', '', '', '', 'no', 'Complete', 3, 9319, 'no', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `adviser` (`ad_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`coid`),
  ADD KEY `company` (`coid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idnum`),
  ADD KEY `company_idx` (`coid`),
  ADD KEY `adviser_idx` (`ad_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `idnum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2159297;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `adviser` FOREIGN KEY (`ad_id`) REFERENCES `advisers` (`ad_id`),
  ADD CONSTRAINT `company` FOREIGN KEY (`coid`) REFERENCES `company` (`coid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
