-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2019 at 01:26 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaideeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `unintInStock` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `unintInStock`, `picture`, `category`) VALUES
(1, 'โน้ตบุ๊ค', 'โน้ตบุ๊ค Core I7, SSD128GB, RAM 16GB', 15000, 20, 'notebook1.jpg', 1),
(2, 'Notebook Shadow', 'PC I9, NVIDIA  RTX 2080 TI, RAM 32GB ', 34200, 20, 'notebookAsus.jpg', 1),
(3, 'Monitor MSI T7160', 'Monitor LED, HDMI, VGA, DVI', 10000, 20, 'A0127663OK_BIG_1.jpg', 3),
(4, 'Monitor Acer U846', 'Monitor LED, HDMI', 10000, 20, 'monitoracer.png', 3),
(5, 'PC Core i7 For Gaming', 'CPU i7-2600\r\ncase ใหม่\r\nRam 4 GB\r\nHDD 500 GB\r\nการ์ดจอ rx 560 4G', 15900, 20, 'p1 (1).jpg', 2),
(6, 'PC DELLOptiplex780 Core2', '-เครื่องพร้อมใช้งานมือ2รุ่น Business DELL 780 ทน ทาน สภาพใหม่-พิมพ์งานทั่วไป ดูหนัง ฟังเพลง เกมทั่วไป-Core2Duo 3.0 GHz /L2 Cach 6 MB-DDR3 RAM 2 GB/1333-HDD 250 GB-DVD-ROM Drive-Window 7 ลายเส้นแท้ ', 7900, 10, 'pcDELL.jpg', 2),
(7, 'PC Core i9 For Gaming', 'GTX 1050TI 4GB โปรโมชั่่นหนักๆ พร้อมใช้ AMD FX4300 4C 4T 4.0GHz / RAM 4GB / HDD 500GB หรือ SSD 120GB/ *เลือกเคสและการ์ดจอได้*', 25000, 20, 'p1 (2).jpg', 2),
(8, 'EGA TYPE C1 GAMING PC', 'EGA TYPE C1 GAMING PC CASE ของแท้ประกันศูนย์ เปลี่ยนไฟได้ EGATYPEC2', 10000, 11, 'pc.jpg', 2),
(9, 'ACER NOTEBOOK ', 'ACER NOTEBOOK NITRO AN515-43-R3K4 BLACK (A)', 22900, 20, 'n3 (1).jpg', 1),
(10, 'Samsung Notebook 9 Pro', 'โน้ตบุ๊คขอบบาง หน้าจอ 13.3 นิ้ว ความละเอียด FHD มีฟีเจอร์ถนอมสายตา ประมวลผลด้วย Intel Core i7 และ RAM 8 GB รองรับ ปากกา Active Pen มี พอร์ต Thunderbolt 3 และ USB-C', 22000, 10, 'n3 (2).jpg', 1),
(11, 'Monitor SF350 Monitor SF350 ', '24” FHD Monitor SF350 จอบางเฉียบ ดีไซน์เรียบหรู', 7000, 15, 'm1 (2).jpg', 3),
(12, '34WK650-W', 'Ultrawide Monitor จอคอมพิวเตอร์ รุ่น 34WK650-W ขนาด 34 นิ้ว จอภาพ IPS', 12000, 10, 'm1 (3).jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
