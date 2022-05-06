-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Nis 2022, 09:12:37
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blogtest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `kullanici_adi` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `kullanici_adi`, `sifre`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `api`
--

CREATE TABLE `api` (
  `id` int(10) NOT NULL,
  `domain_name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `license_key` varchar(300) CHARACTER SET utf8 NOT NULL,
  `expiration_date` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `api`
--

INSERT INTO `api` (`id`, `domain_name`, `license_key`, `expiration_date`) VALUES
(1, 'localhost', '405d62126dbeca6938c10093e99ec4a8', '15/09/2021');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `begeniler`
--

CREATE TABLE `begeniler` (
  `begen_id` int(10) NOT NULL,
  `begenen_id` int(10) DEFAULT NULL,
  `begenilen_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `begeniler`
--

INSERT INTO `begeniler` (`begen_id`, `begenen_id`, `begenilen_id`) VALUES
(1, 4, 33);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(10) NOT NULL,
  `adsoyad` varchar(255) NOT NULL,
  `eposta` varchar(255) NOT NULL,
  `konu` varchar(255) NOT NULL,
  `mesaj` longtext NOT NULL,
  `ip` varchar(255) NOT NULL,
  `useragent` varchar(255) NOT NULL,
  `cihaz` varchar(255) NOT NULL,
  `tarih` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `adsoyad`, `eposta`, `konu`, `mesaj`, `ip`, `useragent`, `cihaz`, `tarih`) VALUES
