-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 12:23 AM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `user_id`, `code`, `name`, `slug`, `description`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'CTG001', 'Elektronik', 'elektronik', 'Kategori produk elektronik seperti TV, HP, dan laptop', 'active', 'uploads/categories/elektronik.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(2, 2, 'CTG002', 'Fashion Pria', 'fashion-pria', 'Pakaian, sepatu, dan aksesoris untuk pria', 'active', 'uploads/categories/fashion-pria.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(3, 4, 'CTG003', 'Fashion Wanita', 'fashion-wanita', 'Pakaian, tas, dan aksesoris wanita', 'active', 'uploads/categories/fashion-wanita.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(4, 1, 'CTG004', 'Peralatan Rumah Tangga', 'peralatan-rumah-tangga', 'Barang kebutuhan rumah seperti alat masak dan kebersihan', 'active', 'uploads/categories/peralatan-rumah.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(5, 4, 'CTG005', 'Buku & Alat Tulis', 'buku-alat-tulis', 'Buku pelajaran, novel, dan perlengkapan alat tulis', 'active', 'uploads/categories/buku.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(6, 2, 'CTG006', 'Kesehatan & Kecantikan', 'kesehatan-kecantikan', 'Produk skincare, suplemen, dan alat kesehatan', 'active', 'uploads/categories/kesehatan.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(7, 6, 'CTG007', 'Olahraga & Outdoor', 'olahraga-outdoor', 'Alat olahraga dan perlengkapan kegiatan luar ruangan', 'inactive', 'uploads/categories/olahraga.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(8, 4, 'CTG008', 'Mainan Anak', 'mainan-anak', 'Mainan edukatif dan hiburan anak-anak', 'active', 'uploads/categories/mainan.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(9, 1, 'CTG009', 'Makanan & Minuman', 'makanan-minuman', 'Produk makanan ringan, minuman, dan kebutuhan dapur', 'active', 'uploads/categories/makanan.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33'),
(10, 2, 'CTG010', 'Komputer & Aksesoris', 'komputer-aksesoris', 'Laptop, keyboard, mouse, dan perangkat IT lainnya', 'active', 'uploads/categories/komputer.jpg', '2025-04-04 23:42:33', '2025-04-04 23:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(50) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `category_id`, `user_id`, `code`, `name`, `slug`, `description`, `photo`, `qty`, `unit`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PRD001', 'Smartphone Samsung A14', 'smartphone-samsung-a14', 'Smartphone dengan layar besar dan baterai tahan lama.', 'uploads/products/samsung-a14.jpg', 50, 'pcs', '2499000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(2, 2, 2, 'PRD002', 'Kemeja Pria Polos', 'kemeja-pria-polos', 'Kemeja pria lengan panjang bahan katun.', 'uploads/products/kemeja-pria.jpg', 100, 'pcs', '159000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(3, 3, 4, 'PRD003', 'Tas Wanita Kulit Sintetis', 'tas-wanita-kulit-sintetis', 'Tas selempang wanita berbahan kulit sintetis.', 'uploads/products/tas-wanita.jpg', 70, 'pcs', '189000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(4, 4, 1, 'PRD004', 'Blender Philips HR2116', 'blender-philips-hr2116', 'Blender 2 liter dengan 5 kecepatan.', 'uploads/products/blender-philips.jpg', 30, 'unit', '499000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(5, 5, 4, 'PRD005', 'Pensil 2B Joyko', 'pensil-2b-joyko', 'Pensil 2B untuk kebutuhan ujian.', 'uploads/products/pensil-joyko.jpg', 500, 'pcs', '2500.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(6, 6, 2, 'PRD006', 'Face Wash Pria', 'face-wash-pria', 'Sabun muka pria anti minyak.', 'uploads/products/facewash-pria.jpg', 200, 'tube', '35000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(7, 7, 6, 'PRD007', 'Sepatu Lari Adidas', 'sepatu-lari-adidas', 'Sepatu running original Adidas.', 'uploads/products/sepatu-adidas.jpg', 40, 'pasang', '699000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(8, 8, 4, 'PRD008', 'Mainan Edukasi Anak', 'mainan-edukasi-anak', 'Mainan balok edukasi untuk anak usia 3+', 'uploads/products/mainan-anak.jpg', 80, 'set', '89000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(9, 9, 1, 'PRD009', 'Kopi Arabika Gayo 250gr', 'kopi-arabika-gayo-250gr', 'Kopi premium dari Aceh Gayo, 100% Arabika.', 'uploads/products/kopi-gayo.jpg', 120, 'pack', '75000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00'),
(10, 10, 2, 'PRD010', 'Mouse Wireless Logitech M170', 'mouse-wireless-logitech-m170', 'Mouse wireless dengan teknologi 2.4GHz.', 'uploads/products/mouse-logitech.jpg', 60, 'pcs', '129000.00', 'active', '2025-04-05 00:02:00', '2025-04-05 00:02:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `users_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`users_id`, `name`, `email`, `address`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aldo Saputra', 'aldo@example.com', 'Jl. Merdeka No. 10, Jakarta', 'hashed_password_1', 'user', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(2, 'Budi Santoso', 'budi@example.com', 'Jl. Melati No. 5, Bandung', 'hashed_password_2', 'admin', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(3, 'Citra Dewi', 'citra@example.com', 'Jl. Anggrek No. 2, Surabaya', 'hashed_password_3', 'user', 'inactive', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(4, 'Dewi Ayu', 'dewi@example.com', 'Jl. Kemuning No. 15, Yogyakarta', 'hashed_password_4', 'user', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(5, 'Eko Prasetyo', 'eko@example.com', 'Jl. Cendana No. 9, Medan', 'hashed_password_5', 'user', 'inactive', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(6, 'Farah Lestari', 'farah@example.com', 'Jl. Dahlia No. 3, Semarang', 'hashed_password_6', 'user', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(7, 'Gilang Permana', 'gilang@example.com', 'Jl. Flamboyan No. 1, Bali', 'hashed_password_7', 'admin', 'inactive', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(8, 'Hana Putri', 'hana@example.com', 'Jl. Mawar No. 11, Makassar', 'hashed_password_8', 'admin', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(9, 'Irfan Maulana', 'irfan@example.com', 'Jl. Sakura No. 4, Palembang', 'hashed_password_9', 'user', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54'),
(10, 'Joko Widodo', 'joko@example.com', 'Jl. Wijaya Kusuma No. 6, Bogor', 'hashed_password_10', 'user', 'active', '2025-04-04 23:29:54', '2025-04-04 23:29:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users2` (`users_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`categories_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users2` (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
