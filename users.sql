-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 04:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qa_eduwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(12) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `gender`, `address`) VALUES
(1, 'Ahmad Fauzi', 'ahmad.fauzi@example.com', 2147483647, 'Male', 'Jl. Merdeka No. 10, Jakarta'),
(2, 'Budi Santoso', 'budi.santoso@example.com', 2147483647, 'Male', 'Jl. Sudirman No. 21, Bandung'),
(3, 'Citra Dewi', 'citra.dewi@example.com', 2147483647, 'Female', 'Jl. Diponegoro No. 5, Surabaya'),
(4, 'Dewi Lestari', 'dewi.lestari@example.com', 2147483647, 'Female', 'Jl. Gatot Subroto No. 7, Yogyakarta'),
(5, 'Eko Prasetyo', 'eko.prasetyo@example.com', 2147483647, 'Male', 'Jl. Ahmad Yani No. 12, Semarang'),
(6, 'Fajar Hidayat', 'fajar.hidayat@example.com', 2147483647, 'Male', 'Jl. Soekarno Hatta No. 3, Medan'),
(7, 'Gita Anjani', 'gita.anjani@example.com', 2147483647, 'Female', 'Jl. Thamrin No. 18, Palembang'),
(8, 'Hadi Kusuma', 'hadi.kusuma@example.com', 2147483647, 'Male', 'Jl. Malioboro No. 22, Malang'),
(9, 'Indah Permata', 'indah.permata@example.com', 2147483647, 'Female', 'Jl. Sultan Agung No. 9, Makassar'),
(10, 'Joko Riyadi', 'joko.riyadi@example.com', 2147483647, 'Male', 'Jl. Hayam Wuruk No. 14, Bali'),
(11, 'Kartika Sari', 'kartika.sari@example.com', 2147483647, 'Female', 'Jl. Gajah Mada No. 11, Lampung'),
(12, 'Lukman Hakim', 'lukman.hakim@example.com', 2147483647, 'Male', 'Jl. Merapi No. 8, Samarinda'),
(13, 'Maya Andini', 'maya.andini@example.com', 2147483647, 'Female', 'Jl. Krakatau No. 15, Balikpapan'),
(14, 'Nugroho Adi', 'nugroho.adi@example.com', 2147483647, 'Male', 'Jl. Cendrawasih No. 7, Pontianak'),
(15, 'Oktaviani Putri', 'oktaviani.putri@example.com', 2147483647, 'Female', 'Jl. Kenangan No. 13, Batam'),
(16, 'Putra Ramadhan', 'putra.ramadhan@example.com', 2147483647, 'Male', 'Jl. Melati No. 25, Banjarmasin'),
(17, 'Qory Afifah', 'qory.afifah@example.com', 2147483647, 'Female', 'Jl. Anggrek No. 16, Pekanbaru'),
(18, 'Rizky Pratama', 'rizky.pratama@example.com', 2147483647, 'Male', 'Jl. Mawar No. 20, Jambi'),
(19, 'Siti Aisyah', 'siti.aisyah@example.com', 2147483647, 'Female', 'Jl. Seruni No. 18, Manado'),
(20, 'Taufik Hidayat', 'taufik.hidayat@example.com', 2147483647, 'Male', 'Jl. Dahlia No. 3, Kendari'),
(21, 'Umi Kalsum', 'umi.kalsum@example.com', 2147483647, 'Female', 'Jl. Teratai No. 9, Gorontalo'),
(22, 'Vino Ramadhan', 'vino.ramadhan@example.com', 2147483647, 'Male', 'Jl. Flamboyan No. 14, Ambon'),
(23, 'Wulan Sari', 'wulan.sari@example.com', 2147483647, 'Female', 'Jl. Bougenville No. 5, Palu'),
(24, 'Xavier Mahendra', 'xavier.mahendra@example.com', 2147483647, 'Male', 'Jl. Cemara No. 6, Ternate'),
(25, 'Yuni Rahmawati', 'yuni.rahmawati@example.com', 2147483647, 'Female', 'Jl. Ketapang No. 17, Kupang'),
(26, 'Zainal Abidin', 'zainal.abidin@example.com', 2147483647, 'Male', 'Jl. Pinus No. 19, Banda Aceh'),
(27, 'Alya Kamila', 'alya.kamila@example.com', 2147483647, 'Female', 'Jl. Mangga No. 4, Jayapura'),
(28, 'Bambang Wijaya', 'bambang.wijaya@example.com', 2147483647, 'Male', 'Jl. Sukun No. 8, Serang'),
(29, 'Cindy Amelia', 'cindy.amelia@example.com', 2147483647, 'Female', 'Jl. Jeruk No. 11, Tasikmalaya'),
(30, 'Dani Saputra', 'dani.saputra@example.com', 2147483647, 'Male', 'Jl. Durian No. 12, Cirebon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
