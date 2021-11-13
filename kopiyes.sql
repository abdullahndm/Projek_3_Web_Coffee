-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopiyes`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_transaksi`, `id_produk`, `harga`, `qty`, `subtotal`) VALUES
(10, 18, 350000, 1, 350000),
(11, 18, 350000, 1, 350000),
(12, 18, 350000, 2, 700000),
(13, 18, 350000, 1, 350000),
(14, 18, 350000, 2, 700000),
(15, 14, 20000, 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(0, 'Tools'),
(1, 'Coffee');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `username` varchar(12) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `nama` text NOT NULL,
  `level` enum('admin','customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `email`, `nama`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'admin'),
('faiz', '6f4d045a1249c21f57987fca9c326a84', 'faiz@gmail.com', 'faizin', 'customer'),
('maya', 'b2693d9c2124f3ca9547b897794ac6a1', 'maya@gmail.com', 'Maya', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_kirim` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `nomor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_kirim`, `id_transaksi`, `nama`, `alamat`, `nomor`) VALUES
(5, 10, 'eqwe', 'sdfsf', '231321'),
(6, 11, 'weq', 'ffew', '234'),
(7, 12, 'hghjg', 'kkgjge', '232432'),
(8, 13, 'qweqe`', 'werwerw', '3424242'),
(9, 14, 'daa', 'safa', '2422'),
(10, 15, 'bvbn', 'AXHCH', '567654');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama`, `harga`, `stok`, `deskripsi`, `img`) VALUES
(14, 1, 'ORIGINUTT ARABICA BLEND', 100000, 99, 'Campuran pertama kami akan memberi Anda pengalaman kopi yang tak terlupakan. Kami menemukan bahwa di Indonesia, rasa seperti ini sangat sulit ditemukan sementara di luar negeri cukup umum. Mengapa? Karena kopi ini memiliki kompleksitas nutty yang super manis dengan sisa rasa Sweet Buttery Cookie dan Lemon sehingga kopi ini tidak mengintimidasi bahkan untuk peminum kopi pertama kali. Hampir semua orang setuju dengan itu.', 'as2.jpg'),
(15, 1, 'GAYO BLACK TEA', 90000, 12, 'Lambung basah merupakan metode pengolahan pasca panen yang umum di Indonesia karena praktis dan murah. Akan aneh jika kita, sebagai roastery yang berbasis di Indonesia, tidak memiliki setidaknya satu jenis kopi yang diproses dengan metode ini. Namun sayangnya, sekam basah memiliki reputasi yang buruk di industri kopi karena biasanya menghasilkan karakteristik yang tidak menyenangkan seperti tanah, kayu, tembakau, apek, cedar atau bahkan karet dan seperti kotoran dengan rasa yang tidak konsisten. Dengan protokol pemrosesan yang cermat dan ketat,', 'gayo_black_tea11.jpg'),
(16, 1, 'GAYO APPLE CIDER', 140000, 32, 'Kopi ini merupakan upaya kami dalam melakukan pengolahan kopi non-konvensional: maserasi cherry anaerobik. Jika tidak dilakukan dengan hati-hati, proses semacam ini bisa menjadi bencana yang mengakibatkan kopi yang memiliki rasa pedas yang tidak enak, sesuatu yang bisa Anda kaitkan dengan buah yang membusuk. Tetapi jika dilakukan dengan benar, itu bisa menjadi keajaiban: menambah kerumitan pada buah dan meningkatkan rasa manis dan tubuh.', 'gayo_apple_cider1.jpg'),
(17, 1, 'HALU PINK BANANA', 135000, 121, 'Kopi ini telah menjadi favorit semua orang dan pada tahun 2018 adalah salah satu kopi terlaris kami. Kami yakin Anda belum pernah mencicipi kopi serumit dan semenyenangkan ini. Cobalah sendiri.', 'halu_pink_banana2.jpg'),
(18, 0, 'V60 DRIP IN SERVER (VDI-02B)', 350000, 43, 'Server Hario v60 \'Drip In\' menyediakan cara yang nyaman untuk mulai menyeduh kopi di rumah. Terbuat dari kaca borosilikat, teko menggunakan filter Hario (02) dan memiliki kapasitas 700ml, cocok untuk 1 hingga 4 orang. Termasuk dalam kotak adalah 1x 02 Drip Server 1x 02 Dripper Plastik 40 x Filter Kertas Tidak Dikelantang (02)', 'v601.jpg'),
(19, 0, 'HARIO V60 ICED COFFEE MAKER (VIC-02B)', 445000, 30, 'Ice Coffee Maker yang berasal dari Jepang ini diciptakan khusus untuk anda yang menyukai kopi yang disajikan dingin. Dilengkapi dengan wadah kaca khusus dan corong plastik untuk menampung es memungkinkan anda membuat es kopi dengan sangat praktis. Jangan tanya soal hasil kopi yang dihasilkan. Keunggulan kualitas dari cold drip dari Hario ini sungguh tak bisa lagi diragukan. Jadi buat anda yang mungkin sedang bingung memilih cold drip apa yang dibutuhkan? Hario V60 Ice Coffee Maker VIC-02B adalah pilihan pas yang mampu melengkapi kebutuhan minum kopi anda. Oh satu lagi, harganya yang ekonomis membuat cold drip ini menjadi primadona di kelasnya.', 'vic1.jpg'),
(20, 0, 'HARIO V60 TETSU KASUYA SERIES DRIPPER 02 (KDC-02)', 555000, 30, 'Perbedaan dari design V60 Tetsu Kasuya dibanding dripper standard V60 lainnya ada di bagian lubang bawah drippernya yang dapat menahan laju air lebih lama karena dripper ini cocok untuk grind size coarse, ukuran yg dipakai oleh Tetsu sendiri saat memenangkan WBC 2016. Grind size coarse sendiri meminimalisir partikel fine di kopi, sehingga mengurangi astringency dan membuat kopi lebih clean.', 'kdc2.jpg'),
(21, 0, 'HARIO V60 DRIP SCALE (VST-2000B)', 1200000, 25, 'Produk timbangan ini memiliki skala timbangan mulai dari 0,1 gram, dengan skala tersebut Anda bisa menghasilkan timbangan yang konsisten dan sesuai dengan apa yang Anda butuhkan, sehingga kopi yang dibuat lebih nikmat dbandingkan dengan kopi-kopi yang Anda buat sebelumnya. Selain itu, produk Hario Drip Scale VST-2000B ini juga dilengkapi dengan timer yang dapat membantu Anda dalam menuangkan kopi yang akan digunakan. Hal tersebut akan membantu Anda mendapatkan takaran kopi yang benar-benar sesuai dengan yang Anda butuhkan. Kelebihan yang dimiliki oleh timbangan tersebut pasti tak akan membuat Anda ragu untuk membeli produk tersebut. Timbangan dengan skala terkecil satu angka di belakang koma (0,1 gram) yang dilengkapi timer akan semakin memudahkan Anda untuk mendapatkan takaran kopi yang sesuai dengan yang Anda butuhkan.', 'timbangan1.jpg'),
(22, 1, 'MOKONISA RED MATCHA', 150000, 30, 'Kopi Ethiopia Olahan Madu. Tahun lalu, kami merilis kopi dari stasiun cuci Mokonisa dengan rasa Jasmine yang kuat. Tahun ini, kopi dari daerah ini cukup mengejutkan kita dengan rasa Matcha (teh hijau) yang dominan dengan rasa manis aromatik air mawar.', 'mokonisa_red_macha1.jpg'),
(23, 1, 'MACHOFFEE HOUSE BLEND', 90000, 40, 'Berani, Berani, Jahat. Bagi kami, Machoffee seperti pria tangguh. Ketika Anda pertama kali bertemu dengannya, dia memiliki kesan yang menakutkan pada awalnya, tetapi setelah Anda mengenalnya selama beberapa waktu, Anda akan mulai menemukan kelembutan mereka. Kami menerima banyak permintaan untuk \"kopi terkuat tanpa rasa pahit yang nyata\" jadi kami membuat campuran ini dan tidak ada yang menjadi favorit mereka sejak saat itu. Penciptaan racikan ini terinspirasi dari saat kita berada di Italia dan mencoba kopi disana. Ini memiliki rasa manis Cokelat Susu sederhana dan tubuh berani yang elegan dengan sentuhan Blackcurrant yang super halus.', 'machoffee2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(12) NOT NULL,
  `grandtotal` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `struk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal`, `username`, `grandtotal`, `status`, `struk`) VALUES
(10, '2021-11-13 14:30:28', 'maya', 350000, 0, '113.PNG'),
(11, '2021-11-13 14:30:35', 'maya', 350000, 0, 'cad3.jpg'),
(12, '2021-11-13 14:30:38', 'maya', 700000, 0, 'ao5ddZw_460sv.jpg'),
(13, '2021-11-13 14:30:41', 'maya', 350000, 0, 'cad4.jpg'),
(14, '2021-11-13 14:30:45', 'maya', 700000, 0, '114.PNG'),
(15, '2021-11-13 14:30:48', 'maya', 20000, 0, 'cad5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD KEY `username` (`username`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_kirim`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_kirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
