-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 juin 2023 à 00:09
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel_amdd1`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`link`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`id`, `title`, `description`, `start_date`, `end_date`, `location`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'activity1', 'Introduction à Merise ', '0000-00-00', '0000-00-00', 'soomewhere', 'course-1.jpg', '[\"https://web.facebook.com/mohamed.fnicha/videos/538107505161228\"]', NULL, NULL),
(2, 'activity2', 'Lancement des formations ', '0000-00-00', '0000-00-00', 'soomewhere', 'course-3.jpg', '[\"https://web.facebook.com/mohamed.fnicha/videos/233207595994536\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `adhesion`
--

CREATE TABLE `adhesion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_adhesion` enum('stage','preinscription','formation','avecPaiment') NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'omaima', 'omaima@gmail.com', NULL, '$2y$10$CBasMIYLOoey8jAWmcYuLefRJpuEezoe0efO6Qh2E3r8A3GBAcCbu', NULL, '2023-05-23 08:09:51', '2023-05-23 08:09:51'),
(2, 'ali', 'ali@gmail.com', NULL, '$2y$10$t0yOjNfZ6NjBZYTacsMR5uxwcF7i3IxWe89SmuxUCgnhAYqwDl1wq', NULL, '2023-05-23 11:10:25', '2023-05-23 11:10:25');

-- --------------------------------------------------------

--
-- Structure de la table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bureau`
--

CREATE TABLE `bureau` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bureau`
--

INSERT INTO `bureau` (`id`, `post`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Président', '1', NULL, NULL),
(2, 'Vice-président', '1', NULL, NULL),
(3, 'Secrétaire général', '1', NULL, NULL),
(4, 'Vice-secrétaire', '1', NULL, NULL),
(5, 'Trésorier', '1', NULL, NULL),
(6, 'Trésorier adjoint', '1', NULL, NULL),
(7, 'Conseiller 1', '1', NULL, NULL),
(8, 'Conseiller 2', '1', NULL, NULL),
(9, 'Conseiller 3', '1', NULL, NULL),
(10, 'Conseiller 4', '1', NULL, NULL),
(11, 'Conseiller 5', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comites`
--

CREATE TABLE `comites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comite_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comites`
--

