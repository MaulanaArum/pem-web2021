-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 05:04 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk_tamu`
--

CREATE TABLE `bk_tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `tau` varchar(50) NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bk_tamu`
--

INSERT INTO `bk_tamu` (`id_tamu`, `nama`, `alamat`, `nohp`, `email`, `tau`, `saran`) VALUES
(39, 'Maulana', 'semarang', '08112345678', 'masbrow@gmail.com', 'Teman/Saudara', 'Kembangkan'),
(40, 'Anonymous', 'jogja', '08112345678', 'rolls@gmail.com', 'SosialMedia', 'Maknyusss'),
(41, 'Mr X', 'sukoharjo', '0987125111', 'icikiwir@gmail.com', 'Browsing', 'Semoga dapet nilai bagus'),
(42, 'Mang Oleh', 'bandung', '08112345678', 'odading@gmail.com', 'Teman/Saudara', 'Rasanya Mantapp'),
(43, 'Chikakiku', 'bandung', '08112345678', 'papichulo@gmail.com', 'SosialMedia', 'waw ntaps'),
(44, 'Keanu', 'jogja', '08112345678', 'angelo@gmail.com', 'Iklan', 'sae lu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `gb_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nm_barang`, `gb_barang`, `deskripsi`, `price`) VALUES
(1, 'Asus-Maximus XII Extreme', 'MaximusXIIExtreme.jpg', 'Only Compatible with Intel Gen 10 Desktop Processors\r\nIntel Z490, 4 x DDR4 up to 4800MHz (OC), Socket 1200\r\nE-ATX Form Factor, Support for CrossFire and SLI', 13080000),
(2, 'Intel-Core i9 10900K', '10900K.jpg', 'Only Compatible With Intel 400 Series Chipset\r\nUnlocked Multiplier, Fan Not Included\r\nIntel Core i9, Clock / Turbo: 3.7GHz / 5.3GHz, 22.5MB Total Cache\r\nDeca Core, Comet Lake-S, 125W, LGA 1200', 7990000),
(3, 'Corsair-Dominator RGB', 'Dominator_RGB.jpg', 'Black Heatspreader, Dual Channel Memory, RGB LED\r\nDominator Platinum RGB, 64GB (2x32GB) DDR4 3600 (PC4-28800), 18-19-19-39, 1.35V\r\n', 11399000),
(4, 'Asus - TUF-RTX3090-24G', 'ASUS - TUF-RTX3090-24G-GAMING.jpg', 'NVIDIA GeForce RTX 3090, Boost Clock: 1695 MHz\r\nMemory Clock: 19.5Gbps, 24GB GDDR6X 384-bit, Power Connector: 8-Pin x2', 29000000),
(5, 'Corsair-MP600', 'MP600 1TB.jpg', 'MP600, M.2 2280, 1TB, PCIe 4.0 x4\r\nController: Phison PS5016-E16, Memory: 3D TLC NAND', 3600000),
(6, 'Corsair - HX850', 'HX850_00.jpg', 'HX, 100-240 VAC Input, 14CM Fan\r\nATX, Fully Modular, 850W, 80 Plus Platinum', 3000000),
(7, 'Corsair - iCUE H115i PRO XT', 'iCUE H115i RGB PRO XT.jpg', '280mm Liquid Cooler\r\nIntel: LGA 1150, 1151, 1152, 1155, 1156, 1366, 2011, 2011-3, 2066\r\nAMD: AM4, TR4*\r\n\r\n', 2250000),
(8, 'Asus - ROG Strix XG438Q', 'ROG Strix XG438Q.jpg', 'Free Sync 2 HDR, Display HDR 600, 4K\r\n43” Wide, 3840 x 2160 Resolution, VA Panel, 120Hz, 4ms\r\nSignal Input : HDMI x3, DisplayPort', 17800000),
(9, 'Asus - Zenith Extreme Alpha', 'Zenith Extreme Alpha.jpg', 'Gaming Motherboard AMD Threadripper 2 (TR4)\r\nAMD X399, 8 x DDR4 up to 3600MHz (OC), Socket TR4\r\nE-ATX Form Factor, Support for 3-Way CrossFire and 3-Way SLI', 10050000),
(10, 'Asus - Rampage VI Extreme', 'RampageVIExtremeEncore.jpg', 'Intel X299, 8 x DDR4 up to 4266MHz (OC), Socket 2066\r\nE-ATX Form Factor, Support CrossFire and SLI', 13310000),
(12, 'AMD - Threadripper 3990X', 'AMD_TRX40.jpg', 'AMD Ryzen Threadripper, Clock / Turbo: 2.9GHz / 4.3GHz, 288MB Total Cache 64 Cores / 128 Threads, Zen 2, 280W, Socket sTRX4', 74000000),
(13, 'Intel - Core I9 10980XE', 'CoreI9_10980XE.jpg', 'Intel Core i9 X-Series, Clock / Turbo: 3.00 GHz / 4.80 GHz, 42.75MB Total Cache\r\n18 Core / 36 Threads, Cascade Lake-X, 165W, LGA2066', 17800000),
(14, 'Corsair - Obsidian 1000D', 'Obsidian 1000D.jpg', 'Tempered Glass Side Panel\r\nMid Tower, (Mini-ITX, Micro ATX, ATX,E ATX), Black\r\n4x USB 3.0, 1 x HD Audio, Window Side Panel', 8000000),
(15, 'Asus - ROG Strix Helios', 'Strix Helios.jpg', 'Tempered Glass Side Panel\r\nMid Tower, (ATX/micro ATX/Mini ITX/EATX), Black\r\n1 x USB 3.1 Gen 2 (Type-C), 4 x USB 3.1 Gen 1, Audio in / out', 4300000),
(16, 'Corsair - AX1200i', 'AX1200i_00.jpg', 'AXi, 90-264 VAC Input, 14CM Fan\r\nATX, Fully Modular, 1200W, 80 Plus Platinum', 6200000),
(17, 'CM - MasterWatt Maker 1500', 'MasterWatt Maker 1500 (no Bluetooth).jpg', 'MasterWatt Maker, 100-240 VAC Input, 13.5CM Fan\r\nATX, Fully Modular, 1500W, 80 Plus Titanium', 8800000),
(18, 'WD - M.2 NVME 1TB SN750', 'WD SN750_00.jpg', 'Black SN750 NVMe, M.2 2280, 1 TB, PCIe 3.0 x4 \r\nController: SanDisk 20-82-007011 Memory: SanDisk 64-layer 3D TLC', 2950000),
(19, 'Corsair - iCUE H150i PRO XT', 'Corsair - iCUE H150i RGB PRO XT.jpg', '360mm Liquid Cooler\r\nIntel LGA: 1200, 1150, 1151, 1155, 1156, 1366, 2011, 2066\r\nAMD: AM4, AM3, AM2, sTRX4, sTR4', 2500000),
(20, 'Asus - ROG Strix Flare', 'Strix_Flare_3.jpg', 'Asus AURA Sync\r\nGaming Keyboard, Mechanical, wired\r\nRGB LED, Cherry MX RGB Switch', 2670000),
(21, 'Corsair - Harpoon RGB Pro', 'HARPOON RGB PRO.jpg', 'Gaming Mouse, 12.000 dpi, Optical, USB\r\nRGB LED, Black', 400000),
(22, 'MSI - Optix MPG341CQR', 'Optix MPG341CQR.jpg', 'Curved UWQHD HDR Ready Gaming Monitor\r\n34” Wide, 3440 x 1440 Resolution, VA Panel, 144Hz, 1ms\r\nSignal Input : HDMI x2, DisplayPort, USB Type C', 17200000),
(23, 'Corsair - Vengeance RGB', 'RGB_Pro_Black.jpg', 'Black Heatspreader, Dual Channel Memory, RGB LED\r\nVengeance RGB Pro, 16GB (2x8GB) DDR4 2666 (PC4-21300), 16-18-18-35 1.2V', 1600000),
(24, 'Intel - Core i7 10700K AE', '10700K Avenger.jpg', 'Only Compatible With Intel 400 Series Chipset\r\nUnlocked Multiplier, Fan Not Included\r\nIntel Core i7, Clock / Turbo: 3.8GHz / 5.1GHz, 18.0MB Total Cache\r\nOcta Core, Comet Lake-S, 125W, LGA 1200', 6000000),
(25, 'MSI - RTX 2080 Ti Gaming X', 'GeForce RTX 2080 Ti Gaming X Trio.jpg', 'NVIDIA GeForce RTX 2080 Ti, Boost Clock: 1755MHz\r\nMemory Clock: 14Gbps, 11GB GDDR6 352-bit, Power Connector: 8-Pin x2 + 6-Pin', 24000000),
(26, 'Corsair - iCUE 465X RGB', 'iCUE 465X RGB Black.jpg', 'Tempered Glass Side Panel\r\nMid Tower, (Mini-ITX, Micro ATX, ATX), Black\r\n2 x USB 3.1, 1 x HD Audio, Window Side Panel', 2200000),
(50, 'CM-V850', 'V850_.jpg', 'V Series, 850W, 90~264V AC Input, 13.5CM Fan\r\nFully Modular, 80+ Gold\r\nM/B 20+4 Pin Connector x 1\r\nCPU 4+4 Pin x 1\r\nPCI-e 6+2 Pin x 6\r\nSATA x 9\r\n4 Pin Peripheral x 4\r\n4 Pin Floppy x 1', 1990000),
(51, 'G.Skill - Trident Z RGB', 'GTZR.jpg', 'Trident Z RGB Series DDR4 - The World\'s Most Brilliant RGB Memory\r\nTrident Z RGB, 32GB (2x16GB) DDR4 3600Mhz (PC4-28800), 18-22-22-42, 1.35V', 2700000),
(52, 'Samsung - SSD 860 Pro 512GB', '860_pro.jpg', '860 Pro Series, 2.5”, 512GB, SATA III\r\nRead: 560 MB/s, Write: 530 MB/s , Endurance: 600 TBW\r\nModel Number: MZ-76P512BW', 2300000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_barang`, `nama`, `hp`, `jumlah`, `alamat`, `kode_pos`) VALUES
(41, 2, '', '', 1, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk_tamu`
--
ALTER TABLE `bk_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk_tamu`
--
ALTER TABLE `bk_tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
