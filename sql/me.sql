-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 05:33 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(4, 'Muskaan', 'Gupta', 'muskaangupta119@gmail.com', '9540512204', 'A-3/96 Rohini Sector 3, 110085', '7f20cd4101bca0d0548396585462401b', 'manager', '237934'),
(5, 'Keshav', 'Kaushik', 'keshav_kaushik94@yahoo.com', '7838272575', 'Flat No 149, Bannu Encalve, Parwana Road, Pitampura, New Delhi 110034', '06f4975cfd058b5e01969fa02239b098', 'seller', '143380'),
(6, 'Somya', 'Gupta', 'sg@gmail.com', '9891352356', 'Marry International Public School', 'ceacd971a54d4f629463fc1a525a2687', 'other', '107371');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(30, 12, 83, 2, 'C-32 Sadbhawna Apartments, Parwana Road , Pitampura , Delhi', '08512080414', 'no', '2021-11-13', '2021-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(41, 'Gucci Guilty', 7250, 'Gucci Guilty Eau De Parfum For Her', 10, 'women', 'other', 'perfume', 'P2354', '1636552337.jpg'),
(42, 'Modern Muse', 7400, 'Estee Lauder Modern Muse Eau De Parfum', 2, 'women', 'other', 'perfume', 'P345', '1636552173.jpg'),
(43, 'Hypnotic Poison', 7700, 'DIOR Hypnotic Poison Eau De Toilette', 6, 'women', 'other', 'perfume', 'P252', '1636552121.jpg'),
(44, 'Good Girl', 3950, 'Carolina Herrera Good Girl Eau De Parfum', 3, 'women', 'other', 'perfume', 'P254', '1636552234.jpg'),
(45, 'Birkenstock', 9990, 'Unisex Andermatt Grey Casual Shoes', 300, 'women', 'other', 'footwear', 'S32543', '1636553834.jpg'),
(52, 'Lady Million', 5100, 'Paco Rabanne Lady Million Eau De Parfum', 342, 'women', 'other', 'perfume', 'S56', '1636552013.jpg'),
(54, 'ROSSO BRUNELLO', 6499, 'Women Beige Open Toe Flats', 10, 'women', 'other', 'footwear', '666', '1636553811.jpg'),
(55, 'Clarks', 7499, 'Women Bronze-Toned Solid Leather Sandals', 10, 'women', 'other', 'footwear', '333', '1636551894.jpg'),
(56, 'MODARE', 4199, 'Women Black PU Wedge Heeled Boots with Buckles', 100, 'women', 'other', 'footwear', '1199', '1636566747.png'),
(57, 'UNDER ARMOUR', 7499, 'Unisex Black & Grey Colourblocked GS SC 3 Zero IV Basketball Shoes', 350, 'women', 'other', 'footwear', '9966', '1636566914.png'),
(58, 'Soch', 9998, 'Women Navy Blue Pure Georgette Embellished Anarkali Kurta & Churidar With Dupatta', 15, 'women', 'clothing', 'EthnicWear', '001', '1636732089.png'),
(59, 'Ritu Kumar', 3900, 'Women Brown & Black Striped Tiered Kurti', 25, 'women', 'clothing', 'EthnicWear', '002', '1636747583.png'),
(60, 'Amrutam Fab', 3359, 'Turquoise Blue & Pink Embroidered Thread Work Ready to Wear Lehenga & Unstitched Blouse', 9, 'women', 'clothing', 'EthnicWear', '003', '1636750397.png'),
(61, 'W', 1599, 'Pink Leggings', 7, 'women', 'clothing', 'EthnicWear', '004', '1636751507.png'),
(62, 'INDYA', 3800, 'Women Beige Printed Embroidered Border Maxi Skirt', 9, 'women', 'clothing', 'EthnicWear', '005', '1636751569.png'),
(63, 'The Chennai Silks', 13751, 'Beige & Red Woven Design Zari Border Pure Silk Kanjeevaram Saree', 4, 'women', 'clothing', 'EthnicWear', '006', '1636751616.png'),
(64, 'Readiprint Fashions', 7150, 'Navy Blue & Golden Embroidered Net Semi-Stitched Dress Material', 15, 'women', 'clothing', 'EthnicWear', '007', '1636751666.png'),
(65, 'SHUBHKALA', 11500, 'Grey Embroidered Beads and Stones Semi-Stitched Lehenga & Unstitched Blouse With Dupatta', 3, 'women', 'clothing', 'EthnicWear', '008', '1636751713.png'),
(66, 'SHINGORA', 3295, 'Women Blue & Grey Self-Striped Sustainable Shawl', 22, 'women', 'clothing', 'EthnicWear', '009', '1636751754.png'),
(68, 'SANGEETA BOOCHRA', 12000, 'Silver-Toned Oxidised Contemporary Drop Earrings', 51, 'women', 'other', 'Jewelry', '011', '1636752932.png'),
(69, 'SWAROVSKI', 16900, 'Green & Yellow Circular Hoop Earrings', 21, 'women', 'other', 'Jewelry', '012', '1636752989.png'),
(70, 'Runjhun', 8500, 'Gold-Plated White Kundan-Studded Sea Green & White Beaded Jewellery Set', 51, 'women', 'other', 'Jewelry', '013', '1636753034.png'),
(71, 'DUGRISTYLE', 18630, 'Gold-Plated Green & Pink Pearl Beaded Sustainable Jewellery Set', 21, 'women', 'other', 'Jewelry', '014', '1636753085.png'),
(72, 'Tistabene', 10050, 'Gold-Plated White Kundan Studded Jewellery Set', 31, 'women', 'other', 'Jewelry', '015', '1636753128.png'),
(73, 'SANGEETA BOOCHRA', 76000, 'Silver-Toned & Red Silver Handcrafted Kundan Necklace', 3, 'women', 'other', 'Jewelry', '016', '1636753181.png'),
(74, 'Label Ritu Kumar', 5390, 'Women Green Solid Basic Jumpsuit', 21, 'women', 'clothing', 'CasualWear', '020', '1636790684.png'),
(75, 'JC Collection', 7026, 'Women Blue Slim Fit Mid-Rise Clean Look Boot Cut Stretchable Jeans', 21, 'women', 'clothing', 'CasualWear', '021', '1636790731.png'),
(76, 'RHHENSO', 5555, 'Women Mustard Yellow Solid Cinched Waist Top with Tie-Up Detail', 21, 'women', 'clothing', 'CasualWear', '022', '1636790775.png'),
(77, 'Calvin Klein Jeans', 7999, 'Women Blue Super Skinny Fit High-Rise Light Fade Stretchable Jeans', 21, 'women', 'clothing', 'CasualWear', '023', '1636790832.png'),
(78, 'RAREISM', 2119, 'Women Navy Blue & Black Asymmetric Shrug', 21, 'women', 'clothing', 'CasualWear', '024', '1636790887.png'),
(79, 'ELLE', 2499, 'Women Blue & Pink Striped Belted Pure Cotton Shorts', 21, 'women', 'clothing', 'CasualWear', '025', '1636790929.png'),
(80, 'Forever New', 5000, 'Women Pink & White Accordion Pleated Ombre Flared Midi Skirt', 21, 'women', 'clothing', 'CasualWear', '026', '1636790972.png'),
(81, 'Marks & Spencer', 4999, 'Women Olive Green Tapered Fit Solid Cropped Joggers', 21, 'women', 'clothing', 'CasualWear', '027', '1636791019.png'),
(82, 'Latin Quarters', 2099, 'Women Acrylic Grey & Red Striped Open Front Shrug', 21, 'women', 'clothing', 'CasualWear', '028', '1636791073.png'),
(83, 'KENDALL & KYLIE', 4499, 'Women White Denim Shorts', 21, 'women', 'clothing', 'CasualWear', '029', '1636791148.png'),
(84, 'Levis', 3919, 'Women Black Solid Mile Super Skinny Fit High-Rise Clean Look Jeans', 21, 'women', 'clothing', 'CasualWear', '030', '1636791205.png'),
(85, 'MVMT', 6382, 'Women Black Analogue Watch 28000033-D', 100, 'women', 'other', 'Watch', '040', '1636793583.png'),
(86, 'Michael Kors', 16495, 'Women Gold-Toned Dial Chronograph Watch MK5798', 50, 'women', 'other', 'Watch', '041', '1636793641.png'),
(87, 'Titan', 16495, 'Raga I Am Women Maroon Analogue watch NL95095WM02', 31, 'women', 'other', 'Watch', '042', '1636793690.png'),
(88, 'Fossil', 16495, 'Women Rose Gold-Toned Monroe HR Smartwatch FTW7039', 31, 'women', 'other', 'Watch', '043', '1636793751.png'),
(89, 'Titan', 5995, 'Raga Viva II Women Silver Analogue watch NL2610WM01', 111, 'women', 'other', 'Watch', '044', '1636793804.png'),
(90, 'SANGEETA BOOCHRA', 49900, 'Women White CZ-Studded Gold-Plated Cuff Bracelet', 23, 'women', 'other', 'Bracelets', '050', '1636795114.png'),
(91, 'SWAROVSKI', 19900, 'White Bracelet', 23, 'women', 'other', 'Bracelets', '051', '1636795189.png'),
(92, 'DUGRISTYLE', 5582, 'Multicoloured Gold-Plated Wraparound Bracelet', 70, 'women', 'other', 'Bracelets', '052', '1636795233.png'),
(93, 'Alankruthi', 5214, 'Women Gold-Toned & Cream-Coloured Pearls Temple Brass-Plated Kada Bracelet', 80, 'women', 'other', 'Bracelets', '053', '1636795281.png'),
(94, 'Clara', 3999, 'Women Silver-Toned & White CZ-Studded Sterling Silver Rhodium-Plated Charm Bracelet', 129, 'women', 'other', 'Bracelets', '054', '1636795317.png'),
(95, 'Hair Pin', 250, 'Made of alloy, durable, simple snap clip style, easy for opening and closing, can safely hold and decorate your hair.', 10, 'women', 'other', 'HairAccessories', '061', '1636906157.jpg'),
(96, 'Back Clip', 500, 'Material is Brass. Color is Golden. High quality RhineStones are used.', 20, 'women', 'other', 'HairAccessories', '062', '1636907006.jpg'),
(97, 'Juda Pins', 750, 'This is crystal hair clip having a fashionable design, each hair pin has a rhinestone flower.', 15, 'women', 'other', 'HairAccessories', '063', '1636910995.jpeg'),
(98, 'Comb style side hair pin', 1000, 'Color is silver. Material is metal. Stones are of good quality. Pearls are of good quality.', 8, 'women', 'other', 'HairAccessories', '064', '1636910900.jpg'),
(99, 'Blossom hair pin', 850, 'Pearl blooms surrounded by pearl and Swarovski crystal tendrils. Stunning when clustered together.', 20, 'women', 'other', 'HairAccessories', '065', '1636908287.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(9, 'Borsha', 'Tanjina', 'Tanjina@gmail.com', '01578399283', 'Dhaka, Bangladesh', 'aa030295ae26e8acbd3d1c9415a60f12', '217576', 'yes'),
(10, 'Trisha', 'Rehman', 'trisha@gmail.com', '01923457834', 'Mirpur 2, Dhaka', '5af7a513a7c48f6cc97253254b29509b', '0', 'yes'),
(11, 'Akhi', 'Alam', 'akhi@gmail.com', '01678293748', 'Saver, Dhaka', 'ca52febd8be7c4480ae90cdae8438a03', '0', 'yes'),
(12, 'Madhav', 'Kaushik', 'madhavkaushik48@gmail.com', '08512080414', 'C-32 Sadbhawna Apartments, Parwana Road , Pitampura , Delhi', '4213b7417c861ca31c76f8c837706180', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