INSERT INTO `comites` (`id`, `comite_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Comité Communication et Marketing Digital (CCMD)', '1', NULL, NULL),
(2, 'Comité Encadrement Digital (CED)', '1', NULL, NULL),
(3, 'Comité Conseil Juridiques Ressources Humaines & Relation Extérieur (CCJRHRE)', '1', NULL, NULL),
(4, 'Comité Développement Digital (CDD)', '1', NULL, NULL),
(5, ' Comité D’activité Socio-Digitales (CASD)', '1', NULL, NULL),
(6, ' Comité Formation Recherche et Innovation Digitale (CFRID)', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'omaima', 'omaima@gmail.com', 'demande de contact', 'bonjour, c\'est juste un test', '2023-05-15 12:14:17', '2023-05-15 12:14:17'),
(3, 'Omayma', 'ouhssainomaima@gmail.com', 'it was a scary night', 'wlaaaah', '2023-05-15 22:42:39', '2023-05-15 22:42:39'),
(4, 'omaima', 'omaima@gmail.com', 'demande de contact', 'bonjour, c\'est juste un test', '2023-05-15 11:14:17', '2023-05-15 11:14:17'),
(5, 'omaima', 'omaima@gmail.com', 'blabla', 'blaa', '2023-05-31 16:43:13', '2023-05-31 16:43:13'),
(6, 'Omayma', 'ouhssainomaima@gmail.com', 'zxdfghj', 'jyjtjt', '2023-05-31 16:49:14', '2023-05-31 16:49:14'),
(7, 'omaima', 'omaima@gmail.com', 'THIS', 'NEF', '2023-05-31 16:56:49', '2023-05-31 16:56:49'),
(8, 'omaima', 'ouhssainomaima@gmail.com', 'this', 'heoighe', '2023-05-31 17:01:34', '2023-05-31 17:01:34'),
(9, 'Omayma', 'ouhssainomaima@gmail.com', 'waa omaima', 'ertyuiop', '2023-05-31 19:04:54', '2023-05-31 19:04:54'),
(10, 'Omayma', 'ouhssainomaima@gmail.com', 'zxdfghj', 'TRE', '2023-05-31 19:19:36', '2023-05-31 19:19:36'),
(11, 'Omayma', 'ouhssainomaima@gmail.com', 'ooh aicha AIcha', 'SDFGHJ', '2023-05-31 19:21:40', '2023-05-31 19:21:40'),
(12, 'Omayma', 'ouhssainomaima@gmail.com', 'ooh aicha AIcha', 'SDFGHJ', '2023-05-31 19:25:27', '2023-05-31 19:25:27'),
(13, 'Omayma', 'ouhssainomaima@gmail.com', 'QWER', 'QWER', '2023-05-31 19:25:56', '2023-05-31 19:25:56'),
(14, 'Omayma', 'ouhssainomaima@gmail.com', 'QWER', 'QWER', '2023-05-31 19:28:50', '2023-05-31 19:28:50'),
(15, 'Omayma', 'ouhssainomaima@gmail.com', 'QWER', 'QWER', '2023-05-31 19:30:42', '2023-05-31 19:30:42'),
(16, 'Omayma', 'ouhssainomaima@gmail.com', 'zxdfghj', 'qwerty', '2023-05-31 19:31:05', '2023-05-31 19:31:05'),
(17, 'Omayma', 'ouhssainomaima@gmail.com', 'zxdfghj', 'wert', '2023-05-31 19:32:44', '2023-05-31 19:32:44'),
(18, 'omaima', 'ouhsaineomayma@gmail.com', 'hy', 'you', '2023-06-02 15:10:21', '2023-06-02 15:10:21'),
(19, 'omaima', 'ouhssainomaima@gmail.com', 'your last email', 'yup', '2023-06-02 15:15:38', '2023-06-02 15:15:38'),
(20, 'Omayma', 'ouhssainomaima@gmail.com', 'zxdfghj', 'rtyuio', '2023-06-02 20:54:58', '2023-06-02 20:54:58');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`links`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id`, `nom`, `post`, `description`, `image`, `links`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed ITI', 'Président ', 'desciption', 'iti.jpg', '[\"\",\"https://web.facebook.com/mohamed.iti\", \"\", \" www.linkedin.com/in/mohamed-iti-80a8987b \"]', NULL, NULL),
(2, 'Mohammed OULD_LAFNICHA', 'Vice Président ', 'en cours', 'fnicha.jpg', '[\"\",\"https://www.facebook.com/mohamed.fnicha/\", \"https://www.instagram.com/mfnicha/\", \" https://www.linkedin.com/in/mohammed-ould-lafnicha-196bba59/\"]', NULL, NULL),
(3, 'Mohamed MGHABAR', 'Trésorerie Générale', 'en cours', 'mghaber.jpg', '[\"mohamed.mghabar@gmail.com\",\"https://www.facebook.com/profile.php?id=100085774614354\", \"\", \"\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery`)),
  `description` text DEFAULT NULL,
  `links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`links`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `titre`, `type`, `date_debut`, `date_fin`, `status`, `image`, `gallery`, `description`, `links`, `created_at`, `updated_at`) VALUES
(1, 'Because-We don\'t remember days,we remember moments .', 'archive', '2022-07-01', '2022-07-01', '1', 'events-1.jpg', '[\"events-1.jpg\",\"events-2.jpg\", \"about.jpg\"]', 'Le 1 juillet était une journée évaluation-dégustation Fromages dans le cadre du module technologie laitière assuré par notre cher Professeur et coordonnateur du master BDQ monsieur KETTANI Anass qu\'on remercie infiniment pour cette belle opportunité. Alors après une évaluation les étudiants ont présenté un Buffet Gourmand différents plats à base de Fromages ou Produits laitiers : \n-  Yaourt fermenté \n- Lait en poudre\n- Fromage gruyère \n- Fromage bleu\n- Camembert \n- Cheddar \n- Yaourt brassé\n- Gouda\n- Fromage frais \n- Edam\n- Mozzarella \n- Lait concentré.\nNous ne pouvions pas souhaiter mieux comme ambiance pour clôturer cette année. Vraiment un Master BDQ bien affiné\n', '[\"https://web.facebook.com/100087210910585/videos/851279926267186?idorvanity=684178970091755\",\" https://web.facebook.com/mohamed.fnicha/videos/233207595994536\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formation_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `formation_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Algorithmique et Initiation aux programmation C.', '1', NULL, NULL),
(2, 'Initiation au Base de données.', '1', NULL, NULL),
(3, 'Création de siteweb Statique.', '1', NULL, NULL),
(4, 'Méthodologie PFA', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `formulaires`
--

CREATE TABLE `formulaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_form` text NOT NULL,
  `datas` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formulaires`
--

INSERT INTO `formulaires` (`id`, `type_form`, `datas`, `created_at`, `updated_at`) VALUES
(45, 'stage', '{\"_token\":\"6pHxOunJJ4wfsBSqm0brfZtr9rq4RxBU0VnZwYqP\",\"type\":\"stage\",\"nom\":\"hafida\",\"prenom\":\"omaima\",\"sexe\":\"male\",\"telephone\":\"08998778\",\"email\":\"ali@gmail.com\",\"password\":\"aliali1212\",\"profession\":null,\"specialite\":null,\"annee_experience\":\"0\",\"niveau_etude\":\"doctorat\",\"niveau_comp\\u00e9tence_mati\\u00e8re_technologie\":\"debutant\",\"age\":\"7\",\"niveau_diplome\":\"Niveau-Bac\",\"autre\":null,\"specialite1\":null,\"type_stage\":null,\"duree\":null,\"date_debut\":null,\"date_fin\":null,\"cv\":null,\"cin\":null,\"photo\":null,\"face1\":null,\"face2\":null,\"recu\":null,\"desire\":\"Profiter_activit\\u00e9s\",\"autreACT\":null,\"competence_options\":[null],\"remarque\":null}', '2023-06-02 18:14:28', '2023-06-02 18:14:28'),
(46, 'formation', '{\"_token\":\"6pHxOunJJ4wfsBSqm0brfZtr9rq4RxBU0VnZwYqP\",\"type\":\"formation\",\"nom\":\"ouhsaine\",\"prenom\":\"omaima\",\"sexe\":\"male\",\"telephone\":\"08998778\",\"email\":\"ali@gmail.com\",\"password\":\"aliali1212\",\"profession\":null,\"specialite\":null,\"annee_experience\":\"0\",\"niveau_etude\":\"doctorat\",\"niveau_comp\\u00e9tence_mati\\u00e8re_technologie\":\"debutant\",\"age\":null,\"niveau_diplome\":\"Niveau-Bac\",\"autre\":null,\"specialite1\":null,\"type_stage\":null,\"duree\":null,\"date_debut\":null,\"date_fin\":null,\"cv\":null,\"profiles\":\"3\",\"competence_options\":[\"LinkedIn\",null],\"cin\":null,\"photo\":null,\"face1\":null,\"face2\":null,\"recu\":null,\"desire\":\"Profiter_activit\\u00e9s\",\"autreACT\":null,\"remarque\":null}', '2023-06-02 18:14:52', '2023-06-02 18:14:52'),
(47, 'preinscription', '{\"_token\":\"6pHxOunJJ4wfsBSqm0brfZtr9rq4RxBU0VnZwYqP\",\"type\":\"preinscription\",\"nom\":\"hafida\",\"prenom\":\"ouahqui\",\"sexe\":\"male\",\"telephone\":\"08998778\",\"email\":\"ali@gmail.com\",\"password\":\"aliali1212\",\"profession\":\"ghjk\",\"specialite\":\"hjkk\",\"annee_experience\":\"2\",\"niveau_etude\":\"bac\",\"niveau_comp\\u00e9tence_mati\\u00e8re_technologie\":\"interm\\u00e9diaire\",\"age\":null,\"niveau_diplome\":\"Niveau-Bac\",\"autre\":null,\"specialite1\":null,\"type_stage\":null,\"duree\":null,\"date_debut\":null,\"date_fin\":null,\"cv\":null,\"cin\":null,\"photo\":null,\"face1\":null,\"face2\":null,\"recu\":null,\"desire\":\"participer_cours\",\"activity_options\":[\"fondamentaux\"],\"autreACT\":null,\"competence_options\":[\"competence1\",null],\"courses\":\"presentiel\",\"profiles\":\"11\",\"comites\":\"2\",\"specialites\":\"12\",\"remarque\":\"ehadghzkxvv\"}', '2023-06-02 18:19:09', '2023-06-02 18:19:09'),
(48, 'formation', '{\"_token\":\"6pHxOunJJ4wfsBSqm0brfZtr9rq4RxBU0VnZwYqP\",\"type\":\"formation\",\"nom\":\"ouhsaine\",\"prenom\":\"omaima\",\"sexe\":\"female\",\"telephone\":\"08998778\",\"email\":\"hafidaouahqi@gmail.com\",\"password\":\"zxcvbnm,.\\u00e9\",\"profession\":null,\"specialite\":null,\"annee_experience\":\"0\",\"niveau_etude\":\"doctorat\",\"niveau_comp\\u00e9tence_mati\\u00e8re_technologie\":\"debutant\",\"age\":null,\"niveau_diplome\":\"Niveau-Bac\",\"autre\":null,\"specialite1\":null,\"type_stage\":null,\"duree\":null,\"date_debut\":null,\"date_fin\":null,\"cv\":null,\"profiles\":\"3\",\"competence_options\":[\"Facebook\",null],\"cin\":null,\"photo\":null,\"face1\":null,\"face2\":null,\"recu\":null,\"desire\":\"Profiter_activit\\u00e9s\",\"autreACT\":null,\"remarque\":null}', '2023-06-02 20:56:18', '2023-06-02 20:56:18');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2023_05_13_155943_create_evenement_table', 3),
(127, '2023_05_13_153809_create_equipe_table', 4),
(128, '2023_05_13_155233_create_testemonial_table', 4),
(129, '2023_05_13_161539_create_evenement_table', 4),
(143, '2014_10_12_000000_create_users_table', 5),
(144, '2014_10_12_100000_create_password_resets_table', 5),
(145, '2019_08_19_000000_create_failed_jobs_table', 5),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(147, '2023_05_04_145027_create_admin_password_resets_table', 5),
(148, '2023_05_04_145027_create_admins_table', 5),
(149, '2023_05_14_165117_create_evenements_table', 5),
(150, '2023_05_14_165304_create_equipes_table', 5),
(151, '2023_05_14_165440_create_testemonials_table', 5),
(152, '2023_05_14_171900_create_profiles_table', 5),
(153, '2023_05_14_172555_add_foreign_key_to_evenements', 6),
(154, '2023_05_14_172605_add_foreign_key_to_users', 7),
(155, '2023_05_14_202651_create_contacts_table', 8),
(156, '2023_05_15_000506_create_members_table', 9),
(157, '2023_05_15_002526_create_activities_table', 9),
(158, '2023_05_15_004451_add_image_to_activities_table', 10),
(159, '2023_05_15_153901_add_columns_to_users_table', 11),
(160, '2023_05_17_000843_create_partenaires_table', 12),
(161, '2023_05_17_113706_add_columns_to_evenements_table', 13),
(162, '2023_05_17_145956_add_columns_to_evenements_table', 14),
(163, '2023_05_17_150433_add_columns_to_evenements_table', 15),
(165, '2023_05_21_175455_create_adhesion_table', 16),
(169, '2023_05_22_210217_create_visitors_table', 17),
(170, '2023_05_23_090748_create_admins_table', 18),
(177, '2023_05_25_094709_create_comites_table', 19),
(178, '2023_05_26_010534_create_users_table', 20),
(180, '2023_05_26_010801_create_evenements_table', 21),
(181, '2023_05_26_011147_create_users_table', 22),
(182, '2023_05_26_011432_create_activities_table', 23),
(183, '2023_05_26_012353_create_specialites_table', 24),
(184, '2023_05_26_013024_create_specialite_users_table', 25),
(185, '2023_05_26_150831_create_bureau_table', 26),
(187, '2023_05_26_152326_add_bureau_id_to_users_table', 27),
(188, '2023_05_28_170113_create_formation_table', 28),
(189, '2023_05_29_073232_create_activities_table', 29),
(190, '2023_05_29_080449_add_column_to_users_table', 30),
(191, '2023_05_31_204319_create_adhesion_table', 31),
(192, '2023_06_01_145418_create_formulaires_table', 31);

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `nom`, `lien`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cosumar', 'https://www.cosumar.co.ma/', 'cosumar.jpg', NULL, NULL),
(2, 'Amoud', 'http://www.amoud.ma/', 'amoud.jpg', NULL, NULL),
(3, 'CooperPharma', 'https://cooperpharma.ma/', 'cooper.png', NULL, NULL),
(4, 'OCP group', 'https://www.ocpgroup.ma/', 'OCP.png', NULL, NULL),
(5, 'Venezia-ice', 'https://www.venezia-ice.com/', 'venezia_ice1.jpg', NULL, NULL),
(6, 'Lydec', 'https://client.lydec.ma/site/accueil', 'lydec.jpg', NULL, NULL),
(7, 'Oulmes', 'https://www.oulmes.ma/', 'oulmes.jpg', NULL, NULL),
(8, 'La vache qui rit', 'https://www.lavachequirit.ma/', 'lavache_guirit.png', NULL, NULL),
(9, 'Coca Cola', 'https://www.coca-cola.com/', 'coca.png', NULL, NULL),
(10, 'Centrale laitiere', 'https://corporate.danone.ma/', 'centrale-danone.jpg', NULL, NULL),
(11, 'Koutobia', 'http://www.koutoubia.net/', 'koutobia.png', NULL, NULL),
(12, 'SuperLait', 'http://moroccanproducts.ma/fr/company/superlait', 'superlait.jpg', NULL, NULL),
(13, 'Delipat', 'https://www.kerix.net/fr/annuaire-entreprise/delipat', 'delipat.jpg', NULL, NULL),
(14, 'Loarc', 'https://www.kerix.net/fr/annuaire-entreprise/loarc', 'loarc.jpg', NULL, NULL),
(15, 'Eacce', '', 'eacce.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lebele` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bureau_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`id`, `lebele`, `status`, `created_at`, `updated_at`, `bureau_id`) VALUES
(1, 'Admin', '1', NULL, NULL, NULL),
(2, 'adhérent', '1', NULL, NULL, NULL),
(8, 'Membres fondateurs', '1', NULL, NULL, NULL),
(9, 'Membres bienfaiteurs', '1', NULL, NULL, NULL),
(10, 'Membres d\'honneur ou honoraires', '1', NULL, NULL, NULL),
(11, 'usagers et membres actifs', '1', NULL, NULL, NULL),
(12, 'Membres à vie', '1', NULL, NULL, NULL),
(13, 'Membre executif', '1', NULL, NULL, NULL),
(14, 'Professeur', '1', NULL, NULL, NULL),
(15, 'Professeur-Adhérent', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `specialite_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `comite_id`, `specialite_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Président comité', '1', NULL, NULL),
(2, 1, 'Vice-président comité', '1', NULL, NULL),
(3, 1, 'Responsable media', '1', NULL, NULL),
(4, 1, 'Responsable design et annonces (Facebook group)', '1', NULL, NULL),
(5, 1, 'Responsable design et annonces (Facebook page)', '1', NULL, NULL),
(6, 1, 'Responsable annonces et publicité (WhatsApp group)', '1', NULL, NULL),
(7, 1, 'Responsable annonces et publicité (LinkedIn)', '1', NULL, NULL),
(8, 1, 'Expert design', '1', NULL, NULL),
(9, 1, 'Responsable marketing digital', '1', NULL, NULL),
(10, 2, 'Président comité', '1', NULL, NULL),
(11, 2, 'Vice-président comité', '1', NULL, NULL),
(12, 2, 'Responsable Encadrement digital', '1', NULL, NULL),
(13, 2, 'Encadrant référant technique', '1', NULL, NULL),
(14, 2, 'Adjoint ', '1', NULL, NULL),
(15, 3, 'Président comité', '1', NULL, NULL),
(16, 3, 'Vice-président comité', '1', NULL, NULL),
(17, 3, 'Responsable Relation Humaine et RH', '1', NULL, NULL),
(18, 3, 'Adjoint', '1', NULL, NULL),
(19, 3, 'Responsable Conseil Juridique', '1', NULL, NULL),
(20, 4, 'Président comité', '1', NULL, NULL),
(21, 4, 'Vice-président comité', '1', NULL, NULL),
(22, 4, 'Responsable Comité', '1', NULL, NULL),
(23, 5, 'Président comité', '1', NULL, NULL),
(24, 5, 'Vice-président comité', '1', NULL, NULL),
(25, 6, 'Président comité', '1', NULL, NULL),
(26, 6, 'Vice-président comité', '1', NULL, NULL),
(27, 6, 'Formateur digital', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `specialite_users`
--

CREATE TABLE `specialite_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `specialite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `testemonials`
--

CREATE TABLE `testemonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `testemonials`
--

INSERT INTO `testemonials` (`id`, `nom`, `profession`, `message`, `image`, `created_at`, `updated_at`) VALUES
(1, 'omayma', 'student ', 'good luck AMDD, and thanks a lot', 'omayma.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `comite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bureau_id` bigint(20) UNSIGNED DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `email_verified_at`, `date_naissance`, `gender`, `ville`, `pays`, `date_inscription`, `profession`, `image`, `phone`, `comite_id`, `profile_id`, `status`, `remember_token`, `created_at`, `updated_at`, `bureau_id`, `region`) VALUES
(1, 'omaima', 'ouhsaine', 'omaima@gmail.com', 'omaimaomaima', '0000-00-00 00:00:00', NULL, 'female', NULL, NULL, NULL, NULL, NULL, 771238484, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(2, 'Halima', 'LEBRAZI', 'halima@gmail.com', 'halimahalima', '0000-00-00 00:00:00', NULL, 'female', NULL, NULL, NULL, 'professeur', NULL, 234253428, 1, 14, '', NULL, NULL, NULL, NULL, NULL),
(3, 'Houda', 'BENNANI', 'houda@gmail.com', 'houdahouda', '0000-00-00 00:00:00', NULL, 'female', NULL, NULL, NULL, 'professeur', 'inknown.png', 340099887, 2, 15, '', NULL, NULL, NULL, NULL, NULL),
(7, 'ouhsaine', 'omaima', 'ali@gmail.com', 'aliali1212', NULL, NULL, 'male', NULL, NULL, NULL, NULL, NULL, 8998778, NULL, NULL, 'active', NULL, '2023-06-02 15:26:11', '2023-06-02 15:26:11', NULL, NULL),
(8, 'ouhsaine', 'omaima', 'hafidaouahqi@gmail.com', 'zxcvbnm,.é', NULL, NULL, 'male', NULL, NULL, NULL, NULL, NULL, 8998778, NULL, NULL, 'active', NULL, '2023-06-02 16:11:35', '2023-06-02 16:11:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adhesion_email_unique` (`email`);

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Index pour la table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Index pour la table `bureau`
--
ALTER TABLE `bureau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comites`
--
ALTER TABLE `comites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formulaires`
--
ALTER TABLE `formulaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_bureau_id_foreign` (`bureau_id`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialites_comite_id_foreign` (`comite_id`);

--
-- Index pour la table `specialite_users`
--
ALTER TABLE `specialite_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialite_users_user_id_foreign` (`user_id`),
  ADD KEY `specialite_users_specialite_id_foreign` (`specialite_id`);

--
-- Index pour la table `testemonials`
--
ALTER TABLE `testemonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_comite_id_foreign` (`comite_id`),
  ADD KEY `users_profile_id_foreign` (`profile_id`),
  ADD KEY `users_bureau_id_foreign` (`bureau_id`);

--
-- Index pour la table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `adhesion`
--
ALTER TABLE `adhesion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bureau`
--
ALTER TABLE `bureau`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `comites`
--
ALTER TABLE `comites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `formulaires`
--
ALTER TABLE `formulaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `specialite_users`
--
ALTER TABLE `specialite_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `testemonials`
--
ALTER TABLE `testemonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_bureau_id_foreign` FOREIGN KEY (`bureau_id`) REFERENCES `bureau` (`id`);

--
-- Contraintes pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD CONSTRAINT `specialites_comite_id_foreign` FOREIGN KEY (`comite_id`) REFERENCES `comites` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `specialite_users`
--
ALTER TABLE `specialite_users`
  ADD CONSTRAINT `specialite_users_specialite_id_foreign` FOREIGN KEY (`specialite_id`) REFERENCES `specialites` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `specialite_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_bureau_id_foreign` FOREIGN KEY (`bureau_id`) REFERENCES `bureau` (`id`),
  ADD CONSTRAINT `users_comite_id_foreign` FOREIGN KEY (`comite_id`) REFERENCES `comites` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
