-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Mar 2022, 14:36:01
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aribilgi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `katturu` varchar(15) NOT NULL,
  `ustkat` varchar(30) NOT NULL,
  `meta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori`, `katturu`, `ustkat`, `meta`) VALUES
(12, 'Web Tasarım', 'Ana Kategori', '-', 'Web Tasarım Üzerine Verilen Hizmetlerdir.'),
(13, 'Grafik Tasarım', 'Ana Kategori', '-', 'Grafik Tasarım Üzerine Verilen Hizmetlerdir.'),
(14, 'Dijital Pazarlama', 'Ana Kategori', '-', 'Dijital Pazarlama Üzerine Verilen Hizmetlerdir.'),
(15, 'Web', 'Alt Kategori', 'Web Tasarım', 'Web Tasarımın alt kategorisidir.'),
(18, 'sdfsg', 'Ana Kategori', '-', 'www');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ornek`
--

CREATE TABLE `ornek` (
  `id` int(11) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `yas` int(3) NOT NULL,
  `il` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ornek`
--

INSERT INTO `ornek` (`id`, `ad`, `yas`, `il`) VALUES
(1, 'Hakan', 45, 'Ankara'),
(2, 'Kaan', 40, 'istnabul'),
(3, 'Ahmet', 82, 'Zıbilistan'),
(4, 'Hayko', 50, 'Sinop'),
(5, 'Ayşe', 20, 'Kayseri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

CREATE TABLE `yazilar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` varchar(160) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `fotoalt` varchar(100) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `tarih` varchar(11) NOT NULL,
  `durum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `kategori`, `tarih`, `durum`) VALUES
(0, 'Lorem Ipsum Dolar Sıt', ' Lorem ipsum dolor sit amet consectetur adipisicing elitLorem ipsum dolor sit amet consectetur adipisicing elitLorem ipsum dolor sit amet consectetur adipisicing elitLorem ipsum dolor sit amet consectetur adipisicing elitLorem ipsum dolor sit amet consectetur adipisicing elitLorem ipsum dolor sit amet consectetur adipisicing elit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit', '../img/dijital-pazarlama-hizmeti-330x150px.jpg', 'wwwwww', 'Dijital Pazarlama', '2022-03-22', 'Yayınlandı');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ornek`
--
ALTER TABLE `ornek`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `ornek`
--
ALTER TABLE `ornek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