(1, '\r\n    AnthonyAtord', 'no.reply.feedbackform@gmail.com', 'no.reply.feedbackform@gmail.com', 'Gооd dаy!  omerfarukdag.tk \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd аppеаl еntirеly lеgаlly? \r\nWе tеndеr а nеw lеgitimаtе mеthоd оf sеnding соmmеrсiаl оffеr thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh mеssаgеs аrе sеnt, ', '138.199.59.155', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows NT 6.1', '14/08/2021 21:05:16'),
(2, '\r\n    Sambo Dasuki', 'mmxx0684@gmail.com', 'mmxx0684@gmail.com', 'Dear Partner; \r\n \r\nI came across your email contact on Database; Where i was searching for a competent Partner who can handle a lucrative business for me as trustee and manager. I anticipate to read from you soon so I can provide you with more details. \r\n', '138.199.27.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows NT 6.1', '17/08/2021 23:11:58'),
(3, '\r\n    Michael Rajiv', 'michaelrajiv44@gmail.com', 'michaelrajiv44@gmail.com', 'Hello Dear, \r\n \r\nGreetings to you and I hope this email meet at your best, I am working directly with a private family portfolio that can provide funding for credible clients with feasible projects. Currently, we have investment funds for viable projects.', '84.17.49.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.71', 'Windows NT 10.0', '18/08/2021 22:33:26'),
(4, '\r\n    Donald Cole', 'kendrickbells@donaldocole.com', 'kendrickbells@donaldocole.com', 'Good day \r\n \r\n \r\n \r\nI`m seeking a reputable company/individual to partner with in a manner that would benefit both parties. The project is worth $24 Million so \r\nIf interested, kindly contact me through this email donaldcole@donaldocole.com for clarificat', '84.17.48.229', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'Windows NT 6.1', '23/08/2021 00:52:14'),
(5, '\r\n    Mike Goldman\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your omerfarukdag.tk website? \r\nHaving a high DA score, always helps \r\n \r\nGet your omerfarukdag.tk to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a grea', '185.189.114.117', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows NT 6.3', '06/09/2021 20:02:43'),
(6, '\r\n    Mike Baker\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Baker\r\n \r\nsupport@digital-x-press.com', '195.181.161.20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows NT 6.1', '10/09/2021 07:30:50'),
(7, '\r\n    Mike Philips\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Howdy \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Philips\r\n \r\nSpeed SEO Digital Agency', '185.232.21.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows NT 10.0', '13/09/2021 11:54:57'),
(8, '\r\n    Mike Adderiy\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hello \r\n \r\nI have just verified your SEO on  omerfarukdag.tk for its SEO metrics and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Adderiy\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '84.247.48.10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows NT 6.1', '22/09/2021 18:22:55'),
(9, '\r\n    Donald Cole', 'lanj7962@gmail.com', 'lanj7962@gmail.com', 'Good day \r\n \r\nI`m seeking a reputable company/individual to partner with in a \r\nmanner that would benefit both parties. The project is worth \r\n$24 Million so If interested, kindly contact me through this \r\nemail coledd11@clocdcolela.com for clarification. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nDonald Cole', '191.101.217.201', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'Windows NT 6.1', '24/09/2021 03:40:50'),
(10, '\r\n    Mike Oldman\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Oldman\r\n \r\nsupport@digital-x-press.com', '195.181.161.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36 OPR/53.0.2907.68', 'Windows NT 10.0', '28/09/2021 04:07:32'),
(11, '\r\n    Mike Fraser\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your omerfarukdag.tk website? \r\nHaving a high DA score, always helps \r\n \r\nGet your omerfarukdag.tk to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Fraser\r\n \r\nsupport@monkeydigital.co', '89.187.168.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.170 Safari/537.36 OPR/53.0.2907.68', 'Windows NT 10.0', '04/10/2021 19:55:31'),
(12, '\r\n    Donald Cole', 'lanj7962@gmail.com', 'lanj7962@gmail.com', 'Good day \r\n \r\nI contacted you some days back seeking your cooperation in a matter regarding funds worth $24 Million, I urge you to  get back to me through this email coledd11@cloedcolela.com if you\'re still interested. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nDonald Cole', '138.199.63.97', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54', 'Windows NT 6.1', '04/10/2021 23:26:02'),
(13, '\r\n    Mike Hancock\r\n', 'no-replyRoarm@gmail.com', 'no-replyRoarm@gmail.com', 'Hello \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Hancock\r\n \r\nSpeed SEO Digital Agency', '37.120.143.61', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36', 'Windows NT 6.3', '11/10/2021 12:52:56'),
(14, '\r\n    testse', 'umut90101@gmail.com', 'setset', 'asdasdsaasdasd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'Windows NT 10.0', '13/04/2022 15:42:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `kategori_id` int(10) NOT NULL,
  `kategori_adi` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'SQL'),
(5, 'JavaScript'),
(8, 'YouTube'),
(9, 'Teknoloji');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(10) NOT NULL,
  `kullanici_adi` varchar(255) NOT NULL,
  `eposta` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `ip_kayit` varchar(255) NOT NULL,
  `ip_songiris` varchar(255) NOT NULL,
  `cihaz_kayit` varchar(255) NOT NULL,
  `cihaz_songiris` varchar(255) NOT NULL,
  `useragent_kayit` varchar(255) NOT NULL,
  `useragent_songiris` varchar(255) NOT NULL,
  `tarih_kayit` varchar(255) NOT NULL,
  `tarih_songiris` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `kullanici_adi`, `eposta`, `sifre`, `ip_kayit`, `ip_songiris`, `cihaz_kayit`, `cihaz_songiris`, `useragent_kayit`, `useragent_songiris`, `tarih_kayit`, `tarih_songiris`) VALUES
(1, 'omerfarukdag', 'omerrfarukkdagg@gmail.com', '697c8f2c729679cfef9fff3ed46841e5', '176.33.48.23', '176.234.229.251', 'SM-M215F  Android 11', 'Windows NT 10.0', 'Mozilla/5.0 (Linux; Android 11; SM-M215F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36 OPR/63.3.3216.58675', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36 OPR/77.0.4054.277', '13/05/2021 15:32:46', '28/07/2021 15:25:38'),
(2, 'admin', 'admin@omerfarukdag.tk', '21232f297a57a5a743894a0e4a801fc3', '176.33.83.211', '212.252.137.201', 'SM-M215F  Android 11', 'Windows NT 10.0', 'Mozilla/5.0 (Linux; Android 11; SM-M215F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36 OPR/63.3.3216.58675', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '15/05/2021 18:51:44', '03/06/2021 13:17:06'),
(3, 'mertbey', 'mertcgrbyk0@gmail.com', 'fd5ac4e1121f2cd6a597e02c226a7791', '85.153.234.112', '85.153.234.112', 'Redmi Note 8  Android 10', 'Redmi Note 8  Android 10', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', '17/05/2021 15:37:01', '17/05/2021 15:37:18'),
(4, 'test', 'test@test.com', 'b642b4217b34b1e8d3bd915fc65c4452', '::1', '::1', 'Windows NT 10.0', 'Windows NT 10.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '13/04/2022 15:35:45', '14/04/2022 00:50:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

CREATE TABLE `yazilar` (
  `konu_id` int(10) NOT NULL,
  `konu_kategori_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `konu_gonderen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `konu_baslik` varchar(255) CHARACTER SET utf8 NOT NULL,
  `konu_icerik` longtext CHARACTER SET utf8 NOT NULL,
  `konu_tarih` varchar(255) CHARACTER SET utf8 NOT NULL,
  `konu_resim` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`konu_id`, `konu_kategori_id`, `konu_gonderen`, `konu_baslik`, `konu_icerik`, `konu_tarih`, `konu_resim`) VALUES
(59, '1', 'melih', 'Abdullah', '<p>aaaaaaaaaaaaaaa</p>', '15/04/2022 00:03:22', 'uploads/rt4247jpeg'),
(63, '3', 'melih', 'Deneme', '<p>asddas</p>', '15/04/2022 11:25:29', 'uploads/yu5924jpeg'),
(58, '8', 'melih', 'Abdullah', '<p>&lt;x&lt;x&lt;x&lt;x&lt;x&lt;x&lt;</p>', '15/04/2022 00:02:58', 'uploads/ty9372jpeg'),
(49, '8', 'melih', 'kdk', '<p>ad</p>', '14/04/2022 23:42:56', 'uploads/as6808.PNG'),
(51, '5', 'melih', 'Umutadad', '<p>99</p>', '14/04/2022 23:48:46', 'uploads/ty7831.PNG'),
(64, '2', 'melih', 'Umut Can Şeremet Deneme Başlığı', '<p>Umut Can Şeremet Deneme Başlığı</p>', '15/04/2022 11:25:58', 'uploads/as3694jpeg'),
(28, '9', 'melih', 'SOAP (Simple Object Access Protocol) Nedir?', '<p>SOAP (Simple Object Access Protocol - Basit Nesne Erişim Protokolü), Service-oriented Architecture felsefesini pratiğe uyarlayan iki interface\'den biridir. Üzerinde bulunan Universal Description Discovery and Integration (UDDI) ile birlikte hizmet yönelimli mimarinin pratikte kullanılmasını mümkün kılar.</p>\n<p>SOAP (Basit Nesne Erişim Protokolü) dağıtık uygulamalarda ve web servislerinin haberleşmesinde kullanılmak üzere tasarlanan, RPC (Remote Procedure Call) modelini kullanan, istemci/sunucu mantığına dayalı bir protokoldür. Daha genel olarak SOAP, web üzerinden fonksiyonları kullanmak için geliştirilmiş bir sistemin XML tabanlı kurallar topluluğudur.</p>', '07/07/2021 23:39:59', 'uploads/fg15.jpg'),
(29, '5', 'melih', 'JSON Nedir?', '<p>JSON JavaScript Object Notation (JavaScript Nesne Gösterimi) kısaltmasıdır.</p>\r\n<p> JSON, verileri depolamak ve farklı platformlar arasında taşıma için kullanılan bir yapıdır.</p>\r\n<p>JSON, JavaScript nesne gösterim biçiminde yazılmış metinlerdir.JSON dosyaları “.json” uzantısını kullanır.</p>\r\n<p><strong>JSON neden kullanılır?</strong>\r\nJSON programlama dilinden bağımsız olarak farklı platformlar arasında veri alışverişi için kullanılır.</p>\r\n<p>JSON kolay ve hafif yapısı sayesinde XML gibi veri alışverişinde fazla yer kaplayan yapılara alternatif olarak kullanılır.</p>\r\n<p>JSON yapısındaki veriler Java, C#, C++, PHP vb. programlama dilleri içerisinde yer alan komutlarla veya ek bileşenlerle programlama diline ait veri yapısına çevrilerek kullanılır.</p>', '07/07/2021 23:59:11', 'uploads/fg3041.png'),
(31, '9', 'melih', 'Kali Linux', '<p>Kali; Linux tabanlı, CD\'den başlatma seçenekli BackTrack yapımcıları tarafından 2013 yılında oluşturulmuş olan bir güvenlik kontrol işletim sistemi. Offensive Security Ltd. aracılığıyla Mati Aharoni, Devon Kearns ve Raphaël Hertzog tarafından geliştirilmekte ve finanse edilmektedir. İçerisindeki araçlar sayesinde birçok alanda (ağ, Windows, Arduino) güvenlik testi yapmak ve yazılım geliştirmek mümkün. Masaüstü ortamı olarak BackTrack\'teki gibi KDE seçeneği yok; Gnome ve Xfce ortamı bulunmaktadır (2019.4 sürümünde Xfce ortamı varsayılan olarak gelmektedir). Ayrıca 64-bit (amd64), 32-bit (i386), ARM ve Armel alt yapı desteği de vardır.</p>\n<p>Kali Linux, Armitage (grafiksel bir siber saldırı yönetim aracı), nmap (bir port tarayıcı), Wireshark (paket analizörü), John the Ripper (şifre kırıcı), Aircrack-ng gibi (dahil olmak üzere 300\'ün üzerinde nüfuz testi programı ile önceden kurulmuştur) çeşitli araçlardan ve kablosuz LAN\'lar için bir nüfuz testi yazılım paketi, Burp suite ve OWASP ZAP gibi (her ikisi de web uygulama güvenlik tarayıcılarıdır) programlardan oluşur.</p>\n<p>Kali Linux bir bilgisayarın sabit diskine yüklenerek çalışabilir veya bir CD ve USB\'den önyüklenebilir veya bir sanal makine içerisinde çalıştırabilir. Bu, güvenlik açıklarının geliştirilmesi ve yürütülmesi için bir araç olan Metasploit Projesi Metasploit Framework\'ün desteklenen bir platformudur.</p>\n<p>Knoppix tabanlı önceki Linux dağıtımları olan BackTrack\'in yeniden yazımı ile Mati Aharoni ve Devon Kearns tarafından geliştirilmiştir. Üçüncü çekirdek geliştirici Raphaël Hertzog da onlara Debian uzmanı olarak katılmıştır.</p>\n<p>Kali Linux, Debian Testine dayalıdır. Kali\'nin kullandığı paketlerin çoğu Debian program kaynağından alınır.</p>\n<p>Kali Linux, paketleri çalıştırmaya izin verilen az sayıdaki güvenilir kişiyle, her paket geliştiricisi tarafından imzalanıp güvenli bir ortam kullanılarak geliştirilmiştir. Kali, aynı zamanda enjeksiyona tabi tutulan özel olarak hazırlanmış bir çekirdeğe sahiptir. Geliştirme ekibi, çok sayıda kablosuz değerlendirme yapmak zorunda olduklarını gördüklerinden bu özellik öncelikle eklenmiştir.</p>', '09/07/2021 00:01:14', 'uploads/fg4413.png'),
(32, '5', 'melih', 'React Native', '<p>React Native, yerel UI öğelerini kullanarak çok platformlu Android ve iOS uygulamalarının geliştirilmesini sağlayan bir mobil uygulama geliştirme kütüphanesidir.</p>\n<p>React Native, yerel UI öğelerini kullanarak çok platformlu Android ve iOS uygulamalarının geliştirilmesini sağlayan bir mobil uygulama geliştirme kütüphanesidir. JavaScriptCore çalışma zamanı ve Babel transformatörlerine dayanır. Bu kurulumla RN, yeni JavaScript (ES6 +) özelliklerini, async / await vs.\'yi destekler. </p>\n<p>Mobil uygulama geliştirme için, 2013 yazında Facebook\'un iç hackathon projesi olarak başladı. İlk genel önizlemesi 2015 Ocak ayında Reactjs Konferansında yayınlandı ve 2015 Mart ayında Facebook, React Native\'ı GitHub\'da açık ve kullanıma sunuldu. O zamandan beri, yerel uygulamalar ve mükemmel Kullanıcı Arabirimleri üretme kabiliyeti nedeniyle geliştiriciler ve kuruluşlar tarafından geniş çapta benimsendi . Aşağıdaki grafikte, React Native için artan trendi görselleştirebilirsiniz. Piyasaya sürülmesinden sadece 1,5 yıl sonra, Android ve iOS geliştirmeyi devraldı.</p>', '09/07/2021 00:15:44', 'uploads/fg4018.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(10) NOT NULL,
  `yorum_gonderen` varchar(255) NOT NULL,
  `yorum_ip` varchar(255) NOT NULL,
  `yorum_icerik` varchar(1000) NOT NULL,
  `yorum_tarih` varchar(255) NOT NULL,
  `yorum_konu_id` varchar(10) NOT NULL,
  `yorum_onay` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_gonderen`, `yorum_ip`, `yorum_icerik`, `yorum_tarih`, `yorum_konu_id`, `yorum_onay`) VALUES
(1, 'admin', '176.33.83.211', '<a href=\"https://www.php.net/\">www.php.net</a>', '15/05/2021 18:55:14', '3', '1'),
(2, 'umut', '176.33.55.146', 'This quickstart guide explains how to set up a simple, PHP command-line application that makes requests to the YouTube Data API. This quickstart actually explains how to make two API requests:\r\n<br><br>\r\nYou will use an API key, which identifies your application, to retrieve information about the GoogleDevelopers YouTube channel.\r\n<br><br>\r\nYou will use an OAuth 2.0 client ID to submit an authorized request that retrieves information about your own YouTube channel.', '16/05/2021 16:38:47', '7', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `begeniler`
--
ALTER TABLE `begeniler`
  ADD PRIMARY KEY (`begen_id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yazilar`
--
ALTER TABLE `yazilar`
  ADD PRIMARY KEY (`konu_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `api`
--
ALTER TABLE `api`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `begeniler`
--
ALTER TABLE `begeniler`
  MODIFY `begen_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `yazilar`
--
ALTER TABLE `yazilar`
  MODIFY `konu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
