-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 10, 2023 lúc 01:52 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wedding_api`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `url` text NOT NULL,
  `title` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `source_id` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `image`, `url`, `title`, `desc`, `google_id`, `status`, `source_id`, `created_at`, `updated_at`) VALUES
(75, 'https://drive.google.com/uc?id=18Guvq97UX3ETAF2g-vgRc29RpyemfjEr', 'https://www.facebook.com/profile.php?id=100088781295596', 'IMG_0254.jpeg', 'Hữu thành Thủy Tiên', '18Guvq97UX3ETAF2g-vgRc29RpyemfjEr', 1, 2, '2023-09-04 10:40:10', '2023-10-07 20:25:19'),
(76, 'https://drive.google.com/uc?id=1tdkvDptOS_DRIOjVzB_SceTjDk9k6wno', 'https://www.facebook.com/profile.php?id=100088781295596', '572a625ddec58675c9e5e1e8c4526a95.jpeg', 'Mèo con', '1tdkvDptOS_DRIOjVzB_SceTjDk9k6wno', 1, 2, '2023-09-04 10:42:13', '2023-10-07 20:23:43'),
(77, 'https://drive.google.com/uc?id=1refOMUC-UDz-5KsXX0pViBXm89sB4iIX', 'https://www.facebook.com/profile.php?id=100088781295596', 'IMG_0255.jpeg', 'Hữu thành thủy tiên', '1refOMUC-UDz-5KsXX0pViBXm89sB4iIX', 1, 2, '2023-09-04 10:44:14', '2023-10-07 20:22:52'),
(78, 'https://drive.google.com/uc?id=1s0RLauj8RN0W7aKAF950T9SgxiRa1nqa', 'https://www.facebook.com/vocvachcungthanh', 'IMG_0231.jpeg', 'mè con', '1s0RLauj8RN0W7aKAF950T9SgxiRa1nqa', 1, 2, '2023-09-04 10:46:46', '2023-10-07 20:21:30'),
(79, 'https://drive.google.com/uc?id=1B32yiU3LSIWkGk9YGVfvlwf3uij1_th7', 'https://www.facebook.com/vocvachcungthanh', 'IMG_0252.jpeg', 'Hữu Thành - Thủy Tiên', '1B32yiU3LSIWkGk9YGVfvlwf3uij1_th7', 1, 2, '2023-09-04 10:48:15', '2023-10-05 22:07:06'),
(80, 'https://drive.google.com/uc?id=1N5kdNLzm03su-ttCGk1ZdoDoCZbwuuME', 'https://www.facebook.com/vocvachcungthanh', 'IMG_0246.jpeg', 'Mèo con 1999', '1N5kdNLzm03su-ttCGk1ZdoDoCZbwuuME', 1, 2, '2023-09-04 10:49:43', '2023-10-05 22:06:22'),
(81, 'https://drive.google.com/uc?id=1e0iNsKjCqtGitnxLt_cUBFtq-t2SKRHT', 'https://www.facebook.com/profile.php?id=100088781295596', 'IMG_0272.jpeg', 'Mèo con', '1e0iNsKjCqtGitnxLt_cUBFtq-t2SKRHT', 1, 2, '2023-09-04 10:50:57', '2023-10-05 22:05:26'),
(82, 'https://drive.google.com/uc?id=1rsIW5eJvuzCWaIt6xRJxHOgCpKEJ2QW7', 'https://www.facebook.com/vocvachcungthanh', '1689315119577.jpeg', 'Mèo con', '1rsIW5eJvuzCWaIt6xRJxHOgCpKEJ2QW7', 1, 2, '2023-09-04 10:52:14', '2023-10-05 22:04:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bgs`
--

CREATE TABLE `bgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bg` text NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `source_id` tinyint(1) NOT NULL,
  `key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bgs`
--

