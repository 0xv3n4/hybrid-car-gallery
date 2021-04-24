-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2020 at 02:40 PM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allweun1_proje`
--
CREATE DATABASE IF NOT EXISTS `allweun1_proje` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `allweun1_proje`;

-- --------------------------------------------------------

--
-- Table structure for table `Arac`
--

CREATE TABLE `Arac` (
  `Arac_Plaka` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_Marka` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_Model` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_Tipi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_YakitTip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_KiraSat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Arac_Fiyat` int(11) NOT NULL,
  `Arac_MotorHacmi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Galeri_ID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `Arac`
--

INSERT INTO `Arac` (`Arac_Plaka`, `Arac_Marka`, `Arac_Model`, `Arac_Tipi`, `Arac_YakitTip`, `Arac_KiraSat`, `Arac_Fiyat`, `Arac_MotorHacmi`, `Galeri_ID`) VALUES
('01BC050', 'Fiat', 'Punto', 'Hatchback', 'Benzin', 'S', 2000, '1368', 4),
('01FG451', 'Renault', 'Talisman', 'Sedan', 'Dizel', 'S', 160000, '2000', 1),
('02ST341', 'Hyundai', 'AccentBlue', 'Sedan', 'Dizel', 'S', 140000, '1582', 4),
('02ZD066', 'Ford', 'Fiesta', 'Hatchback', 'Benzin', 'S', 90000, '1242', 1),
('03AD984', 'Audi', 'R8', 'Hatchback', 'Benzin', 'K', 10000, '4163', 4),
('03BM303', 'Hyundai', 'Elentra', 'Sedan', 'Dizel', 'S', 5000, '1591', 4),
('03ZB445', 'BMW', 'Z4', 'Hatchback', 'Benzin', 'K', 10000, '1998', 1),
('06AF359', 'Jaguar', 'X48', 'Hatchback', 'Benzin', 'S', 500000, '4600', 4),
('06AY314', 'Hyundai', 'Getz', 'Hatchback', 'Benzin', 'Satıldı', 55000, '1399', 4),
('06BA036', 'Dodge', 'Charger', 'Sedan', 'Benzin', 'S', 950000, '6000', 1),
('06BH2482', 'Opel', 'İnsignia', 'Sedan', 'Dizel', 'Satıldı', 300000, '1598', 4),
('06BJ2427', 'Opel', 'Astra', 'Hatchback', 'Benzin', 'K', 5000, '1998', 4),
('06BM1835', 'Hyundai', 'AccentBlue', 'Sedan', 'Dizel', 'K', 2000, '1582', 4),
('06BS157', 'Audi', 'Q5', 'SUV', 'DİZEL', 'S', 365000, '1968', 4),
('06BT3282', 'McLaren', '720S', 'Hatchback', 'Benzin', 'S', 7120000, '4000', 4),
('06FS759', 'Audi', 'Q7', 'SUV', 'DİZEL', 'K', 5000, '1968', 4),
('06HD3756', 'Peugeot', '208', 'Hatchback', 'Benzin', 'K', 5000, '1300', 4),
('06JGD3756', 'Peugeot', '208', 'Hatchback', 'Hibrit', 'S', 370000, '1600', 4),
('06KP451', 'Kia', 'Picanto', 'Hatchback', 'Dizel', 'K', 4000, '2000', 1),
('06KR348', 'Mercedes', 'E230', 'Sedan', 'Benzin', 'Kiralandı', 5000, '2500', 4),
('06KS135', 'BMW', 'İ8', 'Hatchback', 'Hibrit', 'S', 590000, '1500', 4),
('06KUT2427', 'Opel', 'Corsa', 'Hatchback', 'Benzin', 'S', 180000, '1199', 1),
('06KY314', 'Mercedes', 'CLA', 'Sedan', 'Benzin', 'K', 5000, '1462', 4),
('06KYU325', 'Mercedes', 'E200d', 'Sedan', 'Benzin', 'S', 520000, '1991', 4),
('06LS2498', 'Maserati ', 'Grancabrio', 'Hatchback', 'Benzin', 'S', 1080000, '4691', 1),
('06RA210', 'Audi', 'A6', 'Sedan', 'Dizel', 'S', 350000, '1968', 4),
('06SD547', 'Audi', 'Q7', 'SUV', 'DİZEL', 'S', 247000, '1968', 4),
('06SDG327', 'Dodge', 'Ram', 'SUV', 'BENZİN', 'K', 5000, '5000', 4),
('06SDU7548', 'BMW', 'X5', 'SUV', 'BENZİN', 'K', 10000, '1968', 4),
('06SG157', 'Honda', 'Civic', 'Sedan', 'Benzin', 'S', 230000, '1597', 4),
('06TY314', 'Hyundai', 'Elantra', 'Hatchback', 'Benzin', 'S', 5000, '1368', 4),
('06UO357', 'Lamborghini', 'Gallardo', 'Hatchback', 'Benzin', 'K', 20000, '5204', 4),
('06USH257', 'BMW', 'X3', 'SUV', 'BENZİN', 'Satıldı', 300000, '1968', 6),
('06UT565', 'Opel', 'Corsa', 'Hatchback', 'Dizel', 'S', 152000, '1300', 1),
('06VD348', 'Mercedes', 'E180', 'Sedan', 'Benzin', 'S', 300000, '1595', 6),
('06YU314', 'Hyundai', 'Getz', 'Hatchback', 'Benzin', 'K', 3000, '1399', 6),
('06ZY314', 'Mercedes', 'CLA', 'Sedan', 'Benzin', 'S', 160000, '1595', 6),
('07AS123', 'Hyundai', 'Elentra', 'Sedan', 'Benzin', 'S', 150000, '1591', 6),
('07BZ270', 'BMW', '320İ', 'Sedan', 'Benzin', 'Kiralandı', 20000, '1598', 6),
('07DG305', 'Honda', 'S2000', 'Hatchback', 'Benzin', 'S', 375000, '1997', 6),
('07KA296', 'Audi', 'A7', 'Sedan', 'Benzin', 'S', 700000, '2967', 6),
('09AC110', 'Ford', 'Mondo', 'Sedan', 'Dizel', 'S', 250000, '1498', 1),
('11SA222', 'Honda', 'Civic', 'Sedan', 'Benzin', 'K', 3500, '2000', 1),
('12AB345', 'Alfa Romeo', 'Giulietta', 'Hatchback', 'Dizel', 'S', 45000, '1600', 6),
('12BC345', 'Kia', 'Cerato', 'Sedan', 'Benzin', 'S', 40000, '4000', 6),
('17BA510', 'Ferrari', 'F12', 'Hatchback', 'Benzin', 'Kiralandı', 20000, '6000', 1),
('18CB240', 'Hyundai', 'Accent', 'Sedan', 'Benzin', 'S', 40000, '1341', 6),
('22CB500', 'Ford', 'Mustang', 'Sedan', 'Benzin', 'S', 1500000, '5000', 6),
('28BM132', 'Hyundai', 'İ20', 'Hatchback', 'Benzin', 'S', 5000, '1368', 6),
('31AA001', 'Dodge', 'Challenger', 'Sedan', 'Benzin', 'K', 10000, '6000', 1),
('31FC14', 'Ford', 'Fiesta', 'Hatchback', 'Benzin', 'S', 70000, '1370', 1),
('31HT804', 'Opel', 'Meriva', 'Hatchback', 'Benzin', 'Satıldı', 20000, '1600', 6),
('31MH873', 'Hyundai', 'Elentra', 'Sedan', 'Dizel', 'S', 130000, '3000', 1),
('31MRT5740', 'Mercedes', 'S400', 'Sedan', 'Benzin', 'S', 1650000, '2925', 6),
('31PH54', 'Insignia', 'Opel', 'Sedan', 'Benzin', 'S', 80000, '1700', 1),
('32ZD163', 'Audi', 'R8', 'Hatchback', 'Dizel', 'Satıldı', 1000000, '4163', 6),
('34ASH5792', 'Audi', 'Q5', 'SUV', 'Dizel', 'Kiralandı', 365000, '1968', 6),
('34AU314', 'Mercedes', 'AMG', 'Sedan', 'Benzin', 'S', 2300000, '2999', 6),
('34AY314', 'Mercedes', 'AMG', 'Sedan', 'Benzin', 'K', 15000, '2999', 6),
('34BA027', 'Volkswagen', 'Golf', 'Hatchback', 'Dizel', 'S', 85000, '1600', 6),
('34BC200', 'Honda', 'Civic', 'Sedan', 'Benzin', 'K', 4300, '2000', 6),
('34CDH111', 'Honda', 'Civic', 'Sedan', 'Benzin', 'S', 140000, '2000', 6),
('34CMK34', 'Maserati ', 'Granturismo', 'Sedan', 'Benzin', 'K', 20000, '4691', 1),
('34DH3248', 'Maserati ', 'Granturismo', 'Sedan', 'Benzin', 'S', 1500000, '4691', 7),
('34DJ4792', 'McLaren', '650S', 'Hatchback', 'Benzin', 'S', 4000000, '4000', 7),
('34DYS2548', 'BMW', 'X5', 'SUV', 'Benzin', 'S', 500000, '1968', 7),
('34GD745', 'Audi', 'Quattro', 'Sedan', 'Dizel', 'K', 350000, '2000', 1),
('34GH045', 'Honda', 'S2000', 'Hatchback', 'Benzin', 'K', 7000, '1997', 7),
('34GH954', 'Kia', 'Rio', 'Hatchback', 'Dizel', 'S', 145000, '2700', 1),
('34hc123', 'Honda', 'Civic', 'Sedan', 'Benzin', 'S', 100000, '2000', 7),
('34HJ512', 'Mercedes', 'E200', 'Sedan', 'Benzin', 'K', 10000, '1991', 7),
('34JG862', 'Peugeot', '107', 'Hatchback', 'Benzin', 'S', 70000, '998', 1),
('34JS861', 'Jaguar', 'XE', 'Sedan', 'Benzin', 'S', 335000, '1999', 7),
('34KD357', 'Lamborghini', 'Aventador', 'Hatchback', 'Benzin', 'S', 4500000, '6001', 7),
('34KF795', 'Mercedes', 'E250', 'Sedan', 'Benzin', 'S', 50000, '1991', 7),
('34KYU314', 'Mercedes', 'E200d', 'Sedan', 'Benzin', 'S', 620000, '1600', 7),
('34NVS524', 'Peugeot', '407', 'Sedan', 'Dizel', 'S', 50000, '1997', 7),
('34OK346', 'Volvo', 'S60', 'Sedan', 'Benzin', 'S', 147000, '2250', 1),
('34PY314', 'Mercedes', 'CLA', 'Sedan', 'Benzin', 'S', 450000, '1461', 1),
('34SD140', 'Ferrari', 'F355', 'Hatchback', 'Benzin', 'S', 2500000, '3500', 7),
('34ST512', 'Hyundai', 'Elantra', 'Hatchback', 'Dizel', 'S', 150000, '1400', 1),
('34STH3254', 'Dodge', 'Ram', 'SUV', 'Benzin', 'S', 225000, '5000', 7),
('34SYD3574', 'BMW', 'X3', 'SUV', 'Benzin', 'K', 5000, '1968', 7),
('34TT123', 'Fiat', 'Egea', 'Sedan', 'Benzin', 'S', 120000, '2000', 1),
('34UN328', 'Peugeot', '508', 'Sedan', 'Benzin', 'Satıldı', 360000, '1598', 7),
('34VA070', 'Dodge', 'Challenger', 'Sedan', 'Benzin', 'S', 700000, '6000', 7),
('34VS111', 'Ford', 'Focus', 'Sedan', 'Benzin', 'S', 140000, '2000', 7),
('35UO357', 'Lamborghini', 'Huracan', 'Hatchback', 'Benzin', 'K', 20000, '5204', 7),
('36FD305', 'Fiat', '500', 'Hatchback', 'Dizel', 'K', 3000, '1248', 7),
('40BS015', 'Fiat', '144Spider', 'Hatchback', 'Benzin', 'S', 500000, '1368', 7),
('41AL500', 'Ferrari', '458', 'Hatchback', 'Benzin', 'S', 3000000, '4499', 7),
('41BA111', 'Fiat', 'Egea', 'Sedan', 'Dizel', 'K', 2500, '1900', 7),
('41JK955', 'BMW', 'M3', 'Sedan', 'Dizel', 'K', 4500, '2450', 1),
('41KOU181', 'Audi', 'A4', 'Sedan', 'Dizel', 'K', 3500, '2000', 7),
('41KOU200', 'Hyundai', 'i20', 'Sedan', 'Benzin', 'S', 140000, '1500', 7),
('42HK2482', 'Opel', 'Corsa', 'Hatchback', 'Dizel', 'K', 5000, '1300', 7),
('43PK89', 'Nissan', 'Qashqai ', 'SUV', 'Benzin', 'S', 120000, '2000', 1),
('43TK380', 'BMW', 'M5', 'Sedan', 'Benzin', 'S', 1500000, '4395', 7),
('45ZB582', 'Honda', 'Civic', 'Hatchback', 'Dizel', 'K', 3000, '1597', 7),
('47CK147', 'Renault', 'Megane 3', 'Sedan', 'Benzin', 'S', 150000, '2100', 7),
('48MS420', 'BMW', '420D', 'Sedan', 'Dizel', 'S', 270000, '1995', 7),
('54TG455', 'Audi', 'A1', 'Sedan', 'Benzin', 'K', 5000, '4000', 1),
('55KJ580', 'Astra', 'Opel', 'Sedan', 'Benzin', 'S', 90000, '1600', 7),
('57CG710', 'Skoda', 'Superb', 'Sedan', 'Benzin', 'K', 2450, '1970', 1),
('58FT3148', 'Opel', 'Astra', 'Sedan', 'Benzin', 'S', 150000, '1364', 7),
('61ZD056', 'Honda', 'Civic', 'Hatchback', 'Benzin', 'S', 380000, '1996', 7),
('64DA604', 'Fiat', 'Linea', 'Sedan', 'Benzin', 'S', 60000, '1248', 7),
('66ZA100', 'Ford', 'Focus', 'Sedan', 'Dizel', 'S', 130000, '1499', 1),
('67TA320', 'Audi', 'TT', 'Hatchback', 'Benzin', 'K', 2000, '1984', 7),
('67TB205', 'Honda', 'Civic', 'Sedan', 'Benzin', 'K', 5000, '1996', 7),
('77BY106', 'Ford', 'Fiesta', 'Hatchback', 'Benzin', 'K', 3000, '1242', 7),
('78BB047', 'Fiat', 'Egea', 'Sedan', 'Dizel', 'S', 120000, '1598', 7),
('78BD130', 'Audi', 'A3', 'Sedan', 'Benzin', 'S', 160000, '1395', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Fatura`
--

