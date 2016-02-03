-- phpMyAdmin SQL Dump
-- version 4.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2016 at 05:48 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `endodent`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Pan WordPress', '', 'https://wordpress.org/', '', '2016-02-02 15:30:54', '2016-02-02 14:30:54', 'Cześć, to jest komentarz.\nAby skasować ten komentarz, zaloguj się i wyświetl komentarze tego wpisu. Wtedy zobaczysz opcje edycji oraz kasowania komentarzy.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://endodent.dev', 'yes'),
(2, 'home', 'http://endodent.dev', 'yes'),
(3, 'blogname', 'Endopoint', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'archangel.raffael@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:2:{i:0;s:59:"D:\\1work\\endodent/wp-content/themes/twentysixteen/style.css";i:1;s:0:"";}', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', 'Europe/Warsaw', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '28', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '10', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', 'pl_PL', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1454553055;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454597228;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454597724;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.4.2.zip";s:6:"locale";s:5:"pl_PL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.4.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.4.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.4.1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.4.2.zip";s:6:"locale";s:5:"pl_PL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.4.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1454513453;s:15:"version_checked";s:5:"4.4.1";s:12:"translations";a:0:{}}', 'yes'),
(111, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454513453;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454513454;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(115, '_site_transient_timeout_browser_2f4695c5cc6685ac05e383fb7004c5b1', '1455029228', 'yes'),
(116, '_site_transient_browser_2f4695c5cc6685ac05e383fb7004c5b1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"48.0.2564.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(122, 'can_compress_scripts', '1', 'yes'),
(127, '_transient_timeout_plugin_slugs', '1454510834', 'no'),
(128, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(136, 'theme_mods_twentysixteen', 'a:3:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"header_textcolor";s:5:"blank";s:12:"header_image";s:13:"remove-header";}', 'yes'),
(137, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(140, 'category_children', 'a:0:{}', 'yes'),
(155, 'rewrite_rules', 'a:79:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=28&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(164, '_transient_timeout_dash_5ed7e1a5d79caaf375d35c33f6782653', '1454522340', 'no'),
(165, '_transient_dash_5ed7e1a5d79caaf375d35c33f6782653', '<div class="rss-widget"><p><strong>Błąd RSS</strong>: WP HTTP Error: Could not resolve host: pl.wordpress.org</p></div><div class="rss-widget"><p><strong>Błąd RSS</strong>: WP HTTP Error: Could not resolve host: pl.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(172, '_site_transient_timeout_theme_roots', '1454515254', 'yes'),
(173, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(179, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(11, 5, '_edit_last', '1'),
(12, 5, '_edit_lock', '1454432295:1'),
(13, 6, '_menu_item_type', 'post_type'),
(14, 6, '_menu_item_menu_item_parent', '0'),
(15, 6, '_menu_item_object_id', '5'),
(16, 6, '_menu_item_object', 'page'),
(17, 6, '_menu_item_target', ''),
(18, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 6, '_menu_item_xfn', ''),
(20, 6, '_menu_item_url', ''),
(21, 8, '_wp_attached_file', '2016/02/logo.jpg'),
(22, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:452;s:6:"height";i:197;s:4:"file";s:16:"2016/02/logo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"logo-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(23, 8, '_edit_lock', '1454426454:1'),
(24, 9, '_wp_attached_file', '2016/02/cropped-logo.jpg'),
(25, 9, '_wp_attachment_context', 'custom-header'),
(26, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:499;s:4:"file";s:24:"2016/02/cropped-logo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"cropped-logo-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cropped-logo-768x319.jpg";s:5:"width";i:768;s:6:"height";i:319;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cropped-logo-1024x426.jpg";s:5:"width";i:1024;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"cropped-logo-1200x499.jpg";s:5:"width";i:1200;s:6:"height";i:499;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(27, 9, '_wp_attachment_custom_header_last_used_twentysixteen', '1454426620'),
(28, 9, '_wp_attachment_is_custom_header', 'twentysixteen'),
(29, 10, '_wp_attached_file', '2016/02/cropped-logo-1.jpg'),
(30, 10, '_wp_attachment_context', 'site-icon'),
(31, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:26:"2016/02/cropped-logo-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-logo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:26:"cropped-logo-1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:26:"cropped-logo-1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:26:"cropped-logo-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:24:"cropped-logo-1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(32, 11, '_edit_last', '1'),
(33, 12, '_menu_item_type', 'post_type'),
(34, 12, '_menu_item_menu_item_parent', '0'),
(35, 12, '_menu_item_object_id', '11'),
(36, 12, '_menu_item_object', 'page'),
(37, 12, '_menu_item_target', ''),
(38, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 12, '_menu_item_xfn', ''),
(40, 12, '_menu_item_url', ''),
(41, 11, '_edit_lock', '1454427131:1'),
(42, 14, '_edit_last', '1'),
(43, 15, '_menu_item_type', 'post_type'),
(44, 15, '_menu_item_menu_item_parent', '0'),
(45, 15, '_menu_item_object_id', '14'),
(46, 15, '_menu_item_object', 'page'),
(47, 15, '_menu_item_target', ''),
(48, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 15, '_menu_item_xfn', ''),
(50, 15, '_menu_item_url', ''),
(51, 14, '_edit_lock', '1454427150:1'),
(52, 17, '_edit_last', '1'),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '17'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(61, 17, '_edit_lock', '1454427163:1'),
(62, 20, '_edit_last', '1'),
(63, 21, '_menu_item_type', 'post_type'),
(64, 21, '_menu_item_menu_item_parent', '0'),
(65, 21, '_menu_item_object_id', '20'),
(66, 21, '_menu_item_object', 'page'),
(67, 21, '_menu_item_target', ''),
(68, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 21, '_menu_item_xfn', ''),
(70, 21, '_menu_item_url', ''),
(71, 20, '_edit_lock', '1454427176:1'),
(72, 23, '_edit_last', '1'),
(73, 24, '_menu_item_type', 'post_type'),
(74, 24, '_menu_item_menu_item_parent', '0'),
(75, 24, '_menu_item_object_id', '23'),
(76, 24, '_menu_item_object', 'page'),
(77, 24, '_menu_item_target', ''),
(78, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 24, '_menu_item_xfn', ''),
(80, 24, '_menu_item_url', ''),
(81, 23, '_edit_lock', '1454427191:1'),
(82, 28, '_edit_last', '1'),
(91, 28, '_edit_lock', '1454516976:1'),
(92, 32, '_wp_attached_file', '2016/02/home-backgroud.jpg'),
(93, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:590;s:6:"height";i:400;s:4:"file";s:26:"2016/02/home-backgroud.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"home-backgroud-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"home-backgroud-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-02 15:30:54', '2016-02-02 14:30:54', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2016-02-02 15:30:54', '2016-02-02 14:30:54', '', 0, 'http://endodent.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-02 15:30:54', '2016-02-02 14:30:54', 'To jest przykładowa strona. Różni się ona od postu na blogu, ponieważ pozostanie ona ciągle w jednym miejscu i pokaże się w panelu nawigacyjnym na twojej stronie (w przypadku większości szablonów). Większość osób zaczyna od strony ''O mnie'' lub ''O nas'', która przedstawia ich potencjalnym odwiedzającym stronę. Może to być coś takiego:\n\n<blockquote>Cześć! Jestem kurierem na rowerze za dnia, nocą aktorem amatorem, a to jest mój blog. Mieszkam w Gdańsku, mam wspaniałego psa o imieniu Azor i uwielbiam pi&#241;a coladę. (Oraz to, kiedy łapie mnie deszcz.)</blockquote>\n\n...lub coś bardziej jak to:\n\n<blockquote>Firma XYZ została założona w 1971 roku i od tamtej pory wytwarza najlepszej jakości wijaster na rynku. Zlokalizowana w Pacanowie zatrudnia ponad 2000 osób i jest powodem samego dobrodziejstwa dla lokalnej społeczności.</blockquote>\n\nJako nowy użytkowni WordPressa, powinieneś odwiedzić <a href="http://endodent.dev/wp-admin/">swój panel administracyjny</a>, aby skasować tę stronę i stworzyć nowe, dostosowane do Twoich potrzeb strony. Miłej zabawy!', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2016-02-02 15:30:54', '2016-02-02 14:30:54', '', 0, 'http://endodent.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-02-02 15:47:09', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-02 15:47:09', '0000-00-00 00:00:00', '', 0, 'http://endodent.dev/?p=3', 0, 'post', '', 0),
(5, 1, '2016-02-02 16:07:27', '2016-02-02 15:07:27', '<div class="ad-left-column">\r\n<img src="http://fkaplauz.nazwa.pl/dental_/img/pliki//Ikony/img/gabinet.jpg">\r\n\r\n</div>\r\n\r\n<div class="ad-right-column">\r\n<h3>O nas</h3>\r\n<p></p>\r\n</div>', 'O nas', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2016-02-02 16:57:46', '2016-02-02 15:57:46', '', 0, 'http://endodent.dev/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-02-02 16:07:27', '2016-02-02 15:07:27', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/6/', 1, 'nav_menu_item', '', 0),
(7, 1, '2016-02-02 16:07:27', '2016-02-02 15:07:27', '<div class="left-column">\r\n<img src="http://fkaplauz.nazwa.pl/dental_/img/pliki//Ikony/img/gabinet.jpg">\r\n\r\n</div>\r\n\r\n<div class="right-column">\r\n<h3>O nas</h3>\r\n<p></p>\r\n</div>', 'O nas', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-02 16:07:27', '2016-02-02 15:07:27', '', 5, 'http://endodent.dev/2016/02/02/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-02-02 16:22:40', '2016-02-02 15:22:40', '', 'Endodent', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-02-02 16:22:53', '2016-02-02 15:22:53', '', 0, 'http://endodent.dev/wp-content/uploads/2016/02/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-02-02 16:23:37', '2016-02-02 15:23:37', '', 'cropped-logo.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-jpg', '', '', '2016-02-02 16:23:37', '2016-02-02 15:23:37', '', 0, 'http://endodent.dev/wp-content/uploads/2016/02/cropped-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2016-02-02 16:25:42', '2016-02-02 15:25:42', 'http://endodent.dev/wp-content/uploads/2016/02/cropped-logo-1.jpg', 'cropped-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-jpg', '', '', '2016-02-02 16:25:42', '2016-02-02 15:25:42', '', 0, 'http://endodent.dev/wp-content/uploads/2016/02/cropped-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2016-02-02 16:34:20', '2016-02-02 15:34:20', '', 'Klinika', '', 'publish', 'closed', 'closed', '', 'klinika', '', '', '2016-02-02 16:34:20', '2016-02-02 15:34:20', '', 0, 'http://endodent.dev/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-02-02 16:34:20', '2016-02-02 15:34:20', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/12/', 2, 'nav_menu_item', '', 0),
(13, 1, '2016-02-02 16:34:20', '2016-02-02 15:34:20', '', 'Klinika', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-02-02 16:34:20', '2016-02-02 15:34:20', '', 11, 'http://endodent.dev/2016/02/02/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-02-02 16:34:43', '2016-02-02 15:34:43', '', 'Lekarze', '', 'publish', 'closed', 'closed', '', 'lekarze', '', '', '2016-02-02 16:34:43', '2016-02-02 15:34:43', '', 0, 'http://endodent.dev/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-02-02 16:34:43', '2016-02-02 15:34:43', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/15/', 3, 'nav_menu_item', '', 0),
(16, 1, '2016-02-02 16:34:43', '2016-02-02 15:34:43', '', 'Lekarze', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-02-02 16:34:43', '2016-02-02 15:34:43', '', 14, 'http://endodent.dev/2016/02/02/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-02-02 16:35:03', '2016-02-02 15:35:03', '', 'Techniki leczenia', '', 'publish', 'closed', 'closed', '', 'techniki-leczenia', '', '', '2016-02-02 16:35:03', '2016-02-02 15:35:03', '', 0, 'http://endodent.dev/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-02-02 16:35:03', '2016-02-02 15:35:03', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/18/', 4, 'nav_menu_item', '', 0),
(19, 1, '2016-02-02 16:35:03', '2016-02-02 15:35:03', '', 'Techniki leczenia', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-02-02 16:35:03', '2016-02-02 15:35:03', '', 17, 'http://endodent.dev/2016/02/02/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-02-02 16:35:14', '2016-02-02 15:35:14', '', 'Cennik', '', 'publish', 'closed', 'closed', '', 'cennik', '', '', '2016-02-02 16:35:14', '2016-02-02 15:35:14', '', 0, 'http://endodent.dev/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-02-02 16:35:14', '2016-02-02 15:35:14', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/21/', 5, 'nav_menu_item', '', 0),
(22, 1, '2016-02-02 16:35:14', '2016-02-02 15:35:14', '', 'Cennik', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-02-02 16:35:14', '2016-02-02 15:35:14', '', 20, 'http://endodent.dev/2016/02/02/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-02-02 16:35:27', '2016-02-02 15:35:27', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2016-02-02 16:35:27', '2016-02-02 15:35:27', '', 0, 'http://endodent.dev/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-02-02 16:35:27', '2016-02-02 15:35:27', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-02-02 18:03:35', '2016-02-02 17:03:35', '', 0, 'http://endodent.dev/2016/02/02/24/', 6, 'nav_menu_item', '', 0),
(25, 1, '2016-02-02 16:35:27', '2016-02-02 15:35:27', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-02 16:35:27', '2016-02-02 15:35:27', '', 23, 'http://endodent.dev/2016/02/02/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-02-02 16:57:38', '2016-02-02 15:57:38', '<div class="ad-left-column">\n<img src="http://fkaplauz.nazwa.pl/dental_/img/pliki//Ikony/img/gabinet.jpg">\n\n</div>\n\n<div class="ad-right-column">\n<h3>O nas</h3>\n<p></p>\n</div>', 'O nas', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2016-02-02 16:57:38', '2016-02-02 15:57:38', '', 5, 'http://endodent.dev/2016/02/02/5-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2016-02-02 16:57:46', '2016-02-02 15:57:46', '<div class="ad-left-column">\r\n<img src="http://fkaplauz.nazwa.pl/dental_/img/pliki//Ikony/img/gabinet.jpg">\r\n\r\n</div>\r\n\r\n<div class="ad-right-column">\r\n<h3>O nas</h3>\r\n<p></p>\r\n</div>', 'O nas', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-02-02 16:57:46', '2016-02-02 15:57:46', '', 5, 'http://endodent.dev/2016/02/02/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-02-02 18:00:52', '2016-02-02 17:00:52', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n<p>\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \r\n</p>\r\n\r\n\r\n<div class="ad-home-contact-form">\r\n<input type="text" name="imie" required><input type="email" name="email" required>\r\n<textarea name="wiadomosc"></textarea>\r\n</div>\r\n\r\n</div>\r\n</div>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-03 17:29:35', '2016-02-03 16:29:35', '', 0, 'http://endodent.dev/?page_id=28', 0, 'page', '', 0),
(30, 1, '2016-02-02 18:00:52', '2016-02-02 17:00:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-02 18:00:52', '2016-02-02 17:00:52', '', 28, 'http://endodent.dev/2016/02/02/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-02-03 17:24:56', '2016-02-03 16:24:56', '<div class="ad-home-wrapper">\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\n\n<div class="ad-home-overlay">\n<h3>Napisz do nas</h3>\n<p>\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \n</p>\n\n\n<div class="ad-home-contact-form">\n<input type="text" name="imie" required>\n<input type="email" name="email" required>\n<textarea name="wiadomosc"></textarea>\n</div>\n\n</div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2016-02-03 17:24:56', '2016-02-03 16:24:56', '', 28, 'http://endodent.dev/2016/02/03/28-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2016-02-03 07:22:08', '2016-02-03 06:22:08', '', 'home-backgroud', '', 'inherit', 'open', 'closed', '', 'home-backgroud', '', '', '2016-02-03 07:22:08', '2016-02-03 06:22:08', '', 28, 'http://endodent.dev/wp-content/uploads/2016/02/home-backgroud.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-02-03 07:24:43', '2016-02-03 06:24:43', '<img src="/public/img/home-background.jpg" class="ad-home-background">', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 07:24:43', '2016-02-03 06:24:43', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-02-03 07:27:27', '2016-02-03 06:27:27', '<img src="/wp-content/uploads/2016/02/home-background.jpg" class="ad-home-background">', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 07:27:27', '2016-02-03 06:27:27', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-02-03 07:29:17', '2016-02-03 06:29:17', '\r\n<img src="http://endodent.dev/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 07:29:17', '2016-02-03 06:29:17', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-02-03 07:29:52', '2016-02-03 06:29:52', '<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 07:29:52', '2016-02-03 06:29:52', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-02-03 07:32:16', '2016-02-03 06:32:16', '<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 07:32:16', '2016-02-03 06:32:16', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-02-03 16:35:57', '2016-02-03 15:35:57', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 16:35:57', '2016-02-03 15:35:57', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-02-03 16:41:05', '2016-02-03 15:41:05', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 16:41:05', '2016-02-03 15:41:05', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-02-03 16:53:48', '2016-02-03 15:53:48', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n<p>\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \r\n</p>\r\n</div>\r\n\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 16:53:48', '2016-02-03 15:53:48', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-02-03 17:19:50', '2016-02-03 16:19:50', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n<p>\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \r\n</p>\r\n</div>\r\n\r\n<div class="ad-home-contact-form">\r\n<input type="text" name="imie" required>\r\n<input type="email" name="email" required>\r\n<textarea name="wiadomosc"></textarea>\r\n</div>\r\n\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 17:19:50', '2016-02-03 16:19:50', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-02-03 17:24:59', '2016-02-03 16:24:59', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n<p>\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \r\n</p>\r\n\r\n\r\n<div class="ad-home-contact-form">\r\n<input type="text" name="imie" required>\r\n<input type="email" name="email" required>\r\n<textarea name="wiadomosc"></textarea>\r\n</div>\r\n\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 17:24:59', '2016-02-03 16:24:59', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-02-03 17:29:35', '2016-02-03 16:29:35', '<div class="ad-home-wrapper">\r\n<img src="/wp-content/uploads/2016/02/home-backgroud.jpg" alt="home-backgroud" width="590" height="400" class="ad-home-background" />\r\n\r\n<div class="ad-home-overlay">\r\n<h3>Napisz do nas</h3>\r\n<p>\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally \r\n</p>\r\n\r\n\r\n<div class="ad-home-contact-form">\r\n<input type="text" name="imie" required><input type="email" name="email" required>\r\n<textarea name="wiadomosc"></textarea>\r\n</div>\r\n\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-02-03 17:29:35', '2016-02-03 16:29:35', '', 28, 'http://endodent.dev/2016/02/03/28-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Menu główne', 'menu-glowne', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(12, 2, 0),
(15, 2, 0),
(18, 2, 0),
(21, 2, 0),
(24, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrator'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"872567ffe858f4b6d720966262321985ca091f91ba5f8c7d1de47f37e5bc022f";a:4:{s:10:"expiration";i:1454597226;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36";s:5:"login";i:1454424426;}s:64:"23c81ef61ff6346faeb29f6659c27e88b8c7d1bb219e64258a78c867c702baad";a:4:{s:10:"expiration";i:1454651926;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:103:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36";s:5:"login";i:1454479126;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&imgsize=full'),
(19, 1, 'wp_user-settings-time', '1454480953'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrator', '$P$BVM53xnv.bcVz1AT1WhCM4EjkMaA6T1', 'administrator', 'archangel.raffael@gmail.com', '', '2016-02-02 14:30:54', '', 0, 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