INSERT INTO `bgs` (`id`, `bg`, `google_id`, `source_id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'https://drive.google.com/uc?id=1K32gZRrM8xFkI7Wwp4lMDZCmSag7dIrp', '1K32gZRrM8xFkI7Wwp4lMDZCmSag7dIrp', 2, 'couple', '2023-09-06 10:21:00', '2023-10-09 08:50:26'),
(2, 'https://drive.google.com/uc?id=1t5pZdh_z5aVhqCe_PCG_W2h69jLJ6XsX', '1t5pZdh_z5aVhqCe_PCG_W2h69jLJ6XsX', 2, 'guestkbook', '2023-10-08 09:28:09', '2023-10-09 08:47:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countdows`
--

CREATE TABLE `countdows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countdows`
--

INSERT INTO `countdows` (`id`, `title`, `date`, `desc`, `created_at`, `updated_at`) VALUES
(3, 'Chúng ta sẽ làm đám cưới', '2023-12-03', 'Một lời chúc của bạn chắc chắn sẽ làm cho đám cưới của chúng tôi có thêm một niềm hạnh phúc!', '2023-09-09 19:12:37', '2023-09-10 02:08:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `couples`
--

CREATE TABLE `couples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `desc` text NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `source_id` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `couples`
--

INSERT INTO `couples` (`id`, `avatar`, `name`, `facebook`, `instagram`, `desc`, `google_id`, `source_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://tuart.net/wp-content/uploads/2022/06/HAN02730_resize.jpg', 'Hữu Thành', 'https://www.facebook.com/vocvachcungthanh', 'https://www.instagram.com/thanh_dev/', 'Tháng sáu rồi mình về với anh nha Đồng ý đi rồi xe hoa đưa đón Váy cưới xinh đủ màu em lựa chọn Trắng, xanh, hồng, nhỏ, lớn…miễn em ưng.', NULL, 1, 2, '2023-09-05 10:58:38', '2023-09-07 07:38:40'),
(2, 'https://tuart.net/wp-content/uploads/2022/06/286657354_5219823091446986_6862791639804326359_n.jpg', 'Thủy Tiên', 'https://www.facebook.com/profile.php?id=100088781295596', 'https://www.instagram.com/thuytien.ntt1999/', 'Cô gái mộng mơ, tốt nghiệp cử nhân Luật kinh tế Là một người hay cười nhưng lại sống nội tâm, thích đọc sách, trồng cây và yêu thiên nhiên.', NULL, 1, 1, '2023-09-06 07:12:13', '2023-09-07 07:38:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `time_date` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` text NOT NULL,
  `key` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `source_id` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `image`, `title`, `time_date`, `address`, `map`, `key`, `google_id`, `source_id`, `created_at`, `updated_at`) VALUES
(1, 'https://i.pinimg.com/564x/62/28/f1/6228f10ac50b2dc453717c93b977e100.jpg', 'Lễ cưới nhà trai', '9:00 AM 03/12/2023', '199 - Thôn 4 - Hương Ngải - Thạch Thất - Hà Nội', 'https://www.google.com/maps/place/21%C2%B003\'17.4%22N+105%C2%B036\'05.9%22E/@21.0548313,105.6009933,263m/data=!3m2!1e3!4b1!4m4!3m3!8m2!3d21.05483!4d105.601637?entry=ttu', 'groom', NULL, 1, '2023-09-07 09:34:51', '2023-09-07 09:54:05'),
(2, 'https://i.pinimg.com/564x/84/0b/08/840b0897cf90c7b94867e03c56d74a95.jpg', 'Lễ cưới nhà gái', '9:00 AM 03/12/2023', 'Thôn Thạch - Thạch xá -Thạch Thất - Hà Nội', 'https://www.google.com/maps/place/21%C2%B003\'17.4%22N+105%C2%B036\'05.9%22E/@21.0548313,105.6009933,263m/data=!3m2!1e3!4b1!4m4!3m3!8m2!3d21.05483!4d105.601637?entry=ttu', 'bride', NULL, 1, '2023-09-07 09:39:27', '2023-09-07 09:54:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guestkbook`
--

CREATE TABLE `guestkbook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `guestkbook`
--

INSERT INTO `guestkbook` (`id`, `name`, `email`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đăng Tân', 'nguyendangtan@gmail.com', '2 bạn trăm năm hạnh phúc', '2023-09-21 10:32:55', '2023-09-21 10:32:55'),
(2, 'Thế anh', 'theanh@gmail.com', 'Chúc mừng 2 vk ck', '2023-09-21 10:36:58', '2023-09-21 10:36:58'),
(3, 'Nguyễn Đăng Tân', 'tannguyen@gmail.com', 'chúc mừng hạnh phúc', '2023-09-25 06:20:40', '2023-09-25 06:20:40'),
(4, 'Nguyễn Hữu thành', 'vocvachcungthanh@gmail.com', 'Chúc mưng hạnh phúc :)', '2023-10-02 10:19:14', '2023-10-02 10:19:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `link` text NOT NULL,
  `desc` text NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `link`, `desc`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Cặp đôi', 'couple', '', '', 1, '2023-07-30 08:34:09', NULL),
(2, 0, 'Sự kiện', 'wedding', '', '', 1, '2023-07-30 08:34:09', NULL),
(3, 0, 'Album cưới', 'album', '', '', 1, '2023-07-30 08:34:09', NULL),
(4, 0, 'Lời chúc', 'congratulation', '', '', 1, '2023-07-30 08:34:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_20_171450_create_menus_table', 1),
(8, '2023_07_21_005511_create_settings_table', 1),
(9, '2023_07_21_142151_create_token_users_table', 1),
(14, '2023_07_20_173917_create_albums_table', 3),
(15, '2023_08_24_173157_create_sources_table', 3),
(16, '2023_07_20_165610_create_sliders_table', 4),
(17, '2023_09_05_171425_create_couples_table', 5),
(19, '2023_09_06_162430_create_bgs_table', 6),
(21, '2023_09_07_160941_create_events_table', 7),
(22, '2023_09_10_011106_create_countdows_table', 8),
(26, '2023_09_21_171234_create_guestkbook_table', 10),
(27, '2023_09_22_150520_create_reply_table', 11),
(28, '2023_09_11_161251_create_music_table', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `music`
--

CREATE TABLE `music` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `singer` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `desc` text NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `source_id` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `music`
--

INSERT INTO `music` (`id`, `thumbnail`, `name`, `singer`, `link`, `desc`, `google_id`, `status`, `source_id`, `created_at`, `updated_at`) VALUES
(5, 'https://avatar-ex-swe.nixcdn.com/song/2021/08/18/a/f/5/e/1629259141260.jpg', 'Rồi Tới Luôn', 'Khuyết danh', 'https://docs.google.com/uc?id=1kVRgk6FjOQTCgiAfooOX57Q2kmDbVUIg', 'Đang ung dung trên trời, đạp mây xanh hôm nay xuống chơi.\nAnh hôm nay hơi buồn, thấy em tự nhiên thảnh thơi.\nEm đang cô đơn thì bàn tay đâu đưa đây.\nThôi coi như cho qua năm sau đám cưới liền tay đó ngay mùng 2 có ai đi nhiều.\nEm ơi em ở đâu anh mang trầu cao qua anh rước dâu luôn\nMai đây ta sang giàu quá xá to thịt kho rau muống.\nThắm thiết sẽ mặn nồng, yêu thương lắm mênh mông.\nVậy thì còn chần chờ chi nữa.\n\n[ĐK:]\nNgày mình bên nhau dây tơ hồng lại nối thành đôi.\nAnh thiếu em như đang lục tìm mất thứ gì.\nNgười chịu anh đi, em sẽ được rất nhiều.\nĐời không đắn đo em cần chi phải lo.\nVì mình thương nhau nên dây tơ hông lại nối thành đôi.\nAnh thấy vui hơn khi 2 gia đình mình nghĩa tình.\nTính toán cho gần cuộc đời đâu như thế.\nTrên dưới phu thê, 2 đưa về bên nhau.\n\nƠi hò ơi hò ơi\nRa duyên em nên lấy chồng.\nNhư ngần ấy năm trôi nhợt nhạt đôi môi.\nGiờ thi đậm màu tình lên ngôi\n\n[Ver 2:]\nEm nè, em có muốn đi về làm dâu\nĐừng có bắt anh phải buồn rầu\nXập xình, xập xình nhạc đong đưa anh chưa có hứa cho em nhiều đâu\nNá na na na\nThôi coi như cho qua năm sau đám cưới liền tay đó ngay mùng 2 có ai đi nhiều.\nEm ơi em ở đâu anh mang trầu cao qua anh rước dâu luôn\nMai đây ta sang giàu quá xá to thịt kho rau muống.\nThắm thiết sẽ mặn nồng, yêu thương lắm mênh mông.\nVậy thì còn chần chờ chi nữa.\n\n[ĐK:]\nNgày mình bên nhau dây tơ hồng lại nối thành đôi.\nAnh thiếu em như đang lục tìm mất thứ gì.\nNgười chịu anh đi, em sẽ được rất nhiều.\nĐời không đắn đo em cần chi phải lo.\nVì mình thương nhau nên dây tơ hông lại nối thành đôi.\nAnh thấy vui hơn khi 2 gia đình mình nghĩa tình.\nTính toán cho gần cuộc đời đâu như thế.\nTrên dưới phu thê, 2 đưa về bên nhau.', '1kVRgk6FjOQTCgiAfooOX57Q2kmDbVUIg', 1, 2, '2023-09-30 04:51:03', '2023-09-30 04:51:03'),
(6, 'https://i.scdn.co/image/ab67616d00001e02e268800cd3919ce85b109d78', 'Wedding Song (feat. WONPIL(DAY6))', 'J_ust', 'https://docs.google.com/uc?id=1QuxabCDYdpqIrGjR-iC02ae1y7aDOir5', 'Lời bài hát đang được cập nhật', '1QuxabCDYdpqIrGjR-iC02ae1y7aDOir5', 1, 2, '2023-09-30 05:01:10', '2023-09-30 05:01:10'),
(7, 'https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_jpeg/cover/0/a/3/7/0a379853cab4c64f4ad9d1bdd2b65b42.jpg', 'K-Wedding', 'Lyn, DAVICHI, MeloMance, Paul Kim', 'https://docs.google.com/uc?id=1CXe7yk-d6BP3sPPRXPStsmiTnodGDPO9', 'Bài hát: For Life\nCa sĩ: EXO\nCheonsaui eolgullo\nNaegero wadeon mystery\nNeoran ongi\nNe gyeote meomulmyeo\nNeol saranghal geu han saram\nNarani\nChuun gyeoul achimdo\nJogeum oeroun jeonyeokdo\nUrin yeogi hamkkera\nEodumeun neoran bicceuro\nBakkwieo tonight\nMideul su eopneun gijeok\nOneul neoreul kkok ango\nGiving you my heart and soul\nNeon salmui jeonbuya for life\nDasi taeeonandaedo\nNan neo animyeon an doel iyu\nCheon gaeui maldo bujokhal deutae\nFor life\nJichigo himdeul ttae\nGidaego sipeun\nKeun saram dwae bolge\nEoril jeok kkumkkudeon\nSeonmul gadeukhan\nChristmas tree gateun sarami\nSalmiran gin harmony\nGeu ane nogeun uriga\nDeo areumdawojige\nChimmugeun neoran\nChimmugeun neoran\nNoraero bakkwieo tonight\nNoraero tonight\nNan pyeongsaeng deutgo sipeo\nOneul neoreul kkok ango\nGiving you my heart and soul\nNeon salmui jeonbuya for life\nOh dasi taeeonandaedo\nNan neo animyeon an doel iyu\nPyeongsaengeul neoman\nBarabogopa\nModeun ge swipjin anhgeji\nJikyeojul geoya for life\nThis love\nThis love\nYeongwonhi kkeutnaji anha\nOh never gonna let you go\nGiving you my heart and soul\nNeon salmui jeonbuya for life\nOh dasi taeeonandaedo\nNan neo animyeon an doel iyu\nPyeongsaengeul neoman\nBarabogopa\nNa pyeongsaeng neoman\nBarabogopa\nFor life', '1CXe7yk-d6BP3sPPRXPStsmiTnodGDPO9', 1, 2, '2023-09-30 08:29:40', '2023-09-30 08:29:40'),
(8, 'https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/9/2/b/7/92b7138770db34ed025de982d0d5d28c.jpg', 'Amazing You', 'Han Dong Geun', 'https://docs.google.com/uc?id=1up8o1v4wFV_F7oAvs4afrZF9WQdmWSKK', 'Lời bài hát đang được cập nhật', '1up8o1v4wFV_F7oAvs4afrZF9WQdmWSKK', 1, 2, '2023-09-30 08:32:59', '2023-09-30 08:32:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reply`
--

CREATE TABLE `reply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_guestkbook` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_brides` varchar(255) NOT NULL,
  `name_grooms` varchar(255) NOT NULL,
  `day_wedding` date NOT NULL,
  `address_brides` varchar(255) DEFAULT NULL,
  `address_grooms` varchar(255) DEFAULT NULL,
  `phone_birdes` varchar(255) DEFAULT NULL,
  `phone_grooms` varchar(255) DEFAULT NULL,
  `map_birdes` varchar(255) DEFAULT NULL,
  `map_grooms` varchar(255) DEFAULT NULL,
  `facebook_birdes` varchar(255) DEFAULT NULL,
  `facebook_grooms` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `link_website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `url` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `source_id` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `url`, `title`, `desc`, `google_id`, `status`, `source_id`, `created_at`, `updated_at`) VALUES
(42, 'https://tonywedding.vn/wp-content/uploads/2023/03/0af9a202db8b5d0278ac3746e613d418-scaled.jpg?x52927', 'https://www.facebook.com/profile.php?id=100088781295596', 'tonywedding-10-14.webp', 'Hữu Thành, Thủy Tiên', NULL, 1, 1, '2023-09-04 10:22:17', '2023-10-05 09:43:17'),
(43, 'https://drive.google.com/uc?id=1wjgjExf4F7hc18QyMWqR0r8_CRg_wjtO', '#', 'IMG_0240.jpeg', 'Hữu Thành, Thủy Tiên', '1wjgjExf4F7hc18QyMWqR0r8_CRg_wjtO', 1, 2, '2023-09-04 10:28:50', '2023-10-05 22:03:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Link ảnh trên mạng', NULL, NULL),
(2, 'Từ thiết bị các nhân', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token_users`
--

CREATE TABLE `token_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `token_expired` datetime NOT NULL,
  `refresh_token_expired` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `token_users`
--

INSERT INTO `token_users` (`id`, `token`, `refresh_token`, `token_expired`, `refresh_token_expired`, `user_id`, `created_at`, `updated_at`) VALUES
(31, 'LaE0AVmysjswE55EWTqrdroOYlr8sRGraZe0mjAf', 'pCFFdanaV5IrwWHpIrmDKJzmQfUgeRaQkTH2WX24', '2023-10-12 15:52:08', '2024-09-06 15:52:08', 1, '2023-09-12 08:52:08', '2023-09-12 08:52:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `change_password_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `avatar`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `login_at`, `change_password_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'vvct', 'admin', 'vvctn@gmail.com', NULL, '$2y$10$PBqC/XOe9lw94bKxdBDT9O5JyVTDL3EpuIef3UCQpT3zWjzEZ8jcO', NULL, NULL, NULL, '2023-07-30 08:35:00', NULL),
(2, NULL, 'NguyenThuyTien', 'thuytien', 'thuytien@gmail.com', NULL, '$2y$10$aX3SWEecLgAyOUxVdSMcgOCc3.JD7wHKw2KL4K0TniiFDsiJdxrI2', NULL, NULL, NULL, '2023-07-30 08:35:00', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bgs`
--
ALTER TABLE `bgs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countdows`
--
ALTER TABLE `countdows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `couples`
--
ALTER TABLE `couples`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `guestkbook`
--
ALTER TABLE `guestkbook`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `token_users`
--
ALTER TABLE `token_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `bgs`
--
ALTER TABLE `bgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `countdows`
--
ALTER TABLE `countdows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `couples`
--
ALTER TABLE `couples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `guestkbook`
--
ALTER TABLE `guestkbook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `music`
--
ALTER TABLE `music`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `token_users`
--
ALTER TABLE `token_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
