-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Bulan Mei 2024 pada 13.40
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kirei`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `schedule` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fnote` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `package` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `appointments`
--

INSERT INTO `appointments` (`id`, `service_id`, `customer_id`, `schedule`, `fnote`, `status`, `package`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '1976-07-10 20:01:37', 'Sed voluptatum.', 0, 0, '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(2, 3, 3, '2001-08-04 09:49:31', 'Debitis necessitatibus.', 0, 0, '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(3, 2, 1, '2016-12-19 16:14:07', 'Eveniet quasi.', 0, 0, '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(4, 6, 2, '2022-07-14 14:52:15', 'Dolor commodi.', 0, 0, '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(5, 5, 1, '2016-11-21 10:35:31', 'Voluptas.', 0, 0, '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(6, 2, 9, '2024-05-09 05:00:00', NULL, 0, 0, '2024-05-08 04:39:52', '2024-05-08 04:39:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tabel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `tabel_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 8, 'Owner', 'owner', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(2, 1, 'Manicure', 'manicure', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(3, 1, 'Padicure', 'padicure', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(4, 2, 'Perawatan Rambut', 'perawatan-rambut', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(5, 2, 'Lulur', 'lulur', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(6, 2, 'Pijat', 'pijat', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(7, 3, 'Pembersih Wajah', 'pembersih-wajah', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(8, 3, 'Alat Kecantikan', 'alat-kecantikan', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(9, 4, 'Pembelian', 'pembelian', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(10, 4, 'Login', 'login', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(11, 6, 'Informasi', 'informasi', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(12, 6, 'Promo', 'promo', '2024-05-08 04:35:06', '2024-05-08 04:35:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cawisono Santoso', 'jwastuti@gmail.co.id', '0233 2994 9979', 'Kpg. Halim No. 271, Padang 11937, NTT', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(2, 'Puspa Haryanti S.Pd', 'swulandari@natsir.my.id', '(+62) 691 3458 557', 'Gg. Bayam No. 126, Administrasi Jakarta Timur 42238, Malut', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(3, 'Nilam Nasyiah', 'juwais@yahoo.co.id', '(+62) 835 284 547', 'Gg. Bazuka Raya No. 464, Banda Aceh 38285, Sumbar', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(4, 'Wakiman Pratama', 'wisnu.maheswara@siregar.go.id', '(+62) 812 1000 044', 'Kpg. Jambu No. 713, Kediri 60437, Sulsel', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(5, 'Titin Laksmiwati', 'bkuswandari@yahoo.co.id', '(+62) 991 8776 6524', 'Kpg. Salatiga No. 145, Tanjung Pinang 92152, Kaltim', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(6, 'Vera Uli Agustina', 'swulandari@yahoo.co.id', '0626 0398 1401', 'Jr. Arifin No. 943, Kupang 90676, Banten', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(7, 'Puspa Anggraini', 'rahayu.mayasari@suartini.id', '(+62) 404 9845 0422', 'Jln. Asia Afrika No. 689, Parepare 97317, Kaltim', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(8, 'Cici Purnawati', 'kusuma30@gmail.com', '(+62) 928 7880 2451', 'Jln. Baabur Royan No. 679, Surakarta 65613, Riau', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(9, 'qwe', 'qwe@qwe.qwe', NULL, NULL, '2024-05-08 04:39:52', '2024-05-08 04:39:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailsales`
--

CREATE TABLE `detailsales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dtlpacks`
--

CREATE TABLE `dtlpacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `category_id`, `nama`, `jk`, `email`, `image`, `alamat`, `no_telp`, `created_at`, `updated_at`) VALUES
(1, 1, 'Febri Ayu L', 'Wanita', NULL, NULL, NULL, '+62 000-0000-0000', '2024-05-08 04:35:06', '2024-05-08 04:35:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `question`, `answer`, `slug`, `created_at`, `updated_at`) VALUES
(1, 9, 'Numquam non.', 'Ea quam quia quos fuga animi illo. Et culpa quam voluptas aliquid numquam. Omnis sunt explicabo labore aut voluptatibus non.', 'eos-ipsum-repellat-expedita-rerum-aut-est-est-porro', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(2, 8, 'Facere qui ducimus dolorum et.', 'Provident in eos deleniti cumque. Officia assumenda labore consequatur est voluptates. Necessitatibus non est dolorum impedit.', 'alias-aut-non-totam', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(3, 9, 'Enim fugiat voluptates qui aperiam.', 'Quae perferendis esse nihil ipsam. Dicta laborum dolorum iusto voluptates iste reiciendis qui veritatis. A nobis qui facilis rerum ratione maxime.', 'inventore-non-placeat-aut-unde-consequatur-voluptas-non', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(4, 9, 'Placeat autem dolores.', 'Sequi illo ut repellat voluptatem qui quis odio aut. Provident ipsa nam aut enim laboriosam cum consequatur. Sapiente ratione quasi nobis eos ea sunt distinctio qui.', 'et-voluptatibus-sed-ea-beatae-laudantium-alias-voluptate', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(5, 9, 'Sunt porro.', 'Quia et ullam quae numquam. Enim vel est nam aut voluptas quia. Quisquam veritatis possimus quisquam explicabo harum.', 'sint-est-nesciunt-id-quasi-cumque-explicabo-quibusdam', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(6, 8, 'Et est.', 'Dolor perferendis molestiae iure aut id et beatae. Incidunt iure quos nam ratione sed hic. Qui nam iste amet et. Vel id optio sint quia consequuntur occaecati.', 'est-voluptas-eos-saepe-quisquam-et-aut', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(7, 8, 'Ut dolores tempore.', 'Aperiam vero sit reiciendis sed. In neque mollitia velit in sequi iste.', 'nisi-numquam-velit-nostrum-facere-consequatur-eos', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(8, 8, 'Aliquid dignissimos praesentium.', 'Laudantium ut corporis nemo laboriosam. Sit ea omnis odit. Quo aperiam amet ducimus et.', 'eveniet-placeat-repellendus-voluptates-delectus-non-fugiat-corrupti', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(9, 9, 'Voluptatibus laudantium.', 'Consequatur vel ea est soluta distinctio qui esse. Rem perspiciatis minus molestiae perferendis velit exercitationem. Rem incidunt deleniti quasi. Quo delectus quae sequi ipsam hic qui.', 'exercitationem-earum-odio-et-nulla-sed-amet-facilis', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(10, 9, 'Vitae culpa odit.', 'Hic ipsum ut in dolorem. Error possimus dignissimos aut eveniet deserunt est.', 'perspiciatis-quia-voluptatem-sunt-est-consequatur', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(11, 8, 'Explicabo et.', 'Qui et explicabo delectus libero voluptatem. Corrupti ducimus id quibusdam architecto est qui. Id ea libero sed corrupti aut porro autem. Voluptatum aliquam voluptatem omnis quia.', 'est-unde-veritatis-rerum-ullam-odio-voluptate-est', '2024-05-08 04:35:06', '2024-05-08 04:35:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `imageproducts`
--

CREATE TABLE `imageproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `imageservices`
--

CREATE TABLE `imageservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inmessages`
--

CREATE TABLE `inmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_08_03_102621_create_categories_table', 1),
(31, '2022_08_03_132913_create_tabels_table', 1),
(32, '2022_08_04_193822_create_employees_table', 1),
(33, '2022_08_04_202917_create_posts_table', 1),
(34, '2022_08_06_004237_create_services_table', 1),
(35, '2022_08_06_011515_create_imageservices_table', 1),
(36, '2022_08_06_020435_create_products_table', 1),
(37, '2022_08_06_021047_create_imageproducts_table', 1),
(38, '2022_08_06_040014_create_faqs_table', 1),
(39, '2022_08_06_053657_create_appointments_table', 1),
(40, '2022_08_06_062621_create_notifications_table', 1),
(41, '2022_08_06_095628_create_inmessages_table', 1),
(42, '2022_08_06_095938_create_outmessages_table', 1),
(43, '2022_08_06_114910_create_sales_table', 1),
(44, '2022_08_06_115537_create_customers_table', 1),
(45, '2022_08_07_103602_create_packages_table', 1),
(46, '2022_08_07_110613_create_dtlpacks_table', 1),
(47, '2022_08_09_111921_create_schedules_table', 1),
(48, '2022_08_14_062126_create_todolists_table', 1),
(49, '2022_08_14_141327_create_detailsales_table', 1),
(50, '2022_08_15_084535_create_testimonials_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tabel_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `tabel_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'Appointment baru', 'Pelanggan dengan nama qwe telah membuat janji temu di 2024-05-09 12:00', 0, '2024-05-08 04:39:52', '2024-05-08 04:39:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `outmessages`
--

CREATE TABLE `outmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `image`, `price`, `desc`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rem delectus.', 'impedit-fugit-voluptas-esse-aut-quis-ab-non', NULL, 77281, 'Inventore nam ad fugiat incidunt distinctio consequatur sunt ducimus qui qui voluptatibus.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(2, 3, 'Enim.', 'magnam-veniam-voluptatem-et', NULL, 24034, 'Consectetur eaque repudiandae cum est quo.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(3, 3, 'Quidem ex.', 'velit-aliquam-aperiam-et-sed-eos-magni-esse-sed', NULL, 16075, 'Nihil dolorum.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(4, 2, 'Mollitia.', 'et-nisi-ea-amet-occaecati', NULL, 97099, 'Fuga consectetur aspernatur.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(5, 2, 'Magnam.', 'possimus-sit-reiciendis-libero-corrupti-aut-ratione-placeat', NULL, 47122, 'Voluptatum dolores incidunt laudantium et.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(6, 3, 'Ducimus.', 'dolore-rerum-aut-dolore-vitae-dolores', NULL, 34134, 'Ea est ea vel exercitationem beatae iusto et.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(7, 2, 'Blanditiis.', 'maxime-id-culpa-placeat-veritatis', NULL, 30083, 'Eligendi quaerat quasi.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(8, 3, 'Tempora.', 'vel-voluptates-amet-mollitia-qui', NULL, 64267, 'Dicta quo autem magnam natus inventore nihil tempore consequuntur praesentium praesentium.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(9, 3, 'Et.', 'quidem-aut-necessitatibus-unde', NULL, 55915, 'Doloribus quis assumenda asperiores quis nihil perferendis vel dolore.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(10, 3, 'Nulla quo sit.', 'id-aut-eaque-debitis-id-fuga', NULL, 77171, 'At pariatur dolores.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(11, 2, 'Minima non.', 'doloribus-quia-rerum-qui-sit', NULL, 28613, 'Et distinctio laboriosam molestiae.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(12, 2, 'Voluptas.', 'nam-corporis-qui-delectus-illo-ut-consectetur-molestias', NULL, 52208, 'Qui fugiat non animi sunt expedita molestiae totam eius velit.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(13, 3, 'Minus.', 'nulla-illum-aut-unde-repellendus-aut', NULL, 22116, 'Excepturi repellendus eum ratione laudantium.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(14, 3, 'Veritatis.', 'laborum-atque-qui-nemo-beatae-ex-pariatur-ut', NULL, 89983, 'Unde debitis quia.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(15, 2, 'Corrupti.', 'molestias-minus-voluptas-molestias-culpa-voluptas', NULL, 91957, 'Amet aliquid et deleniti non nisi est provident.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(16, 2, 'Et.', 'esse-soluta-assumenda-et-iure-blanditiis-et-tempora', NULL, 69983, 'Praesentium beatae voluptas debitis.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(17, 3, 'Accusamus aut.', 'placeat-aut-reiciendis-quo-reprehenderit', NULL, 20320, 'Et tempora alias distinctio sint dolore aut.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(18, 2, 'Omnis.', 'occaecati-beatae-eos-et-sapiente-at-ut', NULL, 58616, 'Et consequatur rerum omnis adipisci aperiam ea sequi et.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(19, 3, 'Ut quos quo.', 'aut-perferendis-ad-ullam-quia-illum-iure', NULL, 20860, 'Ducimus corporis magni.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(20, 2, 'Ea dolore.', 'unde-eveniet-asperiores-quas-facere-dolorem', NULL, 94547, 'Aut error beatae.', '2024-05-08 04:35:07', '2024-05-08 04:35:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` int(11) DEFAULT NULL,
  `puc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `category_id`, `name`, `slug`, `image`, `price`, `desc`, `created_at`, `updated_at`) VALUES
(1, 5, 'Ipsa quo.', 'quod-nemo-doloremque-ut-at', NULL, 53481, 'Officiis qui consequatur.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(2, 5, 'Ea quia vel.', 'voluptates-aut-suscipit-odit-repellat-et', NULL, 24066, 'Ut hic dolorem.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(3, 5, 'Delectus.', 'tempore-voluptatem-tempora-accusamus-necessitatibus-architecto-qui-deserunt', NULL, 77527, 'Illo nesciunt qui voluptates.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(4, 4, 'Architecto.', 'quidem-voluptas-quisquam-quas-ratione-enim-distinctio-quaerat', NULL, 51909, 'Est excepturi enim aut saepe est molestiae ut nam tempora iure.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(5, 4, 'Voluptatem.', 'omnis-est-voluptatem-distinctio-qui-amet-temporibus', NULL, 13546, 'Unde impedit nobis asperiores quasi et quaerat eveniet quo repellendus.', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(6, 4, 'Qui maxime ut.', 'eaque-est-dicta-fugit-sed-beatae-doloribus-ipsam', NULL, 46327, 'Non provident ad.', '2024-05-08 04:35:07', '2024-05-08 04:35:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabels`
--

CREATE TABLE `tabels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabels`
--

INSERT INTO `tabels` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Post', 'formulir/blogs', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(2, 'Service', 'formulir/services', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(3, 'Product', 'formulir/products', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(4, 'FAQs', 'formulir/faqs', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(5, NULL, 'pesans#inbox', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(6, 'Message', 'pesans#sent', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(7, NULL, 'schedules', '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(8, 'Job', NULL, '2024-05-08 04:35:06', '2024-05-08 04:35:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `todolists`
--

CREATE TABLE `todolists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `employee_id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'qwe', 'qwr@example.com', NULL, '$2y$10$TYKu.1McAFWE3DCUsvYkYuyJmQlvMXffYPPegXvQlJ4vhB4FJVFqm', NULL, '2024-05-08 04:35:06', '2024-05-08 04:35:06'),
(2, 4, 'dipa69', 'mhassanah@example.org', '2024-05-08 04:35:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cIVs7IO3X2', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(3, 2, 'nilam09', 'mahmud.oktaviani@example.com', '2024-05-08 04:35:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WuRJRgSM4r', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(4, 4, 'yahya83', 'xhastuti@example.org', '2024-05-08 04:35:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nOisKonuox', '2024-05-08 04:35:07', '2024-05-08 04:35:07'),
(5, 3, 'kambali.prastuti', 'upratiwi@example.net', '2024-05-08 04:35:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ip1EWAZydn', '2024-05-08 04:35:07', '2024-05-08 04:35:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detailsales`
--
ALTER TABLE `detailsales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dtlpacks`
--
ALTER TABLE `dtlpacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dtlpacks_package_id_foreign` (`package_id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `imageproducts`
--
ALTER TABLE `imageproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageproducts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `imageservices`
--
ALTER TABLE `imageservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageservices_service_id_foreign` (`service_id`);

--
-- Indeks untuk tabel `inmessages`
--
ALTER TABLE `inmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_tabel_id_foreign` (`tabel_id`);

--
-- Indeks untuk tabel `outmessages`
--
ALTER TABLE `outmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outmessages_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `tabels`
--
ALTER TABLE `tabels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `detailsales`
--
ALTER TABLE `detailsales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dtlpacks`
--
ALTER TABLE `dtlpacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `imageproducts`
--
ALTER TABLE `imageproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `imageservices`
--
ALTER TABLE `imageservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inmessages`
--
ALTER TABLE `inmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `outmessages`
--
ALTER TABLE `outmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tabels`
--
ALTER TABLE `tabels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dtlpacks`
--
ALTER TABLE `dtlpacks`
  ADD CONSTRAINT `dtlpacks_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);

--
-- Ketidakleluasaan untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `imageproducts`
--
ALTER TABLE `imageproducts`
  ADD CONSTRAINT `imageproducts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `imageservices`
--
ALTER TABLE `imageservices`
  ADD CONSTRAINT `imageservices_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_tabel_id_foreign` FOREIGN KEY (`tabel_id`) REFERENCES `tabels` (`id`);

--
-- Ketidakleluasaan untuk tabel `outmessages`
--
ALTER TABLE `outmessages`
  ADD CONSTRAINT `outmessages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
