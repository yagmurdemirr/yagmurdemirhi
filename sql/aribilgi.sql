-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Nis 2022, 09:34:04
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
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` varchar(160) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `fotoalt` varchar(90) NOT NULL,
  `seotitle` varchar(70) NOT NULL,
  `durum` varchar(10) NOT NULL,
  `sayfaturu` varchar(10) NOT NULL,
  `tarih` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `seotitle`, `durum`, `sayfaturu`, `tarih`) VALUES
(1, 'Hakkımda', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi dolor temporibus qui provident reiciendis quidem, culpa nostrum, fugit animi quasi, corporis iure sed maiores earum minus tenetur iste accusamus modi consectetur expedita ducimus blanditiis placeat. Voluptatem eaque animi perferendis, sequi ex natus vel iusto adipisci autem aliquam commodi? Quasi, totam!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi dolor temporibus qui provident reiciendis quidem, culpa nostrum, fugit animi quasi, corporis iure sed maiores earum minus tenetur iste accusamus modi consectetur expedita ducimus blanditiis placeat. Voluptatem eaque animi perferendis, sequi ex natus vel iusto adipisci autem aliquam commodi? Quasi, totam!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi dolor temporibus qui provident reiciendis quidem, culpa nostrum, fugit animi quasi, corporis iure sed maiores earum minus tenetur iste accusamus modi consectetur expedita ducimus blanditiis placeat. Voluptatem eaque animi perferendis, sequi ex natus vel iusto adipisci autem aliquam commodi? Quasi, totam!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi dolor temporibus qui provident reiciendis quidem, culpa nostrum, fugit animi quasi, corporis iure sed maiores earum minus tenetur iste accusamus modi consectetur expedita ducimus blanditiis placeat. Voluptatem eaque animi perferendis, sequi ex natus vel iusto adipisci autem aliquam commodi? Quasi, totam!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi dolor temporibus qui provident reiciendis quidem, culpa nostrum, fugit animi quasi, corporis iure sed maiores earum minus tenetur iste accusamus modi consectetur expedita ducimus blanditiis placeat. Voluptatem eaque animi perferendis, sequi ex natus vel iusto adipisci autem aliquam commodi? Quasi, totam!</p>\r\n', 'Lorem ipsum dolor sit amet consectetur', '../img/foto (1).jpg', 'Hakkımda', 'Hakkımda | Aribilişim', 'yayınlandı', 'üstsayfa', '2022-04-01'),
(2, 'Web Tasarım Hizmeti', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n', 'Lorem ipsum dolor sit amet consectetur', '../img/foto (2).jpg', 'Web Tasarım Hizmeti', 'Web Tasarım Hizmeti | Aribilişim', 'Yayınlandı', 'Alt Sayfa', '2022-04-01'),
(3, 'Grafik Tasarım Hizmeti', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n', 'Lorem ipsum dolor sit amet consectetur', '../img/foto (3).jpg', 'Grafik Tasarım Hizmeti', 'Grafik Tasarım Hizmeti | Aribilişim', 'Yayınlandı', 'Alt Sayfa', '2022-04-01'),
(4, 'Dijital Pazarlama', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quas eius odio adipisci. Nemo veniam, totam expedita cupiditate modi labore placeat consectetur est assumenda alias nam magnam voluptatum excepturi id, cumque quia exercitationem? Perferendis totam commodi quae dolorum corporis autem magnam tempora blanditiis officiis quod. Eveniet laboriosam ipsa assumenda mollitia.</p>\r\n', 'Lorem ipsum dolor sit amet consectetur', '../img/foto (4).jpg', 'Dijital Pazarlama', 'Dijital Pazarlama | Aribilişim', 'Yayınlandı', 'Alt Sayfa', '2022-04-01'),
(7, 'dfhgsdhthtsjrt', '<p>sthsthrjrjrsj</p>\r\n', 'rthrfjsjsr', '../img/3500w.jpg', 'atrshtrzshzr', 'ftrhtgjg', 'Yayınlandı', 'Üst Sayfa', '2022-04-05');

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
(0, 'Seo\'nun Web Siteleri İçin Önemi', '<p>dddddddddddddddddd</p>\r\n', 'dddddddddddddddddd', '../img/foto (1).jpg', 'Seo\'nun Önemi', 'Dijital Pazarlama', '2022-03-31', 'Yayınlandı');

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
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
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

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
