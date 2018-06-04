-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2013 at 08:43 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `idclass` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `price` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `photoclass` varchar(50) NOT NULL,
  PRIMARY KEY (`idclass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`idclass`, `title`, `price`, `description`, `photoclass`) VALUES
(9, 'Standart', '500000', '<p>ini kamar standar dengan kenyamanan yang ada.</p>\r\n', 'singleroom_1387360545.jpg'),
(10, 'Suite', '1000000', '<p>ini kamar suite dengan segala fitur yang ada kamar ini menjadi pilihan favorit para keluarga</p>\r\n', 'suiteroom_1387360588.jpg'),
(11, 'Presidential Suite', '1500000', '<p>ini kamar presidential suite kamar yang memiliki fitur yang paling lengkap &nbsp;</p>\r\n', 'PresidentialSuite_1387189210_1387360648.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `idclass` varchar(10) NOT NULL,
  `fac` varchar(40) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`idclass`, `fac`, `title`, `status`) VALUES
('7', 'lcd', 'LCD', '0'),
('7', 'wifi', 'Free WIFI', '0'),
('7', 'breakfast', 'Sarapan', '0'),
('7', 'safe', 'Kenyamanan', '0'),
('7', 'bath', 'Kamar Mandi', '1'),
('7', 'dinner', 'Makan Malam', '0'),
('7', 'parking', 'Tempat Parkir', '0'),
('7', 'laundry', 'Cuci Gratis', '0'),
('6', 'lcd', 'LCD', '1'),
('6', 'wifi', 'Free WIFI', '0'),
('6', 'breakfast', 'Sarapan', '0'),
('6', 'safe', 'Kenyamanan', '0'),
('6', 'bath', 'Kamar Mandi', '0'),
('6', 'dinner', 'Makan Malam', '0'),
('6', 'parking', 'Tempat Parkir', '0'),
('6', 'laundry', 'Cuci Gratis', '0'),
('8', 'lcd', 'LCD', '0'),
('8', 'wifi', 'Free WIFI', '0'),
('8', 'breakfast', 'Sarapan', '0'),
('8', 'safe', 'Kenyamanan', '0'),
('8', 'bath', 'Kamar Mandi', '0'),
('8', 'dinner', 'Makan Malam', '0'),
('8', 'parking', 'Tempat Parkir', '0'),
('8', 'laundry', 'Cuci Gratis', '1'),
('10', 'lcd', 'LCD', '1'),
('10', 'wifi', 'Free WIFI', '1'),
('10', 'breakfast', 'Sarapan', '1'),
('10', 'safe', 'Kenyamanan', '1'),
('10', 'bath', 'Kamar Mandi', '1'),
('10', 'dinner', 'Makan Malam', '0'),
('10', 'parking', 'Tempat Parkir', '1'),
('10', 'laundry', 'Cuci Gratis', '0'),
('11', 'lcd', 'LCD', '1'),
('11', 'wifi', 'Free WIFI', '1'),
('11', 'breakfast', 'Sarapan', '1'),
('11', 'safe', 'Kenyamanan', '1'),
('11', 'bath', 'Kamar Mandi', '1'),
('11', 'dinner', 'Makan Malam', '1'),
('11', 'parking', 'Tempat Parkir', '1'),
('11', 'laundry', 'Cuci Gratis', '1'),
('9', 'lcd', 'LCD', '1'),
('9', 'wifi', 'Free WIFI', '1'),
('9', 'breakfast', 'Sarapan', '1'),
('9', 'safe', 'Kenyamanan', '0'),
('9', 'bath', 'Kamar Mandi', '1'),
('9', 'dinner', 'Makan Malam', '0'),
('9', 'parking', 'Tempat Parkir', '1'),
('9', 'laundry', 'Cuci Gratis', '0');

-- --------------------------------------------------------

--
-- Table structure for table `identification`
--

CREATE TABLE IF NOT EXISTS `identification` (
  `identify_kinds` int(20) NOT NULL AUTO_INCREMENT,
  `identify_name` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`identify_kinds`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `identification`
--

INSERT INTO `identification` (`identify_kinds`, `identify_name`, `status`) VALUES
(1, 'Passport', '1'),
(2, 'KTP/ID Card/Civilian Card', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login_cat`
--

CREATE TABLE IF NOT EXISTS `login_cat` (
  `cat_login_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_login_name` varchar(40) NOT NULL,
  `cat_login_hash` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_cat`
--

INSERT INTO `login_cat` (`cat_login_id`, `cat_login_name`, `cat_login_hash`) VALUES
(1, 'Administrator', '#admin#');

-- --------------------------------------------------------

--
-- Table structure for table `login_web`
--

CREATE TABLE IF NOT EXISTS `login_web` (
  `login_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_login_id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `recent_login` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_web`
--

INSERT INTO `login_web` (`login_id`, `cat_login_id`, `username`, `password`, `recent_login`, `email`, `name`, `phone`, `status`) VALUES
(1, '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00', 'rickyfm1993@gmail.com', 'ricky fm', '085695005956', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `idoptions` int(10) NOT NULL AUTO_INCREMENT,
  `options_name` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`idoptions`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`idoptions`, `options_name`, `value`) VALUES
(1, 'company_name', 'Paradise Hotel'),
(2, 'company_address', 'Jl. Cilibende No. 120'),
(3, 'company_number', '087770664315'),
(4, 'currency', 'Rp');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `post_entry` longtext NOT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `title`, `post_entry`) VALUES
(1, 'Tentang Paradise Hotel', '<p style="text-align: justify;"><span style="font-size:16px">Tiba di Indonesia pada tahun 1997, Adang Internasional yang dipimpin oleh Adang Darmawan pada awalnya terkonsentrasi pada hotel di pusat kota, apartemen dan manajemen properti. Dengan keyakinan kuat, Adang International percaya dengan adanya perubahan manajemen, Adang International adalah perusahaan pertama di Indonesia yang merubah konsep apartemen menjadi hotel untuk tempat tinggal sehari-hari ataupun sebagai fasilitas tempat tinggal untuk jangka waktu yang lama. Dengan strategi perubahan konsep industri apartemen tersebut menandakan Adang sebagai perusahaan yang tidak hanya memainkan permainan, kami menginginkan untuk merubah cara permainan tersebut. Sejak saat kedatangan sampai keberangkatan, para tamu secara sadar atau pun tidak sadar telah diperkenalkan dengan pengalaman berlibur di vila atau resor, yang telah di rancang secara matang dan cermat untuk memberikan mereka kebahagiaan menyeluruh dan kenyamanan selama mereka menginap. Dengan kerja keras dan keyakinan yang mantap bertahan di pasar Asia, Adang International memindahkan kantor pusatnya ke Jakarta pada tahun 2000 untuk sepenuhnya berkonsentrasi pada pembangunan di Indonesia dan Asia Tenggara. Adang International telah berkembang menjadi salah satu perusahaan terkemuka di manajemen perhotelan Indonesia dengan perkembangan di semua sektor industri dan rencana masa depan untuk ekspansi ke kota-kota besar di Asia dan negara potensial untuk resor</span></p>\r\n'),
(2, '', '<p><img alt="Ricky Fajar Maulana" src="/hotel/uploads/images/ricky.jpg" style="float:left; height:206px; width:308px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:24px"><a href="https://www.facebook.com/ricky.f.maulana?fref=ts">Ricky Fajar Maulana</a></span></p>\r\n\r\n<p><img alt="Rezky" src="/hotel/uploads/images/rezky.jpg" style="height:720px; width:480px" /></p>\r\n\r\n<p><span style="font-size:24px"><a href="https://www.facebook.com/rezky.shinosuke?fref=ts">Rezky Hampdika Putra</a></span></p>\r\n\r\n<p><img alt="" src="/hotel/uploads/images/rumi.jpg" style="height:346px; width:180px" /></p>\r\n\r\n<p><span style="font-size:24px"><a href="https://www.facebook.com/rumi.permana.1">Rummi</a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_kinds` int(20) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`payment_kinds`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_kinds`, `payment_name`, `status`) VALUES
(1, 'Credit Card', '1'),
(2, 'Paypal', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post_article`
--

CREATE TABLE IF NOT EXISTS `post_article` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `featurephoto` varchar(100) NOT NULL,
  `post_entry` longtext NOT NULL,
  `create_date` date NOT NULL,
  `hit` int(10) NOT NULL,
  `create_by` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post_article`
--

INSERT INTO `post_article` (`post_id`, `title`, `featurephoto`, `post_entry`, `create_date`, `hit`, `create_by`) VALUES
(1, 'Tugu Kujang', 'kujang00_1387384699.jpg', '<h3>Tugu Kujang Riwayatmu Kini ...</h3>\r\n\r\n<div class="post-header" style="color: rgb(0, 0, 0); font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 12px; line-height: normal;">\r\n<div class="post-header-line-1">&nbsp;</div>\r\n</div>\r\n\r\n<div style="color: rgb(0, 0, 0); font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 12px; line-height: normal; float: left; width: 578px; padding: 0px; margin: 10px 0px 5px;">\r\n<div class="fb-like fb_edge_widget_with_comment fb_iframe_widget" style="display: inline-block; position: relative;"><iframe class="fb_ltr" id="f10a94eb4" name="f7a4dac9c" scrolling="no" src="http://www.facebook.com/plugins/like.php?api_key=&amp;channel_url=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D28%23cb%3Df32bf0d7e4%26domain%3Dwww.bogorheritage.net%26origin%3Dhttp%253A%252F%252Fwww.bogorheritage.net%252Ff2248bd598%26relation%3Dparent.parent&amp;colorscheme=light&amp;extended_social_context=false&amp;href=http%3A%2F%2Fwww.bogorheritage.net%2F2013%2F04%2Ftugu-kujang-riwayatmu-kini.html&amp;layout=standard&amp;locale=en_US&amp;node_type=link&amp;sdk=joey&amp;send=true&amp;show_faces=false&amp;width=450" style="position: absolute; border-style: none; overflow: hidden; height: 20px; width: 450px;" title="Like this content on Facebook."></iframe></div>\r\n</div>\r\n\r\n<div class="post-body entry-content" id="post-body-2263191775713164816" style="border-top-width: 3px; border-top-style: solid; border-top-color: rgb(187, 187, 187); padding-top: 6px; line-height: 1.4em; margin: 1.5em 0px 0.75em; color: rgb(0, 0, 0); font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 12px;"><br />\r\n<span style="font-family:georgia,times new roman,serif">Tugu kujang yang berdiri di Jalan Pajajaran tepat didepan Botani Square, merupakan tugu dan monumen bersejarah kebanggaan masyarakan Bogor, keberadaannya di ujung Kebun Raya Bogor dan berdekatan dengan pintu masuk Tol Jagorawi seolah menyambut kedatangan setiap pendatang yang akan masuk ke kota Bogor dengan ujungnya yang runcing &nbsp;seolah memberi peringatan &nbsp;&quot; jangan ganggu dan rusak kota kami , kami akan melawan &quot; namun kini ujung pisau kujang tersebu seolah menjadi tumpul karena pemerintah kota yang<strong>&nbsp;TIDAK BISA MENJAGA PENINGGALAN BERSEJARAH</strong>&nbsp;tersebut. &nbsp;</span><br />\r\n<a name="more"></a><br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-Qh3muKzdgcI/UVwgqdH81_I/AAAAAAAADWM/oSTJn1Ye58k/s1600/1364390404.jpg" style="color: rgb(53, 119, 152); text-decoration: none; margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-Qh3muKzdgcI/UVwgqdH81_I/AAAAAAAADWM/oSTJn1Ye58k/s320/1364390404.jpg" style="border:0px solid rgb(204, 204, 204); height:240px; padding-top:4px; width:320px" /></a></div>\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Keindahan tugu kujang kini hilang karena terhalang oleh AMBISI PENGUASA dan PENGUSAHA yang seolah tidak memikirkan nasib tugu ini pada masa mendatang. &nbsp;Martabat tugu kujang kini menjadi kecil dibanding martabat HOTEL yang sedang dibangun disampingnya. &nbsp;</span><br />\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Yaa,, apa boleh dikata, kita masyarakat asli kota Bogor , yang lahir dan besar di sini hanya bisa mengurut dada saja menyaksikan episode ini. keindahan tugu kujang dengan pemandangan disekelilingnya kini hanya bisa dinikmati lewat gambar-gambar dibawah ini:&nbsp;</span><br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://2.bp.blogspot.com/-ik1OOV3Fvoo/UVwhg67MyuI/AAAAAAAADWU/CJIG_VxD9CI/s1600/images+(1).jpg" style="color: rgb(53, 119, 152); text-decoration: none; margin-left: 1em; margin-right: 1em;"><img src="http://2.bp.blogspot.com/-ik1OOV3Fvoo/UVwhg67MyuI/AAAAAAAADWU/CJIG_VxD9CI/s400/images+(1).jpg" style="border:0px solid rgb(204, 204, 204); height:260px; padding-top:4px; width:400px" /></a></div>\r\n\r\n<div class="separator" style="clear: both; text-align: center;">&nbsp;</div>\r\n\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-TBWGhaCcgXQ/UVwhmn9TEZI/AAAAAAAADWc/IpExNcsmdo8/s1600/images.jpg" style="color: rgb(53, 119, 152); text-decoration: none; margin-left: 1em; margin-right: 1em;"><img src="http://3.bp.blogspot.com/-TBWGhaCcgXQ/UVwhmn9TEZI/AAAAAAAADWc/IpExNcsmdo8/s400/images.jpg" style="border:0px solid rgb(204, 204, 204); height:333px; padding-top:4px; width:400px" /></a></div>\r\n\r\n<div class="separator" style="clear: both; text-align: center;">&nbsp;</div>\r\n\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-c-dWaTEwfj4/UVwh1LqO9JI/AAAAAAAADWk/xJxxVWw9Dj0/s1600/TuguKujang011-300x211.jpg" style="color: rgb(53, 119, 152); text-decoration: none; margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-c-dWaTEwfj4/UVwh1LqO9JI/AAAAAAAADWk/xJxxVWw9Dj0/s400/TuguKujang011-300x211.jpg" style="border:0px solid rgb(204, 204, 204); height:281px; padding-top:4px; width:400px" /></a></div>\r\n\r\n<div class="separator" style="clear: both; text-align: center;">&nbsp;</div>\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Sudahlah,, kita tutup keluh kesah ini, karena percuma saja, pondasi sudah dipancangkan, tidak mungkin dirobohkan lagi. kita terima saja kenyataan kalau tugu kesayangan dan kebanggaan kita kini telah kalah martabat.&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Kita kembali pada sejarah awal berdirinya Tugu kujang,&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Tugu yang berdiri kokoh ini merupakan lambang bagi kota Bogor sebagaimana layaknya pada kota-kota lainnya di Indonesia. Tugu setinggi kira-kira 25 M ini dibangun pada 4 Mei 1982 diatas sebuah lahan seluas 26M x 23M dan diperkirakan menghabiskan biaya sebesar Rp. 80jt.</span><br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-C6WOgnMGBrQ/UVwizpHK-pI/AAAAAAAADWs/i09ofWILX9g/s1600/images+(11).jpg" style="color: rgb(53, 119, 152); text-decoration: none; clear: left; float: left; margin-bottom: 1em; margin-right: 1em;"><img src="http://3.bp.blogspot.com/-C6WOgnMGBrQ/UVwizpHK-pI/AAAAAAAADWs/i09ofWILX9g/s200/images+(11).jpg" style="border:0px solid rgb(204, 204, 204); height:200px; padding-top:4px; width:132px" /></a></div>\r\n<span style="font-family:georgia,times new roman,serif">Nama Kujang sendiri diambil dari nama sebuah senjata pusaka tradisional etnis Sunda yang diyakini memiliki kekuatan gaib. Pusaka Kujang itu sendiri sudah dikenal sejak zaman Kerajaan Pajajaran pada abad ke-14 Masehi, di masa pemerintahan Prabu Siliwangi.</span><br />\r\n<span style="font-family:georgia,times new roman,serif">Di masa lalu Kujang tidak dapat dipisahkan dari kehidupan masyarakat Sunda karena fungsinya sebagai peralatan pertanian. Pernyataan ini tertera dalam naskah kuno Sanghyang Siksa Kanda Ng Karesian (1518 M) maupun tradisi lisan yang berkembang di beberapa daerah diantaranya di daerah Rancah, Ciamis. Bukti yang memperkuat pernyataan bahwa kujang sebagai peralatan berladang masih dapat kita saksikan hingga saat ini pada masyarakat Baduy, Banten dan Pancer Pangawinan di Sukabumi.</span><br />\r\n<br />\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Dengan perkembangan kemajuan, teknologi, budaya, sosial dan ekonomi masyarakat Sunda, Kujang pun mengalami perkembangan dan pergeseran bentuk, fungsi dan makna. Dari sebuah peralatan pertanian, kujang berkembang menjadi sebuah benda yang memiliki karakter tersendiri dan cenderung menjadi senjata yang bernilai simbolik dan sakral. Wujud baru kujang tersebut seperti yang kita kenal saat ini diperkirakan lahir antara abad 9 sampai abad 12.</span><br />\r\n<br />\r\n<span style="font-family:georgia,times new roman,serif">Pusaka atau senjata tradisional bagi masayarakat Jawa Barat itu, kemudian oleh masyarakat di Kota Bogor dijadikan sebagai lambang Kota Bogor dan untuk mengenangnya kini pusaka kujang juga diabadikan di sebuah tugu yang kini kita kenal dengan nama Tugu Kujang. Adapun ornamen berupa pusaka kujang yang berdiri kokoh di atas Tugu Kujang tersebut sebetulnya memiliki berat -+800 kg, dengan tinggi pusaka mencapai 7 m. Untuk mempercantik penampilan pusaka itu, juga dilapisi dengan bahan stainless steel, tembaga dan bahan kuningan.</span></div>\r\n\r\n<div class="entrytext" style="color: rgb(176, 176, 176); font-family: Verdana, Arial, sans-serif; font-size: 12px; line-height: normal; background-color: rgb(0, 0, 0);">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class="entrytext" style="color: rgb(176, 176, 176); font-family: Verdana, Arial, sans-serif; font-size: 12px; line-height: normal; background-color: rgb(0, 0, 0);">\r\n<p>&nbsp;</p>\r\n</div>\r\n', '2013-12-17', 0, 'admin'),
(3, 'Mengenal Istana Bogor', 'istanabogor_1387290940.jpg', '<p><strong>Mengenal Istana Bogor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Istana Bogor</strong>&nbsp;merupakan salah satu dari enam&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Istana_Presiden_Republik_Indonesia" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Istana Presiden Republik Indonesia">Istana Presiden</a>&nbsp;<a href="http://id.wikipedia.org/wiki/Indonesia" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Indonesia">Republik Indonesia</a>&nbsp;yang mempunyai keunikan tersendiri dikarenakan aspek historis, kebudayaan, dan&nbsp;<a href="http://id.wikipedia.org/wiki/Fauna" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Fauna">faunanya</a>. Salah satunya adalah keberadaan rusa-rusa yang didatangkan langsung dari&nbsp;<a href="http://id.wikipedia.org/wiki/Nepal" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Nepal">Nepal</a>&nbsp;dan tetap terjaga dari dulu sampai sekarang.</p>\r\n\r\n<p>Saat ini sudah menjadi&nbsp;<em>trend</em>&nbsp;warga&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Bogor" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Bogor">Bogor</a>&nbsp;dan sekitarnya setiap hari Sabtu, Minggu, dan hari libur lainnya berjalan-jalan di seputaran Istana Bogor sambil memberi makan rusa-rusa indah yang hidup di halaman Istana Bogor dengan wortel yang diperoleh dari petani-petani tradisional warga Bogor yang selalu siap sedia menjajakan wortel-wortel tersebut setiap hari libur. Seperti namanya, istana ini terletak di&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Bogor" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Bogor">Bogor</a>,&nbsp;<a href="http://id.wikipedia.org/wiki/Jawa_Barat" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Jawa Barat">Jawa Barat</a>.</p>\r\n\r\n<p><strong>Sejarah</strong></p>\r\n\r\n<p>Istana Bogor dahulu bernama&nbsp;<strong>Buitenzorg</strong>&nbsp;atau&nbsp;<strong>Sans Souci</strong>&nbsp;yang berarti &quot;tanpa kekhawatiran&quot;.</p>\r\n\r\n<p>Sejak tahun&nbsp;<a href="http://id.wikipedia.org/wiki/1870" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1870">1870</a>&nbsp;hingga&nbsp;<a href="http://id.wikipedia.org/wiki/1942" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1942">1942</a>, Istana Bogor merupakan tempat kediaman resmi dari 38 Gubernur Jenderal Belanda dan satu orang Gubernur Jenderal Inggris.</p>\r\n\r\n<p>Pada tahun 1744 Gubernur Jenderal&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Gustaaf_Willem_Baron_Van_Imhoff" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Gustaaf Willem Baron Van Imhoff">Gustaaf Willem Baron Van Imhoff</a>&nbsp;terkesima akan kedamaian sebuah kampung kecil di Bogor (Kampung Baru), sebuah wilayah bekas Kerajaan&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Pajajaran" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Pajajaran">Pajajaran</a>&nbsp;yang terletak di hulu Batavia. Van Imhoff mempunyai rencana membangun wilayah tersebut sebagai daerah pertanian dan tempat peristirahatan bagi Gubernur Jenderal.</p>\r\n\r\n<p>Istana Bogor dibangun pada bulan Agustus&nbsp;<a href="http://id.wikipedia.org/wiki/1744" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1744">1744</a>&nbsp;dan berbentuk tingkat tiga, pada awalnya merupakan sebuah rumah peristirahatan, ia sendiri yang membuat sketsa dan membangunnya dari tahun 1745-1750, mencontoh arsitektur&nbsp;<a class="new" href="http://id.wikipedia.org/w/index.php?title=Blehheim_Palace&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Blehheim Palace (halaman belum tersedia)">Blehheim Palace</a>, kediaman&nbsp;<a class="new" href="http://id.wikipedia.org/w/index.php?title=Duke_Malborough&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Duke Malborough (halaman belum tersedia)">Duke Malborough</a>, dekat kota&nbsp;<a href="http://id.wikipedia.org/wiki/Oxford" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Oxford">Oxford</a>&nbsp;di&nbsp;<a href="http://id.wikipedia.org/wiki/Inggris" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Inggris">Inggris</a>. Berangsur angsur, seiring dengan waktu perubahan-perubahan kepada bangunan awal dilakukan selama masa Gubernur Jenderal&nbsp;<a href="http://id.wikipedia.org/wiki/Belanda" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Belanda">Belanda</a>&nbsp;maupun&nbsp;<a href="http://id.wikipedia.org/wiki/Britania_Raya" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Britania Raya">Inggris</a>&nbsp;(<a href="http://id.wikipedia.org/wiki/Herman_Willem_Daendels" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Herman Willem Daendels">Herman Willem Daendels</a>&nbsp;dan Sir&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Stamford_Raffles" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Stamford Raffles">Stamford Raffles</a>), bentuk bangunan Istana Bogor telah mengalami berbagai perubahan. sehingga yang tadinya merupakan rumah peristirahatan berubah menjadi bangunan istana paladian dengan luas halamannya mencapai 28,4 hektar dan luas bangunan 14.892 m&sup2;.</p>\r\n\r\n<p>Namun, musibah datang pada tanggal&nbsp;<a href="http://id.wikipedia.org/wiki/10_Oktober" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="10 Oktober">10 Oktober</a>&nbsp;<a href="http://id.wikipedia.org/wiki/1834" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1834">1834</a>&nbsp;gempa bumi mengguncang akibat meletusnya&nbsp;<a href="http://id.wikipedia.org/wiki/Gunung_Salak" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Gunung Salak">Gunung Salak</a>&nbsp;sehingga istana tersebut rusak berat.</p>\r\n\r\n<div class="thumb tright" style="clear: right; float: right; margin: 0.5em 0px 1.3em 1.4em; width: auto; color: rgb(0, 0, 0); font-family: sans-serif; line-height: 19.1875px;">\r\n<div class="thumbinner" style="border: 1px solid rgb(204, 204, 204); background-color: rgb(249, 249, 249); font-size: 12px; text-align: center; overflow: hidden; padding: 3px !important; width: 252px;"><a class="image" href="http://id.wikipedia.org/wiki/Berkas:Istana_Bogor.jpg" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;"><img alt="" class="thumbimage" src="http://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Istana_Bogor.jpg/250px-Istana_Bogor.jpg" style="background-color:rgb(255, 255, 255); border:1px solid rgb(204, 204, 204); height:140px; vertical-align:middle; width:250px" /></a>\r\n\r\n<div class="thumbcaption" style="border: none; line-height: 1.4em; font-size: 11px; padding: 3px !important; text-align: left;">\r\n<div class="magnify" style="margin-left: 3px; border: none !important; background-image: none !important; float: right; background-position: initial initial !important; background-repeat: initial initial !important;"><a class="internal" href="http://id.wikipedia.org/wiki/Berkas:Istana_Bogor.jpg" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none !important; display: block; border: none !important; background-position: initial initial !important; background-repeat: initial initial !important;" title="Perbesar"><img alt="" src="http://bits.wikimedia.org/static-1.23wmf4/skins/common/images/magnify-clip.png" style="background-color:rgb(255, 255, 255); background-image:none !important; background-position:initial initial !important; background-repeat:initial initial !important; border:none !important; display:block; height:11px; vertical-align:middle; width:15px" /></a></div>\r\nBangunan induk dan sayap kiri dan kanan</div>\r\n</div>\r\n</div>\r\n\r\n<p>Pada tahun&nbsp;<a href="http://id.wikipedia.org/wiki/1850" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1850">1850</a>, Istana Bogor dibangun kembali, tetapi tidak bertingkat lagi karena disesuaikan dengan situasi daerah yang sering gempa itu. Pada masa pemerintahan Gubernur Jenderal&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Albertus_Jacob_Duijmayer_van_Twist" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Albertus Jacob Duijmayer van Twist">Albertus Jacob Duijmayer van Twist</a>&nbsp;(<a href="http://id.wikipedia.org/wiki/1851" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1851">1851</a>-<a href="http://id.wikipedia.org/wiki/1856" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1856">1856</a>) bangunan lama sisa gempa itu dirubuhkan dan dibangun dengan mengambil arsitektur Eropa abad ke-19.</p>\r\n\r\n<p>Pada tahun&nbsp;<a href="http://id.wikipedia.org/wiki/1870" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1870">1870</a>, Istana Buitenzorg dijadikan tempat kediaman resmi dari Gubernur Jenderal&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Hindia_Belanda" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Hindia Belanda">Hindia Belanda</a>. Penghuni terakhir Istana Buitenzorg itu adalah Gubernur Jenderal&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Tjarda_van_Starkenborg_Stachourwer" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Tjarda van Starkenborg Stachourwer">Tjarda van Starkenborg Stachourwer</a>&nbsp;yang terpaksa harus menyerahkan istana ini kepada Jenderal&nbsp;<a class="new" href="http://id.wikipedia.org/w/index.php?title=Imamura&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Imamura (halaman belum tersedia)">Imamura</a>, pemeritah pendudukan Jepang.</p>\r\n\r\n<p>Pada tahun&nbsp;<a href="http://id.wikipedia.org/wiki/1950" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1950">1950</a>, setelah masa kemerdekaan, Istana Kepresidenan Bogor mulai dipakai oleh pemerintah Indonesia, dan resmi menjadi salah satu dari Istana Presiden Indonesia.</p>\r\n\r\n<p>Pada tahun&nbsp;<a href="http://id.wikipedia.org/wiki/1968" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1968">1968</a>&nbsp;Istana Bogor resmi dibuka untuk kunjungan umum atas restu dari&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/Presiden_Republik_Indonesia" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Presiden Republik Indonesia">Presiden</a>&nbsp;<a href="http://id.wikipedia.org/wiki/Soeharto" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Soeharto">Soeharto</a>. Arus pengunjung dari luar dan dalam negeri setahunnya mencapai sekitar 10 ribu orang.</p>\r\n\r\n<p>Pada&nbsp;<a href="http://id.wikipedia.org/wiki/15_November" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="15 November">15 November</a>&nbsp;<a href="http://id.wikipedia.org/wiki/1994" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="1994">1994</a>, Istana Bogor menjadi tempat pertemuan tahunan menteri ekonomi&nbsp;<a href="http://id.wikipedia.org/wiki/Kerja_Sama_Ekonomi_Asia_Pasifik" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Kerja Sama Ekonomi Asia Pasifik">APEC (Asia-Pasific Economy Cooperation)</a>, dan di sana diterbitkanlah&nbsp;<a class="new" href="http://id.wikipedia.org/w/index.php?title=Deklarasi_Bogor&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Deklarasi Bogor (halaman belum tersedia)">Deklarasi Bogor</a>.&nbsp;<sup><a href="http://id.wikipedia.org/wiki/Istana_Bogor#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;">[1]</a></sup>&nbsp;Deklarasi ini merupakan komitmen 18 negara anggota APEC untuk mengadakan perdangangan bebas dan investasi sebelum tahun 2020.</p>\r\n\r\n<p>Pada&nbsp;<a href="http://id.wikipedia.org/wiki/16_Agustus" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="16 Agustus">16 Agustus</a>&nbsp;<a href="http://id.wikipedia.org/wiki/2002" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="2002">2002</a>, pada masa pemerintahan Presiden Megawati, diadakan acara &quot;Semarak Kemerdekaan&quot; untuk memperingati HUT RI yang ke-57, dan dimeriahkan dengan tampilnya<a class="new" href="http://id.wikipedia.org/w/index.php?title=Twilite_Orchestra&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Twilite Orchestra (halaman belum tersedia)">Twilite Orchestra</a>&nbsp;dengan konduktor&nbsp;<a href="http://id.wikipedia.org/wiki/Addie_MS" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Addie MS">Addie MS</a></p>\r\n\r\n<p>Pada&nbsp;<a href="http://id.wikipedia.org/wiki/9_Juli" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="9 Juli">9 Juli</a>&nbsp;<a href="http://id.wikipedia.org/wiki/2005" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="2005">2005</a>&nbsp;Presiden&nbsp;<a href="http://id.wikipedia.org/wiki/Susilo_Bambang_Yudhoyono" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Susilo Bambang Yudhoyono">Susilo Bambang Yudhoyono</a>&nbsp;melangsungkan pernikahan anaknya, Agus Yudhoyono dengan Anisa Pohan di Istana Bogor.zeron</p>\r\n\r\n<p><br />\r\nPada&nbsp;<a href="http://id.wikipedia.org/wiki/20_November" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="20 November">20 November</a>&nbsp;<a href="http://id.wikipedia.org/wiki/2006" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="2006">2006</a>&nbsp;Presiden Amerika Serikat&nbsp;<a class="mw-redirect" href="http://id.wikipedia.org/wiki/George_W._Bush" style="text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;" title="George W. Bush">George W. Bush</a>&nbsp;melangsungkan kunjungan kenegaraan ke Istana Bogor dan bertemu dengan Presiden Susilo Bambang Yudhoyono. Kunjungan singkat ini berlangsung selama enam jam.</p>\r\n', '2013-12-17', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `promote`
--

CREATE TABLE IF NOT EXISTS `promote` (
  `idpromo` int(10) NOT NULL AUTO_INCREMENT,
  `idclass` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` varchar(3) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`idpromo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `promote`
--

INSERT INTO `promote` (`idpromo`, `idclass`, `title`, `start_date`, `end_date`, `discount`, `description`) VALUES
(1, '9', 'PROMO 1', '2013-08-01', '2013-08-15', '10', '<p>ada promo</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `idreservation` int(10) NOT NULL AUTO_INCREMENT,
  `resv_date` date NOT NULL,
  `resv_date2` date NOT NULL,
  `title` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `identify_kinds` varchar(20) DEFAULT NULL,
  `identify_value` varchar(40) DEFAULT NULL,
  `payment_kinds` varchar(20) DEFAULT NULL,
  `payment_value` varchar(60) DEFAULT NULL,
  `idclass` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreservation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`idreservation`, `resv_date`, `resv_date2`, `title`, `name`, `identify_kinds`, `identify_value`, `payment_kinds`, `payment_value`, `idclass`) VALUES
(1, '2013-12-05', '2013-12-07', 'Mr', 'Ricky', '2', '085695005956', '2', '012345678', '2'),
(3, '2013-12-02', '2013-12-03', 'Mr', 'adang', '1', '456697544', '2', '54534225', '1'),
(4, '2013-12-09', '2013-12-11', 'Mr', 'iko', '1', '897283461', '2', '12323435436', '1'),
(5, '2013-12-16', '2013-12-17', 'Mr', 'Ahmad', '2', '123935342341230', '2', '352435346546', '1'),
(6, '2013-12-18', '2013-12-19', 'Mr', 'roro', '1', '123456', '2', '0248', '9'),
(7, '2013-12-18', '2013-12-19', 'Mr', 'rere', '1', 'asda', '2', 'asdasd', '10');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `idrooms` int(10) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(10) NOT NULL,
  `idclass` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `namespace` varchar(50) NOT NULL,
  PRIMARY KEY (`idrooms`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=294 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`idrooms`, `numbers`, `idclass`, `status`, `namespace`) VALUES
(264, 'Cilibende1', '9', '0', 'Cilibende'),
(265, 'Cilibende2', '9', '0', 'Cilibende'),
(266, 'Cilibende3', '9', '0', 'Cilibende'),
(267, 'Cilibende4', '9', '0', 'Cilibende'),
(268, 'Cilibende5', '9', '0', 'Cilibende'),
(269, 'Cilibende6', '9', '0', 'Cilibende'),
(270, 'Cilibende7', '9', '0', 'Cilibende'),
(271, 'Cilibende8', '9', '0', 'Cilibende'),
(272, 'Cilibende9', '9', '0', 'Cilibende'),
(273, 'Cilibende1', '9', '0', 'Cilibende'),
(274, 'Malabar1', '10', '0', 'Malabar'),
(275, 'Malabar2', '10', '0', 'Malabar'),
(276, 'Malabar3', '10', '0', 'Malabar'),
(277, 'Malabar4', '10', '0', 'Malabar'),
(278, 'Malabar5', '10', '0', 'Malabar'),
(279, 'Malabar6', '10', '0', 'Malabar'),
(280, 'Malabar7', '10', '0', 'Malabar'),
(281, 'Malabar8', '10', '0', 'Malabar'),
(282, 'Malabar9', '10', '0', 'Malabar'),
(283, 'Malabar10', '10', '0', 'Malabar'),
(284, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(285, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(286, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(287, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(288, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(289, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(290, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(291, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(292, 'Bantar Jat', '11', '0', 'Bantar Jati'),
(293, 'Bantar Jat', '11', '0', 'Bantar Jati');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
