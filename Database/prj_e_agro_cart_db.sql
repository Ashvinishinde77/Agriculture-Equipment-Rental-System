-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prj_e_agro_cart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(9) NOT NULL,
  `cat_name` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cat_name`, `regdate`, `status`, `uid`) VALUES
(1, 'Todays Deal', '2020-11-03', 2, 1),
(2, 'Within Week Deal', '2020-11-03', 2, 1),
(3, 'E Agro Cart', '2020-11-15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `comp_id` int(9) NOT NULL,
  `comp_name` varchar(90) NOT NULL,
  `comp_tag_line` varchar(120) NOT NULL,
  `pro_pra_name` varchar(90) NOT NULL,
  `comp_add` varchar(90) NOT NULL,
  `comp_mob` varchar(13) NOT NULL,
  `comp_mob1` varchar(13) NOT NULL,
  `comp_web` varchar(120) NOT NULL,
  `uid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`comp_id`, `comp_name`, `comp_tag_line`, `pro_pra_name`, `comp_add`, `comp_mob`, `comp_mob1`, `comp_web`, `uid`) VALUES
(1, 'AgriBazaar.com', 'Online Farm Shopping', 'Jayshri Suryawanshi', 'Nashik', '8010586897', '8010586897', 'Jayshri@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `end_user`
--

CREATE TABLE `end_user` (
  `euid` int(9) NOT NULL,
  `euname` varchar(30) NOT NULL,
  `eumob` varchar(10) NOT NULL,
  `eupass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `euregdate` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `end_user`
--

INSERT INTO `end_user` (`euid`, `euname`, `eumob`, `eupass`, `email`, `bdate`, `address`, `euregdate`, `status`) VALUES
(1, 'Subhan', '8888789402', '123', 'zelosinfotech@gmail.com', '1990-02-19', 'Manchar', '2023-03-29', 1),
(2, 'ankita', '9673229671', 'ankita', 'ankita12@gmail.com', '2004-05-06', 'pune', '2023-04-10', 1),
(3, 'shraddha', '1234567890', 'shraddha', 'shraddha@gmail.com', '2003-03-04', 'Nagar', '2023-04-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `fr_id` int(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `altmob` varchar(10) NOT NULL,
  `shop_location` varchar(250) NOT NULL,
  `map_location` varchar(500) NOT NULL,
  `rent_owner` varchar(150) NOT NULL,
  `shop_area` varchar(250) NOT NULL,
  `partner_owner` varchar(150) NOT NULL,
  `fr_status` tinyint(1) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(9) NOT NULL,
  `euid` int(9) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `euid`, `order_date`, `order_status`) VALUES
(1, 1, '2023-03-29', 1),
(2, 1, '2023-03-29', 2),
(3, 2, '2023-04-10', 2),
(4, 2, '2023-04-10', 1),
(5, 2, '2023-04-10', 2),
(6, 2, '2023-04-10', 1),
(7, 2, '2023-04-10', 1),
(8, 2, '2023-04-10', 1),
(9, 3, '2023-04-11', 1),
(10, 2, '2023-04-11', 1),
(11, 2, '2023-04-11', 1),
(12, 2, '2023-04-11', 2),
(13, 2, '2023-04-11', 1),
(14, 2, '2023-04-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(9) NOT NULL,
  `order_id` int(9) NOT NULL,
  `pid` int(9) NOT NULL,
  `rate_id` int(9) NOT NULL,
  `qty` double(10,2) NOT NULL,
  `order_item_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `pid`, `rate_id`, `qty`, `order_item_status`) VALUES
(1, 1, 1, 1, 1.00, 1),
(2, 2, 1, 1, 1.00, 1),
(3, 2, 2, 1, 1.00, 1),
(4, 3, 1, 1, 5.00, 1),
(5, 4, 23, 1, 1.00, 1),
(6, 4, 18, 1, 1.00, 1),
(7, 5, 25, 1, 1.00, 1),
(8, 6, 23, 1, 1.00, 1),
(9, 7, 37, 1, 1.00, 1),
(10, 8, 37, 1, 1.00, 1),
(11, 9, 1, 1, 1.00, 1),
(12, 9, 3, 3, 1.00, 1),
(13, 10, 43, 1, 1.00, 1),
(14, 10, 39, 1, 1.00, 1),
(15, 11, 43, 1, 1.00, 1),
(16, 11, 39, 1, 1.00, 1),
(17, 12, 43, 1, 1.00, 1),
(18, 12, 39, 1, 1.00, 1),
(19, 13, 39, 1, 1.00, 1),
(20, 14, 45, 1, 1.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(9) NOT NULL,
  `pname` varchar(150) NOT NULL,
  `pcode` varchar(25) NOT NULL,
  `hsncode` varchar(25) NOT NULL,
  `manufacturer` varchar(500) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `avbl_qty` varchar(50) NOT NULL,
  `pur_price` double(10,2) NOT NULL,
  `full_price` double(10,2) NOT NULL,
  `pdesc` varchar(5000) NOT NULL,
  `cod` varchar(50) NOT NULL,
  `delivery_charges` double(10,2) NOT NULL,
  `imgpath` varchar(100) NOT NULL,
  `sc_id` int(9) NOT NULL,
  `sid` int(9) NOT NULL,
  `regdate` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pcode`, `hsncode`, `manufacturer`, `color`, `size`, `avbl_qty`, `pur_price`, `full_price`, `pdesc`, `cod`, `delivery_charges`, `imgpath`, `sc_id`, `sid`, `regdate`, `status`) VALUES
(1, 'Raw Groundnut Seed', '', '', 'Nidhi Seeds', 'Regular', 'Normal', '50', 120.00, 160.00, 'We[sp][sp]are[sp][sp]ranked[sp][sp]amongst[sp][sp]the[sp][sp]most[sp][sp]trusted[sp][sp]firms[sp][sp]deeply[sp][sp]engaged[sp][sp]in[sp][sp]offering[sp][sp]a[sp][sp]wide[sp][sp]range[sp][sp]of[sp][sp]Raw[sp][sp]Groundnut[sp][sp]Seed.', 'Available', 200.00, '/uploads/products/2_20230329113227.webp', 1, 2, '2023-03-29', 1),
(2, 'NPK 19:19:19', '', '', 'Calic Pharma', 'While', 'Normal', '100', 550.00, 1000.00, 'NPK[sp][sp]19:19:19[sp][sp]Water[sp][sp]Soluble[sp][sp]Fertilizer[sp][sp]For[sp][sp]Plants[sp][sp]And[sp][sp]Vegetables[sp][sp]For[sp][sp]Fast[sp][sp]Growth[sp][sp]And[sp][sp]Flowering.', 'Available', 100.00, '/uploads/products/2_20230329113734.jpg', 2, 2, '2023-03-29', 1),
(3, 'Silixol', '', '', 'Silixol', 'white', '250ml', '300', 600.00, 600.00, 'Privi[sp][sp]Silixol[sp][sp]with[sp][sp]its[sp][sp]unique[sp][sp]patented[sp][sp]technology[sp][sp]delivers[sp][sp]world’s[sp][sp]only[sp][sp]known[sp][sp]form[sp][sp]of[sp][sp]Bio-[sp][sp]active[sp][sp]silica[sp][sp](Stabilized[sp][sp]Orthosilicic[sp][sp]Acid).[nl]Privi[sp][sp]Silixol[sp][sp]helps[sp][sp]alleviate[sp][sp]Abiotic[sp][sp]stress[sp][sp]in[sp][sp]the[sp][sp]plant[sp][sp]–[sp][sp]Temperature[sp][sp]Fluctuations,[sp][sp]water[sp][sp]shortage,[sp][sp]excess[sp][sp]rain[sp][sp]and[sp][sp]soil[sp][sp]related[sp][sp]stress[sp][sp](Acidity,[sp][sp]Alkalinity,[sp][sp]Salinity,[sp][sp]heavy[sp][sp]metals[sp][sp]etc.)[nl]Crops:[sp][sp]Privi[sp][sp]Silixol[sp][sp]is[sp][sp]effective[sp][sp]on[sp][sp]majority[sp][sp]of[sp][sp]crops:[sp][sp]cereals,[sp][sp]pulses,[sp][sp]oilseeds,[sp][sp]vegetables,[sp][sp]plantation[sp][sp]crops,[sp][sp]fruits,[sp][sp]sugarcane[sp][sp]etc.', 'Available', 0.00, '/uploads/products/2_20230409014613.png', 3, 2, '2023-04-09', 1),
(4, 'BASF', '', '', 'BASF', 'Brown', '700ml', '50', 800.00, 800.00, 'Buy[sp][sp]BASF[sp][sp]700[sp][sp]ml[sp][sp]Stomp[sp][sp]Xtra[sp][sp]Herbicide[sp][sp]for[sp][sp]Soybean,[sp][sp]Cotton,[sp][sp]Chilli,[sp][sp]Onion,[sp][sp]Groundnut,[sp][sp]Mustard,[sp][sp]Cumin[sp][sp]online[sp][sp]in[sp][sp]India[sp][sp]at[sp][sp]wholesale[sp][sp]rates.[sp][sp]If[sp][sp]you[sp][sp]have[sp][sp]been[sp][sp]looking[sp][sp]for[sp][sp]BASF[sp][sp]700[sp][sp]ml[sp][sp]Stomp[sp][sp]Xtra[sp][sp]Herbicide[sp][sp]for[sp][sp]Soybean,[sp][sp]Cotton,[sp][sp]Chilli,[sp][sp]Onion,[sp][sp]Groundnut,[sp][sp]Mustard,[sp][sp]Cumin[sp][sp]dealers,[sp][sp]your[sp][sp]search[sp][sp]ends[sp][sp]here[sp][sp]as[sp][sp]you[sp][sp]can[sp][sp]get[sp][sp]the[sp][sp]best[sp][sp]BASF[sp][sp]700[sp][sp]ml[sp][sp]Stomp[sp][sp]Xtra[sp][sp]Herbicide', 'Available', 0.00, '/uploads/products/2_20230409020057.PNG', 3, 2, '2023-04-09', 1),
(5, 'PYRETHRUM EXTRACT 2%', '', '', 'KATYAYANI ORGANICS', 'NA', '1L', '40', 1245.00, 3800.00, 'Pyrethrum[sp][sp]Extract[sp][sp]2%[sp][sp]m/m[sp][sp]is[sp][sp]now[sp][sp]the[sp][sp]most[sp][sp]widely[sp][sp]used[sp][sp]herbal[sp][sp]insecticide[sp][sp]for[sp][sp]the[sp][sp]control[sp][sp]of[sp][sp]public[sp][sp]health[sp][sp]pests[sp][sp]by[sp][sp]mixing[sp][sp]with[sp][sp]either[sp][sp]diesel[sp][sp]oil[sp][sp]or[sp][sp]kerosene[sp][sp]as[sp][sp]a[sp][sp]space[sp][sp]spray.[nl]', 'Available', 0.00, '/uploads/products/2_20230409090633.png', 3, 2, '2023-04-09', 1),
(6, 'Vesticor Insecticide', '', '', 'BASF', 'white', '300ML', '90', 500.00, 600.00, 'BASF[sp][sp]Vesticor[sp][sp]allows[sp][sp]the[sp][sp]crop[sp][sp]to[sp][sp]realize[sp][sp]its[sp][sp]full[sp][sp]potential,[sp][sp]ensuring[sp][sp]more[sp][sp]healthy[sp][sp]pods,[sp][sp]becoming[sp][sp]the[sp][sp]right[sp][sp]choice[sp][sp]for[sp][sp]growers,[sp][sp]farmworkers[sp][sp]&amp;[sp][sp]the[sp][sp]environment.Gives[sp][sp]superior[sp][sp]control[sp][sp]for[sp][sp]Heliothis,[sp][sp]Spodoptera[sp][sp]as[sp][sp]well[sp][sp]as[sp][sp]Semilooper[sp][sp]and[sp][sp]provides[sp][sp]long[sp][sp]duration[sp][sp]control.[sp][sp]Vesticor™[sp][sp]is[sp][sp]a[sp][sp]leading[sp][sp]insecticide[sp][sp]for[sp][sp]Soybean,[sp][sp]Rice,[sp][sp]Groundnut,[sp][sp]Vegetables[sp][sp]and[sp][sp]Pulses.[sp][sp]Superior[sp][sp]crop[sp][sp]protection[sp][sp]leads[sp][sp]to[sp][sp]more[sp][sp]number[sp][sp]of[sp][sp]healthy[sp][sp]pods[sp][sp].', 'Available', 0.00, '/uploads/products/2_20230409091326.png', 3, 2, '2023-04-09', 1),
(7, 'ATTACK - Insecticides Sucking Pest (THRIPS AND MITES)', '', '', 'Zeal Biologicals', 'Brown', '500ml', '100', 9000.00, 110000.00, 'ATTACK[sp][sp]-[sp][sp]Insecticides[sp][sp]Details:[nl][nl]Our[sp][sp]state[sp][sp]of[sp][sp]the[sp][sp]art[sp][sp]products[sp][sp]use[sp][sp]Nano[sp][sp]technology[sp][sp]to[sp][sp]give[sp][sp]the[sp][sp]best[sp][sp]output[sp][sp]for[sp][sp]every[sp][sp]crop,[sp][sp]these[sp][sp]products[sp][sp]are[sp][sp]certified[sp][sp]in[sp][sp]the[sp][sp]United[sp][sp]Kingdom[sp][sp]and[sp][sp]are[sp][sp]100[sp][sp]percent[sp][sp]organic[sp][sp]products[sp][sp]with[sp][sp]fast[sp][sp]acting[sp][sp]formula[sp][sp]when[sp][sp]compared[sp][sp]to[sp][sp]other[sp][sp]organic[sp][sp]products,[sp][sp]hence[sp][sp]now[sp][sp]transition[sp][sp]from[sp][sp]chemical[sp][sp]fertilizers[sp][sp]to[sp][sp]organic[sp][sp]fertilizers[sp][sp]is[sp][sp]easier[sp][sp]than[sp][sp]you[sp][sp]think,[sp][sp]We[sp][sp]are[sp][sp]glad[sp][sp]to[sp][sp]present[sp][sp]to[sp][sp]you[sp][sp][sp][sp][sp][sp]control[sp][sp]of[sp][sp]various[sp][sp]sucking[sp][sp]pest.[sp][sp]Soil[sp][sp]application[sp][sp]in[sp][sp]cotton,[sp][sp]banana,[sp][sp]tomato,[sp][sp]chilli[sp][sp]and[sp][sp]in[sp][sp]any[sp][sp]crop.', 'Available', 0.00, '/uploads/products/2_20230409092712.PNG', 3, 2, '2023-04-09', 1),
(8, 'Cyprogold Profenofos 40%', '', '', 'Star Chemicals', 'NA', '100ml', '60', 169.00, 170.00, 'It[sp][sp]is[sp][sp]broad[sp][sp]spectrum[sp][sp]insecticide[sp][sp]having[sp][sp]contact[sp][sp]and[sp][sp]stomach[sp][sp]action.[nl]-[sp][sp]It[sp][sp]is[sp][sp]compatible[sp][sp]with[sp][sp]most[sp][sp]of[sp][sp]the[sp][sp]commonly[sp][sp]used[sp][sp]pesticides[sp][sp]except[sp][sp]those[sp][sp]of[sp][sp]alkaline[sp][sp]materials.[nl]-[sp][sp]It[sp][sp]is[sp][sp]a[sp][sp]foliar[sp][sp]insecticide[sp][sp]with[sp][sp]acaricidal[sp][sp]properties[sp][sp]for[sp][sp]use[sp][sp]in[sp][sp]action.', 'Available', 0.00, '/uploads/products/2_20230409093506.PNG', 3, 2, '2023-04-09', 1),
(9, 'Coconut Plant Fertilizer (12)', '', '', 'TrustBasket', 'white', '500grm', '44', 300.00, 330.00, 'Coconut[sp][sp]palms[sp][sp]are[sp][sp]heavy[sp][sp]feeders[sp][sp]which[sp][sp]need[sp][sp]a[sp][sp]continuous[sp][sp]supply[sp][sp]of[sp][sp]complete[sp][sp]fertilizers.[sp][sp]It[sp][sp]also[sp][sp]needs[sp][sp]secondary[sp][sp]and[sp][sp]micro[sp][sp]nutrients[sp][sp]to[sp][sp]get[sp][sp]higher[sp][sp]yield[sp][sp]and[sp][sp]to[sp][sp]prevent[sp][sp]Pencil[sp][sp]Point[sp][sp]disease/disorde', 'Available', 0.00, '/uploads/products/2_20230409094114.png', 2, 2, '2023-04-09', 1),
(10, 'Go Garden', '', '', 'Go Garden', 'white', '950g', '60', 250.00, 300.00, 'Urea[sp][sp]is[sp][sp]the[sp][sp]most[sp][sp]important[sp][sp]nitrogenous[sp][sp]fertilizer[sp][sp]in[sp][sp]the[sp][sp]market.[nl]Used[sp][sp]for[sp][sp]rich[sp][sp]source[sp][sp]of[sp][sp]nitrogenous,[sp][sp]can[sp][sp]be[sp][sp]easily[sp][sp]used[sp][sp]as[sp][sp]a[sp][sp]liquid[sp][sp]fertilizer,[sp][sp]promote[sp][sp]plant[sp][sp]height[sp][sp]growth', 'Available', 0.00, '/uploads/products/2_20230409094714.png', 2, 2, '2023-04-09', 1),
(11, 'Mahadhan', '', '', 'Mahadhan', 'white', '1kg', '42', 500.00, 500.00, 'Contains[sp][sp]N,[sp][sp]P[sp][sp]and[sp][sp]K[sp][sp]with[sp][sp]relatively[sp][sp]higher[sp][sp]content[sp][sp]of[sp][sp]Phosphorus[nl]It[sp][sp]is[sp][sp]a[sp][sp]mixed[sp][sp]grade[sp][sp]with[sp][sp]1:3:1[sp][sp]ratio[nl]It[sp][sp]promotes[sp][sp]crop[sp][sp]growth[sp][sp]by[sp][sp]stimulating[sp][sp]new[sp][sp]root[sp][sp]development[nl]It[sp][sp]reduces[sp][sp]flower[sp][sp]drop,[sp][sp]increases[sp][sp]fruit[sp][sp]setting[sp][sp]and[sp][sp]increases[sp][sp]yield[sp][sp]and[sp][sp]quality[sp][sp]of[sp][sp]the[sp][sp]produce', 'Available', 0.00, '/uploads/products/2_20230409095534.png', 2, 2, '2023-04-09', 1),
(12, 'Vermy Compost', '', '', 'P-S Cow Manure - Cattle manure 1 Kg', 'black', '11111', '40', 190.00, 200.00, 'Gardenia[sp][sp]Organic[sp][sp]Cow[sp][sp]Manure[sp][sp]provides[sp][sp]the[sp][sp]best[sp][sp]nutrition[sp][sp]for[sp][sp]all[sp][sp]types[sp][sp]of[sp][sp]plants[sp][sp]and[sp][sp]promotes[sp][sp]vigorous[sp][sp]growth.[sp][sp]Cattle[sp][sp]Manure[sp][sp]is[sp][sp]perfectly[sp][sp]aged[sp][sp]in[sp][sp]compost[sp][sp]pits[sp][sp]before[sp][sp]packaging[sp][sp]and[sp][sp]is[sp][sp]plush[sp][sp]with[sp][sp]nutrients[sp][sp]like[sp][sp]Nitrogen[sp][sp]but[sp][sp]also[sp][sp]provide[sp][sp]an[sp][sp]ideal[sp][sp]growing[sp][sp]option[sp][sp]for[sp][sp]plants[sp][sp]and[sp][sp]leafy[sp][sp]vegetables.[sp][sp]Mix[sp][sp]it[sp][sp]with[sp][sp]garden[sp][sp]soil[sp][sp]in[sp][sp]equal[sp][sp]quntities[sp][sp]or[sp][sp]as[sp][sp]advised[sp][sp]for[sp][sp]the[sp][sp]best[sp][sp]growing[sp][sp]medium.', 'Available', 0.00, '/uploads/products/2_20230409095952.png', 2, 2, '2023-04-09', 1),
(13, 'Huminoz-98', '', '', 'Utkarsh', 'Black', '900Gram', '50', 645.00, 650.00, 'Utkarsh[sp][sp]Huminoz[sp][sp]98[sp][sp]is[sp][sp]a[sp][sp]100%[sp][sp]organic[sp][sp]and[sp][sp]natural[sp][sp]product.[nl]Target[sp][sp]crops[nl]Banana,[sp][sp]Papaya,[sp][sp]Mango,[sp][sp]Sapota,[sp][sp]Pomegranate,[sp][sp]Guava,[sp][sp]Ber,[sp][sp]Apple,[sp][sp]Pear,[sp][sp]Peach,[sp][sp]Plum,[sp][sp]Loquat,[sp][sp]Almond,[sp][sp]Cherry,[sp][sp]Grape,[sp][sp]Fig,[sp][sp]Water[sp][sp]melon,[sp][sp]Musk[sp][sp]melon,[sp][sp]Jack[sp][sp]fruit,[sp][sp]Aonla,[sp][sp]Bael,[sp][sp]Custard[sp][sp]apple,[sp][sp]Phalsa,[sp][sp]Grape,[sp][sp]Orange.', 'Available', 0.00, '/uploads/products/2_20230410073431.png', 2, 2, '2023-04-10', 1),
(14, 'AGRI MAX Foliar spray', '', '', 'Amruth Organic Fertilizers', 'white', '500grm', '60.00', 165.00, 170.00, '[nl]AGRI[sp][sp]MAX[sp][sp]is[sp][sp]a[sp][sp]scientifically[sp][sp]prepared[sp][sp]micronutrient[sp][sp]mixture[sp][sp]in[sp][sp]powder[sp][sp]form[sp][sp]for[sp][sp]foliar[sp][sp]application.[sp][sp]This[sp][sp]contains[sp][sp]all[sp][sp]essential[sp][sp]micronutrients[sp][sp]required[sp][sp]by[sp][sp]plants[sp][sp]for[sp][sp]their[sp][sp]growth[sp][sp]and[sp][sp]development.[sp][sp]Agri[sp][sp]max[sp][sp]having[sp][sp]major[sp][sp]elements[sp][sp]of[sp][sp]Zinc[sp][sp]which[sp][sp]helps[sp][sp]in[sp][sp]plant[sp][sp]hormone[sp][sp]balance,[sp][sp]Auxin[sp][sp]activity[sp][sp]&amp;[sp][sp]division[sp][sp]of[sp][sp]cells.[sp][sp]ferrous[sp][sp]assists[sp][sp]in[sp][sp]biological[sp][sp]process,[sp][sp]photosynthesis[sp][sp]and[sp][sp]chlorophyll[sp][sp]synthesis.[sp][sp]', 'Available', 0.00, '/uploads/products/2_20230410074939.png', 2, 2, '2023-04-10', 1),
(15, 'BORON 20%', '', '', 'AJAY BIO-TECH', 'Brown', '500grm', '30.00', 290.00, 300.00, 'BORON[sp][sp]20%[sp][sp]is[sp][sp]a[sp][sp]pure[sp][sp]and[sp][sp]completely[sp][sp]soluble[sp][sp]powder[sp][sp]for[sp][sp]use[sp][sp]in[sp][sp]agriculture.[nl][nl]It[sp][sp]is[sp][sp]readily[sp][sp]available[sp][sp]to[sp][sp]plant[sp][sp]and[sp][sp]can[sp][sp]be[sp][sp]used[sp][sp]in[sp][sp]foliar[sp][sp]spray[sp][sp]which[sp][sp]is[sp][sp]free[sp][sp]from[sp][sp]harmful[sp][sp]and[sp][sp]toxic[sp][sp]chemicals.[nl][nl]Boron[sp][sp]plays[sp][sp]an[sp][sp]important[sp][sp]role[sp][sp]in[sp][sp]fertilization[sp][sp]of[sp][sp]flowers.[nl]', 'Available', 0.00, '/uploads/products/2_20230410075251.png', 2, 2, '2023-04-10', 1),
(16, 'FARMSON SUNFLOWER VARIETY', '', '', 'Farmson Biotech', 'Black', '500gm', '60.00', 11880.00, 11880.00, 'FB-BHASKAR[sp][sp]Plants[sp][sp]are[sp][sp]medium[sp][sp]tall,[sp][sp]Robust[sp][sp]growth,[sp][sp]Versatile[sp][sp]hybrid[sp][sp](Suitable[sp][sp]for[sp][sp]all[sp][sp]type[sp][sp]of[sp][sp]soils[sp][sp]&amp;[sp][sp]Agro[sp][sp]climatic[sp][sp]conditions)[sp][sp]Head[sp][sp]Medium,[sp][sp]Convex,[sp][sp]Semi[sp][sp]erect,[sp][sp]uniform,[sp][sp]and[sp][sp]Completely[sp][sp]filled[sp][sp]up[sp][sp]to[sp][sp]the[sp][sp]center[sp][sp]seed[sp][sp]setting[sp][sp]very[sp][sp]attractive[sp][sp]&amp;[sp][sp]good[sp][sp]eye[sp][sp]appeal.[sp][sp]', 'Available', 0.00, '/uploads/products/2_20230410110154.png', 1, 2, '2023-04-10', 1),
(17, 'SAAHO TO 3251 TOMATO SEEDS', '', '', 'BigHat', 'yellow', '3500 SEEDS', '90.00', 1380.00, 1380.00, 'Plant[sp][sp]is[sp][sp]very[sp][sp]strong[sp][sp]With[sp][sp]firmness[sp][sp]and[sp][sp]good[sp][sp]shelf[sp][sp]life.[nl]FRUIT[sp][sp]SHAPE:[sp][sp]Flat[sp][sp]round[nl]FRUIT[sp][sp]COLOR:[sp][sp]Atttractive[sp][sp]red[nl]Fruit[sp][sp]WEIGHT:[sp][sp]80-100gm[nl]MATURITY:[sp][sp]65-70[sp][sp]days', 'Available', 0.00, '/uploads/products/2_20230410110706.png', 1, 2, '2023-04-10', 1),
(18, 'Genco Orange', '', '', 'Genco Seeds Pvt Ltd', 'NA', '400 gm', '80.00', 1200.00, 1200.00, '[nl]Tropical[sp][sp]red[sp][sp]caroot[sp][sp],[sp][sp]Vigorous[sp][sp]Plant[sp][sp]give[sp][sp]dark[sp][sp]red[sp][sp]roots[sp][sp]after[sp][sp]70[sp][sp]to[sp][sp]75[sp][sp]days[sp][sp]of[sp][sp]sowing.[nl]Manufacturing[sp][sp]and[sp][sp]Marketing[sp][sp]various[sp][sp]high-quality[sp][sp]seeds[sp][sp]of[sp][sp]Fruits,[sp][sp]Vegetables[sp][sp]and[sp][sp]Flowers.[nl]Genco[sp][sp]Seeds[sp][sp]aims[sp][sp]to[sp][sp]give[sp][sp]best[sp][sp]quality[sp][sp]seeds[sp][sp]to[sp][sp]the[sp][sp]farmers[sp][sp]in[sp][sp]India[sp][sp]and[sp][sp]the[sp][sp]world.', 'Available', 0.00, '/uploads/products/2_20230410111251.png', 1, 2, '2023-04-10', 1),
(19, 'BERMUDA GRASS SEEDS', '', '', 'Bahama Grass, Cynodon dactylon, Dhoob, Dhurva Grass', 'Black', '1kg', '100.00', 2000.00, 2000.00, 'BERMUDA[sp][sp]GRASS[sp][sp]SEEDS[sp][sp]is[sp][sp][sp][sp]used[sp][sp]for[sp][sp]growing[sp][sp]the[sp][sp]grass.', 'Available', 0.00, '/uploads/products/2_20230410112048.png', 1, 2, '2023-04-10', 1),
(20, 'Dollar Wheat Seeds', '', '', 'Dollar Wheat Seeds', 'yellow', '10kg', '30.00', 1220.00, 1300.00, 'Dollar[sp][sp]Wheat[sp][sp]seeds[sp][sp]and[sp][sp]Agriculture[sp][sp],Wheat[sp][sp]Seeds[sp][sp]For[sp][sp]Farming[sp][sp]Or[sp][sp]Agriculture[sp][sp]use,Every[sp][sp]dollar[sp][sp]wheat[sp][sp]seeds[sp][sp]and[sp][sp]agriculture[sp][sp]wheat[sp][sp]seeds[sp][sp]for[sp][sp]farming[sp][sp]or[sp][sp]agriculture[sp][sp]use[sp][sp]are[sp][sp]tested[sp][sp]by[sp][sp]our[sp][sp]skilled[sp][sp]workers.All[sp][sp]of[sp][sp]our[sp][sp]products[sp][sp]are[sp][sp]checked[sp][sp]in[sp][sp]different[sp][sp]ways[sp][sp]to[sp][sp]make[sp][sp]sure[sp][sp]it[sp][sp]is[sp][sp]safe[sp][sp]and[sp][sp]effective[sp][sp]to[sp][sp]use.', 'Available', 0.00, '/uploads/products/2_20230410112805.png', 1, 2, '2023-04-10', 1),
(21, 'Palak seeds', '', '', 'Trust Seeds', 'green', '500grm', '50.00', 300.00, 310.00, 'We[sp][sp]provide[sp][sp]only[sp][sp]high[sp][sp]quality[sp][sp]seeds.[sp][sp]Our[sp][sp]seeds[sp][sp]exhibit[sp][sp]more[sp][sp]than[sp][sp]80%[sp][sp]germination[sp][sp]rate[sp][sp]under[sp][sp]ideal[sp][sp]conditions.[nl]', 'Available', 0.00, '/uploads/products/2_20230410113618.png', 1, 2, '2023-04-10', 1),
(22, 'GS-10 PEA SEED', '', '', 'GS-10 PEA SEED', 'green', '500grm', '40.00', 220.00, 230.00, 'Plant[sp][sp]Type-Medium[sp][sp]tall[sp][sp]with[sp][sp]well[sp][sp]spread[sp][sp]lateral[sp][sp]branches[nl]No.[sp][sp]of[sp][sp]seeds.9-10[sp][sp]/[sp][sp]pod[nl]Seed[sp][sp]Type=Green[sp][sp]color,[sp][sp]tender[sp][sp]and[sp][sp]very[sp][sp]sweet.', 'Available', 0.00, '/uploads/products/2_20230410114746.png', 1, 2, '2023-04-10', 1),
(23, 'neu.farm Fenugreek / Methi', '', '', 'neu.farm Fenugreek / Methi', 'yellow', '500grm', '50.00', 100.00, 110.00, 'The[sp][sp]neu.farm[sp][sp]Fenugreek[sp][sp]/[sp][sp]Methi[sp][sp]is[sp][sp]the[sp][sp]main[sp][sp]culinary[sp][sp]spice[sp][sp]to[sp][sp]enhance[sp][sp]the[sp][sp]taste[sp][sp]of[sp][sp]your[sp][sp]dishes.[sp][sp]These[sp][sp]methi[sp][sp]seeds[sp][sp]are[sp][sp]of[sp][sp]high[sp][sp]quality[sp][sp]and[sp][sp]pack[sp][sp]a[sp][sp]powerful[sp][sp]aroma.[sp][sp]They[sp][sp]have[sp][sp]a[sp][sp]far[sp][sp]more[sp][sp]pleasant[sp][sp]taste[sp][sp]when[sp][sp]cooked,[sp][sp]they[sp][sp]are[sp][sp]used[sp][sp]widely[sp][sp]as[sp][sp]a[sp][sp]base[sp][sp]in[sp][sp]making[sp][sp]curries,[sp][sp]chutneys[sp][sp]and[sp][sp]pastes,[sp][sp]and[sp][sp]can[sp][sp]be[sp][sp]dry[sp][sp]roasted[sp][sp]to[sp][sp]reduce[sp][sp]its[sp][sp]bitterness.[sp][sp]', 'Available', 0.00, '/uploads/products/2_20230410120029.png', 1, 2, '2023-04-10', 1),
(24, 'Sweet Corn Seed', '', '', 'KATYAYANI ORGANICS', 'yellow', '500grm', '40.00', 220.00, 300.00, 'sweet[sp][sp]corn[sp][sp]seed[sp][sp]', 'Available', 0.00, '/uploads/products/2_20230410120941.png', 1, 2, '2023-04-10', 1),
(25, 'Prime UAV Drone Spraying Service On Rent', '', '', 'Prime UAV', 'NA', '15ltr', '30.00', 700.00, 700.00, 'Minimum[sp][sp]30[sp][sp]Acre[sp][sp]Spraying[sp][sp]work[sp][sp]is[sp][sp]Required[sp][sp]per[sp][sp]Day[nl]This[sp][sp]Service[sp][sp]is[sp][sp]available[sp][sp]for[sp][sp]all[sp][sp]types[sp][sp]of[sp][sp]Crops[sp][sp]in[sp][sp]Gujarat[sp][sp]such[sp][sp]as[sp][sp]Cotton,[sp][sp]Groundnut,[sp][sp]Paddy,[sp][sp]Pomegranate,[sp][sp]Sesamum,[sp][sp]Tomato,[sp][sp]Watermelon,[sp][sp]Onion,[sp][sp]Potato,[sp][sp]Mustard,[sp][sp]Chilli,[sp][sp]Sugarcane,[sp][sp]Peas,[sp][sp]and[sp][sp]many[sp][sp]more[sp][sp]crops.[nl]A[sp][sp]drone[sp][sp]will[sp][sp]spray[sp][sp]10[sp][sp]liters[sp][sp]of[sp][sp]water[sp][sp]on[sp][sp]One[sp][sp]Acre[sp][sp]and[sp][sp]it[sp][sp]will[sp][sp]take[sp][sp]7-8[sp][sp]min[sp][sp]to[sp][sp]cover[sp][sp]a[sp][sp]one-acre[sp][sp]area.[nl]The[sp][sp]pesticide[sp][sp]and[sp][sp]water[sp][sp]for[sp][sp]spraying[sp][sp]will[sp][sp]be[sp][sp]taken[sp][sp]by[sp][sp]the[sp][sp]farmer.', 'Not Available', 0.00, '/uploads/products/4_20230410055853.png', 4, 4, '2023-04-10', 1),
(26, 'drone uav 10kg payload agricultural sprayer drone for paddy spraying On rent', '', '', 'Bharat Drones', 'Gold', '17ltr', '70.00', 1500.00, 1550.00, 'Drone[sp][sp]service[sp][sp]are[sp][sp]avaliable[sp][sp]form[sp][sp]farming[sp][sp]on[sp][sp]rent[sp][sp]for[sp][sp]per[sp][sp]area[sp][sp]1550[sp][sp]per[sp][sp]aker.', 'Available', 0.00, '/uploads/products/4_20230410061227.png', 4, 4, '2023-04-10', 1),
(27, 'Composted Organic Fertilizer', '', '', 'Composted Organic Fertilizer', 'white', '500 gm', '30.00', 1430.00, 1450.00, '100%[sp][sp]Organic[sp][sp]All[sp][sp]purpose[sp][sp]fertilizer[sp][sp]for[sp][sp]plants[sp][sp]of[sp][sp]vegetables[sp][sp]&amp;[sp][sp]herbs.[sp][sp]Contains[sp][sp]3-4-4[sp][sp]NPK[sp][sp]along[sp][sp]with[sp][sp]micronutrients[sp][sp]and[sp][sp]thousands[sp][sp]of[sp][sp]living[sp][sp]microbes', 'Not Available', 0.00, '/uploads/products/4_20230410074305.png', 2, 4, '2023-04-10', 1),
(28, 'Organic Plant Bone Meal Fertilizer', '', '', 'Organic Plant Bone Meal Fertilizer', 'white', '500grm', '660.00', 780.00, 7800.00, 'Organic[sp][sp]Plant[sp][sp]Boosts[sp][sp]growth[sp][sp]of[sp][sp]plants[sp][sp]naturally.[sp][sp]Used[sp][sp]for[sp][sp]Shiny[sp][sp]aves,[sp][sp]bigger[sp][sp]flowers,[sp][sp]plants[sp][sp]growth,[sp][sp]root[sp][sp]development,[sp][sp]etc.[nl]Organic[sp][sp]Plant[sp][sp]Can[sp][sp]be[sp][sp]used[sp][sp]to[sp][sp]remove[sp][sp]the[sp][sp]acidity[sp][sp]of[sp][sp]the[sp][sp]soil.[sp][sp]Bone[sp][sp]meal[sp][sp]is[sp][sp]especially[sp][sp]good[sp][sp]for[sp][sp]better[sp][sp]root[sp][sp]development[sp][sp]and[sp][sp]increased[sp][sp]yield.', 'Available', 0.00, '/uploads/products/4_20230410075308.png', 2, 4, '2023-04-10', 1),
(29, 'Liquid Organic Fertilizer for Leafy Greens- NPK (10-10-10)', '', '', 'NPK', 'yellow', '500grm', '40.00', 300.00, 300.00, 'Organic,[sp][sp]all[sp][sp]natural,[sp][sp]fast[sp][sp]release[sp][sp]fertilizer[sp][sp]with[sp][sp]NPK[sp][sp]value[sp][sp]of[sp][sp]10-10-10[sp][sp]and[sp][sp]micro-nutrients.[nl][nl]•[sp][sp]Don’t[sp][sp]use[sp][sp]chemical[sp][sp]fertilizers[sp][sp]in[sp][sp]your[sp][sp]Vegetable[sp][sp]garden.[sp][sp]Switch[sp][sp]to[sp][sp]all[sp][sp]natural[sp][sp]fertilizer[sp][sp]with[sp][sp]high[sp][sp]NPK[sp][sp]for[sp][sp]best[sp][sp]results.[nl]•[sp][sp]Perfect[sp][sp]for[sp][sp]all[sp][sp]leafy[sp][sp]greens[sp][sp]like[sp][sp]Spinach,[sp][sp]Kale,[sp][sp]Lettuce,[sp][sp]Mint,[sp][sp]Coriander[sp][sp]etc.', 'Available', 0.00, '/uploads/products/4_20230410080814.png', 2, 4, '2023-04-10', 1),
(30, 'Magnesium Sulphate', '', '', 'Gacil', 'Red', '500grm', '30.00', 880.00, 900.00, 'Magnesium[sp][sp]sulfate[sp][sp](MgSO4)[sp][sp]can[sp][sp]be[sp][sp]used[sp][sp]as[sp][sp]a[sp][sp]fertilizer[sp][sp]to[sp][sp]provide[sp][sp]plants[sp][sp]with[sp][sp]essential[sp][sp]magnesium[sp][sp]and[sp][sp]sulfur[sp][sp]nutrients.[sp][sp]These[sp][sp]nutrients[sp][sp]are[sp][sp]important[sp][sp]for[sp][sp]the[sp][sp]growth[sp][sp]and[sp][sp]development[sp][sp]of[sp][sp]plants[sp][sp]and[sp][sp]play[sp][sp]a[sp][sp]role[sp][sp]in[sp][sp]various[sp][sp]metabolic[sp][sp]processes,[sp][sp]such[sp][sp]as[sp][sp]photosynthesis[sp][sp]and[sp][sp]protein[sp][sp]synthesis.[sp][sp]Magnesium[sp][sp]sulfate[sp][sp]fertilizer[sp][sp]can[sp][sp]be[sp][sp]applied[sp][sp]to[sp][sp]soil[sp][sp]through[sp][sp]irrigation[sp][sp]systems[sp][sp]or[sp][sp]directly[sp][sp]to[sp][sp]plant[sp][sp]leaves[sp][sp]as[sp][sp]a[sp][sp]foliar[sp][sp]spray.[sp][sp]', 'Available', 0.00, '/uploads/products/4_20230410081502.png', 2, 4, '2023-04-10', 1),
(31, 'Garden Tool Set', '', '', 'Garden Tool Set', 'orange', '6 tools', '30.00', 344.00, 3600.00, 'Green[sp][sp]India[sp][sp]Garden[sp][sp]Tool[sp][sp]Set[sp][sp]Garden[sp][sp]Tool[sp][sp]Kit[sp][sp]-[sp][sp]6[sp][sp]Tools[sp][sp]with[sp][sp]pruner[sp][sp]Garden[sp][sp]Tool[sp][sp]Kit[sp][sp](6[sp][sp]Tools)', 'Available', 0.00, '/uploads/products/2_20230410084243.png', 5, 2, '2023-04-10', 1),
(32, 'Rotavator', '', '', 'shaktiman', 'orange', '1', '40.00', 30000.00, 30000.00, 'rotavator[sp][sp]tiller[sp][sp]is[sp][sp]specially[sp][sp]developed[sp][sp]for[sp][sp]wet[sp][sp]land,[sp][sp]light[sp][sp]and[sp][sp]medium[sp][sp]soil.[sp][sp]It[sp][sp]is[sp][sp]designed[sp][sp]to[sp][sp]be[sp][sp]light[sp][sp]in[sp][sp]weight[sp][sp]but[sp][sp]sturdy[sp][sp]by[sp][sp]structure[sp][sp]which[sp][sp]makes[sp][sp]this[sp][sp]Series[sp][sp]most[sp][sp]suitable[sp][sp]for[sp][sp]paddy[sp][sp]fields.[sp][sp]All[sp][sp]the[sp][sp]parts[sp][sp]are[sp][sp]developed[sp][sp]&amp;[sp][sp]manufactured[sp][sp]with[sp][sp]high-tech[sp][sp]precision[sp][sp]by[sp][sp]using[sp][sp]CNC[sp][sp]machines,[sp][sp]Laser[sp][sp]cutting[sp][sp]machines[sp][sp]&amp;[sp][sp]Robotic[sp][sp]Welding.[sp][sp]Machines[sp][sp]are[sp][sp]powder[sp][sp]coated[sp][sp]to[sp][sp]make[sp][sp]it[sp][sp]rich[sp][sp]with[sp][sp]aesthetics.', 'Available', 0.00, '/uploads/products/2_20230410084735.png', 5, 2, '2023-04-10', 1),
(33, 'Reversible Manual Plough', '', '', 'Fieldking', 'orange', 'NA', '5.00', 40000.00, 40000.00, 'Fieldking[sp][sp]Reversible[sp][sp]Manual[sp][sp]Plough[sp][sp]price[sp][sp]is[sp][sp]available[sp][sp]at[sp][sp]Tractor[sp][sp]Junction.[sp][sp]You[sp][sp]can[sp][sp]just[sp][sp]log[sp][sp]on[sp][sp]to[sp][sp]us[sp][sp]and[sp][sp]register[sp][sp]your[sp][sp]number.[sp][sp]After[sp][sp]that,[sp][sp]our[sp][sp]customer[sp][sp]support[sp][sp]team[sp][sp]will[sp][sp]help[sp][sp]you[sp][sp]out[sp][sp]with[sp][sp]Fieldking[sp][sp]Reversible[sp][sp]Manual[sp][sp]Plough.[sp][sp]For[sp][sp]further,[sp][sp]you[sp][sp]have[sp][sp]to[sp][sp]stay[sp][sp]tuned[sp][sp]with[sp][sp]us.', 'Available', 0.00, '/uploads/products/2_20230410085628.png', 5, 2, '2023-04-10', 1),
(34, 'Jumbo Fixed Mould Board Plough', '', '', 'Fieldking', 'orange', 'NA', '60000.00', 60000.00, 60000.00, '[sp][sp]it[sp][sp]provides[sp][sp]effective[sp][sp]work[sp][sp]on[sp][sp]the[sp][sp]field[sp][sp]that[sp][sp]makes[sp][sp]Fieldking[sp][sp]Jumbo[sp][sp]Fixed[sp][sp]Mould[sp][sp]Board[sp][sp]Plough[sp][sp]perfect[sp][sp]for[sp][sp]farming.[sp][sp]It[sp][sp]comes[sp][sp]under[sp][sp]the[sp][sp]Plough[sp][sp]Category.[sp][sp]And,[sp][sp]it[sp][sp]has[sp][sp]50-110[sp][sp]HP[sp][sp]Implement[sp][sp]Power[sp][sp]that[sp][sp]provides[sp][sp]fuel[sp][sp]efficient[sp][sp]work.[sp][sp]It[sp][sp]is[sp][sp]an[sp][sp]implement[sp][sp]that[sp][sp]comes[sp][sp]from[sp][sp]the[sp][sp]Fieldking[sp][sp]brand[sp][sp]house[sp][sp]known[sp][sp]for[sp][sp]its[sp][sp]superb[sp][sp]quality[sp][sp]niches.', 'Available', 0.00, '/uploads/products/2_20230410090043.PNG', 5, 2, '2023-04-10', 1),
(35, 'Paddy Tractor Model.', '', '', 'Sonalika', 'RED', 'NA', '09.00', 90000.00, 90000.00, 'it[sp][sp]provides[sp][sp]effective[sp][sp]work[sp][sp]on[sp][sp]the[sp][sp]field[sp][sp]that[sp][sp]makes[sp][sp]Sonalika[sp][sp]Paddy[sp][sp]Tractor[sp][sp]Model,[sp][sp]Double[sp][sp]Wheel,[sp][sp]Open[sp][sp]Rotor[sp][sp]Triple[sp][sp]Action,[sp][sp]New[sp][sp]Model[sp][sp]perfect[sp][sp]for[sp][sp]farming.[sp][sp]It[sp][sp]comes[sp][sp]under[sp][sp]the[sp][sp]Thresher[sp][sp]Category.[sp][sp]And,[sp][sp]it[sp][sp]has[sp][sp]Implement[sp][sp]Power[sp][sp]that[sp][sp]provides[sp][sp]fuel[sp][sp]efficient[sp][sp]work.[sp][sp]It[sp][sp]is[sp][sp]an[sp][sp]implement[sp][sp]that[sp][sp]comes[sp][sp]from[sp][sp]the[sp][sp]Sonalika[sp][sp]brand[sp][sp]house[sp][sp]known[sp][sp]for[sp][sp]its[sp][sp]superb[sp][sp]quality[sp][sp]niches.', 'Available', 0.00, '/uploads/products/2_20230410090416.PNG', 5, 2, '2023-04-10', 1),
(36, 'AgriPro 16L Knapsack Manual Sprayer', '', '', 'AgriPro', 'Blue Black', '17ltr', '30.00', 0.00, 0.00, 'The[sp][sp]AGRIPRO[sp][sp]16[sp][sp]L[sp][sp]Knapsack[sp][sp]Sprayer[sp][sp]is[sp][sp]featured[sp][sp]with[sp][sp]easy[sp][sp]to[sp][sp]fill,[sp][sp]easy-clean[sp][sp]and[sp][sp]leak-free[sp][sp]tank.[sp][sp]Its[sp][sp]spray[sp][sp]gun[sp][sp]is[sp][sp]made[sp][sp]of[sp][sp]brass[sp][sp]and[sp][sp]has[sp][sp]a[sp][sp]non-metallic[sp][sp]handgrip[sp][sp]for[sp][sp]ease[sp][sp]of[sp][sp]operation.[sp][sp]The[sp][sp]swivel[sp][sp]nozzle[sp][sp]provides[sp][sp]excellent[sp][sp]spraying[sp][sp]accuracy.[sp][sp]Suitable[sp][sp]for[sp][sp]spraying[sp][sp]both[sp][sp]liquid[sp][sp]fertilizers[sp][sp]and[sp][sp]liquid[sp][sp]pesticides[sp][sp]on[sp][sp]all[sp][sp]crops[sp][sp]i.e.,[sp][sp]vegetables[sp][sp]&amp;[sp][sp]fruits', 'Available', 0.00, '/uploads/products/2_20230410091419.PNG', 5, 2, '2023-04-10', 1),
(37, 'Balwaan 50CC 4 Stroke Brush Cutter BX-50', '', '', 'Balwaan', 'red', '630ml', '40.00', 20000.00, 20000.00, 'This[sp][sp]machine[sp][sp]is[sp][sp]an[sp][sp]excellent[sp][sp]choice[sp][sp]for[sp][sp]the[sp][sp]smaller[sp][sp]jobs[sp][sp]in[sp][sp]the[sp][sp]garden,[sp][sp]fields[sp][sp]and[sp][sp]on[sp][sp]farms.[nl]It’s[sp][sp]got[sp][sp]everything[sp][sp]you[sp][sp]need[sp][sp]to[sp][sp]stay[sp][sp]on[sp][sp]top[sp][sp]of[sp][sp]maintenance.[nl]It[sp][sp]has[sp][sp]a[sp][sp]powerful[sp][sp]50cc[sp][sp]engine[sp][sp]that[sp][sp]includes[sp][sp]a[sp][sp]full[sp][sp]range[sp][sp]of[sp][sp]accessories[sp][sp]like[sp][sp]a[sp][sp]wrap-around[sp][sp]guard,[sp][sp]and[sp][sp]plenty[sp][sp]of[sp][sp]extra[sp][sp]blades.[nl]Balwaan[sp][sp]4[sp][sp]Stroke[sp][sp]Brush[sp][sp]Cutter[sp][sp]is[sp][sp]the[sp][sp]perfect[sp][sp]tool[sp][sp]for[sp][sp]your[sp][sp]brush[sp][sp]clearing[sp][sp]needs.', 'Available', 0.00, '/uploads/products/2_20230410092359.png', 5, 2, '2023-04-10', 1),
(38, 'THIOXAM', '', '', 'KATYAYANI ORGANICS', 'white', '250ml', '90.00', 980.00, 800.00, 'Katyayani[sp][sp]Thioxam[sp][sp]contains[sp][sp]THIAMETHOXAM[sp][sp]25%[sp][sp]WG.[sp][sp]It[sp][sp]is[sp][sp]a[sp][sp]broad-spectrum[sp][sp]insecticide.[sp][sp]It[sp][sp]is[sp][sp]novel[sp][sp]for[sp][sp]controlling[sp][sp]various[sp][sp]sucking[sp][sp]insect[sp][sp]pests[sp][sp]in[sp][sp]many[sp][sp]crops.[sp][sp]It[sp][sp]is[sp][sp]a[sp][sp]very[sp][sp]good[sp][sp]insecticide[sp][sp]for[sp][sp]various[sp][sp]sucking[sp][sp]pests[sp][sp]which[sp][sp]have[sp][sp]developed[sp][sp]resistance[sp][sp]to[sp][sp]other[sp][sp]conventional[sp][sp]insecticides.[sp][sp]It[sp][sp]has[sp][sp]good[sp][sp]translaminar[sp][sp]action.', 'Available', 0.00, '/uploads/products/2_20230410092951.png', 3, 2, '2023-04-10', 1),
(39, 'MITLAR-E', '', '', 'AJAY BIO-TECH', 'NA', '250ml', '60.00', 450.00, 470.00, 'Mitlar[sp][sp]-[sp][sp]E[sp][sp]is[sp][sp]Emamectin[sp][sp]Benzoate[sp][sp]1.9[sp][sp]%[sp][sp]EC[sp][sp]formulation.[sp][sp]It[sp][sp]belongs[sp][sp]to[sp][sp]ivermectin[sp][sp]family.[sp][sp]It[sp][sp]is[sp][sp]broad[sp][sp]spectrum,[sp][sp]highly[sp][sp]effective[sp][sp]and[sp][sp]low[sp][sp]toxic[sp][sp]insecticide,[sp][sp]It[sp][sp]has[sp][sp]stomach[sp][sp]action[sp][sp]on[sp][sp]the[sp][sp]larvae[sp][sp]when[sp][sp]ingested[sp][sp]by[sp][sp]it.[sp][sp]Affected[sp][sp]larvae[sp][sp]becomes[sp][sp]paralyzed[sp][sp]and[sp][sp]stops[sp][sp]feeding[sp][sp]shortly[sp][sp]after[sp][sp]exposure[sp][sp]and[sp][sp]subsequently[sp][sp]dies[sp][sp]after[sp][sp]72[sp][sp]hours.', 'Available', 0.00, '/uploads/products/2_20230410093353.png', 3, 2, '2023-04-10', 1),
(40, 'Marshal Bio-Pesticide', '', '', 'Elixir Crop', 'RED', '1L', '20.00', 4200.00, 4200.00, 'Marshal[sp][sp]is[sp][sp]Naturally[sp][sp]Derived[sp][sp]Plant[sp][sp]Extract[sp][sp]Product.[sp][sp]It[sp][sp]Contains[sp][sp]Nutrient[sp][sp]Elements[sp][sp]to[sp][sp]Support[sp][sp]Plants[sp][sp]From[sp][sp]Various[sp][sp]Larvae.[sp][sp]It[sp][sp]Develops[sp][sp]Immunity[sp][sp]in[sp][sp]Plants[sp][sp]Against[sp][sp]Biotic[sp][sp]Stress.[sp][sp]1.5[sp][sp]-[sp][sp]2[sp][sp]ml[sp][sp]Per[sp][sp]Litre[sp][sp]Of[sp][sp]Clean[sp][sp]Water', 'Available', 0.00, '/uploads/products/2_20230411024550.PNG', 3, 2, '2023-04-11', 1),
(41, 'RAKSHAK', '', '', 'Zeal Biologicals', 'NA', '500ML', '30.00', 1100.00, 1100.00, 'An[sp][sp]organic[sp][sp]product[sp][sp]for[sp][sp]plant[sp][sp]diseases.Zeal[sp][sp]biologicals[sp][sp]Rakshak[sp][sp]helps[sp][sp]to[sp][sp]controls[sp][sp]all[sp][sp]type[sp][sp]of[sp][sp]chewing[sp][sp]pest[sp][sp]like[sp][sp]larvicides,[sp][sp]leaf[sp][sp]miners,[sp][sp]collar[sp][sp]rot[sp][sp]etc.,[sp][sp]It[sp][sp]prevents[sp][sp]disease[sp][sp]like[sp][sp]stem[sp][sp]rot,[sp][sp]root[sp][sp]rot,[sp][sp]collar[sp][sp]rot,[sp][sp]leaf[sp][sp]minerals,[sp][sp]larvicide[sp][sp]and[sp][sp]other[sp][sp]pest[nl]', 'Available', 0.00, '/uploads/products/2_20230411024838.PNG', 3, 2, '2023-04-11', 1),
(42, 'MITLAR PLUS - A Neem Based Formulation', '', '', 'AJAY BIO-TECH', 'yellow', '500grm', '20.00', 326.00, 326.00, 'Mitlar[sp][sp]Plus[sp][sp]is[sp][sp]a[sp][sp]bio-pesticide[sp][sp]based[sp][sp]on[sp][sp]selective[sp][sp]herbal[sp][sp]extracts[sp][sp]of[sp][sp]plants[sp][sp]like[nl]neem,[sp][sp]medicinal[sp][sp]plants[sp][sp]and[sp][sp]other[sp][sp]ingredients[sp][sp]having[sp][sp]insecticidal[sp][sp]properties,[sp][sp]which[sp][sp]gives[sp][sp]effective[sp][sp]control[sp][sp]on[sp][sp]various[sp][sp]insect[sp][sp]pests[sp][sp]especially[sp][sp]all[sp][sp]sucking[sp][sp]pests[sp][sp]like[sp][sp]red[sp][sp]mites[sp][sp]&amp;[sp][sp]Larvae.', 'Available', 0.00, '/uploads/products/2_20230411025200.PNG', 3, 2, '2023-04-11', 1),
(43, 'AGRO-KILL', '', '', 'NanoBee', 'white', '250ml', '10.00', 725.00, 725.00, 'AGRO-KILL[sp][sp]is[sp][sp]a[sp][sp]broad-spectrum[sp][sp]Nanotechnology[sp][sp]based[sp][sp]smart[sp][sp]crop[sp][sp]protector[nl]•[sp][sp]AGRO-KILL[sp][sp]protects[sp][sp]crop[sp][sp]from[sp][sp]a[sp][sp]variety[sp][sp]of[sp][sp]sucking[sp][sp]pests,[sp][sp]bacterial[sp][sp]infections[sp][sp]and[sp][sp]fungal[sp][sp]infections.[nl]•[sp][sp]Also[sp][sp]shows[sp][sp]repellant[sp][sp]mode[sp][sp]of[sp][sp]action[sp][sp]due[sp][sp]to[sp][sp]its[sp][sp]unique[sp][sp]ingredients.[nl]•[sp][sp]100%[sp][sp]Organic[sp][sp]&amp;[sp][sp]Non-carcinogenic[sp][sp]product.', 'Available', 0.00, '/uploads/products/2_20230411030109.PNG', 3, 2, '2023-04-11', 1),
(44, 'Beetroot Magic Ruby Beetroot Seeds', '', '', 'Gentex', 'Black', '250GRAM', '10.00', 580.00, 580.00, 'Round[sp][sp]dark[sp][sp]red[sp][sp]root[sp][sp]with[sp][sp]smooth[sp][sp]skin[nl]Medium[sp][sp]early[sp][sp]maturity[nl]Beetroot[sp][sp]Magic[sp][sp]Ruby[sp][sp]Beetroot[sp][sp]Seeds[sp][sp](Chukandar[sp][sp]ke[sp][sp]Beej)[sp][sp]fruit[sp][sp]color[sp][sp]is[sp][sp]Dark[sp][sp]red[sp][sp]flesh[nl]Beetroot[sp][sp]Magic[sp][sp]Ruby[sp][sp]Beetroot[sp][sp]Seeds[sp][sp](Chukandar[sp][sp]ke[sp][sp]Beej)[sp][sp]is[sp][sp]a[sp][sp]high[sp][sp]yield[sp][sp]variety.[nl]Maturity[sp][sp]Days[sp][sp]:[sp][sp]60[sp][sp]to[sp][sp]70[sp][sp]days[nl][nl]', 'Available', 0.00, '/uploads/products/2_20230411030441.PNG', 1, 2, '2023-04-11', 1),
(45, 'G 10 Green Peas', '', '', 'Dhananjay', 'GREEN', '500GRAM', '10.00', 220.00, 220.00, '[nl]Fruit[sp][sp]Color[sp][sp]of[sp][sp]G[sp][sp]10[sp][sp]Green[sp][sp]Peas[sp][sp](Matar)[sp][sp]Seeds[sp][sp]:-[sp][sp]Lush[sp][sp]green[nl]Days[sp][sp]to[sp][sp]1st[sp][sp]picking[sp][sp][sp][sp]:[sp][sp]-[sp][sp]80[sp][sp]-[sp][sp]110[sp][sp]Days[nl][nl]Pod[sp][sp]Shape[sp][sp]:-[sp][sp]Slender[sp][sp]smooth,[sp][sp]pencil-type[nl]Pod[sp][sp]Length[sp][sp]:-[sp][sp][sp][sp]9[sp][sp]to[sp][sp]7[sp][sp]cm[nl]Grain[sp][sp]Quality[sp][sp]of[sp][sp]G[sp][sp]10[sp][sp]Green[sp][sp]Peas[sp][sp](Matar)[sp][sp]Seeds[sp][sp]:-[sp][sp][sp][sp]Sweet[sp][sp]and[sp][sp]tasty[nl][nl]Special[sp][sp]Features[sp][sp]:-[sp][sp][sp][sp]6[sp][sp]to[sp][sp]10[sp][sp]grains[sp][sp]per[sp][sp]pod', 'Available', 0.00, '/uploads/products/2_20230411030818.PNG', 1, 2, '2023-04-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `pimg_id` int(9) NOT NULL,
  `imgpath` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `pid` int(9) NOT NULL,
  `sid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`pimg_id`, `imgpath`, `status`, `pid`, `sid`) VALUES
(1, '/uploads/products_images/2_0_20230329113227.webp', 1, 1, 2),
(2, '/uploads/products_images/2_0_20230329113735.jpg', 1, 2, 2),
(3, '/uploads/products_images/2_0_20230409014613.png', 1, 3, 2),
(4, '/uploads/products_images/2_0_20230409020057.PNG', 1, 4, 2),
(5, '/uploads/products_images/2_1_20230409020057.PNG', 1, 4, 2),
(6, '/uploads/products_images/2_0_20230409090633.png', 1, 5, 2),
(7, '/uploads/products_images/2_0_20230409091326.png', 1, 6, 2),
(8, '/uploads/products_images/2_1_20230409091326.png', 1, 6, 2),
(9, '/uploads/products_images/2_0_20230409092712.PNG', 1, 7, 2),
(10, '/uploads/products_images/2_1_20230409092712.PNG', 1, 7, 2),
(11, '/uploads/products_images/2_0_20230409093506.png', 1, 8, 2),
(12, '/uploads/products_images/2_0_20230409094114.png', 1, 9, 2),
(13, '/uploads/products_images/2_0_20230409094714.png', 1, 10, 2),
(14, '/uploads/products_images/2_0_20230410073431.png', 1, 13, 2),
(15, '/uploads/products_images/2_0_20230410074939.png', 1, 14, 2),
(16, '/uploads/products_images/2_0_20230410110154.png', 1, 16, 2),
(17, '/uploads/products_images/2_1_20230410110154.png', 1, 16, 2),
(18, '/uploads/products_images/2_0_20230410110706.png', 1, 17, 2),
(19, '/uploads/products_images/2_0_20230410112048.PNG', 1, 19, 2),
(20, '/uploads/products_images/2_0_20230410112805.png', 1, 20, 2),
(21, '/uploads/products_images/2_1_20230410112805.png', 1, 20, 2),
(22, '/uploads/products_images/2_0_20230410113618.png', 1, 21, 2),
(23, '/uploads/products_images/2_0_20230410114746.png', 1, 22, 2),
(24, '/uploads/products_images/2_1_20230410114746.png', 1, 22, 2),
(25, '/uploads/products_images/2_0_20230410120029.png', 1, 23, 2),
(26, '/uploads/products_images/4_0_20230410061227.png', 1, 26, 4),
(27, '/uploads/products_images/4_0_20230410074305.png', 1, 27, 4),
(28, '/uploads/products_images/4_0_20230410075308.png', 1, 28, 4),
(29, '/uploads/products_images/4_0_20230410080814.png', 1, 29, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(9) NOT NULL,
  `pid` int(9) NOT NULL,
  `price` double(10,2) NOT NULL,
  `cgst` double(10,2) NOT NULL,
  `sgst` double(10,2) NOT NULL,
  `igst` double(10,2) NOT NULL,
  `rate_status` tinyint(1) NOT NULL,
  `rate_date` date NOT NULL,
  `sid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rate_id`, `pid`, `price`, `cgst`, `sgst`, `igst`, `rate_status`, `rate_date`, `sid`) VALUES
(1, 1, 150.00, 0.00, 0.00, 0.00, 1, '2023-03-29', 2),
(2, 2, 650.00, 0.00, 0.00, 0.00, 1, '2023-03-29', 2),
(3, 3, 515.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(4, 4, 830.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(5, 5, 2200.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(6, 6, 579.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(7, 7, 1050.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(8, 8, 160.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(9, 9, 315.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(10, 10, 239.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(11, 11, 289.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(12, 12, 195.00, 0.00, 0.00, 0.00, 1, '2023-04-09', 2),
(13, 13, 436.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(14, 14, 160.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(15, 15, 200.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(16, 16, 7960.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(17, 17, 940.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(18, 18, 1200.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(19, 19, 1900.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(20, 20, 1200.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(21, 21, 290.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(22, 22, 200.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(23, 23, 100.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(24, 24, 200.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(25, 25, 700.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(26, 26, 1500.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(27, 27, 1400.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(28, 28, 700.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(29, 29, 300.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(30, 30, 800.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 4),
(31, 31, 300.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(32, 32, 30000.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(33, 33, 40000.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(34, 34, 60000.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(35, 35, 89000.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(36, 36, 0.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(37, 37, 19000.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(38, 38, 980.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(39, 39, 450.00, 0.00, 0.00, 0.00, 1, '2023-04-10', 2),
(40, 40, 4100.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2),
(41, 41, 870.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2),
(42, 42, 326.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2),
(43, 43, 700.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2),
(44, 44, 510.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2),
(45, 45, 190.00, 0.00, 0.00, 0.00, 1, '2023-04-11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sid` int(9) NOT NULL,
  `sname` varchar(250) NOT NULL,
  `smob` varchar(13) NOT NULL,
  `spass` varchar(50) NOT NULL,
  `altmob` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `pincode` int(6) NOT NULL,
  `btype` varchar(100) NOT NULL,
  `gst` varchar(20) NOT NULL,
  `ac_no` varchar(20) NOT NULL,
  `ac_name` varchar(50) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `ifsc` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sid`, `sname`, `smob`, `spass`, `altmob`, `email`, `address`, `pincode`, `btype`, `gst`, `ac_no`, `ac_name`, `bank_name`, `ifsc`, `regdate`, `status`) VALUES
(2, 'SWAMI KRUSHI SEVA', '1234567890', '123456', '9975508577', 'zelosinfotech@gmail.com', 'Pasaydan Complex, Manchar', 410503, '', '0123456789', '550001010050703', 'Zelos Infotech', 'Union Bank Of India', 'UBIN00012', '2021-07-17', 1),
(3, 'AgriBazaar', '8698208208', '123', '8888789402', 'zelosit@gmail.com', 'chakan', 410501, 'Partnership', '12457896', '550001010050703', 'Loco Sale', 'union bank of india', 'UBIN0570575', '2021-12-26', 1),
(4, 'Ajay Jadhav', '9423233145', 'ajayy', '9423233145', 'ajay123@gmail.com', 'Ashok Stambh,Nashik', 420001, 'Solo Proprietorship', '12DWWW123', '1233345556', 'Ajay Jadhav', 'Maharashtra bank', 'DE234244', '2023-04-10', 2),
(5, 'Patil Fertilizer', '9423233246', 'patil', '9423233246', 'patil@123.gmail.com', 'Mancar. Tal-Ambegoan.Pune', 443320, 'Pvt.Ltd', '12DWWW125', '1232456567', 'patil', 'Maharashtra bank', 'DE234245', '2023-04-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(9) NOT NULL,
  `slider_name` varchar(100) NOT NULL,
  `imgpath` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `regdate` date NOT NULL,
  `uid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `imgpath`, `status`, `regdate`, `uid`) VALUES
(7, 'Slider1', '/uploads/slider/1_20230329103232.jpg', 1, '2023-03-29', 1),
(8, 'Slider2', '/uploads/slider/1_20230329103244.jpg', 1, '2023-03-29', 1),
(9, 'Slider3', '/uploads/slider/1_20230329103256.jpg', 1, '2023-03-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sc_id` int(9) NOT NULL,
  `sc_name` varchar(150) NOT NULL,
  `imgpath` varchar(150) NOT NULL,
  `regdate` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uid` int(9) NOT NULL,
  `cid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sc_id`, `sc_name`, `imgpath`, `regdate`, `status`, `uid`, `cid`) VALUES
(1, 'Seeds', '/uploads/subcategory/1_20230329104438.jpg', '2023-03-29', 1, 1, 3),
(2, 'Fertilizer', '/uploads/subcategory/1_20230329104627.jpg', '2023-03-29', 1, 1, 3),
(3, 'Pesticides', '/uploads/subcategory/1_20230329104901.jpg', '2023-03-29', 1, 1, 3),
(4, 'Drone Fertilizer Sprayer', '/uploads/subcategory/1_20230329105137.jpg', '2023-03-29', 1, 1, 3),
(5, 'Farming Equipments', '/uploads/subcategory/1_20230329105658.jpg', '2023-03-29', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(9) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `uregdate` datetime NOT NULL,
  `utype` int(9) NOT NULL,
  `ustatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `pass`, `uregdate`, `utype`, `ustatus`) VALUES
(1, 'admin', 'admin', '2022-05-21 00:00:00', 1, 1),
(7, 'Jayshri', 'Jayshri', '2022-05-21 18:28:25', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `end_user`
--
ALTER TABLE `end_user`
  ADD PRIMARY KEY (`euid`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`fr_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fr_id` (`euid`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `rate_id` (`rate_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `sc_id` (`sc_id`),
  ADD KEY `uid` (`sid`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`pimg_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`sid`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`sid`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `comp_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `end_user`
--
ALTER TABLE `end_user`
  MODIFY `euid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `franchise`
--
ALTER TABLE `franchise`
  MODIFY `fr_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `pimg_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rate_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `sid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sc_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD CONSTRAINT `company_profile_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`euid`) REFERENCES `end_user` (`euid`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`),
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`rate_id`) REFERENCES `rate` (`rate_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`sc_id`) REFERENCES `sub_category` (`sc_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`);

--
-- Constraints for table `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`),
  ADD CONSTRAINT `product_img_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `sub_category_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
