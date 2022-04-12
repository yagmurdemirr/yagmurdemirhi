-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Nis 2022, 14:24:54
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
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `harita` text NOT NULL,
  `tanitim` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `blogbanner` varchar(100) NOT NULL,
  `iletisimbanner` varchar(100) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `analitik` text NOT NULL,
  `konsol` text NOT NULL,
  `piksel` text NOT NULL,
  `copy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `adres`, `telefon`, `email`, `harita`, `tanitim`, `logo`, `blogbanner`, `iletisimbanner`, `facebook`, `instagram`, `twitter`, `whatsapp`, `analitik`, `konsol`, `piksel`, `copy`) VALUES
(1, 'Lorem Ipsum Sit Dolor Amet', '05555555555', 'info@mail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.267497942886!2d28.7057210151909!3d40.9975179793018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa0f771049369%3A0xcef79a22d014d5ca!2sARI%20Bili%C5%9Fim%20-%20Bilgisayar%20Al%C4%B1m%20%26%20Sat%C4%B1m%20ve%20Teknik%20Servis%20Hizmetleri!5e0!3m2!1str!2str!4v1649241463496!5m2!1str!2str\" width=\"100%\" height=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi distinctio fugiat, aliquid, repellat sapiente dolorem facilis voluptatem ex animi ad recusandae iusto dignissimos alias labore excepturi perferendis quos est rerum?', '../img/cropped-logo-200x37-1.webp', '../img/blogbanner.jpg', '../img/iletisimbanner.jpg', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://wa.me/0555555555', 'dvgdzgdfhbgfdhbfdhbdhzh', 'hdfzdfhhdgdaggrg', 'agrgaggghjdjjnncskhnbkns', 'Her Hakkı Saklıdır &copy; 2022 Arı Bilişim');

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
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `konu` varchar(13) NOT NULL,
  `mesaj` text NOT NULL,
  `durum` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `ad`, `email`, `konu`, `mesaj`, `durum`) VALUES
(1, 'Hayko Cepkin', 'hayko@mail.com', 'Şikayet', 'Heyyyyyyy', 'Okunmadı'),
(2, 'Müzeyyen', 'muzo@gmail.com', 'Şikayet', 'ŞŞŞŞŞŞŞŞŞŞŞŞŞŞŞŞ', 'Okundu');

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
(0, 'Seo\'nun Web Siteleri İçin Önemi', '<p>dddddddddddddddddd</p>\r\n', 'dddddddddddddddddd', '../img/foto (1).jpg', 'Seo\'nun Önemi', 'Dijital Pazarlama', '2022-03-31', 'Yayınlandı'),
(0, 'Yazılar 2', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Açıklama 2', '../img/foto (2).jpg', 'yazı 2', 'Grafik Tasarım', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 3', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (3).jpg', 'Yazılar 3', 'Grafik Tasarım', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 4', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (4).jpg', 'Yazılar 4', 'Grafik Tasarım', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 5', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (5).jpg', 'Yazılar 5', 'Dijital Pazarlama', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 6', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (6).jpg', 'Yazılar 6', 'Grafik Tasarım', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 7', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (7).jpg', 'Yazılar 7', 'Dijital Pazarlama', '2022-04-12', 'Yayınlandı'),
(0, 'Yazılar 8', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet, iusto? Exercitationem alias cumque cum saepe aliquid dolore harum omnis odit libero laborum dolorum ratione sed aliquam incidunt consequatur maxime accusamus, tempora magni rerum nesciunt soluta temporibus, cupiditate nihil? Consequatur non hic odit omnis placeat fugiat officiis sapiente dolores quam id!</p>\r\n', 'Lorem ipsum dolor sit amet ', '../img/foto (8).jpg', 'Yazılar 8', 'Grafik Tasarım', '2022-04-12', 'Yayınlandı');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
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
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
