-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.25 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for view speicalstock07.active_sessions
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `active_sessions` (
	`session_id` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`user_name` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`role` ENUM('buyer','seller','admin') NULL COLLATE 'utf8_bin',
	`ip_address` VARCHAR(45) NOT NULL COLLATE 'utf8_bin',
	`last_activity` TIMESTAMP NULL,
	`minutes_inactive` BIGINT(19) NULL
) ENGINE=MyISAM;

-- Dumping structure for table speicalstock07.admin_logs
CREATE TABLE IF NOT EXISTS `admin_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int unsigned NOT NULL,
  `action` varchar(100) COLLATE utf8_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8_bin NOT NULL,
  `target_id` int unsigned NOT NULL,
  `old_data` json DEFAULT NULL,
  `new_data` json DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL,
  `user_agent` text COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_admin_id` (`admin_id`),
  KEY `idx_action` (`action`),
  KEY `idx_target` (`target_type`,`target_id`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `admin_logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.admin_logs: ~19 rows (approximately)
/*!40000 ALTER TABLE `admin_logs` DISABLE KEYS */;
INSERT INTO `admin_logs` (`id`, `admin_id`, `action`, `target_type`, `target_id`, `old_data`, `new_data`, `ip_address`, `user_agent`, `created_at`) VALUES
	(1, 1, 'approve_asset', 'asset', 1, '{"status": "pending"}', '{"notes": "", "status": "approved"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-02 17:39:19'),
	(2, 1, 'reject_asset', 'asset', 2, '{"status": "pending"}', '{"notes": "test reject", "status": "rejected"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-02 17:42:15'),
	(3, 1, 'approve_asset', 'asset', 4, '{"status": "pending"}', '{"notes": "", "status": "approved"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-17 10:18:07'),
	(4, 1, 'approve_asset', 'asset', 2, '{"status": "pending"}', '{"notes": "", "status": "approved"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 22:08:03'),
	(5, 1, 'add_content', 'asset', 5, NULL, '{"title": "chamathka prasad image", "status": "approved", "seller_id": 1, "seller_name": "Administrator", "auto_watermark": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-21 15:25:47'),
	(6, 1, 'add_content', 'asset', 6, NULL, '{"title": "Kennedy\'s Hope and Mourning_simple_compose", "status": "approved", "seller_id": 1, "seller_name": "Administrator", "auto_watermark": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-21 15:31:32'),
	(7, 1, 'unverify_email', 'user', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-21 15:47:25'),
	(8, 1, 'add_content', 'asset', 7, NULL, '{"title": "teajfda", "status": "approved", "seller_id": 3, "seller_name": "chamathka prasad", "auto_watermark": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-30 22:51:28'),
	(9, 1, 'add_content', 'asset', 8, NULL, '{"title": "sdsadsada", "status": "approved", "seller_id": 1, "seller_name": "Administrator", "auto_watermark": 1, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 08:36:53'),
	(10, 1, 'add_content', 'asset', 9, NULL, '{"title": "test image 2", "status": "approved", "seller_id": 1, "seller_name": "Administrator", "auto_watermark": 1, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 12:03:45'),
	(11, 1, 'add_content', 'asset', 10, NULL, '{"title": "video watermakd", "status": "approved", "seller_id": 1, "seller_name": "Administrator", "auto_watermark": 1, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 12:04:46'),
	(12, 1, 'enhanced_watermark', 'asset', 2, NULL, '{"file_type": "video", "watermarking_method": "enhanced_middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 12:06:24'),
	(13, 1, 'enhanced_watermark', 'asset', 6, NULL, '{"file_type": "video", "watermarking_method": "enhanced_middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 13:38:55'),
	(14, 1, 'add_content', 'asset', 11, NULL, '{"title": "dsadsad", "status": "approved", "seller_id": 1, "categories": ["Business", "Business", "Food", "Sports"], "seller_name": "Administrator", "auto_watermark": 1, "category_count": 4, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-09 11:12:18'),
	(15, 1, 'enhanced_watermark', 'asset', 11, NULL, '{"file_type": "image", "watermarking_method": "enhanced_middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-09 13:26:10'),
	(16, 1, 'add_content', 'asset', 12, NULL, '{"title": "dsad", "status": "approved", "seller_id": 1, "categories": ["Abstract", "Abstract", "Food"], "seller_name": "Administrator", "auto_watermark": 1, "category_count": 3, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-14 12:54:59'),
	(17, 1, 'add_content', 'asset', 13, NULL, '{"title": "sdasd", "status": "approved", "seller_id": 1, "categories": ["Business", "Business", "Food"], "seller_name": "Administrator", "auto_watermark": 1, "category_count": 3, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-14 12:58:13'),
	(18, 1, 'add_content', 'asset', 14, NULL, '{"title": "xczc dasda", "status": "approved", "seller_id": 1, "categories": ["Abstract", "Abstract", "Business", "Food"], "seller_name": "Administrator", "auto_watermark": 1, "category_count": 4, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-14 13:02:57'),
	(19, 1, 'add_content', 'asset', 15, NULL, '{"title": "xzxZ cdasd", "status": "approved", "seller_id": 1, "categories": ["Abstract", "Abstract", "Food", "Travel"], "seller_name": "Administrator", "auto_watermark": 1, "category_count": 4, "watermark_position": "middle_right"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-14 13:18:38');
/*!40000 ALTER TABLE `admin_logs` ENABLE KEYS */;

-- Dumping structure for procedure speicalstock07.ApproveAsset
DELIMITER //
CREATE PROCEDURE `ApproveAsset`(
    IN asset_id INT, 
    IN admin_id INT, 
    IN watermarked_path VARCHAR(500),
    IN thumbnail_path VARCHAR(500)
)
BEGIN
    UPDATE assets 
    SET 
        status = 'approved',
        reviewed_by = admin_id,
        reviewed_at = NOW(),
        watermarked_path = watermarked_path,
        thumbnail_path = thumbnail_path
    WHERE id = asset_id;
    
    -- Log the approval
    INSERT INTO admin_logs (admin_id, action, target_type, target_id, ip_address)
    VALUES (admin_id, 'approve_asset', 'asset', asset_id, '0.0.0.0');
END//
DELIMITER ;

-- Dumping structure for table speicalstock07.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `tags` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `original_filename` varchar(255) COLLATE utf8_bin NOT NULL,
  `file_path` varchar(500) COLLATE utf8_bin NOT NULL,
  `watermarked_path` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `thumbnail_path` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `file_type` enum('image','video') COLLATE utf8_bin NOT NULL,
  `file_size` bigint unsigned NOT NULL,
  `mime_type` varchar(100) COLLATE utf8_bin NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8_bin DEFAULT 'pending',
  `admin_notes` text COLLATE utf8_bin,
  `reviewed_by` int unsigned DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `view_count` int unsigned DEFAULT '0',
  `download_count` int unsigned DEFAULT '0',
  `like_count` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `reviewed_by` (`reviewed_by`),
  KEY `idx_seller_id` (`seller_id`),
  KEY `idx_status` (`status`),
  KEY `idx_file_type` (`file_type`),
  KEY `idx_price` (`price`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_view_count` (`view_count`),
  KEY `idx_download_count` (`download_count`),
  KEY `idx_assets_seller_status` (`seller_id`,`status`),
  KEY `idx_assets_status_created` (`status`,`created_at`),
  FULLTEXT KEY `idx_search` (`title`,`description`,`tags`,`keywords`),
  CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assets_ibfk_3` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.assets: ~19 rows (approximately)
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`, `seller_id`, `title`, `description`, `tags`, `keywords`, `price`, `original_filename`, `file_path`, `watermarked_path`, `thumbnail_path`, `file_type`, `file_size`, `mime_type`, `width`, `height`, `duration`, `status`, `admin_notes`, `reviewed_by`, `reviewed_at`, `view_count`, `download_count`, `like_count`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Watermarked Preview', 'dsdsd adasda dsadasdad', 'business,university,chamaht,bmw,bbaas,ai', 'sdasd,dsdasd,dasda,dsda', 2.00, '20250701_1348_Leafy Street Scene_remix_01jz2gyg27f4aby43j36rb7bex.png', 'assets/original/20250701_1348_Leafy_Street_Scene_remix_01jz2gyg27f4aby43j36rb7bex_1754124414_e5f1096a.png', 'assets/watermarked/wm_20250701_1348_Leafy_Street_Scene_remix_01jz2gyg27f4aby43j36rb7bex_1754124414_e5f1096a.png', 'assets/thumbnails/thumb_20250701_1348_Leafy_Street_Scene_remix_01jz2gyg27f4aby43j36rb7bex_1754124414_e5f1096a.jpg', 'image', 3101707, 'image/png', 1536, 1024, NULL, 'approved', '', 1, '2025-08-02 17:39:19', 28, 0, 0, '2025-08-02 14:16:54', '2025-09-25 12:44:33'),
	(2, 3, 'Remembering Tiananmen Square Simple Compos', 'fcadadasdasdasd sdsadsd d d  sada dsda dads dsda a sas sas', 'business,university,chamaht,bmw,bbaas,banana,ai', 'sdasd,dsdasd,dasda,dsda', 0.00, '20250602_1709_Remembering Tiananmen Square_simple_compose_01jwr70c1tfd5v8ny0fh7qqdj8.mp4', 'assets/original/20250602_1709_Remembering_Tiananmen_Square_simple_compose_01jwr70c1tfd5v8ny0fh7qqdj8_1754126381_14983ee3.mp4', 'assets/watermarked/wm_20250602_1709_Remembering_Tiananmen_Square_simple_compose_01jwr70c1tfd5v8ny0fh7qqdj8_1754126381_14983ee3.mp4', 'assets/thumbnails/thumb_20250602_1709_Remembering_Tiananmen_Square_simple_compose_01jwr70c1tfd5v8ny0fh7qqdj8_1754126381_14983ee3.jpg', 'video', 6090410, 'video/mp4', NULL, NULL, NULL, 'approved', '', 1, '2025-08-19 22:37:32', 7, 1, 0, '2025-08-02 14:49:41', '2025-09-22 19:21:50'),
	(3, 3, 'Golden Gate Engineering Marvel Simple', 'cdsadn dasd sa dasdas dasdsad dsadas sadasd', 'business,university,chamaht,bmw,bbaas,ai', 'sdasd,dsdasd,dasda,dsda', 0.00, '20250602_1703_Golden Gate Engineering Marvel_simple_compose_01jwr6nxvsf5vt56wgj1sf5e9f.mp4', 'assets/original/20250602_1703_Golden_Gate_Engineering_Marvel_simple_compose_01jwr6nxvsf5vt56wgj1sf5e9f_1754156860_591953dc.mp4', 'assets/watermarked/wm_20250602_1703_Golden_Gate_Engineering_Marvel_simple_compose_01jwr6nxvsf5vt56wgj1sf5e9f_1754156860_591953dc.mp4', 'assets/thumbnails/thumb_20250602_1703_Golden_Gate_Engineering_Marvel_simple_compose_01jwr6nxvsf5vt56wgj1sf5e9f_1754156860_591953dc.jpg', 'video', 10111388, 'video/mp4', NULL, NULL, NULL, 'approved', NULL, 1, '2025-08-02 23:20:17', 21, 3, 0, '2025-08-02 23:17:40', '2025-09-22 19:21:55'),
	(4, 3, 'Tourist image Sri lnaka', 'bla bla bla bla', 'natu, moun, budf,fafa,faaa,aaas,asas,ai', 'natu, moun, budf,fafa,faaa,aaas,asas', 0.00, 'IMG_7311.jpg', 'assets/original/IMG_7311_1755403617_daf952d3.jpg', 'assets/watermarked/wm_IMG_7311_1755403617_daf952d3.jpg', 'assets/thumbnails/thumb_IMG_7311_1755403617_daf952d3.jpg', 'image', 2483045, 'image/jpeg', 3024, 4032, NULL, 'approved', '', 1, '2025-08-17 10:18:07', 16, 2, 0, '2025-08-17 09:36:58', '2025-10-09 11:13:37'),
	(5, 1, 'chamathka prasad image', 'Start with a first-rate IT & Development job description. Use our job description templates to:  demonstrate understanding of the technical skill-set and knowledge you’re looking for provide a checklist of duties and responsibilities associated with the job demonstrate that you’re willing to invest in software development talent. Job description set, prepare for the next step with our IT & development interview questions. Can’t find the job description you need? See related positions in Engineering or Logistics.', 'business,university,chamaht,bmw,bbaas,banana,ai', NULL, 0.00, '20250528_1916_Imperial Command_simple_compose_01jwbj8wr3e24vw2szg88769ah.mp4', '20250528_1916_Imperial_Command_simple_compose_01jwbj8wr3e24vw2szg88769ah_1755770147_2eeac332.mp4', 'assets/watermarked/wm_20250528_1916_Imperial_Command_simple_compose_01jwbj8wr3e24vw2szg88769ah_1755770147_2eeac332.mp4', 'assets/thumbnails/thumb_20250528_1916_Imperial_Command_simple_compose_01jwbj8wr3e24vw2szg88769ah_1755770147_2eeac332.jpg', 'video', 9710132, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-08-21 09:55:47', 5, 3, 0, '2025-08-21 09:55:47', '2025-09-26 09:57:06'),
	(6, 1, 'Kennedy\'s Hope and Mourning_simple_compose', 'Start with a first-rate IT & Development job description. Use our job description templates to:  demonstrate understanding of the technical skill-set and knowledge you’re looking for provide a checklist of duties and responsibilities associated with the job demonstrate that you’re willing to invest in software development talent. Job description set, prepare for the next step with our IT & development interview questions. Can’t find the job description you need? See related positions in Engineering or Logistics.', 'business,university,chamaht,bmw,bbaas,banana', NULL, 2.00, '20250602_1646_Kennedy\'s Hope and Mourning_simple_compose_01jwr5pq42fr79eb3hqanv5w3j.mp4', '20250602_1646_Kennedy_s_Hope_and_Mourning_simple_compose_01jwr5pq42fr79eb3hqanv5w3j_1755770492_dc09c73d.mp4', 'assets/watermarked/wm_20250602_1646_Kennedy_s_Hope_and_Mourning_simple_compose_01jwr5pq42fr79eb3hqanv5w3j_1755770492_dc09c73d.mp4', 'assets/thumbnails/thumb_20250602_1646_Kennedy_s_Hope_and_Mourning_simple_compose_01jwr5pq42fr79eb3hqanv5w3j_1755770492_dc09c73d.jpg', 'video', 4682510, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-08-21 10:01:32', 8, 0, 0, '2025-08-21 10:01:32', '2025-10-09 12:45:15'),
	(7, 3, 'teajfda', 'fasfasf', 'sfasdaf afdasd', NULL, 0.00, 'Gemini_Generated_Image_hb58qjhb58qjhb58.jpeg', 'Gemini_Generated_Image_hb58qjhb58qjhb58_1756574488_ff898e9d.jpeg', 'assets/watermarked/wm_Gemini_Generated_Image_hb58qjhb58qjhb58_1756574488_ff898e9d.jpeg', 'assets/thumbnails/thumb_Gemini_Generated_Image_hb58qjhb58qjhb58_1756574488_ff898e9d.jpg', 'image', 1216514, 'image/jpeg', 2048, 2048, NULL, 'approved', 'Auto-approved by admin on upload', 1, '2025-08-30 17:21:28', 5, 2, 0, '2025-08-30 17:21:28', '2025-09-22 10:54:52'),
	(8, 1, 'sdsadsada', 'dasdad', 'csda,dsdsa,dsda,dsda', NULL, 0.00, 'Gemini_Generated_Image_is04evis04evis04.png', 'Gemini_Generated_Image_is04evis04evis04_1758251213_6dbc2c88.png', 'assets/watermarked/wm_Gemini_Generated_Image_is04evis04evis04_1758251213_6dbc2c88.png', 'assets/thumbnails/thumb_Gemini_Generated_Image_is04evis04evis04_1758251213_6dbc2c88.jpg', 'image', 1572426, 'image/png', 1024, 1024, NULL, 'approved', 'Auto-approved by admin on upload', 1, '2025-09-19 03:06:53', 6, 0, 0, '2025-09-19 03:06:53', '2025-09-28 13:31:23'),
	(9, 1, 'test image 2', 'sdsad dasd  dada sdsad sdsada', 'csda,dsdsa,dsda,dsda', NULL, 0.00, 'Gemini_Generated_Image_tzkmmdtzkmmdtzkm.png', 'Gemini_Generated_Image_tzkmmdtzkmmdtzkm_1758263625_4bf0d407.png', 'assets/watermarked/wm_Gemini_Generated_Image_tzkmmdtzkmmdtzkm_1758263625_4bf0d407.png', 'assets/thumbnails/thumb_Gemini_Generated_Image_tzkmmdtzkmmdtzkm_1758263625_4bf0d407.jpg', 'image', 2098599, 'image/png', 1024, 1024, NULL, 'approved', 'Auto-approved by admin on upload', 1, '2025-09-19 06:33:45', 4, 2, 0, '2025-09-19 06:33:45', '2025-10-09 17:42:15'),
	(10, 1, 'video watermakd', 'dasd dasd dsad dasda', 'csda,dsdsa,dsda,dsda', NULL, 0.00, 'webhero3.mp4', 'webhero3_1758263686_23875503.mp4', 'assets/watermarked/wm_webhero3_1758263686_23875503.mp4', 'assets/thumbnails/thumb_webhero3_1758263686_23875503.jpg', 'video', 2782218, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-09-19 06:34:46', 4, 0, 0, '2025-09-19 06:34:46', '2025-10-14 12:18:36'),
	(11, 1, 'dsadsad', 'dasdad dadasd dasda', 'dsad, dasd, dsd, as', NULL, 0.00, 'microsoft-logo-png-2396.png', 'microsoft-logo-png-2396_1759988538_dee43c34.png', 'assets/watermarked/wm_microsoft-logo-png-2396_1759988538_dee43c34.png', 'assets/thumbnails/thumb_microsoft-logo-png-2396_1759988538_dee43c34.jpg', 'image', 46043, 'image/png', 5471, 1280, NULL, 'approved', 'Auto-approved by admin on upload', 1, '2025-10-09 05:42:18', 2, 0, 0, '2025-10-09 05:42:18', '2025-10-09 17:42:33'),
	(12, 1, 'dsad', 'dasdad', '', NULL, 0.00, 'acedemyhero.mp4', 'acedemyhero_1760426699_64198a3d.mp4', 'assets/watermarked/wm_acedemyhero_1760426699_64198a3d.mp4', 'assets/thumbnails/thumb_acedemyhero_1760426699_64198a3d.jpg', 'video', 4894149, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-10-14 07:24:59', 0, 0, 0, '2025-10-14 07:24:59', '2025-10-14 12:55:12'),
	(13, 1, 'sdasd', 'dasda \r\nsdasd\r\nasdas\r\ndad\r\na', 'dsad, dasd, da, asda', NULL, 0.00, 'Video_Generation_Confirmation.mp4', 'Video_Generation_Confirmation_1760426893_3db1364d.mp4', NULL, NULL, 'video', 6609330, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-10-14 07:28:13', 0, 0, 0, '2025-10-14 07:28:13', '2025-10-14 12:58:13'),
	(14, 1, 'xczc dasda', 'sada adasdsd dsadada', 'da, d, ad, adadasd', NULL, 0.00, 'WhatsApp_Image_2019-12-23_at_09.25.53 (1).webp', 'WhatsApp_Image_2019-12-23_at_09_25_53__1__1760427177_2d8f74f7.webp', 'assets/watermarked/wm_WhatsApp_Image_2019-12-23_at_09_25_53__1__1760427177_2d8f74f7.webp', 'assets/thumbnails/thumb_WhatsApp_Image_2019-12-23_at_09_25_53__1__1760427177_2d8f74f7.jpg', 'image', 141878, 'image/webp', 1280, 853, NULL, 'approved', 'Auto-approved by admin on upload', 1, '2025-10-14 07:32:57', 1, 0, 0, '2025-10-14 07:32:57', '2025-10-14 13:32:01'),
	(15, 1, 'xzxZ cdasd', 'asdada adasdas\r\ndasd', 'dsdsa, dsad, da, das, dsada', NULL, 0.00, 'Video_Generation_Confirmation.mp4', 'Video_Generation_Confirmation_1760428118_eee1c0cd.mp4', NULL, NULL, 'video', 6609330, 'video/mp4', 1920, 1080, 60, 'approved', 'Auto-approved by admin on upload', 1, '2025-10-14 07:48:38', 0, 0, 0, '2025-10-14 07:48:38', '2025-10-14 13:18:38'),
	(16, 3, 'Gemini Generated Image 7pr8h47pr8h47pr8  1', 'dsdad dasd dada f asd as d asfdasd', 'dasd, dsad, adadaf, dadas, dadasd', 'dsad,dsad,dasd,asda', 0.00, 'Gemini_Generated_Image_7pr8h47pr8h47pr8__1_.png', 'assets/original/Gemini_Generated_Image_7pr8h47pr8h47pr8_1_1760442321_4457a362.png', NULL, NULL, 'image', 1451304, 'image/png', 1024, 1024, NULL, 'pending', NULL, NULL, NULL, 0, 0, 0, '2025-10-14 17:15:21', '2025-10-14 17:15:21'),
	(17, 3, 'Gemini Generated Image 7pr8h47pr8h47pr8  1', 'dsdad dasd dada f asd as d asfdasd', 'dasd, dsad, adadaf, dadas, dadasd', 'dsad,dsad,dasd,asda', 0.00, 'Gemini_Generated_Image_7pr8h47pr8h47pr8__1_.png', 'assets/original/Gemini_Generated_Image_7pr8h47pr8h47pr8_1_1760442609_b5fe09ea.png', NULL, NULL, 'image', 1451304, 'image/png', 1024, 1024, NULL, 'pending', NULL, NULL, NULL, 0, 0, 0, '2025-10-14 17:20:09', '2025-10-14 17:20:09'),
	(18, 3, 'WhatsApp Image 2025 10 09 At 13.41.39', 'cscaca dasdasd dad dasda', 'dasd, dasds, dada, sada, afaga, fafa', 'dasd,dasd,ad,da,da,dad,a,da', 0.00, 'WhatsApp Image 2025-10-09 at 13.41.39.jpeg', 'assets/original/WhatsApp_Image_2025-10-09_at_13_41_39_1760442688_c9970292.jpeg', NULL, NULL, 'image', 86949, 'image/jpeg', 1280, 731, NULL, 'pending', NULL, NULL, NULL, 0, 0, 0, '2025-10-14 17:21:28', '2025-10-14 17:21:28'),
	(19, 3, 'Video Generation Confirmation', 'dsdas dasda adad adad', 'dad, dads, ad, a, da, daddad', 'dsad,dsad,dasd,asda', 0.00, 'Video_Generation_Confirmation.mp4', 'assets/original/Video_Generation_Confirmation_1760442963_9e908d4c.mp4', NULL, NULL, 'video', 6609330, 'video/mp4', 1920, 1080, 60, 'pending', NULL, NULL, NULL, 0, 0, 0, '2025-10-14 17:26:03', '2025-10-14 17:26:03');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.asset_categories
CREATE TABLE IF NOT EXISTS `asset_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_asset_category` (`asset_id`,`category_id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_category_id` (`category_id`),
  CONSTRAINT `asset_categories_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `asset_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Junction table linking assets to multiple categories';

-- Dumping data for table speicalstock07.asset_categories: ~34 rows (approximately)
/*!40000 ALTER TABLE `asset_categories` DISABLE KEYS */;
INSERT INTO `asset_categories` (`id`, `asset_id`, `category_id`, `created_at`) VALUES
	(1, 9, 1, '2025-10-09 10:17:12'),
	(2, 1, 2, '2025-10-09 10:17:12'),
	(3, 7, 2, '2025-10-09 10:17:12'),
	(4, 8, 2, '2025-10-09 10:17:12'),
	(5, 10, 2, '2025-10-09 10:17:12'),
	(6, 2, 3, '2025-10-09 10:17:12'),
	(7, 5, 4, '2025-10-09 10:17:12'),
	(8, 6, 6, '2025-10-09 10:17:12'),
	(9, 3, 7, '2025-10-09 10:17:12'),
	(10, 4, 7, '2025-10-09 10:17:12'),
	(16, 11, 2, '2025-10-09 05:42:18'),
	(18, 11, 6, '2025-10-09 05:42:18'),
	(19, 11, 8, '2025-10-09 05:42:18'),
	(20, 12, 5, '2025-10-14 07:24:59'),
	(22, 12, 6, '2025-10-14 07:24:59'),
	(23, 13, 2, '2025-10-14 07:28:13'),
	(25, 13, 6, '2025-10-14 07:28:13'),
	(26, 14, 5, '2025-10-14 07:32:57'),
	(28, 14, 2, '2025-10-14 07:32:57'),
	(29, 14, 6, '2025-10-14 07:32:57'),
	(30, 15, 5, '2025-10-14 07:48:38'),
	(32, 15, 6, '2025-10-14 07:48:38'),
	(33, 15, 7, '2025-10-14 07:48:38'),
	(34, 16, 9, '2025-10-14 17:15:21'),
	(35, 16, 3, '2025-10-14 17:15:21'),
	(36, 16, 8, '2025-10-14 17:15:21'),
	(37, 17, 9, '2025-10-14 17:20:09'),
	(38, 17, 3, '2025-10-14 17:20:09'),
	(39, 17, 8, '2025-10-14 17:20:09'),
	(40, 18, 9, '2025-10-14 17:21:28'),
	(41, 18, 3, '2025-10-14 17:21:28'),
	(42, 18, 8, '2025-10-14 17:21:28'),
	(43, 19, 1, '2025-10-14 17:26:03'),
	(44, 19, 2, '2025-10-14 17:26:03');
/*!40000 ALTER TABLE `asset_categories` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.asset_likes
CREATE TABLE IF NOT EXISTS `asset_likes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `asset_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_like` (`user_id`,`asset_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_asset_id` (`asset_id`),
  CONSTRAINT `asset_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `asset_likes_ibfk_2` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.asset_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `asset_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_likes` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.cart_items
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `asset_id` int unsigned NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_cart_item` (`session_id`,`asset_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_added_at` (`added_at`),
  KEY `idx_cart_user_session` (`user_id`,`session_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.cart_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `slug` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_slug` (`slug`),
  KEY `idx_active` (`is_active`),
  KEY `idx_sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.categories: ~9 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'Nature', 'nature', 'Natural landscapes, wildlife, and outdoor scenes', 1, 0, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(2, 'Business', 'business', 'Corporate, office, and professional imagery', 1, 1, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(3, 'Technology', 'technology', 'Tech-related images and concepts', 1, 2, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(4, 'People', 'people', 'Portraits, lifestyle, and human-centered content', 1, 3, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(5, 'Abstract', 'abstract', 'Artistic and conceptual imagery', 1, 4, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(6, 'Food', 'food', 'Culinary and food-related photography', 1, 5, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(7, 'Travel', 'travel', 'Destinations, landmarks, and travel photography', 1, 7, '2025-08-02 12:51:48', '2025-08-02 12:51:48'),
	(8, 'Sports', 'sports', 'Athletic and sports-related content', 1, 6, '2025-08-02 12:51:48', '2025-10-13 22:01:29'),
	(9, 'fsada', 'fsadaadas', 'dsdasdas', 1, 0, '2025-10-13 22:05:28', '2025-10-13 22:05:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for procedure speicalstock07.CheckFailedLoginAttempts
DELIMITER //
CREATE PROCEDURE `CheckFailedLoginAttempts`(IN email_addr VARCHAR(255), IN ip_addr VARCHAR(45))
BEGIN
    SELECT 
        COUNT(*) as attempts_by_email,
        (SELECT COUNT(*) FROM failed_login_attempts 
         WHERE ip_address = ip_addr 
         AND attempted_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)) as attempts_by_ip
    FROM failed_login_attempts 
    WHERE email = email_addr 
    AND attempted_at > DATE_SUB(NOW(), INTERVAL 1 HOUR);
END//
DELIMITER ;

-- Dumping structure for procedure speicalstock07.CleanExpiredTokens
DELIMITER //
CREATE PROCEDURE `CleanExpiredTokens`()
BEGIN
    DELETE FROM password_resets WHERE expires_at < NOW();
    DELETE FROM email_verifications WHERE expires_at < NOW() AND verified_at IS NULL;
    DELETE FROM cart_items WHERE added_at < DATE_SUB(NOW(), INTERVAL 30 DAY);
END//
DELIMITER ;

-- Dumping structure for procedure speicalstock07.CleanupAuthTokens
DELIMITER //
CREATE PROCEDURE `CleanupAuthTokens`()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    -- Clean expired remember tokens
    DELETE FROM user_remember_tokens WHERE expires_at < NOW();
    
    -- Clean expired password reset tokens
    DELETE FROM password_resets WHERE expires_at < NOW();
    
    -- Clean expired email verification tokens
    DELETE FROM email_verifications WHERE expires_at < NOW() AND verified_at IS NULL;
    
    -- Clean old failed login attempts (older than 24 hours)
    DELETE FROM failed_login_attempts WHERE attempted_at < DATE_SUB(NOW(), INTERVAL 24 HOUR);
    
    -- Clean old user activity logs (older than 90 days)
    DELETE FROM user_activity_logs WHERE created_at < DATE_SUB(NOW(), INTERVAL 90 DAY);
    
    -- Clean inactive sessions (older than 30 days)
    DELETE FROM user_sessions WHERE last_activity < DATE_SUB(NOW(), INTERVAL 30 DAY);
    
    COMMIT;
END//
DELIMITER ;

-- Dumping structure for table speicalstock07.collections
CREATE TABLE IF NOT EXISTS `collections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `cover_image_path` varchar(500) DEFAULT NULL,
  `cover_image_id` int unsigned DEFAULT NULL,
  `is_ai_generated` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int DEFAULT '0',
  `meta_tags` varchar(500) DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `cover_image_id` (`cover_image_id`),
  KEY `idx_slug` (`slug`),
  KEY `idx_active` (`is_active`),
  KEY `idx_ai_generated` (`is_ai_generated`),
  KEY `idx_sort_order` (`sort_order`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_name` (`name`),
  KEY `idx_collections_active_sort` (`is_active`,`sort_order`),
  KEY `idx_collections_ai_active` (`is_ai_generated`,`is_active`),
  KEY `idx_cover_image_path` (`cover_image_path`),
  CONSTRAINT `collections_ibfk_1` FOREIGN KEY (`cover_image_id`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  CONSTRAINT `collections_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Main collections for organizing assets';

-- Dumping data for table speicalstock07.collections: ~7 rows (approximately)
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` (`id`, `name`, `slug`, `description`, `cover_image_path`, `cover_image_id`, `is_ai_generated`, `is_active`, `sort_order`, `meta_tags`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'AI Generated Portraits', 'ai-generated-portraits', 'Professional AI-created portrait photography with stunning realism', '/assets/covers/Gemini_Generated_Image_rcklwqrcklwqrckl_1758700835_be764e50.png', NULL, 1, 1, 1, 'AI, portraits, artificial intelligence, headshots, professional', 1, '2025-09-24 08:39:16', '2025-09-24 13:30:36'),
	(2, 'Nature Photography', 'nature-photography', 'Breathtaking natural landscapes and wildlife photography', NULL, NULL, 1, 1, 2, 'nature, landscape, wildlife, outdoor, natural', 1, '2025-09-24 08:39:16', '2025-09-24 13:50:32'),
	(3, 'Abstract Digital Art', 'abstract-digital-art', 'Modern abstract artworks created with digital tools and AI assistance', '/assets/covers/Gemini_Generated_Image_uj0jcluj0jcluj0j_1758717347_ee5a26d9.png', NULL, 1, 1, 3, 'abstract, digital art, modern, AI, creative', 1, '2025-09-24 08:39:16', '2025-09-24 18:05:48'),
	(4, 'Business Stock Photos', 'business-stock-photos', 'Professional business and corporate photography for commercial use', NULL, NULL, 0, 1, 4, 'business, corporate, professional, office, commercial', 1, '2025-09-24 08:39:16', '2025-09-24 08:39:16'),
	(5, 'AI Fashion & Style', 'ai-fashion-style', 'Fashion photography and style shots created using AI technology', NULL, NULL, 1, 1, 5, 'fashion, style, AI, clothing, models', 1, '2025-09-24 08:39:16', '2025-09-24 08:39:16'),
	(6, 'chamathka test collection', 'chamathka-test-collection', 'dadasd dasda dasdas', '/assets/covers/cover_68d39f37142c8_1758699319.png', NULL, 0, 1, 0, 'dsad,dsad,dasda,dsada,dda', 1, '2025-09-24 13:05:20', '2025-09-24 13:05:20'),
	(7, 'chamathka test collection', 'chamathka-test-collection-1', 'dadasd dasda dasdas', '/assets/covers/Gemini_Generated_Image_qgc3vbqgc3vbqgc3_1758708050_25a58c4a.png', NULL, 1, 1, 0, 'dsad,dsad,dasda,dsada,dda', 1, '2025-09-24 13:09:31', '2025-09-24 15:30:51');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.collections_with_stats
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `collections_with_stats` (
	`id` INT(10) UNSIGNED NOT NULL,
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`slug` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`description` TEXT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`cover_image_id` INT(10) UNSIGNED NULL,
	`is_ai_generated` TINYINT(1) NULL,
	`is_active` TINYINT(1) NULL,
	`sort_order` INT(10) NULL,
	`meta_tags` VARCHAR(500) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`created_by` INT(10) UNSIGNED NOT NULL,
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL,
	`asset_count` BIGINT(19) NOT NULL,
	`created_by_name` VARCHAR(255) NULL COLLATE 'utf8_bin',
	`cover_image_title` VARCHAR(255) NULL COLLATE 'utf8_bin',
	`cover_image_path` VARCHAR(500) NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Dumping structure for table speicalstock07.collection_assets
CREATE TABLE IF NOT EXISTS `collection_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int unsigned NOT NULL,
  `asset_id` int unsigned NOT NULL,
  `position_order` int DEFAULT '0',
  `added_by` int unsigned NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_asset` (`collection_id`,`asset_id`),
  KEY `idx_collection_id` (`collection_id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_position_order` (`position_order`),
  KEY `idx_added_by` (`added_by`),
  KEY `idx_collection_assets_collection_order` (`collection_id`,`position_order`),
  CONSTRAINT `collection_assets_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collection_assets_ibfk_2` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collection_assets_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Junction table linking collections to assets';

-- Dumping data for table speicalstock07.collection_assets: ~6 rows (approximately)
/*!40000 ALTER TABLE `collection_assets` DISABLE KEYS */;
INSERT INTO `collection_assets` (`id`, `collection_id`, `asset_id`, `position_order`, `added_by`, `added_at`) VALUES
	(1, 1, 4, 1, 1, '2025-09-24 09:50:11'),
	(2, 5, 4, 2, 1, '2025-09-24 12:45:20'),
	(3, 5, 3, 3, 1, '2025-09-24 12:45:20'),
	(4, 5, 2, 1, 1, '2025-09-24 12:45:20'),
	(8, 1, 10, 2, 1, '2025-09-24 12:54:06'),
	(9, 1, 7, 3, 1, '2025-09-24 12:54:06');
/*!40000 ALTER TABLE `collection_assets` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.collection_assets_detail
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `collection_assets_detail` (
	`collection_asset_id` INT(10) UNSIGNED NOT NULL,
	`collection_id` INT(10) UNSIGNED NOT NULL,
	`asset_id` INT(10) UNSIGNED NOT NULL,
	`position_order` INT(10) NULL,
	`added_at` TIMESTAMP NULL,
	`collection_name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`asset_title` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`file_type` ENUM('image','video') NOT NULL COLLATE 'utf8_bin',
	`price` DECIMAL(10,2) NOT NULL,
	`asset_status` ENUM('pending','approved','rejected') NULL COLLATE 'utf8_bin',
	`seller_name` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`added_by_name` VARCHAR(255) NOT NULL COLLATE 'utf8_bin'
) ENGINE=MyISAM;

-- Dumping structure for table speicalstock07.collection_views
CREATE TABLE IF NOT EXISTS `collection_views` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text,
  `viewed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_collection_id` (`collection_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_viewed_at` (`viewed_at`),
  KEY `idx_ip_address` (`ip_address`),
  KEY `idx_collection_views_collection_date` (`collection_id`,`viewed_at`),
  CONSTRAINT `collection_views_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collection_views_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Track collection page views for analytics';

-- Dumping data for table speicalstock07.collection_views: ~21 rows (approximately)
/*!40000 ALTER TABLE `collection_views` DISABLE KEYS */;
INSERT INTO `collection_views` (`id`, `collection_id`, `user_id`, `ip_address`, `user_agent`, `viewed_at`) VALUES
	(1, 6, NULL, '::1', NULL, '2025-09-24 23:06:51'),
	(2, 1, NULL, '::1', NULL, '2025-09-24 23:07:10'),
	(3, 1, NULL, '::1', NULL, '2025-09-24 23:07:16'),
	(4, 1, NULL, '::1', NULL, '2025-09-24 23:08:17'),
	(5, 1, NULL, '::1', NULL, '2025-09-24 23:08:42'),
	(6, 7, NULL, '::1', NULL, '2025-09-24 23:08:49'),
	(7, 3, NULL, '::1', NULL, '2025-09-24 23:08:55'),
	(8, 3, NULL, '::1', NULL, '2025-09-24 23:09:50'),
	(9, 3, NULL, '::1', NULL, '2025-09-24 23:11:23'),
	(10, 3, NULL, '::1', NULL, '2025-09-24 23:11:39'),
	(11, 3, NULL, '::1', NULL, '2025-09-24 23:11:42'),
	(12, 3, NULL, '::1', NULL, '2025-09-24 23:16:07'),
	(13, 3, NULL, '::1', NULL, '2025-09-24 23:16:34'),
	(14, 5, NULL, '::1', NULL, '2025-09-24 23:16:44'),
	(15, 1, NULL, '::1', NULL, '2025-09-24 23:16:51'),
	(16, 1, NULL, '::1', NULL, '2025-09-25 10:47:46'),
	(17, 1, NULL, '::1', NULL, '2025-09-25 11:13:50'),
	(18, 3, NULL, '::1', NULL, '2025-09-26 09:37:24'),
	(19, 1, NULL, '::1', NULL, '2025-10-09 12:16:30'),
	(20, 2, NULL, '::1', NULL, '2025-10-09 12:41:27'),
	(21, 1, NULL, '::1', NULL, '2025-10-09 12:41:52');
/*!40000 ALTER TABLE `collection_views` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.email_verifications
CREATE TABLE IF NOT EXISTS `email_verifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `expires_at` timestamp NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_token` (`token`),
  KEY `idx_expires_at` (`expires_at`),
  CONSTRAINT `email_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.email_verifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `email_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_verifications` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.failed_login_attempts
CREATE TABLE IF NOT EXISTS `failed_login_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL,
  `user_agent` text COLLATE utf8_bin,
  `attempted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_ip_address` (`ip_address`),
  KEY `idx_attempted_at` (`attempted_at`),
  KEY `idx_failed_attempts_email_time` (`email`,`attempted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.failed_login_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_login_attempts` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.failed_login_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `failed_login_summary` (
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`total_attempts` BIGINT(19) NOT NULL,
	`attempts_24h` BIGINT(19) NOT NULL,
	`attempts_1h` BIGINT(19) NOT NULL,
	`last_attempt` TIMESTAMP NULL,
	`unique_ips` BIGINT(19) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure speicalstock07.GetUserLoginStats
DELIMITER //
CREATE PROCEDURE `GetUserLoginStats`(IN user_id INT)
BEGIN
    SELECT 
        COUNT(*) as total_logins,
        MAX(created_at) as last_login,
        COUNT(CASE WHEN created_at >= DATE_SUB(NOW(), INTERVAL 30 DAY) THEN 1 END) as logins_30_days,
        COUNT(DISTINCT DATE(created_at)) as unique_login_days
    FROM user_activity_logs 
    WHERE user_id = user_id AND action = 'login';
END//
DELIMITER ;

-- Dumping structure for table speicalstock07.homepage_gallery
CREATE TABLE IF NOT EXISTS `homepage_gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int NOT NULL,
  `section` varchar(50) NOT NULL DEFAULT 'handpicked',
  `position_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `show_without_watermark` tinyint(1) DEFAULT '1',
  `featured_since` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gallery_row` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_asset_section` (`asset_id`,`section`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_section_active` (`section`,`is_active`),
  KEY `idx_position_order` (`position_order`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table speicalstock07.homepage_gallery: ~10 rows (approximately)
/*!40000 ALTER TABLE `homepage_gallery` DISABLE KEYS */;
INSERT INTO `homepage_gallery` (`id`, `asset_id`, `section`, `position_order`, `is_active`, `show_without_watermark`, `featured_since`, `created_at`, `updated_at`, `gallery_row`) VALUES
	(1, 1, 'handpicked', 3, 1, 1, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 09:07:17', 3),
	(2, 2, 'handpicked', 2, 1, 1, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 14:28:24', 3),
	(3, 3, 'handpicked', 4, 1, 0, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 09:07:34', 3),
	(4, 4, 'popular', 1, 1, 1, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 00:51:20', 1),
	(5, 5, 'popular', 3, 1, 1, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 09:07:40', 2),
	(6, 6, 'popular', 3, 1, 0, '2025-09-21 21:20:40', '2025-09-21 21:20:40', '2025-09-22 09:07:45', 3),
	(7, 10, 'handpicked', 0, 1, 1, '2025-09-22 00:50:36', '2025-09-22 00:50:36', '2025-09-22 09:06:47', 2),
	(8, 9, 'handpicked', 5, 1, 1, '2025-09-22 01:58:46', '2025-09-22 01:58:46', '2025-09-22 01:58:46', 1),
	(9, 8, 'handpicked', 6, 1, 1, '2025-09-22 01:58:51', '2025-09-22 01:58:51', '2025-09-22 09:07:56', 2),
	(10, 7, 'handpicked', 7, 1, 1, '2025-09-22 01:58:55', '2025-09-22 01:58:55', '2025-09-22 01:58:55', 1);
/*!40000 ALTER TABLE `homepage_gallery` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `expires_at` timestamp NOT NULL,
  `used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_token` (`token`),
  KEY `idx_expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.popular_assets
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `popular_assets` 
) ENGINE=MyISAM;

-- Dumping structure for view speicalstock07.popular_collections
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `popular_collections` (
	`id` INT(10) UNSIGNED NOT NULL,
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`slug` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`description` TEXT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`cover_image_id` INT(10) UNSIGNED NULL,
	`is_ai_generated` TINYINT(1) NULL,
	`is_active` TINYINT(1) NULL,
	`sort_order` INT(10) NULL,
	`meta_tags` VARCHAR(500) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`created_by` INT(10) UNSIGNED NOT NULL,
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL,
	`view_count` BIGINT(19) NOT NULL,
	`unique_viewers` BIGINT(19) NOT NULL,
	`asset_count` BIGINT(19) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for table speicalstock07.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` int unsigned NOT NULL,
  `asset_id` int unsigned NOT NULL,
  `price_paid` decimal(10,2) NOT NULL,
  `commission_amount` decimal(10,2) NOT NULL,
  `seller_amount` decimal(10,2) NOT NULL,
  `paypal_transaction_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paypal_payment_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paypal_payer_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `payment_status` enum('pending','completed','failed','refunded') COLLATE utf8_bin DEFAULT 'pending',
  `download_count` int unsigned DEFAULT '0',
  `last_downloaded_at` timestamp NULL DEFAULT NULL,
  `download_limit` int unsigned DEFAULT '10',
  `purchase_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_purchase` (`buyer_id`,`asset_id`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_paypal_transaction_id` (`paypal_transaction_id`),
  KEY `idx_payment_status` (`payment_status`),
  KEY `idx_purchase_date` (`purchase_date`),
  KEY `idx_purchases_buyer_date` (`buyer_id`,`purchase_date`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.seller_earnings
CREATE TABLE IF NOT EXISTS `seller_earnings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int unsigned NOT NULL,
  `purchase_id` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `commission_rate` decimal(5,2) NOT NULL,
  `status` enum('pending','paid','on_hold') COLLATE utf8_bin DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `payment_reference` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_seller_id` (`seller_id`),
  KEY `idx_purchase_id` (`purchase_id`),
  KEY `idx_status` (`status`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `seller_earnings_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `seller_earnings_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.seller_earnings: ~0 rows (approximately)
/*!40000 ALTER TABLE `seller_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_earnings` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.seller_stats
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `seller_stats` (
	`seller_id` INT(10) UNSIGNED NOT NULL,
	`seller_name` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`total_assets` BIGINT(19) NOT NULL,
	`approved_assets` BIGINT(19) NOT NULL,
	`pending_assets` BIGINT(19) NOT NULL,
	`total_sales` BIGINT(19) NOT NULL,
	`total_earnings` DECIMAL(32,2) NOT NULL,
	`earnings_last_30_days` DECIMAL(32,2) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure speicalstock07.UpdateAssetStats
DELIMITER //
CREATE PROCEDURE `UpdateAssetStats`(IN asset_id INT)
BEGIN
    UPDATE assets a
    SET 
        download_count = (
            SELECT COUNT(*) 
            FROM purchases p 
            WHERE p.asset_id = asset_id AND p.payment_status = 'completed'
        ),
        like_count = (
            SELECT COUNT(*) 
            FROM asset_likes al 
            WHERE al.asset_id = asset_id
        )
    WHERE a.id = asset_id;
END//
DELIMITER ;

-- Dumping structure for table speicalstock07.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `role` enum('buyer','seller','admin') COLLATE utf8_bin DEFAULT 'buyer',
  `status` enum('active','suspended','pending') COLLATE utf8_bin DEFAULT 'active',
  `profile_image` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `bio` text COLLATE utf8_bin,
  `google_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `facebook_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apple_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `seller_approved_at` timestamp NULL DEFAULT NULL,
  `seller_commission_rate` decimal(5,2) DEFAULT '30.00',
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `google_id` (`google_id`),
  UNIQUE KEY `facebook_id` (`facebook_id`),
  UNIQUE KEY `apple_id` (`apple_id`),
  KEY `idx_email` (`email`),
  KEY `idx_role` (`role`),
  KEY `idx_status` (`status`),
  KEY `idx_google_id` (`google_id`),
  KEY `idx_facebook_id` (`facebook_id`),
  KEY `idx_apple_id` (`apple_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `status`, `profile_image`, `phone`, `bio`, `google_id`, `facebook_id`, `apple_id`, `seller_approved_at`, `seller_commission_rate`, `last_login`, `email_verified_at`, `created_at`, `updated_at`) VALUES
	(1, 'admin@stockmedia.com', '$2y$10$uUThkcb5PsGc8Ielp0ftDOZ1kyCKvoQPhBv5euIQkHr8jLZINyIRW', 'Administrator', 'admin', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, '2025-10-14 06:43:04', '2025-08-02 12:51:48', '2025-08-02 12:51:48', '2025-10-14 12:13:04'),
	(2, 'vithanageanuka@gmail.com', '$2y$10$uUThkcb5PsGc8Ielp0ftDOZ1kyCKvoQPhBv5euIQkHr8jLZINyIRW', 'chamathka', 'buyer', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, '2025-10-09 07:27:20', '2025-08-02 13:47:38', '2025-08-02 13:45:37', '2025-10-09 12:57:20'),
	(3, 'chamathkaprasad@gmail.com', '$2y$10$BcbKBBCGHNNyLbMf2ijR0uc8vm7U7joOfUmlaYeLV7YYmdDUtaRKa', 'chamathka prasad', 'seller', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, '2025-10-14 10:11:53', '2025-08-21 16:18:50', '2025-08-02 14:06:29', '2025-10-14 15:41:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.user_activity_logs
CREATE TABLE IF NOT EXISTS `user_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `action` varchar(100) COLLATE utf8_bin NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL,
  `user_agent` text COLLATE utf8_bin,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_action` (`action`),
  KEY `idx_ip_address` (`ip_address`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_activity_user_action_date` (`user_id`,`action`,`created_at`),
  CONSTRAINT `user_activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.user_activity_logs: ~135 rows (approximately)
/*!40000 ALTER TABLE `user_activity_logs` DISABLE KEYS */;
INSERT INTO `user_activity_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `data`, `created_at`) VALUES
	(1, 1, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36", "logout_method": "manual"}', '2025-08-02 08:35:48'),
	(2, 1, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '[]', '2025-08-02 08:35:48'),
	(3, 3, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 08:42:30'),
	(4, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"asset_id": "1", "filename": "20250701_1348_Leafy_Street_Scene_remix_01jz2gyg27f4aby43j36rb7bex_1754124414_e5f1096a.png", "file_type": "image"}', '2025-08-02 08:46:54'),
	(5, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"asset_id": "2", "filename": "20250602_1709_Remembering_Tiananmen_Square_simple_compose_01jwr70c1tfd5v8ny0fh7qqdj8_1754126381_14983ee3.mp4", "file_type": "video"}', '2025-08-02 09:19:41'),
	(6, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-02 10:50:47'),
	(7, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '[]', '2025-08-02 10:50:47'),
	(8, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"}', '2025-08-02 10:50:50'),
	(9, 2, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 13:23:07'),
	(10, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"}', '2025-08-02 15:59:55'),
	(11, 2, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 17:46:30'),
	(12, 2, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36", "logout_method": "manual"}', '2025-08-02 17:46:42'),
	(13, 2, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '[]', '2025-08-02 17:46:42'),
	(14, 3, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 17:46:47'),
	(15, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"asset_id": "3", "filename": "20250602_1703_Golden_Gate_Engineering_Marvel_simple_compose_01jwr6nxvsf5vt56wgj1sf5e9f_1754156860_591953dc.mp4", "file_type": "video"}', '2025-08-02 17:47:40'),
	(16, 3, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36", "logout_method": "manual"}', '2025-08-02 17:48:13'),
	(17, 3, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '[]', '2025-08-02 17:48:13'),
	(18, 2, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 17:49:28'),
	(19, 2, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36", "logout_method": "manual"}', '2025-08-02 18:52:58'),
	(20, 2, 'logout', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '[]', '2025-08-02 18:52:58'),
	(21, 1, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-02 18:53:05'),
	(22, 2, 'login', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36"}', '2025-08-03 16:10:44'),
	(23, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-03 17:56:46'),
	(24, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '[]', '2025-08-03 17:56:46'),
	(25, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"}', '2025-08-10 09:10:57'),
	(26, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-10 09:17:13'),
	(27, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '[]', '2025-08-10 09:17:13'),
	(28, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"}', '2025-08-10 09:28:51'),
	(29, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 04:04:36'),
	(30, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-17 04:05:31'),
	(31, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-17 04:05:31'),
	(32, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 04:05:35'),
	(33, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"asset_id": "4", "filename": "IMG_7311_1755403617_daf952d3.jpg", "file_type": "image"}', '2025-08-17 04:06:58'),
	(34, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-17 04:07:07'),
	(35, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-17 04:07:07'),
	(36, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 04:07:13'),
	(37, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 06:10:59'),
	(38, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-17 06:11:11'),
	(39, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-17 06:11:11'),
	(40, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 06:11:23'),
	(41, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-17 12:47:14'),
	(42, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-17 12:47:14'),
	(43, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-17 12:47:20'),
	(44, 1, 'login', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '{"ip_address": "127.0.0.1", "user_agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36"}', '2025-08-17 15:34:59'),
	(45, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-18 04:56:15'),
	(46, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-18 05:53:09'),
	(47, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-18 05:53:09'),
	(48, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-18 05:53:13'),
	(49, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-18 06:39:07'),
	(50, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-18 06:50:54'),
	(51, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-18 10:34:04'),
	(52, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 03:48:58'),
	(53, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-19 04:01:42'),
	(54, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-19 04:01:42'),
	(55, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 04:02:24'),
	(56, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-19 04:32:14'),
	(57, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-19 04:32:14'),
	(58, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 04:32:23'),
	(59, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 06:06:35'),
	(60, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 13:57:03'),
	(61, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-19 16:37:15'),
	(62, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-20 14:53:18'),
	(63, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 06:53:29'),
	(64, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 09:21:35'),
	(65, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-21 10:15:15'),
	(66, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-21 10:15:15'),
	(67, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 10:15:17'),
	(68, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 10:48:03'),
	(69, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 10:48:55'),
	(70, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 14:13:37'),
	(71, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 15:16:38'),
	(72, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 15:29:32'),
	(73, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-21 15:29:41'),
	(74, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:41:44'),
	(75, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:44:08'),
	(76, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:46:38'),
	(77, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-28 11:47:22'),
	(78, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-28 11:47:22'),
	(79, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:47:26'),
	(80, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-08-28 11:48:48'),
	(81, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '[]', '2025-08-28 11:48:48'),
	(82, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:48:51'),
	(83, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-28 11:49:18'),
	(84, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36"}', '2025-08-30 17:20:19'),
	(85, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-15 07:07:30'),
	(86, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-15 07:48:19'),
	(87, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-18 18:30:34'),
	(88, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-19 02:53:47'),
	(89, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-19 05:22:15'),
	(90, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-19 06:25:23'),
	(91, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-19 06:25:23'),
	(92, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-19 06:25:40'),
	(93, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-19 06:42:16'),
	(94, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-19 06:42:16'),
	(95, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-19 06:42:33'),
	(96, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-19 08:08:25'),
	(97, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-19 08:08:25'),
	(98, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-19 08:08:31'),
	(99, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-21 14:14:05'),
	(100, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-21 14:39:15'),
	(101, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-21 14:47:38'),
	(102, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-21 14:47:38'),
	(103, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-21 14:47:55'),
	(104, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-21 20:28:33'),
	(105, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-22 03:36:33'),
	(106, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-22 04:14:48'),
	(107, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-22 08:57:31'),
	(108, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-23 10:11:40'),
	(109, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-23 17:08:30'),
	(110, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-24 03:10:45'),
	(111, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-24 07:00:42'),
	(112, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-24 07:07:22'),
	(113, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-24 10:00:28'),
	(114, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-24 12:35:22'),
	(115, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-24 14:25:17'),
	(116, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-24 14:25:17'),
	(117, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-25 05:18:26'),
	(118, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-09-25 12:31:06'),
	(119, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-09-26 19:00:56'),
	(120, 1, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-09-26 19:00:56'),
	(121, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-10-09 04:48:02'),
	(122, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-10-09 07:16:00'),
	(123, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-10-09 07:27:12'),
	(124, 3, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-10-09 07:27:12'),
	(125, 2, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-10-09 07:27:20'),
	(126, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36", "logout_method": "manual"}', '2025-10-09 07:31:21'),
	(127, 2, 'logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '[]', '2025-10-09 07:31:21'),
	(128, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-10-09 07:31:25'),
	(129, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"}', '2025-10-09 12:11:42'),
	(130, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36"}', '2025-10-13 16:14:53'),
	(131, 1, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36"}', '2025-10-14 06:43:04'),
	(132, 3, 'login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"ip_address": "::1", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36"}', '2025-10-14 10:11:53'),
	(133, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"asset_id": "17", "filename": "Gemini_Generated_Image_7pr8h47pr8h47pr8_1_1760442609_b5fe09ea.png", "file_type": "image", "categories": 3, "asset_identifier": "00017"}', '2025-10-14 11:50:09'),
	(134, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"asset_id": "18", "filename": "WhatsApp_Image_2025-10-09_at_13_41_39_1760442688_c9970292.jpeg", "file_type": "image", "categories": 3, "asset_identifier": "00018"}', '2025-10-14 11:51:28'),
	(135, 3, 'asset_upload', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '{"asset_id": "19", "filename": "Video_Generation_Confirmation_1760442963_9e908d4c.mp4", "file_type": "video", "categories": 2, "asset_identifier": "00019"}', '2025-10-14 11:56:03');
/*!40000 ALTER TABLE `user_activity_logs` ENABLE KEYS */;

-- Dumping structure for view speicalstock07.user_login_summary
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_login_summary` (
	`id` INT(10) UNSIGNED NOT NULL,
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8_bin',
	`role` ENUM('buyer','seller','admin') NULL COLLATE 'utf8_bin',
	`last_login` TIMESTAMP NULL,
	`total_logins` BIGINT(19) NOT NULL,
	`logins_30_days` BIGINT(19) NOT NULL,
	`logins_7_days` BIGINT(19) NOT NULL,
	`last_activity` TIMESTAMP NULL
) ENGINE=MyISAM;

-- Dumping structure for table speicalstock07.user_preferences
CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `preference_key` varchar(100) COLLATE utf8_bin NOT NULL,
  `preference_value` text COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_preference` (`user_id`,`preference_key`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_preference_key` (`preference_key`),
  CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.user_preferences: ~4 rows (approximately)
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` (`id`, `user_id`, `preference_key`, `preference_value`, `created_at`, `updated_at`) VALUES
	(1, 2, 'email_notifications', 'true', '2025-08-02 13:51:29', '2025-08-02 13:51:29'),
	(2, 1, 'email_notifications', 'true', '2025-08-02 13:51:29', '2025-08-02 13:51:29'),
	(4, 2, 'theme', 'light', '2025-08-02 13:51:29', '2025-08-02 13:51:29'),
	(5, 1, 'theme', 'light', '2025-08-02 13:51:29', '2025-08-02 13:51:29');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.user_remember_tokens
CREATE TABLE IF NOT EXISTS `user_remember_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_token` (`token`),
  KEY `idx_expires_at` (`expires_at`),
  CONSTRAINT `user_remember_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.user_remember_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_remember_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_remember_tokens` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.user_sessions
CREATE TABLE IF NOT EXISTS `user_sessions` (
  `session_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL,
  `user_agent` text COLLATE utf8_bin,
  `data` text COLLATE utf8_bin,
  `last_activity` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_last_activity` (`last_activity`),
  KEY `idx_sessions_user_activity` (`user_id`,`last_activity`),
  CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.user_sessions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;

-- Dumping structure for table speicalstock07.user_two_factor
CREATE TABLE IF NOT EXISTS `user_two_factor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `secret` varchar(255) COLLATE utf8_bin NOT NULL,
  `backup_codes` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_2fa` (`user_id`),
  CONSTRAINT `user_two_factor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table speicalstock07.user_two_factor: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_two_factor` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_two_factor` ENABLE KEYS */;

-- Dumping structure for trigger speicalstock07.after_failed_login
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `after_failed_login` AFTER INSERT ON `failed_login_attempts` FOR EACH ROW BEGIN
    -- If too many failed attempts, could trigger additional security measures
    DECLARE attempt_count INT DEFAULT 0;
    
    SELECT COUNT(*) INTO attempt_count
    FROM failed_login_attempts 
    WHERE email = NEW.email 
    AND attempted_at > DATE_SUB(NOW(), INTERVAL 1 HOUR);
    
    -- Could insert into a security alerts table or send notification
    IF attempt_count >= 5 THEN
        INSERT INTO admin_logs (admin_id, action, target_type, target_id, ip_address, created_at)
        VALUES (1, 'security_alert', 'user', 0, NEW.ip_address, NOW());
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger speicalstock07.after_login_activity
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `after_login_activity` AFTER INSERT ON `user_activity_logs` FOR EACH ROW BEGIN
    IF NEW.action = 'login' THEN
        UPDATE users 
        SET last_login = NEW.created_at 
        WHERE id = NEW.user_id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger speicalstock07.after_purchase_completed
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `after_purchase_completed` AFTER UPDATE ON `purchases` FOR EACH ROW BEGIN
    IF NEW.payment_status = 'completed' AND OLD.payment_status != 'completed' THEN
        INSERT INTO seller_earnings (seller_id, purchase_id, amount, commission_rate)
        SELECT 
            a.seller_id,
            NEW.id,
            NEW.seller_amount,
            u.seller_commission_rate
        FROM assets a
        JOIN users u ON a.seller_id = u.id
        WHERE a.id = NEW.asset_id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for view speicalstock07.active_sessions
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `active_sessions`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `active_sessions` AS select `s`.`session_id` AS `session_id`,`u`.`name` AS `user_name`,`u`.`email` AS `email`,`u`.`role` AS `role`,`s`.`ip_address` AS `ip_address`,`s`.`last_activity` AS `last_activity`,timestampdiff(MINUTE,`s`.`last_activity`,now()) AS `minutes_inactive` from (`user_sessions` `s` join `users` `u` on((`s`.`user_id` = `u`.`id`))) where (`s`.`last_activity` > (now() - interval 2 hour)) order by `s`.`last_activity` desc;

-- Dumping structure for view speicalstock07.collections_with_stats
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `collections_with_stats`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `collections_with_stats` AS select `c`.`id` AS `id`,`c`.`name` AS `name`,`c`.`slug` AS `slug`,`c`.`description` AS `description`,`c`.`cover_image_id` AS `cover_image_id`,`c`.`is_ai_generated` AS `is_ai_generated`,`c`.`is_active` AS `is_active`,`c`.`sort_order` AS `sort_order`,`c`.`meta_tags` AS `meta_tags`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_at` AS `updated_at`,count(`ca`.`asset_id`) AS `asset_count`,`creator`.`name` AS `created_by_name`,`cover`.`title` AS `cover_image_title`,`cover`.`watermarked_path` AS `cover_image_path` from (((`collections` `c` left join `collection_assets` `ca` on((`c`.`id` = `ca`.`collection_id`))) left join `users` `creator` on((`c`.`created_by` = `creator`.`id`))) left join `assets` `cover` on((`c`.`cover_image_id` = `cover`.`id`))) group by `c`.`id`;

-- Dumping structure for view speicalstock07.collection_assets_detail
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `collection_assets_detail`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `collection_assets_detail` AS select `ca`.`id` AS `collection_asset_id`,`ca`.`collection_id` AS `collection_id`,`ca`.`asset_id` AS `asset_id`,`ca`.`position_order` AS `position_order`,`ca`.`added_at` AS `added_at`,`c`.`name` AS `collection_name`,`a`.`title` AS `asset_title`,`a`.`file_type` AS `file_type`,`a`.`price` AS `price`,`a`.`status` AS `asset_status`,`u`.`name` AS `seller_name`,`admin`.`name` AS `added_by_name` from ((((`collection_assets` `ca` join `collections` `c` on((`ca`.`collection_id` = `c`.`id`))) join `assets` `a` on((`ca`.`asset_id` = `a`.`id`))) join `users` `u` on((`a`.`seller_id` = `u`.`id`))) join `users` `admin` on((`ca`.`added_by` = `admin`.`id`)));

-- Dumping structure for view speicalstock07.failed_login_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `failed_login_summary`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `failed_login_summary` AS select `failed_login_attempts`.`email` AS `email`,count(0) AS `total_attempts`,count((case when (`failed_login_attempts`.`attempted_at` >= (now() - interval 24 hour)) then 1 end)) AS `attempts_24h`,count((case when (`failed_login_attempts`.`attempted_at` >= (now() - interval 1 hour)) then 1 end)) AS `attempts_1h`,max(`failed_login_attempts`.`attempted_at`) AS `last_attempt`,count(distinct `failed_login_attempts`.`ip_address`) AS `unique_ips` from `failed_login_attempts` group by `failed_login_attempts`.`email` having (`attempts_24h` > 0) order by `attempts_24h` desc,`last_attempt` desc;

-- Dumping structure for view speicalstock07.popular_assets
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `popular_assets`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `popular_assets` AS select `a`.`id` AS `id`,`a`.`seller_id` AS `seller_id`,`a`.`category_id` AS `category_id`,`a`.`title` AS `title`,`a`.`description` AS `description`,`a`.`tags` AS `tags`,`a`.`keywords` AS `keywords`,`a`.`price` AS `price`,`a`.`original_filename` AS `original_filename`,`a`.`file_path` AS `file_path`,`a`.`watermarked_path` AS `watermarked_path`,`a`.`thumbnail_path` AS `thumbnail_path`,`a`.`file_type` AS `file_type`,`a`.`file_size` AS `file_size`,`a`.`mime_type` AS `mime_type`,`a`.`width` AS `width`,`a`.`height` AS `height`,`a`.`duration` AS `duration`,`a`.`status` AS `status`,`a`.`admin_notes` AS `admin_notes`,`a`.`reviewed_by` AS `reviewed_by`,`a`.`reviewed_at` AS `reviewed_at`,`a`.`view_count` AS `view_count`,`a`.`download_count` AS `download_count`,`a`.`like_count` AS `like_count`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at`,`u`.`name` AS `seller_name`,`c`.`name` AS `category_name`,coalesce(`p`.`purchase_count`,0) AS `purchase_count`,coalesce(`p`.`total_revenue`,0) AS `total_revenue` from (((`assets` `a` join `users` `u` on((`a`.`seller_id` = `u`.`id`))) left join `categories` `c` on((`a`.`category_id` = `c`.`id`))) left join (select `purchases`.`asset_id` AS `asset_id`,count(0) AS `purchase_count`,sum(`purchases`.`price_paid`) AS `total_revenue` from `purchases` where (`purchases`.`payment_status` = 'completed') group by `purchases`.`asset_id`) `p` on((`a`.`id` = `p`.`asset_id`))) where (`a`.`status` = 'approved') order by `a`.`view_count` desc,`a`.`download_count` desc;

-- Dumping structure for view speicalstock07.popular_collections
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `popular_collections`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `popular_collections` AS select `c`.`id` AS `id`,`c`.`name` AS `name`,`c`.`slug` AS `slug`,`c`.`description` AS `description`,`c`.`cover_image_id` AS `cover_image_id`,`c`.`is_ai_generated` AS `is_ai_generated`,`c`.`is_active` AS `is_active`,`c`.`sort_order` AS `sort_order`,`c`.`meta_tags` AS `meta_tags`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_at` AS `updated_at`,count(`cv`.`id`) AS `view_count`,count(distinct `cv`.`user_id`) AS `unique_viewers`,count(`ca`.`asset_id`) AS `asset_count` from ((`collections` `c` left join `collection_views` `cv` on((`c`.`id` = `cv`.`collection_id`))) left join `collection_assets` `ca` on((`c`.`id` = `ca`.`collection_id`))) where (`c`.`is_active` = 1) group by `c`.`id` order by `view_count` desc;

-- Dumping structure for view speicalstock07.seller_stats
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `seller_stats`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `seller_stats` AS select `u`.`id` AS `seller_id`,`u`.`name` AS `seller_name`,count(distinct `a`.`id`) AS `total_assets`,count(distinct (case when (`a`.`status` = 'approved') then `a`.`id` end)) AS `approved_assets`,count(distinct (case when (`a`.`status` = 'pending') then `a`.`id` end)) AS `pending_assets`,count(distinct `p`.`id`) AS `total_sales`,coalesce(sum(`se`.`amount`),0) AS `total_earnings`,coalesce(sum((case when (`p`.`purchase_date` >= (now() - interval 30 day)) then `se`.`amount` else 0 end)),0) AS `earnings_last_30_days` from (((`users` `u` left join `assets` `a` on((`u`.`id` = `a`.`seller_id`))) left join `purchases` `p` on(((`a`.`id` = `p`.`asset_id`) and (`p`.`payment_status` = 'completed')))) left join `seller_earnings` `se` on((`p`.`id` = `se`.`purchase_id`))) where (`u`.`role` = 'seller') group by `u`.`id`,`u`.`name`;

-- Dumping structure for view speicalstock07.user_login_summary
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_login_summary`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `user_login_summary` AS select `u`.`id` AS `id`,`u`.`name` AS `name`,`u`.`email` AS `email`,`u`.`role` AS `role`,`u`.`last_login` AS `last_login`,count(`ual`.`id`) AS `total_logins`,count((case when (`ual`.`created_at` >= (now() - interval 30 day)) then 1 end)) AS `logins_30_days`,count((case when (`ual`.`created_at` >= (now() - interval 7 day)) then 1 end)) AS `logins_7_days`,max(`ual`.`created_at`) AS `last_activity` from (`users` `u` left join `user_activity_logs` `ual` on(((`u`.`id` = `ual`.`user_id`) and (`ual`.`action` = 'login')))) where (`u`.`status` = 'active') group by `u`.`id`,`u`.`name`,`u`.`email`,`u`.`role`,`u`.`last_login`;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
