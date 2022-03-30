-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 28 Mar 2022, 18:29:09
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aribilisim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(25) NOT NULL,
  `katturu` varchar(15) NOT NULL,
  `ustkat` varchar(30) NOT NULL,
  `meta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori`, `katturu`, `ustkat`, `meta`) VALUES
(2, 'Web Tasarım', 'Ana Kategori', '-', 'Web Tasarım ve kodlama üzerine bilgiler'),
(3, 'Grafik Tasarım', 'Ana Kategori', '-', 'Grafik Tasarım ve Prensipleri Hakkında Bilgiler'),
(4, 'Dijital Pazarlama', 'Ana Kategori', '-', 'Sosyal Medya ve Google Süreçleri Hakkında Bilgiler'),
(5, 'Html', 'Alt Kategori', 'Web Tasarım', 'Html, Bir Web Sitesinin Temel Kod Yapısıdır'),
(7, 'Css', 'Alt Kategori', 'Web Tasarım', 'Web Sitelerinin stillendirilmesi için kullanılan yapı'),
(8, 'Reackt', 'Ana Kategori', '-', 'Javascript Kütüphanesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ornek`
--

DROP TABLE IF EXISTS `ornek`;
CREATE TABLE IF NOT EXISTS `ornek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(20) NOT NULL,
  `yas` int(3) NOT NULL,
  `il` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ornek`
--

INSERT INTO `ornek` (`id`, `ad`, `yas`, `il`) VALUES
(6, 'Kaan', 40, 'İstanbul'),
(8, 'Hayko', 40, 'İstanbul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

DROP TABLE IF EXISTS `yazilar`;
CREATE TABLE IF NOT EXISTS `yazilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` varchar(160) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `fotoalt` varchar(100) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `tarih` varchar(11) NOT NULL,
  `durum` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `kategori`, `tarih`, `durum`) VALUES
(1, 'Web Tasarımda Dikkat Edilmesi Gerekenler', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta in voluptatum ullam cumque accusamus repudiandae magni eius possimus reprehenderit animi, consequatur aliquam, quas alias esse veniam sunt omnis quod. Pariatur excepturi labore adipisci dolore sed qui eaque molestias, consectetur, odit laboriosam nobis distinctio sunt accusamus! Animi iure quam illum asperiores accusamus vel porro laborum eum numquam distinctio officiis recusandae, hic ad, facilis reprehenderit, quia fuga facere quis architecto maxime consectetur labore. Laudantium vitae incidunt molestias?', 'Web Tasarımı için Dikkat Edilecek Kurallar ve Standartlar', '../img/web-tasarim-hizmeti-500x334px.jpg', 'Web Tasarım Standartları', 'Web Tasarım', '2022-03-25', 'Yayınlandı'),
(2, 'Seo\'nun Web Siteleri için Önemi', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis sit quos commodi expedita id praesentium, molestiae, deserunt tenetur quisquam inventore doloribus aliquid? Iste, sunt amet illo eum quod debitis deleniti voluptas consequuntur cum dolor, at pariatur. Minus tempora ipsa consequuntur excepturi facilis in sapiente iusto tempore a voluptatum commodi eius, est placeat. Non veritatis nam quisquam molestiae, dolore natus, voluptatem optio eos aspernatur odio rem asperiores dicta culpa quidem animi fugit, hic est ea dolor commodi tempora! Provident tempora qui impedit nam eveniet nisi, ad inventore voluptatum, soluta vero ut sit autem. Quaerat sed non tempore quisquam illo quis?</p>\n\n<h2>Seo i&ccedil;in Yapılacaklar Listesi</h2>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis sit quos commodi expedita id praesentium, molestiae, deserunt tenetur quisquam inventore doloribus aliquid? Iste, sunt amet illo eum quod debitis deleniti voluptas consequuntur cum dolor, at pariatur. Minus tempora ipsa consequuntur excepturi facilis in sapiente iusto tempore a voluptatum commodi eius, est placeat. Non veritatis nam quisquam molestiae, dolore natus, voluptatem optio eos aspernatur odio rem asperiores dicta culpa quidem animi fugit, hic est ea dolor commodi tempora! Provident tempora qui impedit nam eveniet nisi, ad inventore voluptatum, soluta vero ut sit autem. Quaerat sed non tempore quisquam illo quis?</p>\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '../img/dijital-pazarlama-hizmeti-330x150px.jpg', 'Seo\'nun Önemi', 'Dijital Pazarlama', '2022-03-10', 'Yayınlandı'),
(3, 'Blog Yazısı 3', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/dijital-pazarlama-banner-1500x600px.jpg', 'Blog Yazısı 3', 'Reackt', '2022-03-28', 'Yayınlandı'),
(4, 'Blog Yazısı 4', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/foto (5).jpg', 'Blog Yazısı 4', 'Css', '2022-03-28', 'Yayınlandı'),
(5, 'Blog Yazısı 5', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/foto (6).jpg', 'Blog Yazısı 5', 'Grafik Tasarım', '2022-03-28', 'Yayınlandı'),
(6, 'Blog Yazısı 6', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/hakkimda-banner-1500x600px.jpg', 'Blog Yazısı 6', 'Html', '2022-03-28', 'Yayınlandı'),
(7, 'Blog Yazısı 7', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/foto (3).jpg', 'Blog Yazısı 7', 'Web Tasarım', '2022-03-06', 'Yayınlandı');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
