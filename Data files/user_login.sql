-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2021 at 03:46 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order`
--

DROP TABLE IF EXISTS `invoice_order`;
CREATE TABLE IF NOT EXISTS `invoice_order` (
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_tax_per` varchar(250) NOT NULL,
  `order_total_after_tax` double(10,2) NOT NULL,
  `order_amount_paid` decimal(10,2) NOT NULL,
  `order_total_amount_due` decimal(10,2) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_order`
--

INSERT INTO `invoice_order` (`order_id`, `user_id`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`) VALUES
(0, 1, '2021-05-05 03:11:24', 'Sitayya', 'Yellora', '50.00', '0.00', '0', 50.00, '50.00', '0.00', ''),
(0, 1, '2021-05-09 14:25:03', 'kalogi', 'yadgir', '606.00', '0.00', '0', 606.00, '606.00', '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order_item`
--

DROP TABLE IF EXISTS `invoice_order_item`;
CREATE TABLE IF NOT EXISTS `invoice_order_item` (
  `order_item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_item_id`, `order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(0, 0, '801245266', 'shik sampooo', '5.00', '2.00', '10.00'),
(0, 0, '801124566', 'amla oil', '2.00', '20.00', '40.00'),
(0, 0, '86101594024', 'Dabur Dant Rakshak Toothpaste ', '2.00', '73.00', '146.00'),
(0, 0, '89010724305', 'Dalda vanaspat', '5.00', '65.00', '325.00'),
(0, 0, '89010278613', 'Cadbury Oreo Original Vanilla Cream Biscuits ', '5.00', '27.00', '135.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

DROP TABLE IF EXISTS `invoice_user`;
CREATE TABLE IF NOT EXISTS `invoice_user` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` bigint NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_user`
--

INSERT INTO `invoice_user` (`id`, `email`, `password`, `first_name`, `last_name`, `mobile`, `address`) VALUES
(1, 'drishikesh884@gmail.com', 'rishi', 'Dasari', 'Rishikesh', 9390360262, '10-150,Makthal,Mahabubnagar,Telangana');

-- --------------------------------------------------------

--
-- Table structure for table `login_data`
--

DROP TABLE IF EXISTS `login_data`;
CREATE TABLE IF NOT EXISTS `login_data` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `mobile_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `mobile_number` (`mobile_number`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `login_data`
--

INSERT INTO `login_data` (`userid`, `name`, `mobile_number`, `email`, `password`) VALUES
(1, 'sai', '9010947311', '', '76e08ffc5710ddf9a395745870f08264'),
(12, 'SomaSekhar', '9010947312', '', '76e08ffc5710ddf9a395745870f08264'),
(13, 'Dasari Rishikesh', '9390360262', '', 'ac4b0a568e8d3a14b521eae07006bc95'),
(14, 'Tarun', '9080706050', '', '507250b947cc397023a9595001fcf167');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int NOT NULL,
  `mobile_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `pid` int NOT NULL,
  `total_amount` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `list` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`list`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `mobile_number`, `pid`, `total_amount`, `created_at`, `list`) VALUES
(1, '', 0, 0, '2021-04-27 05:31:10', 1),
(2, '9390360262', 6, 491, '2021-04-27 07:16:01', 33),
(2, '9390360262', 3, 491, '2021-04-27 07:16:01', 34),
(3, '9390360262', 3, 750, '2021-04-27 11:34:39', 35),
(3, '9390360262', 4, 750, '2021-04-27 11:34:39', 36),
(4, '9390360262', 5, 200, '2021-04-27 11:37:58', 37),
(5, '9080706050', 5, 1152, '2021-05-01 16:28:41', 38),
(5, '9080706050', 4, 1152, '2021-05-01 16:28:41', 39),
(5, '9080706050', 3, 1152, '2021-05-01 16:28:41', 40),
(5, '9080706050', 185, 1152, '2021-05-01 16:28:41', 41),
(6, '9390360262', 5, 950, '2021-05-02 10:23:33', 42),
(6, '9390360262', 4, 950, '2021-05-02 10:23:33', 43),
(6, '9390360262', 3, 950, '2021-05-02 10:23:33', 44),
(7, '9390360262', 4, 895, '2021-05-07 05:53:49', 45),
(7, '9390360262', 2, 895, '2021-05-07 05:53:49', 46),
(7, '9390360262', 52, 895, '2021-05-07 05:53:49', 47),
(7, '9390360262', 6, 895, '2021-05-07 05:53:49', 48),
(8, '9390360262', 2, 736, '2021-05-07 05:54:44', 49),
(8, '9390360262', 4, 736, '2021-05-07 05:54:44', 50),
(8, '9390360262', 6, 736, '2021-05-07 05:54:44', 51);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pid` int NOT NULL,
  `PRODUCTS NAME` varchar(89) NOT NULL,
  `CATEGORY NAME` varchar(19) NOT NULL,
  `BARCODE NUMBER` bigint NOT NULL,
  `MRP` int NOT NULL,
  `NET WEIGHT` varchar(12) NOT NULL,
  `MANUFACTURER` varchar(37) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `BARCODE NUMBER` (`BARCODE NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `PRODUCTS NAME`, `CATEGORY NAME`, `BARCODE NUMBER`, `MRP`, `NET WEIGHT`, `MANUFACTURER`) VALUES
(1, 'Dove Hair Therapy Daily shine shampoo 650ml', 'shampoo', 8901030704321, 380, '650ml', 'Hindustan Unilever Limited'),
(2, 'Clinic plus strong and long health shampoo 650ml', 'Shampoo', 8901030747731, 295, '650ml', 'hindustan Unilever Limited'),
(3, 'Head&shoulders cool menthol anti dandruff shampoo 675ml', 'shampoo', 4902430345675, 400, '675ml', 'Procter&Gamble'),
(4, 'Pantene pro-v hair fall control shampoo 650ml', 'shampoo', 4902450899277, 350, '650ml', 'Procter&Gamble'),
(5, 'Dabour Vatika naturals ayurvedic shampoo 640ml', 'shampoo', 8901207026607, 200, '640ml', 'Dabour India Limited'),
(6, 'Sunsilk co- creations keratin yoghurt lusciously thick&long shampoo 180ml', 'shampoo', 8901030610561, 91, '180ml', 'Hindustan Unilever Limited'),
(7, 'Himalaya Butea frondosa&Bhirngaraja anti hair fall shampoo 100ml', 'shampoo', 8901138838539, 84, '100ml', 'Himalaya drug company'),
(8, 'Tresemme smooth &shine shampoo 85ml', 'shampoo', 8901030700231, 59, '85ml', 'Hindustan Unilever Limited'),
(9, 'Nyle naturals advanced damage repair paraben free shampoo 800ml', 'shampoo', 8902929222458, 250, '800ml', 'Cavinkare Private Limited'),
(10, 'Dabur amla hair oil 450ml', 'Hair oil', 8901207019029, 170, '450ml', 'Dabour India Limited'),
(11, 'Hair&care walnut &almond hair oil 200ml', 'Hair oil', 8901088137614, 107, '200ml', 'Marico Limited'),
(12, 'Patanjali tejus coconut hair oil 200ml', 'Hair oil', 8904109400414, 70, '200ml', 'Patanjali'),
(13, 'Clinic plus nourishing non sticky hair oil 100ml', 'Hair oil', 8901030558924, 42, '100ml', 'Hindustan Unilever Limited'),
(14, 'Nature sure hair growth oil 100ml', 'Hair oil', 8908003648750, 232, '100ml', 'Wet and Dry Personal care'),
(15, 'Khadi pure herbal pure neem hair oil 210ml', 'Hair oil', 8906078621173, 120, '210ml', 'Khadi PureGramodyog'),
(16, 'Herbal hills keshohills hair oil 100ml', 'Hair oil', 8906008264944, 183, '100ml', 'Isha agro developers'),
(17, 'DR.Batra\'s jojoba hair oil 200ml', 'Hair oil', 8904050700540, 168, '200ml', 'Dr.Batra\'s positive health'),
(18, 'Aroma magic stimulate hair oil 20ml', 'Hair oil', 8904089803953, 349, '20ml', 'Blossom kochhar beauty'),
(19, 'Dabur sarson amla hair oil 80ml', 'Hair oil', 89008720, 19, '80ml', 'Dabur India Limited'),
(20, 'Himalaya bhringaraj and amalaki anti hair fall oil 200ml', 'Hair oil', 8901138504151, 213, '200ml', 'Himalaya drug company'),
(21, 'Emami diamond shine with diamond serum ammonia free hair colour,natural black (1.0) 20g', 'hair colour', 8901248257350, 15, '20g+20ml', 'Emami Limited'),
(22, 'Garnier color naturals crème riche ammonia free hair colour ,natural black(1)(70ml + 60g)', 'hair colour', 8901526204458, 149, '60g+70ml', 'Loreal India private limited'),
(23, 'Godrej rich crème ammonia freehair colour, black (20g+20ml)', 'hair colour', 8901023010309, 28, '20g+20ml', 'Godrej&Boyce mfg co limited'),
(24, 'Indica easy shampoo based ammonia free hair colour.black (3) 25ml', 'hair colour', 8902979026079, 40, '25ml', 'Cavinkare Private Limited'),
(25, 'Colour mate hair colour cream,natural black(2.0) 130ml', 'hair colour', 8906016050256, 84, '130ml', 'Heena Industries ovt ltd'),
(26, 'Colour soft no ammonia ultra gentle hair colour dark brown (80ml+ 24g)', 'hair colour', 8901023001284, 148, '80ml+24g', 'Godrej consumer products ltd'),
(27, 'Streax shine on cream hair color, natural black (1) 25g +25ml', 'hair colour', 8901247571426, 52, '25g+25ml', 'Hygienic research institute'),
(28, 'Nupur pure heena 200g', 'hair colour', 8901023022555, 99, '200g', 'Godrej consumer products ltd'),
(29, 'Super vasmol 33 kesh kala oil based hair colour 500ml', 'hair colour', 8901247571211, 32, '50ml', 'Hygienic research institute'),
(30, 'Colgate strong teeth dental cream toothpaste (200+200+100g)', 'Tooth paste', 8901314543172, 149, '200+200+100g', 'Colgate palmolive india ltd'),
(31, 'Closeup ever fresh red hot gel toothpaste 150g(pack of 2)', 'tooth paste', 8901030820441, 102, '150+150g', 'Hindustan Unilever Limited'),
(32, 'Dabur Red tooth paste (200+100)g(with free toothbrush)', 'Tooth paste', 8901207027376, 127, '200+100g', 'Dabur India Limited'),
(33, 'Meswak complete oral care family [ack toothpaste (200+100)g', 'Tooth paste', 8901207018275, 122, '200+100g', 'Dabur India Limited'),
(34, 'Pepsodent Germicheck+ Cavity Protection Toothpaste 150 g (Pack of 2)', 'Tooth paste', 8901030674310, 199, '150+150g', 'Hindustan Unilever Limited'),
(35, 'Patanjali Dant Kanti Dental Cream (200+200+100)g', 'Tooth paste', 8904109451539, 170, '200+200+100g', 'Patanjali'),
(36, 'Sensodyne Sensitive Fresh Gel Toothpaste 150 g (Buy 2 Get 1 Free)', 'Tooth paste', 8901571009503, 370, '450g', 'Hindustan Unilever Limited'),
(37, 'Colgate Max Fresh Peppermint Ice Blue Gel Toothpaste 150 g', 'Tooth paste', 8901314309921, 89, '150g', 'colgate palmolive india ltd'),
(38, 'Vicco Vajradanti Ayurvedic Paste 200g', 'Tooth paste', 8901288012001, 112, '200g', 'vicco laboratories'),
(39, 'Dabur Dant Rakshak Toothpaste 175 g', 'Tooth paste', 8901207035050, 73, '175g', 'Dabur India Limited'),
(40, 'Himalaya Complete Care Toothpaste 150 g', 'Tooth paste', 8901138836108, 75, '150g', 'the himalaya drug company'),
(41, 'Ayush Clove Oil Anti Cavity Toothpaste 300 g', 'tooth paste', 8901030715167, 132, '150+150g', 'Hindustan Unilever Limited'),
(42, 'Ayush Rock Salt Whitening Toothpaste 300 g', 'Tooth paste', 8901030715174, 132, '150+150g', 'Hindustan Unilever Limited'),
(43, 'colgate slim soft', 'tooth brush', 8901314116345, 70, '', 'Colgate palmolive india ltd'),
(44, 'Colgate Vedshakti Mouth Protect Spray 10 g', 'mouth spray', 8901314597816, 69, '10g', 'Colgate palmolive india ltd'),
(45, 'Listerine Cool Mint Mouthwash 500ml', 'mouth spray', 8901012133064, 207, '500ml', 'Johnson &johnson limited'),
(46, 'Spraymint Elaichill Mouth Freshener 15 g', 'mouth spray', 8906006640092, 93, '15g', 'midas care pharmaceutical'),
(47, 'Closeup Red Hot Mouthwash 250 ml', 'mouth spray', 8901030725487, 117, '250ml', 'Hindustan Unilever Limited'),
(48, 'Sundrop heart blended oil 1L', 'Blended oil', 8901512680204, 195, '1L', 'Agro tech foods ltd'),
(49, 'Sundrop superlite advanced sunflower oil 1L', 'sunflower oil', 8901512102803, 185, '1L', 'Agro tech foods ltd'),
(50, 'Figaro Olive Oil 200 ml', 'olive oil', 8410125600467, 245, '200ml', 'Deoleo Sa'),
(51, 'Good Life Refined Sunflower Oil 1 L', 'sunflower oil', 8902901218947, 149, '1L', 'Private label'),
(52, 'Healthy heart refined sunflower oil 1L', 'sunflower oil', 8906022620016, 159, '1L', 'Healthy heart foods'),
(53, 'Super Sarvottam Sunflower Oil 1 L', 'sunflower oil', 8908001679022, 151, '1L', 'PBS OIL industries ltd'),
(54, 'Good Life Kachi Ghani Mustard Oil 1 L', 'mustard oil', 8904132908765, 145, '1L', 'Private label'),
(55, 'Siega Pomace Olive Oil 1 L', 'olive oil', 8902901219579, 449, '1L', 'Private label'),
(56, 'Rafael Salgado Pure Olive Oil 175 ml', 'olive oil', 8420701101776, 269, '175ml', 'Rian imports and marketing'),
(57, 'Good Life Filtered Groundnut Oil 1 L', 'groundnut oil', 8902901026771, 151, '1L', 'Private label'),
(58, 'Dhara Filtered Groundnut Oil 1 L', 'groundnut oil', 8906004620157, 175, '1L', 'Mother dairyfruit&vegetable pvt'),
(59, 'Dhara filtered Groundnut Oil 1 L', 'groundnut oil', 8906004620171, 179, '1L', 'Mother dairyfruit&vegetable pvt'),
(60, '24 Mantra Organic Expeller Pressed Groundnut Oil 1 L', 'groundnut oil', 8904083505945, 298, '1L', 'Sresta natural bioproducts pvt ltd'),
(61, 'Good LIFE Rice bran oil 1L', 'Rice bran oil', 8902901028300, 124, '1L', 'Private label'),
(62, 'Gemini 100% Physically Refined Ricebran Oil 1 L (Pouch)', 'Rice bran oil', 8906006339927, 139, '1L', 'Cargill India pvt ltd'),
(63, 'Dalda vanaspati 500 ml', 'Vanaspati', 8906014640046, 65, '500ml', 'Bunge India pvt ltd'),
(64, 'Godrej Vanaspati 500 ml', 'vanaspati', 8908006527113, 65, '500ml', 'Godrej&Boyce mfg co limited'),
(65, 'Britannia Bourbon The Original Cream Biscuits 150 g', 'cream biscuits', 8901063139213, 25, '150g', 'Britannia industries ltd'),
(66, 'Treat JIM jam ctream biscuits 100 g', 'cream biscuits', 8901063029163, 24, '100g', 'Britannia industries ltd'),
(67, 'Cadbury Oreo Original Vanilla Cream Biscuits 120g', 'cream biscuits', 7622201428525, 27, '120g', 'Mondelez India foods pvt ltd'),
(68, 'Sunfeast Dark Fantasy Choco Fills Cookies 75 g', 'cream biscuits', 8901725132873, 25, '75g', 'ITC ltd'),
(69, 'Cadbury oreo Original Vanilla Cream Biscuits 300 g', 'cream biscuits', 8901233027548, 75, '300g', 'Mondelez India foods pvt ltd'),
(70, 'Britannia Treat Choco Creme Wafers 75 g', 'cream biscuits', 8901063031852, 23, '75g', 'Britannia industries ltd'),
(71, 'Sunfeast Bounce cream biscuits 34g', 'cream biscuits', 8901725133597, 5, '34g', 'ITC ltd'),
(72, 'Britannia Good Day Cashew Cookies 200 g', 'cookies', 8901063093287, 32, '200g', 'Britannia industries ltd'),
(73, 'Unibic friut &nut cookies 500g', 'cookies', 8906009070636, 83, '500g', 'Unibic foods India pvt lt'),
(74, 'Unibic choco chip cookies 500g', 'cookies', 8906009079813, 83, '500g', 'Unibic foods India pvt lt'),
(75, 'Good day pista badam cookies 200 g', 'cookies', 8901063094154, 38, '200g', 'Britannia industries ltd'),
(76, 'Mom\'s magic cashew & almond cookies 300 g', 'cookies', 8901725135478, 33, '300g', 'ITC ltd'),
(77, 'Happy Happy choco -chip cookies 60 g', 'cookies', 8901719115691, 10, '60g', 'Parle products pvt.ltd'),
(78, 'Parle 20-20 butter cookies 150g', 'cookies', 8901719109867, 19, '150g', 'Parle products pvt.ltd'),
(79, 'Cadbury chocobakes choc filled cookies 75 g', 'cookies', 7622201098971, 28, '75g', 'Mondelez India foods pvt ltd'),
(80, 'Priyagold Bitter & bite cookies 750g', 'cookies', 8901652142068, 135, '750g', 'Surya agro foods'),
(81, 'Milano chaco&hazelnut centre filled cookies 60 g', 'cookies', 8901719110023, 30, '60g', 'Parle products pvt.ltd'),
(82, 'Coconut oats cookies 150 g', 'cookies', 8906076131773, 140, '150g', 'Mimansa industries pvt.ltd'),
(83, 'Parle-G Original Glucose Biscuits 250g', 'glucose biscuits', 8901719255168, 19, '250g', 'Parle products pvt.ltd'),
(84, 'Hot Garlic instant noodles 240 g', 'Instant Noodles', 8901595963362, 39, '240g', 'Capital foods limited'),
(85, 'Snac tac Masala Instant Noodles 292 g', 'Instant Noodles', 8904132912854, 35, '292g', 'Private label'),
(86, 'Top Ramen New Masala Instant Noodles 280 g', 'Instant Noodles', 8901014002412, 56, '280g', 'Indo Nissin pvt.ltd'),
(87, 'Snac tac atta instant noodles 75 g', 'Instant Noodles', 8904132912977, 13, '75g', 'Private label'),
(88, 'Ching\'s secret veg hakka noodles 150 g', 'Hakka Noodles', 8901595851218, 25, '150g', 'Capital foods limited'),
(89, 'Inchi veg hakka noodles 150 g', 'Hakka Noodles', 8906108530000, 18, '150g', 'Meelting pot food products pvt.ltd'),
(90, 'Sunfeast yippee magic masala instant noodles 60 g', 'Instant Noodles', 8901725106935, 10, '60g', 'ITC ltd'),
(91, 'Maggi 2-Minute Masala Instant Noodles 70 g', 'Instant Noodles', 8901058851298, 12, '70g', 'Nestie India Limited'),
(92, 'Nissin Paneer Butter Masala Instant Cup Noodles 70 g', 'Instant Noodles', 8901014012619, 45, '70g', 'Indo Nissin pvt.ltd'),
(93, 'Patanjali chatpataa atta instant noodles 60 g', 'Instant Noodles', 8904109409967, 10, '60g', 'Patanjali ayurved ltd'),
(94, 'Sunfeast yippee power up atta instant noodles 280 g', 'Instant Noodles', 8901725181413, 52, '280g', 'ITC ltd'),
(95, 'Ching\'s Secret Schezwan Instant Noodles 240 g', 'Instant Noodles', 8901595963355, 37, '240g', 'Capital foods limited'),
(96, 'Bambino macaroni pep pasta 875 g', 'Pasta', 8901242136903, 90, '875g', 'Bambino pasta food Industries'),
(97, 'Sunfeast Yippee Creamy Corn Tricolor Instant Pasta 65 g', 'pasta', 8901725112127, 24, '65g', 'ITC ltd'),
(98, 'Weikfield cheesy creamy pasta 64 g', 'pasta', 8901808005186, 21, '64g', 'Weikfield products co india pvt ltd'),
(99, 'Snactac Elbow Pasta 900 g', 'pasta', 8904132913271, 75, '900g', 'Private label'),
(100, 'Disano penne rigate pasta 500 g', 'Pasta', 8906047520230, 99, '500g', 'Das foodtech pvt.ltd'),
(101, 'Del Monte Food Craft Rigate Penne Pasta 500 g', 'Pasta', 8901246004192, 117, '500g', 'Fieldfresh'),
(102, 'Del Monte Chifferi Rigati Pasta 500 g', 'Pasta', 8901246003546, 177, '500g', 'Fieldfresh foods pvt ltd'),
(103, 'Del Monte Spaghetti pasta 500 g', 'pasta', 8901246003577, 177, '500g', 'Fieldfresh foods pvt ltd'),
(104, 'Bambino Premium Penne Pasta 250 g', 'pasta', 8901242108306, 66, '250g', 'Bambino pasta food Industries'),
(105, 'Weikfield Fusilli Pasta 200 g', 'Pasta', 8901808004479, 66, '200g', 'Weikfield products co india pvt ltd'),
(106, 'Maggi Cheese Macaroni Instant Pazzta 70 g (Pouch)', 'instant pazzata', 8901058847482, 24, '70g', 'nestle india limited'),
(107, 'Maggie Masala penne instant pazzta 65 g', 'instant pazzata', 8901058847505, 24, '65g', 'nestle india limited'),
(108, 'Maggi cheesy tomato twist instant pazzta 64 g', 'instant pazzata', 8901058847420, 24, '64g', 'nestle india limited'),
(109, 'Maggie Mushroom penne instant pazzta 64 g', 'instant pazzata', 8901058847529, 24, '64g', 'nestle india limited'),
(110, 'Bambino Roasted Vermicelli 900 g', 'Vermicelli', 8904287001090, 90, '900g', 'Bambino agro industries ltd'),
(111, 'Bambino popular Vermicelli 400 g', 'Vermicelli', 8904287001045, 38, '400g', 'Bambino agro industries ltd'),
(112, 'Bambino Roasted Vermicelli 500 g', 'Vermicelli', 8901242107408, 56, '500g', 'Bambino agro industries ltd'),
(113, 'Anil Roasted Short Vermicelli 450 g', 'Vermicelli', 8906042150036, 44, '450g', 'Naga agencies'),
(114, 'Anil Ragi Vermicelli 450 g (Pouch)', 'Vermicelli', 8906042150081, 59, '450g', 'Naga agencies'),
(115, 'Anil Rice Vermicelli 500 g', 'Vermicelli', 8906042151101, 66, '500g', 'Naga agencies'),
(116, 'Anil Finger Millet Vermicelli (Ragi) 180 g', 'Vermicelli', 8906042150074, 24, '180g', 'Naga agencies'),
(117, 'Anil Lemon Vermicelli 200 g', 'Vermicelli', 8906042150104, 25, '200g', 'Naga agencies'),
(118, 'Anil Tamarind Roasted Short Vermicelli 200 g', 'Vermicelli', 8906042150098, 25, '200g', 'Naga agencies'),
(119, 'Elephant roasted Vermicelli 400 g', 'Vermicelli', 8906005820051, 66, '400g', 'elephant paste products'),
(120, 'Blue bird Vermicelli 200g', 'Vermicelli', 8904037610411, 19, '200g', 'Blue bird foods India pvt ltd'),
(121, 'Kellogg\'s Corn Flakes 1.2 kg', 'Flakes', 8901499010216, 299, '1.2kg', 'Kelloggs India ltd'),
(122, 'Patanjali Corn Flakes Mix 500 g', 'Flakes', 8904109470820, 140, '500g', 'Patanjali ayurved ltd'),
(123, 'Kwality Choco Flakes Combi Pack 375 g', 'Flakes', 8906014902229, 200, '375g', 'Kwality makers snacks pvt ltd'),
(124, 'Kwality Corn Flakes 500 g', 'Flakes', 8906014900997, 172, '500g', 'Pagariya foods products pvt ltd'),
(125, 'Patanjali Choco Flakes 125 g', 'Flakes', 8904109463518, 52, '125g', 'Patanjali ayurved ltd'),
(126, 'Saffola Veggie Twist Instant Masala Oats 500 g', 'oats', 8901088129800, 145, '500g', 'Marico industries'),
(127, 'Saffola Classic Instant Masala Oats 500 g', 'oats', 8901088129824, 145, '500g', 'Marico industries'),
(128, 'Healthy Life Oats 1 kg', 'oats', 8904132905887, 130, '1kg', 'Reliance Retail ltd'),
(129, 'Saffola Peppy Tomato Instant Masala Oats 38 g', 'oats', 8901088068741, 14, '38g', 'Marico industries'),
(130, 'Praakritik Jambo Rolled Oats 500 g', 'oats', 8906095191772, 360, '500g', 'Shashi natural and organics'),
(131, 'Disano 100% Whole Grain Oats 500 g', 'oats', 8904320002558, 93, '500g', 'Das foodtech pvt.ltd'),
(132, 'Kellogg\'s Nuts Delight Muesli 500 g', 'muesli', 8901499010469, 292, '500g', 'Kelloggs India ltd'),
(133, 'Kellogg\'s fruit&nut Muesli 240 g', 'muesli', 8901499010483, 144, '240g', 'Kelloggs India ltd'),
(134, 'Yoga Bar Dark Chocolate + Cranberry Muesli 400 g', 'muesli', 8908005144632, 302, '400g', 'Sproutlife foods pvt ltd'),
(135, 'Bagrry\'s Fruit \'n\' Fibre Strawberry Muesli 500 g', 'muesli', 8902710500707, 297, '500g', 'Bagrry\'s india ltd'),
(136, 'Garden Maharastra special diet chivda 150g', 'chips', 8902979031455, 42, '150g', 'Cavinkare Private Limited'),
(137, 'Bingo mad angles 130 g', 'chips', 8901725111472, 25, '130g', 'ITC ltd'),
(138, 'Pringles peri peri potato crisps 110 g', 'chips', 8886467108952, 89, '110g', 'Kelloggs India ltd'),
(139, 'Chheda\'s tomato banana chips 170 g', 'chips', 8904071704565, 44, '170g', 'chheda food specialiteis lts'),
(140, 'Maxx sizziling Barbeque chips 59.4 g', 'chips', 8901491001144, 28, '59.4g', 'Pepsico foods'),
(141, 'Aashirvaad Whole Wheat Atta 1 kg', 'wheat atta', 8901725121747, 49, '1kg', 'ITC ltd'),
(142, 'Good Life MP Wheat Chakki Atta 1 kg', 'wheat atta', 8902901027983, 39, '1kg', 'Private label'),
(143, 'Chakki atta 5 kg', 'wheat atta', 8902901001709, 159, '5kg', 'Private label'),
(144, 'Nature fresh sampoorna chakki Atta 10 kg', 'wheat atta', 8906006333079, 331, '10kg', 'Cargill India pvt ltd'),
(145, 'Pillsbury Chakki Fresh Atta / Flour 1 kg', 'wheat atta', 8906000210291, 49, '1kg', 'General mills India pvt ltd'),
(146, 'Nutrapoorna Daily Need Wheat Atta 1 kg', 'wheat atta', 8906061776637, 48, '1kg', 'Nutra poorna'),
(147, 'Nutrapoorna Gold Premium Wheat Atta 1 kg', 'wheat atta', 8906061776743, 68, '1kg', 'Nutra poorna'),
(148, 'Nutrapoorna Multigrain Wheat Atta 1 kg', 'wheat atta', 8906061776712, 68, '1kg', 'Nutra poorna'),
(149, 'Nutrapoorna Chapati Wheat Atta 1 kg', 'wheat atta', 8906061776705, 60, '1kg', 'Nutra poorna'),
(150, 'nutrapoorna karkara Wheat Atta 1 kg', 'wheat atta', 8906061776521, 35, '1kg', 'Nutra poorna'),
(151, 'Rawa 1 kg', 'rawa', 8902901001747, 34, '1kg', 'Private label'),
(152, 'Brahmins Fried Rawa 1 kg', 'rawa', 8906014080057, 116, '1kg', 'Brahmins pvt ltd'),
(153, 'Madam Roasted Sooji Rawa 500 g', 'rawa', 8906005380173, 32, '500g', 'Madam agro food industries'),
(154, 'Pro Nature Organic Rawa 500 g', 'rawa', 8904117900210, 54, '500g', 'pro nature organic foods pvt ltd'),
(155, 'Organic tattva rawa 500 g', 'rawa', 8906055440261, 42, '500g', 'Mehrotra consumer products pvt ltd'),
(156, 'I Love Rawa 500 g', 'rawa', 8906124731207, 35, '500g', 'Arti agro &foods pvt ltd'),
(157, '24 Mantra Organic Wheat Daliya 500 g', 'wheat Daliya', 8904083506447, 39, '500g', '24 Mantra'),
(158, 'Pro Nature Organic Daliya 500 g', 'wheat Daliya', 8904117900222, 56, '500g', 'pro nature organic foods pvt ltd'),
(159, 'Shree Wheat Daliya 200 g', 'wheat Daliya', 8904043701011, 27, '200g', 'shree ram spices pvt ltd'),
(160, 'Mera Kisan Organic Wheat Daliya 500 g', 'wheat Daliya', 8906091000283, 55, '500g', 'Meraisan pvt ltd'),
(161, 'Good Life Chana Dal 500 g', 'chana dal', 8902901224603, 47, '500g', 'Private label'),
(162, 'Best farms kabuli chana dal 500 g', 'chana dal', 8902901221756, 58, '500g', 'Private label'),
(163, '24 Mantra organic chana dal 500 g', 'chana dal', 8904083505297, 73, '500g', 'Sresta natural bioproducts pvt ltd'),
(164, 'Best farms green chana dal 500 g', 'chana dal', 8902901221763, 55, '500g', 'Private label'),
(165, 'Pick N Cook Premium Chana Dal 500 g', 'chana dal', 8904057710023, 76, '500g', 'Vichi agro products pvt ltd'),
(166, 'Madam Besan 500 g', 'Besan', 8906005380135, 51, '500g', 'Madam agro food industries'),
(167, 'Pro nature Organic Besan 500 g', 'Besan', 8904117900180, 116, '500g', 'pro nature organic foods pvt ltd'),
(168, 'Medimix Ayurvedic 18-Herbs Classic Soap 125 g (Pack of 4)', 'soap', 8904018302878, 140, '4*125g', 'Cholayil pvt ltd'),
(169, 'Liril Lime Soap 125 g (Buy 3 Get 1 Free)', 'soap', 8901030724381, 125, '3*125g+75g', 'Hindustan Unilever Limited'),
(170, 'Dettol Cool Soap with Crispy Menthol 75 g (Pack of 4)', 'soap', 8901396395515, 100, '4*75g', 'Reckitt Benckiser ltd'),
(171, 'Hamam Neem, Tulsi & Aloe Vera Soap 150 g', 'soap', 8901030672453, 40, '150g', 'Hindustan unilever limited'),
(172, 'Lifebuoy Total Soap 125 g (Buy 3 Get 1 Free)', 'soap', 8901030726798, 84, '4*125g', 'Hindustan Unilever Limited'),
(173, 'Mysore sandal soap 125 g', 'soap', 8901287100211, 55, '125g', 'Karnataka soaps and detergents ltd'),
(174, 'Santoor sandal & Almond Milk 125 g(Buy 4 Get 1 Free)', 'soap', 8901399011016, 142, '5*125g', 'Wipro enterprises ltd'),
(175, 'Margo soap 75 g (pack of 4)', 'soap', 8902102230533, 77, '4*75g', 'Jyothy laboratories'),
(176, 'Godrej No.1 Sandal & Turmeric Soap 100 g (Pack of 4)', 'soap', 8901023007408, 67, '4*100g', 'Godrej&Boyce mfg co limited'),
(177, 'Pears Soft & Fresh Soap with Mint Extracts 75 g', 'soap', 8901030623363, 42, '75g', 'Hindustan Unilever Limited'),
(178, 'Pears Pure & Gentle Soap with Natural Oils 125 g', 'soap', 8901030771262, 60, '125g', 'Hindustan Unilever Limited'),
(179, 'Himalaya Herbals Neem & Turmeric Soap 125 g (Pack of 4)', 'soap', 8901138827885, 101, '4*75g', 'the himalaya drug company'),
(180, 'Patanjali Haldi-Chandan Kanti Body Cleanser 150 g (Pack of 3)', 'soap', 8904109464904, 79, '3*150g', 'patanjali'),
(181, 'Jo almond&cream with glycerine 150 g (pack of 4)', 'soap', 8904027303156, 80, '4*150g', 'VVF limited'),
(182, 'Skin 123 Aqua Fresh Soap 125 g', 'Soap', 8904132908772, 70, '2*125g', 'Private label'),
(183, 'Biotique Basil & Parsley Revitalizing Body Soap 150 g', 'soap', 8906009451664, 84, '150g', 'Bio veda action research pvt ltd'),
(184, 'Lux Rose & Vitamin E Soft Glowing Skin Soap Bar 100 g', 'soap', 8901030792304, 23, '100g', 'Hindustan Unilever Limited'),
(185, 'Dettol liquid hand wash 750ml (Buy 1 Get 1 Free)', 'Handwash', 8901396316305, 202, '2*750ml', 'Reckitt Benckiser ltd'),
(186, 'Godrej protekt master blaster handswash 750 ml (Buy 1 Get 1 Free)', 'Handwash', 8901023014222, 130, '2*750ml', 'Godrej consumer products ltd'),
(187, 'Safe Life Floral Blossam Hand Wash Refill 750 ml', 'Handwash', 8904132913455, 88, '750ml', 'Private label'),
(188, 'Lifebuoy Total 10 Germ Protection Handwash 190 ml', 'Handwash', 8901030767319, 92, '190ml', 'Hindustan Unilever Limited'),
(189, 'Savlon Herbal Sensitive Handwash Refill 175 ml', 'Handwash', 8901725971168, 34, '175ml', 'ITC ltd'),
(190, 'Hygienix Anti-Bacterial Handwash 750 ml', 'Handwash', 8901399504020, 99, '750ml', 'Wipro enterprises ltd'),
(191, 'Palmolive Orchid & Milk Irresistible softness Handwash 250 ml', 'Handwash', 8901314006165, 92, '250ml', 'Colgate palmolive india ltd'),
(192, 'Godrej aer air &surface hand sanitizer 240 ml', 'Hand sanitizer', 8901023023200, 180, '240ml', 'Gcpl'),
(193, 'Hygienix Anti-Bacterial Hand Sanitizer 200 ml', 'Hand sanitizer', 8901399503139, 90, '200ml', 'Wipro enterprises ltd'),
(194, 'Palmolive Anti Bacterial Hand Sanitizer 500 ml', 'Hand sanitizer', 8992772455012, 225, '500ml', 'Colgate palmolive india ltd'),
(195, 'Himalaya pure hands Lemon Hand Sanitizer 100 ml', 'Hand sanitizer', 8901138819217, 47, '100ml', 'the himalaya drug company'),
(196, 'Medikar Hand Sanitizer 200 ml', 'Hand sanitizer', 8901088178723, 50, '200ml', 'Marico ltd'),
(197, 'Dettol Instant Hand Sanitizer 200 ml', 'Hand sanitizer', 8901396381808, 93, '200ml', 'Reckitt Benckiser ltd'),
(198, 'FRSH Instant Advanced Hand Sanitizer 500ml', 'Hand sanitizer', 8906106742450, 232, '500ml', 'Scentials beautycare&wellness pvt ltd'),
(199, 'Keepsafe Instant Hand Sanitizer 100 ml', 'Hand sanitizer', 8901088179362, 46, '100ml', 'Marico ltd'),
(200, 'Boro plus Advanced Anti-Germ Hand Sanitizer 300 ml', 'Hand sanitizer', 8901248156103, 130, '300ml', 'Helios packaging pvt ltd'),
(201, 'Coca cola 300 ml (can)', 'cold drinks', 8901764061257, 35, '300ml', 'coca cola India pvt ltd'),
(202, 'Kingfisher radler lime 300 ml (can)', 'cold drinks', 8905002200002, 34, '300ml', 'united breweries ltd'),
(203, 'Kingfisher ginger&lime radler 300 ml (can)', 'cold drinks', 8901020828266, 34, '300ml', 'united breweries ltd'),
(204, '7 up 750 ml', 'cold drinks', 8902080304059, 32, '750ml', 'Varun beverages ltd'),
(205, 'pepsi 750 ml', 'cold drinks', 8902080104055, 32, '750ml', 'Varun beverages ltd'),
(206, 'Thumps up 1.75 L', 'cold drinks', 8901764042157, 59, '1.75L', 'coca cola India pvt ltd'),
(207, 'Sprite 300 ml (can)', 'cold drinks', 8901764031250, 35, '300ml', 'coca cola India pvt ltd'),
(208, 'Red Bull Energy Drink 350 ml (Can)', 'Energy drink', 90415470, 130, '350ml', 'Red bull India pvt ltd'),
(209, 'Monster Energy Drink 350 ml (Can)', 'Energy drink', 4897036691427, 82, '350ml', 'coca cola India pvt ltd'),
(210, 'Fast&Up Charge Orange Flavour Tablet 20 tablets', 'Energy drink', 8906097590221, 273, '20tablets', 'Aeronutrix sports product pvt ltd'),
(211, 'Bournvita 750 g', 'Energy drink powder', 8901233030050, 245, '750g', 'Mondelez India foods pvt ltd'),
(212, 'Boost Health Drink Powder 750 g', 'Energy drink powder', 8901571003556, 302, '750g', 'Glaxo Smithkline'),
(213, 'Complan royal chocolate Drink Powder 500 g', 'Energy drink powder', 8901542000072, 260, '500g', 'Zydus wellness'),
(214, 'PediaSure Vanilla Delight Health Drink Powder 1 kg', 'Energy drink powder', 8904145911165, 1116, '1kg', 'Abbott healthcare pvt ltd'),
(215, 'Ensure Vanilla Health Drink Powder 400 g', 'Energy drink powder', 8904145911622, 505, '400g', 'Abbott healthcare pvt ltd'),
(216, 'Horlicks Classic Malt Health Drink Powder 200 g', 'Energy drink powder', 8901030807138, 104, '200g', 'Glaxo Smithkline'),
(217, 'Manna Health Drink Mix 1 kg (Carton)', 'Energy drink powder', 8906008350036, 377, '1kg', 'Manna foods'),
(218, 'Society Tea 1 kg', 'Tea', 8901095000017, 450, '1kg', 'Amar tea pvt ltd'),
(219, 'Marvel Yellow Tea 250 g', 'Tea', 8906102210328, 105, '250g', 'Marvel tea'),
(220, 'Aarambh Danedar Assam Tea 500 g', 'Tea', 8904132917057, 210, '500g', 'Private label'),
(221, 'Tata Teaveda Tea 250 g', 'Tea', 8901052003860, 100, '250g', 'Tata global beverage limited'),
(222, 'Tetley Green Tea Bags 100 pcs (Carton)', 'Tea', 8901052087594, 511, '100pcs', 'Tata global beverage limited'),
(223, 'Wagh bakri Premium Leaf Tea 1 kg', 'Tea', 8901747000433, 475, '1kg', 'Gujarat tea processors'),
(224, 'Tata Tulsi Green Tea 100 g', 'Tea', 8901052003785, 161, '100g', 'Tata consumers products ltd'),
(225, 'Lipton honey lemon Green Tea 25 pcs', 'Tea', 8901030779299, 154, '25pcs', 'Hindustan Unilever Limited'),
(226, 'Red Label Leaf Tea 1 kg', 'Tea', 8901030735004, 410, '1kg', 'Hindustan Unilever Limited'),
(227, 'Vedic suraksha Tea 10pcs', 'Tea', 8901207035708, 57, '10pcs', 'Dabur India Limited'),
(228, 'Kaffe instant coffee 50g (buy 1 get 1 extra)', 'Coffee', 8904132917545, 130, '50+50g', 'Private label'),
(229, 'Nescafe Classic Instant Coffee 100 g (Jar)', 'Coffee', 89006702, 275, '100g', 'nestle india limited'),
(230, 'Tata Grand Instant Coffee Powder 50 g', 'Coffee', 8901090328161, 135, '50g', 'Tata global beverage limited'),
(231, 'BRU Gold Instant Coffee Powder 25 g', 'Coffee', 8901030373886, 70, '25g', 'Hindustan Unilever Limited'),
(232, 'Cothas Speciality Blend Filter Coffee Powder 200 g', 'Coffee', 8906002771028, 84, '200g', 'Cothas'),
(233, 'Narasus Strong Instant Coffee Powder 100 g', 'Coffee', 8906005662088, 158, '100g', 'Narasus'),
(234, 'Fittfy Green Coffee Instant Mix 30 g', 'Coffee', 8901088143080, 242, '30g', 'Marico industries'),
(235, 'Continental Special Instant Coffee Powder 50 g', 'Coffee', 8901036122518, 140, '50g', 'Continental coffee pvt ltd'),
(236, 'Leo Madras Blend Roast Ground 80 & 20 Coffee 200 g', 'Coffee', 8908000008106, 97, '200g', 'Leo coffee'),
(237, 'Harpic Floral Disinfectant Bathroom Cleaner 500 ml', 'Toilet cleaner', 8901396153108, 76, '500ml', 'Rickitt benckiser ltd'),
(238, 'Domex Original Disinfectant Toilet Expert Cleaner 1 L', 'Toilet cleaner', 8901050363887, 147, '1L', 'Hindustan Unilever Limited'),
(239, 'My Home Expelz Extreme Disinfectant Toilet Cleaner 500 ml (Buy 1 Get 1 Free)', 'Toilet cleaner', 8904132919565, 100, '1L', 'Reliance Retail ltd'),
(240, 'Harpic Power Plus Original Disinfectant Toilet Cleaner 500 ml', 'Toilet cleaner', 8901396151005, 75, '500ml', 'Reckitt Benckiser ltd'),
(241, 'Mr Muscle Kiwi Dranex Drain Cleaner 50 g', 'Drain cleaner', 8904271200737, 126, '50g', 'S C johnson products pvt ltd'),
(242, 'Mr Muscle Kiwi Dranex Drain Cleaner 375 g', 'Drain cleaner', 8906006432604, 148, '375g', 'S C johnson products pvt ltd'),
(243, 'Drenfix Drain Cleaner 50 g', 'Drain cleaner', 8900019800285, 24, '50g', 'Atlas commodities pvt ltd'),
(244, 'Surf Excel Easy Wash Detergent Powder 1.5 kg', 'Detergent powder', 8901030691362, 121, '1.5kg', 'Hindustan Unilever Limited'),
(245, 'Patanjali Detergent Powder 250 g', 'Detergent powder', 8904109443008, 15, '250g', 'Patanjali ayurved ltd'),
(246, 'Tide white Detergent powder 1 kg', 'Detergent powder', 4902430755870, 73, '1kg', 'P&g ltd'),
(247, 'Ghadi Detergent Powder 160 g', 'Detergent powder', 8901331000634, 8, '160g', 'RSPL ltd'),
(248, 'Ariel Complete Detergent Powder 500 g', 'Detergent powder', 4902430836807, 126, '500g', 'Procter&Gamble home'),
(249, 'Woosh Washing Expert Detergent Powder 210 g', 'Detergent powder', 8906075110076, 10, '210g', 'Emmbros overseas lifestyle pvt ltd'),
(250, 'Comfort After Wash Frogrance Pearls Fabric Conditioner 220 ml', 'fabric conditioner', 8901030690372, 52, '220ml', 'Hindustan Unilever Limited');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `storeID` int NOT NULL AUTO_INCREMENT,
  `MerchantName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `phonenumber` varchar(11) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_0900_as_cs NOT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeID`, `MerchantName`, `Address`, `phonenumber`, `password`) VALUES
(1001, 'kamlesh', 'vijaywada', '9390360262', 'ac4b0a568e8d3a14b521eae07006bc95');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