CREATE TABLE `Fatura` (
  `Fatura_No` int(11) NOT NULL,
  `Fatura_Alici` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Fatura_Alici_TC` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Fatura_Plaka` varchar(9) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Fatura_Personel` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Fatura_Fiyat` int(11) NOT NULL,
  `Fatura_KS` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `Fatura`
--

INSERT INTO `Fatura` (`Fatura_No`, `Fatura_Alici`, `Fatura_Alici_TC`, `Fatura_Plaka`, `Fatura_Personel`, `Fatura_Fiyat`, `Fatura_KS`) VALUES
(1, 'John Lennon', '98584756565', '34UN328', 'Batuhan Şen', 360000, 'Satıldı'),
(2, 'Bora Can', '07BZ270', '07BZ270', 'Can Özkeskin', 20000, 'Kiralandı'),
(3, 'Cuma Çolak', '32ZD163', '32ZD163', 'Yağmur Sarı', 1000000, 'Satıldı'),
(4, 'Mert Mahanoğlu', '31HT804', '31HT804', 'Deniz Özay', 20000, 'Satıldı'),
(5, 'Kaan Bakıcı', '32496154715', '34ASH5792', 'Aycan Hazel', 365000, 'Kiralandı'),
(6, 'Çolak Aycan', '36110220085', '17BA510', 'İrem Aslan', 20000, 'Kiralandı'),
(8, 'Kaan Üzüm', '17943081073', '06BH2482', 'Ali Bıçak', 300000, 'Satıldı');

-- --------------------------------------------------------

--
-- Table structure for table `Galeri`
--

CREATE TABLE `Galeri` (
  `Galeri_ID` int(11) NOT NULL,
  `Galeri_Adi` text CHARACTER SET latin1 NOT NULL,
  `Galeri_PersonelSay` int(11) NOT NULL,
  `Galeri_TelNo` text CHARACTER SET latin1 NOT NULL,
  `Galeri_AracSay` int(11) NOT NULL,
  `Galeri_Gelir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `Galeri`
--

INSERT INTO `Galeri` (`Galeri_ID`, `Galeri_Adi`, `Galeri_PersonelSay`, `Galeri_TelNo`, `Galeri_AracSay`, `Galeri_Gelir`) VALUES
(1, 'Valorant', 10, '5123456789', 50, 2350000),
(4, 'Valorant Ankara', 10, '5726849245', 30, 360000),
(6, 'Valorant Kocaeli', 10, '5745984250', 30, 1725000),
(7, 'Valorant Bursa', 10, '5745984850', 30, 360000);

-- --------------------------------------------------------

--
-- Table structure for table `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_pwd` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kullanici`
--

INSERT INTO `kullanici` (`id`, `username`, `user_pwd`) VALUES
(1, 'whistly', '123456'),
(4, 'qweqweqwe', 'boranakova'),
(5, 'kgkg', 'adada'),
(6, 'uytre', 'asdasd'),
(7, 'boranakovaboran', 'akovaboranboran'),
(8, 'denemeboranboran', 'denemeboranakova'),
(9, 'mert12345', 'mert12345'),
(10, 'borandenemekayit', 'borankayitdeneme'),
(11, 'tekbutondeneme', 'tekbutondeneme'),
(12, 'tusicinsondeneme', 'tusicinsondeneme'),
(13, 'boranakovaa', 'ba53603343'),
(25, 'adminmert', 'quite'),
(26, 'venacain', '181307027'),
(27, 'boran', 'boran'),
(28, 'yenileme', 'yenileme'),
(29, 'denemetekrari', '123456'),
(30, 'boranakovag', 'ba53603203'),
(31, 'boran027', 'ba53603203'),
(32, 'boranakovva', '123456'),
(33, 'whereismymind', 'helloworld'),
(34, 'borandeneme1', '123456'),
(35, 'lycon04', 'ba53603203'),
(36, 'faruk001', 'farukfaruk'),
(37, 'adminboran', '456123'),
(38, 'admintunc', '321654');

-- --------------------------------------------------------

--
-- Table structure for table `Musteri`
--

CREATE TABLE `Musteri` (
  `Musteri_ID` int(11) NOT NULL,
  `Musteri_Adi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Musteri_Soyadi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Musteri_TC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Musteri_TelNo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `Musteri`
--

INSERT INTO `Musteri` (`Musteri_ID`, `Musteri_Adi`, `Musteri_Soyadi`, `Musteri_TC`, `Musteri_TelNo`) VALUES
(1, 'Erdem', 'Camlioglu', '12345678912', '5350828685'),
(3, 'Mert', 'Mahanoglu', '23456789123', '9119119191'),
(4, 'Tunc', 'Kurtuncu', '34567891234', '1121121122'),
(5, 'Boran', 'Akuva', '45678912345', '5316318131'),
(6, 'ali', 'biyikli', '151515151', '2144545'),
(7, 'Ömer', 'Çaycı', '1515', '151515'),
(8, 'Sadık', 'Oğul', '1234567', '03655555'),
(9, 'Cuma', 'Çolak', '87444458617', '5798466666'),
(10, 'Cem', 'Güzel', '11111111111', '1111111111'),
(11, 'John', 'Lennon', '98584756565', '5551212121'),
(12, 'Bora', 'Can', '12136925874', '1234567889'),
(13, 'Can', 'Mert', '45612332185', '1239515747'),
(14, 'Şükrü', 'Ferit', '35715985445', '6541236542'),
(15, 'Tunc', 'Mahanoglu', '10220420785', '3401205070'),
(16, 'Boran', 'Mahanoglu', '30190257071', '7059048054'),
(17, 'Kaan', 'Üzüm', '17943081073', '5044107880'),
(18, 'Mert', 'Kedi', '20137894125', '1099047171'),
(19, 'Koray', 'Bıçak', '47784474474', '1411415125'),
(20, 'Mert', 'Mert', '95474165421', '02544555142'),
(21, 'Okay', 'Ağaç', '58445568591', '3255417471'),
(22, 'Pelin', 'Uçar', '53020120174', '7441451825'),
(23, 'Poyraz', 'Can', '95174184265', '1005470000'),
(24, 'Cafer', 'Tütüncü', '90032740087', '6957410021'),
(26, 'Erdem', 'Camlioglu', '555555555', '545455454'),
(33, 'boran', 'akova', '123456789', '123456789'),
(34, 'boran', 'akova', '87654321', '87654321'),
(35, 'erdem', 'mahan', '13123', '34241'),
(36, 'Emre', 'Selman', '1235234156', '1356362673'),
(37, 'Erdem', 'Camlioglu', '555555556', '545455454'),
(40, 'Selman', 'Ceren', '123235345', '423673788'),
(44, 'Erdem', 'Camlioglu', '555545454', '545455454'),
(45, 'Hasan', 'hasan', '12314', '141455'),
(46, 'Emre', 'Emre', '123123', '123123'),
(47, 'Koray', 'Leman', '4535324', '234234'),
(48, 'Soner', 'Kara', '22425', '423425'),
(49, 'Mehmet', 'Selim', '14134314', '2343423'),
(50, 'Can', 'Mehmet', '2342452', '2352342'),
(51, 'Ozan', 'Çoban', '14014014085', '3652365454'),
(52, 'Ali', 'Kabak', '35410210274', '1234568521'),
(53, 'Ceyhun', 'Selim', '34534', '245245'),
(54, 'Giray', 'Kaya', '55682345534', '5423455664'),
(55, 'Ali', 'Kobay', '25425425411', '7894561210'),
(56, 'Talih', 'Halip', '55453423343', '5426545423'),
(57, 'Halil', 'Salih', '5345245552', '5325455342'),
(58, 'Mert', 'Mahanoğlu', '54084747523', '05984125656'),
(59, 'Erdem', 'Çamlıoğlu', '45732165712', '01237895421'),
(60, 'Kaan', 'Bakıcı', '32496154715', '3216547451'),
(61, 'Mahmut', 'Tuncer', '45344355565', '5327565443'),
(65, 'Kaan', '32496154715', '06VD348', '1234564141'),
(70, 'Halil', 'Fuat', '34564322247', '5325678743'),
(71, 'Cemil', 'Can', '76354797742', '5324566674'),
(80, 'Selim', '', '', ''),
(82, 'Cem', 'Can', '55763425546', '5537785468'),
(83, 'Cemre', 'Sevim', '22435455525', '5424567543'),
(86, 'Hikmet', 'Büyük', '12485415985', '3674251212'),
(87, 'Ogün', 'Bağcı', '36710025495', '3261522323'),
(88, 'Semih', 'Cayci', '54667534537', '5437655214'),
(90, 'Kemal', 'Kamil', '55763423498', '5324567743'),
(91, 'Tuğçe', 'Alık', '36754815485', '1234567878'),
(93, 'Hikmet', 'Harlan', '45667135546', '5326544578'),
(97, 'Sadettin', 'Koca', '35715415485', '3573574000'),
(104, 'Çolak', 'Aycan', '36110220085', '5841234542');

-- --------------------------------------------------------

--
-- Table structure for table `Personel`
--

CREATE TABLE `Personel` (
  `Personel_ID` int(11) NOT NULL,
  `Personel_Departman` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Personel_Adi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Personel_Soyadi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Personel_TC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Personel_GalID` int(11) NOT NULL,
  `Personel_Pozisyon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `Personel_Maas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `Personel`
--

INSERT INTO `Personel` (`Personel_ID`, `Personel_Departman`, `Personel_Adi`, `Personel_Soyadi`, `Personel_TC`, `Personel_GalID`, `Personel_Pozisyon`, `Personel_Maas`) VALUES
(1, 'Satis', 'Emir', 'Ibrahim', '12345698', 1, 'Caylak', '3000'),
(3, 'Satış', 'Emir', 'İbrahim', '15151515', 1, 'Yatay', '1500'),
(4, 'satış', 'Ahmet', 'Ali', '24851367', 1, 'yönetici', '3000'),
(5, 'Satış', 'Ahmet ', 'Demir', '47954896', 4, 'Yönerici', '5000'),
(6, 'Satış', 'Ali', 'Bıçak', '57945620', 4, 'Caylak', '3000'),
(7, 'Satış', 'Buse', 'Keskin', '478549521', 4, 'Caylak', '3000'),
(8, 'Satış', 'Deniz ', 'Özay', '48951702', 4, 'Caylak', '3000'),
(9, 'Satış', 'Can', 'Özkeskin', '78104806', 4, 'Caylak', '3000'),
(10, 'Satış', 'Eda', 'Nur', '85726048', 4, 'Caylak', '3000'),
(11, 'Alım', 'Serkan', 'Uslu', '85726048', 4, 'Yönetici', '5000'),
(12, 'Alım', 'İrem', 'Aslan', '57954276', 4, 'Caylak', '3000'),
(13, 'Alım', 'Burak', 'Karaman', '47895401', 4, 'Caylak', '3000'),
(14, 'Alım', 'Miray', 'Gök', '57104978', 4, 'Caylak', '3000'),
(15, 'Satış', 'Enes ', 'Ulu', '14570493', 6, 'Yönetici', '3000'),
(16, 'Satış', 'Batuhan', 'Şen', '15890493', 6, 'Caylak', '2000'),
(17, 'Satış', 'Yağmur ', 'Sarı', '89548230', 6, 'Caylak', '2000'),
(18, 'Satış', 'Koray', 'Ak', '89458730', 6, 'Caylak', '2000'),
(19, 'Satış', 'Enes', 'Biçen', '12058730', 6, 'Caylak', '2000'),
(20, 'Alış', 'İrem', 'Aslı', '89542014', 6, 'Yönetici', '3000'),
(21, 'Alış', 'Furkan', 'Kara', '54128904', 6, 'Caylak', '2000'),
(22, 'Alış', 'Aycan', 'Hazel', '56324894', 6, 'Caylak', '2000'),
(23, 'Alış', 'Yavuz', 'Işık', '24895734', 6, 'Caylak', '2000'),
(24, 'Alış', 'Haydar', 'Öğüt', '48641289', 6, 'Caylak', '2000'),
(25, 'Alış', 'Oğuz', 'Akgün', '57348924', 7, 'Yönetici', '4000'),
(26, 'Alış', 'Arda', 'Yüz', '57924853', 7, 'Yönetici', '4000'),
(27, 'Alış', 'Berk', 'Öney', '58402489', 7, 'Caylak', '2500'),
(28, 'Alış', 'Beyza', 'Çıkrık', '54201304', 7, 'Caylak', '2500'),
(29, 'Alış', 'Eren', 'Peker', '53200143', 7, 'Caylak', '2500'),
(30, 'Satış', 'Serkan', 'Kürtüncü', '524789240', 7, 'Caylak', '2500'),
(31, 'Satış', 'Kadir', 'Kabul', '21457923', 7, 'Yönetici', '4000'),
(32, 'Satış', 'Sena', 'Dereli', '51320574', 7, 'Caylak', '2500'),
(33, 'Satış', 'Ali', 'İhsan', '23179540', 7, 'Caylak', '2500'),
(34, 'Satış', 'Ekrem', 'Mete', '21791503', 7, 'Caylak', '2500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Arac`
--
ALTER TABLE `Arac`
  ADD PRIMARY KEY (`Arac_Plaka`),
  ADD KEY `Galeri_ID` (`Galeri_ID`);

--
-- Indexes for table `Fatura`
--
ALTER TABLE `Fatura`
  ADD PRIMARY KEY (`Fatura_No`),
  ADD UNIQUE KEY `Fatura_Plaka` (`Fatura_Plaka`);

--
-- Indexes for table `Galeri`
--
ALTER TABLE `Galeri`
  ADD PRIMARY KEY (`Galeri_ID`);

--
-- Indexes for table `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- Indexes for table `Musteri`
--
ALTER TABLE `Musteri`
  ADD PRIMARY KEY (`Musteri_ID`),
  ADD UNIQUE KEY `Musteri_TC` (`Musteri_TC`);

--
-- Indexes for table `Personel`
--
ALTER TABLE `Personel`
  ADD PRIMARY KEY (`Personel_ID`),
  ADD KEY `personel_galeri_id` (`Personel_GalID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Fatura`
--
ALTER TABLE `Fatura`
  MODIFY `Fatura_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Galeri`
--
ALTER TABLE `Galeri`
  MODIFY `Galeri_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Musteri`
--
ALTER TABLE `Musteri`
  MODIFY `Musteri_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `Personel`
--
ALTER TABLE `Personel`
  MODIFY `Personel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Arac`
--
ALTER TABLE `Arac`
  ADD CONSTRAINT `Galeri_ID` FOREIGN KEY (`Galeri_ID`) REFERENCES `Galeri` (`Galeri_ID`);

--
-- Constraints for table `Fatura`
--
ALTER TABLE `Fatura`
  ADD CONSTRAINT `AliciplakaFatura` FOREIGN KEY (`Fatura_Plaka`) REFERENCES `Arac` (`Arac_Plaka`);

--
-- Constraints for table `Personel`
--
ALTER TABLE `Personel`
  ADD CONSTRAINT `personel_galeri_id` FOREIGN KEY (`Personel_GalID`) REFERENCES `Galeri` (`Galeri_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
