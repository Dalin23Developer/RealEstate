/*
 Navicat Premium Dump SQL

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 110802 (11.8.2-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : realestate

 Target Server Type    : MariaDB
 Target Server Version : 110802 (11.8.2-MariaDB)
 File Encoding         : 65001

 Date: 09/12/2025 15:58:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for analytics
-- ----------------------------
DROP TABLE IF EXISTS `analytics`;
CREATE TABLE `analytics`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country_code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operating_system` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of analytics
-- ----------------------------

-- ----------------------------
-- Table structure for app_ads
-- ----------------------------
DROP TABLE IF EXISTS `app_ads`;
CREATE TABLE `app_ads`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ads_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ads_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_ads
-- ----------------------------
INSERT INTO `app_ads` VALUES (1, 'Admob', '{\"publisher_id\":\"\",\"banner_on_off\":\"0\",\"banner_id\":\"\",\"interstitial_on_off\":\"0\",\"interstitial_id\":\"\",\"interstitial_clicks\":\"5\",\"native_on_off\":\"0\",\"native_id\":\"\",\"native_position\":\"7\"}', 0);
INSERT INTO `app_ads` VALUES (2, 'StartApp', '{\"publisher_id\":\"208651629\",\"banner_on_off\":\"0\",\"banner_id\":\"\",\"interstitial_on_off\":\"0\",\"interstitial_id\":\"\",\"interstitial_clicks\":\"5\",\"native_on_off\":\"0\",\"native_id\":\"\",\"native_position\":\"7\"}', 0);
INSERT INTO `app_ads` VALUES (3, 'Facebook', '{\"publisher_id\":\"\",\"banner_on_off\":\"0\",\"banner_id\":\"\",\"interstitial_on_off\":\"0\",\"interstitial_id\":\"\",\"interstitial_clicks\":\"5\",\"native_on_off\":\"0\",\"native_id\":\"\",\"native_position\":\"7\"}', 0);
INSERT INTO `app_ads` VALUES (4, 'AppLovins MAX', '{\"publisher_id\":\"\",\"banner_on_off\":\"0\",\"banner_id\":\"\",\"interstitial_on_off\":\"0\",\"interstitial_id\":\"\",\"interstitial_clicks\":\"5\",\"native_on_off\":\"0\",\"native_id\":\"\",\"native_position\":\"7\"}', 0);
INSERT INTO `app_ads` VALUES (5, 'Wortise', '{\"publisher_id\":\"a4e76baa-c4ce-4672-ba85-f2f7190bd19b\",\"banner_on_off\":\"1\",\"banner_id\":\"a2562302-14ce-476b-94d4-0c6431f1f927\",\"interstitial_on_off\":\"1\",\"interstitial_id\":\"ed6fc25c-9855-485e-9513-fed0d3acc528\",\"interstitial_clicks\":\"5\",\"native_on_off\":\"1\",\"native_id\":\"cf65ed35-4765-4955-96fc-a33cf43d5340\",\"native_position\":\"7\"}', 1);
INSERT INTO `app_ads` VALUES (6, 'Unity Ads', '{\"publisher_id\":\"\",\"banner_on_off\":\"0\",\"banner_id\":\"\",\"interstitial_on_off\":\"0\",\"interstitial_id\":\"\",\"interstitial_clicks\":\"5\"}', 0);

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for content_page
-- ----------------------------
DROP TABLE IF EXISTS `content_page`;
CREATE TABLE `content_page`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NOT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_uca1400_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_page
-- ----------------------------
INSERT INTO `content_page` VALUES (1, 'About Us', 'about-us', 1, '2025-12-02 08:01:43', '2025-12-02 08:01:43');

-- ----------------------------
-- Table structure for content_page_section
-- ----------------------------
DROP TABLE IF EXISTS `content_page_section`;
CREATE TABLE `content_page_section`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_uca1400_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_page_section
-- ----------------------------
INSERT INTO `content_page_section` VALUES (1, 1, 'Welcome to Viavi Real Estate', 1, NULL, 'Welcome to Viavi Real Estate, where we turn houses into homes and dreams into reality. This Viavi Real Estate Portal is designed to make property management and browsing a breeze, offering a robust set of features tailored to the needs of today’s real estate market.\r\n\r\nAt Viavi Real Estate, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\r\n\r\nDiscover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.', '2025-12-02 08:01:43', '2025-12-02 08:01:43');
INSERT INTO `content_page_section` VALUES (2, 1, 'Discover What Sets Our Real Estate Expertise Apart', 1, NULL, 'Welcome to Viavi Real Estate, where we turn houses into homes and dreams into reality. This Viavi Real Estate Portal is designed to make property management and browsing a breeze, offering a robust set of features tailored to the needs of today’s real estate market.\r\n\r\nAt Viavi Real Estate, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\r\n\r\nDiscover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.', '2025-12-02 08:01:43', '2025-12-02 08:01:43');

-- ----------------------------
-- Table structure for favourite
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favourite
-- ----------------------------
INSERT INTO `favourite` VALUES (1, 1, 6, 'Property');
INSERT INTO `favourite` VALUES (5, 1, 16, 'Property');
INSERT INTO `favourite` VALUES (9, 1, 39, 'Property');
INSERT INTO `favourite` VALUES (10, 1, 35, 'Property');
INSERT INTO `favourite` VALUES (30, 1, 7, 'Property');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (2, 'London, England', 1);
INSERT INTO `locations` VALUES (3, 'New York, USA', 1);
INSERT INTO `locations` VALUES (4, 'Paris, France', 1);
INSERT INTO `locations` VALUES (5, 'Tokyo, Japans', 1);
INSERT INTO `locations` VALUES (6, 'Phnompenh, Camboia', 1);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_slug` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_about_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_about_text2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_about_image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_order` int(3) NULL DEFAULT NULL,
  `page_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Bottom',
  `page_contact_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_contact_map` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'About Us', 'about-us', '<h2>Welcome to Viavi Real Estate</h2>\r\n<p>Welcome to Viavi Real Estate, where we turn houses into homes and dreams into reality. This Viavi Real Estate Portal is designed to make property management and browsing a breeze, offering a robust set of features tailored to the needs of today&rsquo;s real estate market.</p>\r\n<p>At Viavi Real Estate, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.</p>\r\n<p>Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.</p>', 'upload/placeholder_img.jpg', '<h2>Discover What Sets Our Real Estate Expertise Apart</h2>\r\n<p>Welcome to Viavi Real Estate, where we turn houses into homes and dreams into reality. This Viavi Real Estate Portal is designed to make property management and browsing a breeze, offering a robust set of features tailored to the needs of today&rsquo;s real estate market.</p>\r\n<p>At Viavi Real Estate, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.</p>\r\n<p>Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.</p>', 'upload/placeholder_img.jpg', 5, 'Top', NULL, NULL, NULL, NULL, 1);
INSERT INTO `menus` VALUES (2, 'Contact Us', 'contact-us', '', NULL, NULL, NULL, 6, 'Top', '3rd Floor, Shyam Complex, Parivar Park, near Mayani Chowk, Rajkot, Gujarat', '+91 9874561233', 'info@example.com', '<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3692.061458662123!2d70.78399097404937!3d22.275661643790418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959ca4119fc5f3d%3A0x79efddff6062f51f!2sVIAVIWEB!5e0!3m2!1sen!2sin!4v1721715932201!5m2!1sen!2sin\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"></iframe>', 1);
INSERT INTO `menus` VALUES (3, 'Pricing', 'pricing', '<h4><strong>Privacy Policy of&nbsp;<span class=\\\"highlight preview_company_name\\\">Company Name</span></strong></h4>\r\n<p><span class=\\\"highlight preview_company_name\\\">Company Name</span>&nbsp;operates the&nbsp;<span class=\\\"highlight preview_website_name\\\">Website Name</span>&nbsp;website, which provides the SERVICE.</p>\r\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the&nbsp;<span class=\\\"highlight preview_website_name\\\">Website Name</span>&nbsp;website.</p>\r\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at&nbsp;<span class=\\\"highlight preview_website_url\\\">Website URL</span>, unless otherwise defined in this Privacy Policy.</p>\r\n<h4><strong>Information Collection and Use</strong></h4>\r\n<p>For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\r\n<h4><strong>Log Data</strong></h4>\r\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us that is called Log Data. This Log Data may include information such as your computer\\\'s Internet Protocol (&ldquo;IP&rdquo;) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\r\n<h4><strong>Cookies</strong></h4>\r\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\\\'s hard drive.</p>\r\n<p>Our website uses these &ldquo;cookies&rdquo; to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\r\n<h4><strong>Service Providers</strong></h4>\r\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\r\n<ul>\r\n<li>To facilitate our Service</li>\r\n<li>To provide the Service on our behalf</li>\r\n<li>To perform Service-related services or</li>\r\n<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n<h4><strong>Security</strong></h4>\r\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\r\n<h4><strong>Links to Other Sites</strong></h4>\r\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n<p>Children\\\'s Privacy</p>\r\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\r\n<h4><strong>Changes to This Privacy Policy</strong></h4>\r\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\r\n<h4><strong>Contact Us</strong></h4>\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', NULL, NULL, NULL, 4, 'Bottom', NULL, NULL, NULL, NULL, 0);
INSERT INTO `menus` VALUES (4, 'Types', 'types', '<p><strong>Use of this site is provided by Demos subject to the following Terms and Conditions:</strong><br />1. Your use constitutes acceptance of these Terms and Conditions as at the date of your first use of the site.<br />2. Demos reserves the rights to change these Terms and Conditions at any time by posting changes online. Your continued use of this site after changes are posted constitutes your acceptance of this agreement as modified.<br />3. You agree to use this site only for lawful purposes, and in a manner which does not infringe the rights, or restrict, or inhibit the use and enjoyment of the site by any third party.<br />4. This site and the information, names, images, pictures, logos regarding or relating to Demos are provided &ldquo;as is&rdquo; without any representation or endorsement made and without warranty of any kind whether express or implied. In no event will Demos be liable for any damages including, without limitation, indirect or consequential damages, or any damages whatsoever arising from the use or in connection with such use or loss of use of the site, whether in contract or in negligence.<br />5. Demos does not warrant that the functions contained in the material contained in this site will be uninterrupted or error free, that defects will be corrected, or that this site or the server that makes it available are free of viruses or bugs or represents the full functionality, accuracy and reliability of the materials.<br />6. Copyright restrictions: please refer to our Creative Commons license terms governing the use of material on this site.<br />7. Demos takes no responsibility for the content of external Internet Sites.<br />8. Any communication or material that you transmit to, or post on, any public area of the site including any data, questions, comments, suggestions, or the like, is, and will be treated as, non-confidential and non-proprietary information.<br />9. If there is any conflict between these Terms and Conditions and rules and/or specific terms of use appearing on this site relating to specific material then the latter shall prevail.<br />10. These terms and conditions shall be governed and construed in accordance with the laws of England and Wales. Any disputes shall be subject to the exclusive jurisdiction of the Courts of England and Wales.<br />11. If these Terms and Conditions are not accepted in full, the use of this site must be terminated immediately.</p>', NULL, NULL, NULL, 2, 'Bottom', NULL, NULL, NULL, NULL, 1);
INSERT INTO `menus` VALUES (5, 'Properties', 'properties', '<p>We&rsquo;re sorry to see you go! Follow the steps below to manually delete your account. Please note that this action is irreversible, and all your data will be permanently removed.</p>\r\n<h3>Steps to Manually Delete Your Account:</h3>\r\n<ol>\r\n<li>\r\n<p><strong>Prepare Your Request</strong></p>\r\n<ul>\r\n<li>Ensure you have access to the email associated with your account.</li>\r\n<li>Have your username and any relevant account information ready.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Compose an Email</strong></p>\r\n<ul>\r\n<li>Open your email client.</li>\r\n<li>Create a new email addressed to our support team at <a rel=\\\"noreferrer\\\">support@example.com</a>.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Subject Line</strong></p>\r\n<ul>\r\n<li>Use a clear subject line such as \\\"Account Deletion Request\\\".</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Email Body</strong></p>\r\n<ul>\r\n<li>Include the following information in the body of the email:\r\n<ul>\r\n<li>Your full name.</li>\r\n<li>Your username.</li>\r\n<li>The email address associated with your account.</li>\r\n<li>A brief statement requesting the deletion of your account.</li>\r\n<li>(Optional) A reason for deleting your account.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Send the Email</strong></p>\r\n<ul>\r\n<li>Review the information for accuracy.</li>\r\n<li>Send the email to <a rel=\\\"noreferrer\\\">support@example.com</a>.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Wait for Confirmation</strong></p>\r\n<ul>\r\n<li>Our support team will process your request.</li>\r\n<li>You will receive a confirmation email once your account has been successfully deleted.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<h3>Important Notes:</h3>\r\n<ul>\r\n<li><strong>Data Loss:</strong> All your data, including personal information, posts, and messages, will be permanently deleted and cannot be recovered.</li>\r\n<li><strong>Subscription Cancellation:</strong> Any active subscriptions will be automatically canceled. No refunds will be issued for unused portions of subscriptions.</li>\r\n<li><strong>Backup Your Data:</strong> If you wish to keep any data, make sure to download it before requesting account deletion.</li>\r\n</ul>\r\n<p>If you encounter any issues or need further assistance, please contact our support team at <a rel=\\\"noreferrer\\\">support@example.com</a>.</p>\r\n<p>Thank you for using our service!</p>', NULL, NULL, NULL, 3, 'Bottom', NULL, NULL, NULL, NULL, 1);
INSERT INTO `menus` VALUES (6, 'Home', 'home', '<p>WE</p>', NULL, NULL, NULL, 1, 'Bottom', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000001_create_page_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_11_08_112843_create_personal_access_tokens_table', 2);
INSERT INTO `migrations` VALUES (5, '0001_01_01_0000002_create_users_table', 3);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` tinyint(4) NULL DEFAULT NULL,
  `top_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (5, 'User Management', 'User Management', 'users', 5, NULL, 'fa-users', 'menu', 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `modules` VALUES (6, 'Settings', 'Settings', 'settings', 6, NULL, 'fa-cog', 'menu', 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `modules` VALUES (7, 'Android App', 'Android App', 'android_app', 7, NULL, 'fa-android', 'menu', 0, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);

-- ----------------------------
-- Table structure for page_actions
-- ----------------------------
DROP TABLE IF EXISTS `page_actions`;
CREATE TABLE `page_actions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `function_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `page_idx`(`page_id` ASC) USING BTREE,
  INDEX `type_idx`(`type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_actions
-- ----------------------------
INSERT INTO `page_actions` VALUES (1, 1, 'Profile', 'ប្រវត្តិរូប', 'list', 'profile.index', 'menu', 'fa-user', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (2, 1, 'Update Profile', 'កែប្រែប្រវត្តិរូប', 'update', 'profile.update', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (3, 2, 'Type List', 'បញ្ជីប្រភេទ', 'list', 'type.index', 'menu', 'fa-list', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (4, 2, 'Add Type', 'បន្ថែមប្រភេទ', 'insert', 'type.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (5, 2, 'Edit Type', 'កែប្រែប្រភេទ', 'update', 'type.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (6, 2, 'Delete Type', 'លុបប្រភេទ', 'deleted', 'type.delete', 'menu', 'fa-trash', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (7, 2, 'Save Type', 'រក្សាទុកប្រភេទ', 'save', 'type.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (8, 3, 'Location List', 'បញ្ជីទីតាំង', 'list', 'location.index', 'menu', 'fa-map-marker', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (9, 3, 'Add Location', 'បន្ថែមទីតាំង', 'insert', 'location.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (10, 3, 'Edit Location', 'កែប្រែទីតាំង', 'update', 'location.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (11, 3, 'Delete Location', 'លុបទីតាំង', 'deleted', 'location.delete', 'menu', 'fa-trash', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (12, 3, 'Save Location', 'រក្សាទុកទីតាំង', 'save', 'location.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (13, 4, 'Property List', 'បញ្ជីអចលនទ្រព្យ', 'list', 'property.index', 'menu', 'fa-building', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (14, 4, 'Add Property', 'បន្ថែមអចលនទ្រព្យ', 'insert', 'property.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (15, 4, 'Edit Property', 'កែប្រែអចលនទ្រព្យ', 'update', 'property.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (16, 4, 'Delete Property', 'លុបអចលនទ្រព្យ', 'deleted', 'property.delete', 'menu', 'fa-trash', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (17, 4, 'Save Property', 'រក្សាទុកអចលនទ្រព្យ', 'save', 'property.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (18, 5, 'Reviews', 'ការពិនិត្យ', 'list', 'reviews.index', 'menu', 'fa-star', 'View', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (19, 6, 'Reports', 'របាយការណ៍', 'list', 'reports.index', 'menu', 'fa-file', 'View', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (20, 7, 'User List', 'បញ្ជីអ្នកប្រើប្រាស់', 'list', 'users.index', 'menu', 'fa-users', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (21, 7, 'Add User', 'បន្ថែមអ្នកប្រើប្រាស់', 'insert', 'users.add', 'menu', 'fa-user-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (22, 7, 'Edit User', 'កែប្រែអ្នកប្រើប្រាស់', 'update', 'users.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (23, 7, 'Save User', 'រក្សាទុកអ្នកប្រើប្រាស់', 'save', 'users.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (24, 7, 'Export User', 'នាំចេញអ្នកប្រើប្រាស់', 'export', 'users.export', 'menu', 'fa-file-export', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (25, 7, 'User History', 'ប្រវត្តិអ្នកប្រើប្រាស់', 'history', 'users.history', 'menu', 'fa-history', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (26, 8, 'Sub Admin List', 'បញ្ជីអ្នកគ្រប់គ្រងរង', 'list', 'sub_admin.index', 'menu', 'fa-user-shield', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (27, 8, 'Add Sub Admin', 'បន្ថែមអ្នកគ្រប់គ្រងរង', 'insert', 'sub_admin.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (28, 8, 'Edit Sub Admin', 'កែប្រែអ្នកគ្រប់គ្រងរង', 'update', 'sub_admin.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (29, 8, 'Save Sub Admin', 'រក្សាទុកអ្នកគ្រប់គ្រងរង', 'save', 'sub_admin.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (30, 8, 'Delete Sub Admin', 'លុបអ្នកគ្រប់គ្រងរង', 'deleted', 'sub_admin.delete', 'menu', 'fa-trash', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (31, 9, 'Subscription Plan List', 'បញ្ជីផែនការជាវ', 'list', 'subscription_plan.index', 'menu', 'fa-cogs', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (32, 9, 'Add Plan', 'បន្ថែមផែនការ', 'insert', 'subscription_plan.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (33, 9, 'Edit Plan', 'កែប្រែផែនការ', 'update', 'subscription_plan.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (34, 9, 'Save Plan', 'រក្សាទុកផែនការ', 'save', 'subscription_plan.save', 'menu', 'fa-save', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (35, 10, 'Payment Gateway List', 'បញ្ជីទូទាត់', 'list', 'payment_gateway.index', 'menu', 'fa-credit-card', 'Settings', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (36, 10, 'Edit Payment Gateway', 'កែប្រែទូទាត់', 'update', 'payment_gateway.edit', 'menu', 'fa-edit', 'Settings', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (37, 10, 'PayPal Settings', 'កំណត់ PayPal', 'save', 'payment_gateway.paypal', 'menu', 'fa-paypal', 'Settings', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (38, 11, 'Transactions List', 'បញ្ជីប្រតិបត្តិការណ៍', 'list', 'transactions.index', 'menu', 'fa-exchange-alt', 'View', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (39, 11, 'Export Transactions', 'នាំចេញប្រតិបត្តិការណ៍', 'export', 'transactions.export', 'menu', 'fa-file-export', 'View', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (40, 12, 'Pages List', 'បញ្ជីទំព័រ', 'list', 'pages.index', 'menu', 'fa-file', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (41, 12, 'Add Page', 'បន្ថែមទំព័រ', 'insert', 'pages.add', 'menu', 'fa-plus', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (42, 12, 'Edit Page', 'កែប្រែទំព័រ', 'update', 'pages.edit', 'menu', 'fa-edit', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);
INSERT INTO `page_actions` VALUES (43, 12, 'Delete Page', 'លុបទំព័រ', 'deleted', 'pages.delete', 'menu', 'fa-trash', 'CRUD', NULL, NULL, '2025-11-01 19:23:29', '2025-11-01 19:23:29', NULL);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `sub_module_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `can_access` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `default_action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_service_fee` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pages_slug_unique`(`slug` ASC) USING BTREE,
  INDEX `idx`(`id` ASC) USING BTREE,
  INDEX `module_idx`(`module_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, NULL, NULL, NULL, 'Dashboard', 'Dashboard', 'dashboard', 'dashboard', NULL, 'fa-dashboard', 1, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (2, NULL, NULL, NULL, 'Type', 'Type', 'type', 'type.index', NULL, 'fa-list', 2, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (3, NULL, NULL, NULL, 'Location', 'Location', 'location', 'location.index', NULL, 'fa-globe', 3, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (4, NULL, NULL, NULL, 'Property', 'Property', 'property', 'property.index', NULL, 'fa-home', 4, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (5, NULL, NULL, NULL, 'Transactions', 'Transactions', 'transactions', 'transactions.index', NULL, 'fa-list', 5, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (6, NULL, NULL, NULL, 'Reports', 'Reports', 'reports', 'reports.index', NULL, 'fa-bug', 6, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (7, NULL, NULL, NULL, 'Users', 'Users', 'users', 'users.index', NULL, 'fa-users', 7, 'list', 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (8, 5, NULL, NULL, 'Sub Admin', 'Sub Admin', 'sub_admin', 'sub_admin.index', NULL, 'fa-users', 2, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (9, 6, NULL, NULL, 'General Settings', 'General Settings', 'general_settings', 'settings.general.index', NULL, 'fa-cog', 1, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (10, 6, NULL, NULL, 'Email Settings', 'Email Settings', 'email_settings', 'settings.email', NULL, 'fa-envelope', 2, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (11, 6, NULL, NULL, 'Social Login', 'Social Login', 'social_login_settings', 'settings.social_login', NULL, 'fa-usb', 3, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (12, 6, NULL, NULL, 'reCAPTCHA', 'reCAPTCHA', 'recaptcha_settings', 'settings.recaptcha', NULL, 'fa-refresh', 4, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (13, 6, NULL, NULL, 'Web Ads', 'Web Ads', 'web_ads_settings', 'settings.web_ads', NULL, 'fa-buysellads', 5, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (14, 7, NULL, NULL, 'Verify Purchase', 'Verify Purchase', 'verify_purchase_app', 'android.verify_purchase', NULL, 'fa-lock', 1, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (15, 7, NULL, NULL, 'Android App Settings', 'Android App Settings', 'android_settings', 'android.settings.index', NULL, 'fa-cog', 2, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (16, 7, NULL, NULL, 'Ad Settings', 'Ad Settings', 'ad_list', 'ad_list.index', NULL, 'fa-buysellads', 3, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (17, 7, NULL, NULL, 'OneSignal Notification', 'OneSignal Notification', 'onesignal_notification', 'android.onesignal', NULL, 'fa-podcast', 4, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (18, 7, NULL, NULL, 'App Update Popup', 'App Update Popup', 'app_update_popup', 'android.update_popup', NULL, 'fa-external-link', 5, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (19, 7, NULL, NULL, 'Others Settings', 'Others Settings', 'others_settings', 'android.others', NULL, 'fa-asterisk', 6, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);
INSERT INTO `pages` VALUES (20, 6, NULL, NULL, 'Content Page', 'Content Page', 'content_page', 'settings.content_page.index', NULL, 'fa-edit', 1, NULL, 0, 1, '2025-11-01 15:41:24', '2025-11-01 15:41:24', NULL);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE,
  INDEX `password_resets_token_index`(`token` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payment_gateway
-- ----------------------------
DROP TABLE IF EXISTS `payment_gateway`;
CREATE TABLE `payment_gateway`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gateway_short_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gateway_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_gateway
-- ----------------------------
INSERT INTO `payment_gateway` VALUES (1, 'Paypal', 'For international payment', '{\"mode\":\"sandbox\",\"paypal_client_id\":null,\"paypal_secret\":null}', 0);
INSERT INTO `payment_gateway` VALUES (2, 'Stripe', 'For International Payment', '{\"stripe_secret_key\":null,\"stripe_publishable_key\":null}', 0);
INSERT INTO `payment_gateway` VALUES (3, 'Razorpay', 'Pay with Wallets and UPI', '{\"razorpay_key\":null,\"razorpay_secret\":null}', 0);
INSERT INTO `payment_gateway` VALUES (4, 'Paystack', 'Payments for Nigeria', '{\"paystack_secret_key\":null,\"paystack_public_key\":null}', 0);
INSERT INTO `payment_gateway` VALUES (6, 'PayUMoney', 'Pay with Wallets and UPI', '{\"mode\":\"sandbox\",\"payu_merchant_id\":null,\"payu_key\":null,\"payu_salt\":null}', 0);
INSERT INTO `payment_gateway` VALUES (8, 'Flutterwave', 'Payments for Africa', '{\"flutterwave_public_key\":null,\"flutterwave_secret_key\":null,\"flutterwave_encryption_key\":null}', 0);
INSERT INTO `payment_gateway` VALUES (12, 'Bank Transfer', 'Manual Bank Transfer', '{\"banktransfer_info\":\"<p><strong>Account<\\/strong>: 2223330032299999<br \\/><strong>IFSC<\\/strong>: SBIN000123456<br \\/><strong>Bank Name<\\/strong>: SBI<br \\/><strong>Beneficiary Name<\\/strong>: John Deo<\\/p>\\r\\n<p><br \\/>Transfer the exact amount for the payment to be successful. Please make payment only in the account number mentioned above.<\\/p>\\r\\n<p>If you have any questions, you can contact customer support at any time.<\\/p>\"}', 1);
INSERT INTO `payment_gateway` VALUES (13, 'Braintree', 'For International Payment', '{\"mode\":\"sandbox\",\"braintree_merchant_id\":null,\"braintree_public_key\":null,\"braintree_private_key\":null,\"braintree_merchant_account_id\":null}', 0);
INSERT INTO `payment_gateway` VALUES (14, 'SSLCOMMERZ', 'Payment for Bangladesh', '{\"mode\":\"sandbox\",\"store_id\":\"viavi66f54bdb5c9cc\",\"store_password\":\"viavi66f54bdb5c9cc@ssl\"}', 1);
INSERT INTO `payment_gateway` VALUES (15, 'CinetPay', 'CinetPay for West Africa and Central Africa', '{\"mode\":\"sandbox\",\"cinetpay_api_key\":\"903676224645c928b7f5758.24192977\",\"cinetpay_secret_key\":\"193562810164d367aebab324.18559187\",\"cinetpay_site_id\":\"608738\"}', 1);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_menu` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_slug_unique`(`slug` ASC) USING BTREE,
  INDEX `permissions_menu_id_index`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE,
  INDEX `personal_access_tokens_expires_at_index`(`expires_at` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for post_views
-- ----------------------------
DROP TABLE IF EXISTS `post_views`;
CREATE TABLE `post_views`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_views` int(11) NOT NULL DEFAULT 0,
  `post_download` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 719 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_views
-- ----------------------------
INSERT INTO `post_views` VALUES (1, 2, 'Property', 5, 0, '2025-11-13 10:15:00');
INSERT INTO `post_views` VALUES (2, 7, 'Property', 8, 1, '2025-11-13 11:20:00');
INSERT INTO `post_views` VALUES (3, 13, 'Property', 3, 0, '2025-11-13 12:05:00');
INSERT INTO `post_views` VALUES (4, 16, 'Property', 2, 0, '2025-11-13 14:30:00');
INSERT INTO `post_views` VALUES (5, 34, 'Property', 6, 0, '2025-11-13 15:45:00');
INSERT INTO `post_views` VALUES (6, 2, 'Property', 0, 0, '2025-11-16 18:21:01');
INSERT INTO `post_views` VALUES (7, 34, 'Property', 0, 0, '2025-11-16 18:34:54');
INSERT INTO `post_views` VALUES (8, 16, 'Property', 0, 0, '2025-11-16 18:34:55');
INSERT INTO `post_views` VALUES (9, 13, 'Property', 0, 0, '2025-11-16 18:34:55');
INSERT INTO `post_views` VALUES (10, 7, 'Property', 0, 0, '2025-11-16 18:34:56');
INSERT INTO `post_views` VALUES (11, 2, 'Property', 0, 0, '2025-11-16 18:34:56');
INSERT INTO `post_views` VALUES (12, 42, 'Property', 0, 0, '2025-11-16 18:34:57');
INSERT INTO `post_views` VALUES (13, 41, 'Property', 0, 0, '2025-11-16 18:34:57');
INSERT INTO `post_views` VALUES (14, 40, 'Property', 0, 0, '2025-11-16 18:34:58');
INSERT INTO `post_views` VALUES (15, 39, 'Property', 0, 0, '2025-11-16 18:34:58');
INSERT INTO `post_views` VALUES (16, 38, 'Property', 0, 0, '2025-11-16 18:34:59');
INSERT INTO `post_views` VALUES (17, 42, 'Property', 0, 0, '2025-11-16 18:35:02');
INSERT INTO `post_views` VALUES (18, 41, 'Property', 0, 0, '2025-11-16 18:35:03');
INSERT INTO `post_views` VALUES (19, 40, 'Property', 0, 0, '2025-11-16 18:35:03');
INSERT INTO `post_views` VALUES (20, 39, 'Property', 0, 0, '2025-11-16 18:35:04');
INSERT INTO `post_views` VALUES (21, 38, 'Property', 0, 0, '2025-11-16 18:35:04');
INSERT INTO `post_views` VALUES (22, 34, 'Property', 0, 0, '2025-11-16 18:35:05');
INSERT INTO `post_views` VALUES (23, 16, 'Property', 0, 0, '2025-11-16 18:35:06');
INSERT INTO `post_views` VALUES (24, 13, 'Property', 0, 0, '2025-11-16 18:35:07');
INSERT INTO `post_views` VALUES (25, 2, 'Property', 0, 0, '2025-11-16 18:35:08');
INSERT INTO `post_views` VALUES (26, 7, 'Property', 0, 0, '2025-11-16 18:35:08');
INSERT INTO `post_views` VALUES (27, 37, 'Property', 0, 0, '2025-11-16 18:35:09');
INSERT INTO `post_views` VALUES (28, 36, 'Property', 0, 0, '2025-11-16 18:35:09');
INSERT INTO `post_views` VALUES (29, 35, 'Property', 0, 0, '2025-11-16 18:35:10');
INSERT INTO `post_views` VALUES (30, 33, 'Property', 0, 0, '2025-11-16 18:35:10');
INSERT INTO `post_views` VALUES (31, 19, 'Property', 0, 0, '2025-11-16 18:35:11');
INSERT INTO `post_views` VALUES (32, 18, 'Property', 0, 0, '2025-11-16 18:35:11');
INSERT INTO `post_views` VALUES (33, 17, 'Property', 0, 0, '2025-11-16 18:35:12');
INSERT INTO `post_views` VALUES (34, 15, 'Property', 0, 0, '2025-11-16 18:35:13');
INSERT INTO `post_views` VALUES (35, 14, 'Property', 0, 0, '2025-11-16 18:35:13');
INSERT INTO `post_views` VALUES (36, 12, 'Property', 0, 0, '2025-11-16 18:35:14');
INSERT INTO `post_views` VALUES (37, 9, 'Property', 0, 0, '2025-11-16 18:35:14');
INSERT INTO `post_views` VALUES (38, 8, 'Property', 0, 0, '2025-11-16 18:35:15');
INSERT INTO `post_views` VALUES (39, 42, 'Property', 0, 0, '2025-11-16 18:35:15');
INSERT INTO `post_views` VALUES (40, 41, 'Property', 0, 0, '2025-11-16 18:35:16');
INSERT INTO `post_views` VALUES (41, 40, 'Property', 0, 0, '2025-11-16 18:35:16');
INSERT INTO `post_views` VALUES (42, 39, 'Property', 0, 0, '2025-11-16 18:35:17');
INSERT INTO `post_views` VALUES (43, 38, 'Property', 0, 0, '2025-11-16 18:35:17');
INSERT INTO `post_views` VALUES (44, 37, 'Property', 0, 0, '2025-11-16 18:35:18');
INSERT INTO `post_views` VALUES (45, 36, 'Property', 0, 0, '2025-11-16 18:35:19');
INSERT INTO `post_views` VALUES (46, 35, 'Property', 0, 0, '2025-11-16 18:35:19');
INSERT INTO `post_views` VALUES (47, 33, 'Property', 0, 0, '2025-11-16 18:35:20');
INSERT INTO `post_views` VALUES (48, 19, 'Property', 0, 0, '2025-11-16 18:35:20');
INSERT INTO `post_views` VALUES (49, 18, 'Property', 0, 0, '2025-11-16 18:35:21');
INSERT INTO `post_views` VALUES (50, 17, 'Property', 0, 0, '2025-11-16 18:35:21');
INSERT INTO `post_views` VALUES (51, 15, 'Property', 0, 0, '2025-11-16 18:35:22');
INSERT INTO `post_views` VALUES (52, 14, 'Property', 0, 0, '2025-11-16 18:35:22');
INSERT INTO `post_views` VALUES (53, 12, 'Property', 0, 0, '2025-11-16 18:35:23');
INSERT INTO `post_views` VALUES (54, 11, 'Property', 0, 0, '2025-11-16 18:35:23');
INSERT INTO `post_views` VALUES (55, 9, 'Property', 0, 0, '2025-11-16 18:35:24');
INSERT INTO `post_views` VALUES (56, 8, 'Property', 0, 0, '2025-11-16 18:35:24');
INSERT INTO `post_views` VALUES (57, 6, 'Property', 0, 0, '2025-11-16 18:35:25');
INSERT INTO `post_views` VALUES (58, 7, 'Property', 0, 0, '2025-11-16 18:35:25');
INSERT INTO `post_views` VALUES (59, 2, 'Property', 0, 0, '2025-11-16 18:35:26');
INSERT INTO `post_views` VALUES (60, 13, 'Property', 0, 0, '2025-11-16 18:35:27');
INSERT INTO `post_views` VALUES (61, 42, 'Property', 0, 0, '2025-11-16 18:35:27');
INSERT INTO `post_views` VALUES (62, 41, 'Property', 0, 0, '2025-11-16 18:35:28');
INSERT INTO `post_views` VALUES (63, 42, 'Property', 0, 0, '2025-11-16 18:35:28');
INSERT INTO `post_views` VALUES (64, 39, 'Property', 0, 0, '2025-11-16 18:35:29');
INSERT INTO `post_views` VALUES (65, 38, 'Property', 0, 0, '2025-11-16 18:35:29');
INSERT INTO `post_views` VALUES (66, 41, 'Property', 0, 0, '2025-11-16 18:35:30');
INSERT INTO `post_views` VALUES (67, 40, 'Property', 0, 0, '2025-11-16 18:35:30');
INSERT INTO `post_views` VALUES (68, 37, 'Property', 0, 0, '2025-11-16 18:35:31');
INSERT INTO `post_views` VALUES (69, 36, 'Property', 0, 0, '2025-11-16 18:35:31');
INSERT INTO `post_views` VALUES (70, 35, 'Property', 0, 0, '2025-11-16 18:35:32');
INSERT INTO `post_views` VALUES (71, 33, 'Property', 0, 0, '2025-11-16 18:35:32');
INSERT INTO `post_views` VALUES (72, 19, 'Property', 0, 0, '2025-11-16 18:35:33');
INSERT INTO `post_views` VALUES (73, 18, 'Property', 0, 0, '2025-11-16 18:35:34');
INSERT INTO `post_views` VALUES (74, 17, 'Property', 0, 0, '2025-11-16 18:35:34');
INSERT INTO `post_views` VALUES (75, 15, 'Property', 0, 0, '2025-11-16 18:35:35');
INSERT INTO `post_views` VALUES (76, 14, 'Property', 0, 0, '2025-11-16 18:35:35');
INSERT INTO `post_views` VALUES (77, 12, 'Property', 0, 0, '2025-11-16 18:35:36');
INSERT INTO `post_views` VALUES (78, 42, 'Property', 0, 0, '2025-11-16 18:35:36');
INSERT INTO `post_views` VALUES (79, 41, 'Property', 0, 0, '2025-11-16 18:35:37');
INSERT INTO `post_views` VALUES (80, 40, 'Property', 0, 0, '2025-11-16 18:35:37');
INSERT INTO `post_views` VALUES (81, 39, 'Property', 0, 0, '2025-11-16 18:35:38');
INSERT INTO `post_views` VALUES (82, 38, 'Property', 0, 0, '2025-11-16 18:35:38');
INSERT INTO `post_views` VALUES (83, 37, 'Property', 0, 0, '2025-11-16 18:35:39');
INSERT INTO `post_views` VALUES (84, 36, 'Property', 0, 0, '2025-11-16 18:35:39');
INSERT INTO `post_views` VALUES (85, 35, 'Property', 0, 0, '2025-11-16 18:35:40');
INSERT INTO `post_views` VALUES (86, 33, 'Property', 0, 0, '2025-11-16 18:35:40');
INSERT INTO `post_views` VALUES (87, 19, 'Property', 0, 0, '2025-11-16 18:35:41');
INSERT INTO `post_views` VALUES (88, 18, 'Property', 0, 0, '2025-11-16 18:35:42');
INSERT INTO `post_views` VALUES (89, 42, 'Property', 0, 0, '2025-11-16 18:36:38');
INSERT INTO `post_views` VALUES (90, 42, 'Property', 0, 0, '2025-11-16 18:36:40');
INSERT INTO `post_views` VALUES (91, 42, 'Property', 0, 0, '2025-11-16 18:36:40');
INSERT INTO `post_views` VALUES (92, 35, 'Property', 0, 0, '2025-11-16 18:37:11');
INSERT INTO `post_views` VALUES (93, 35, 'Property', 0, 0, '2025-11-16 18:37:13');
INSERT INTO `post_views` VALUES (94, 35, 'Property', 0, 0, '2025-11-16 18:37:14');
INSERT INTO `post_views` VALUES (95, 35, 'Property', 0, 0, '2025-11-16 18:37:14');
INSERT INTO `post_views` VALUES (96, 42, 'Property', 0, 0, '2025-11-16 18:37:19');
INSERT INTO `post_views` VALUES (97, 42, 'Property', 0, 0, '2025-11-16 18:37:19');
INSERT INTO `post_views` VALUES (98, 42, 'Property', 0, 0, '2025-11-16 18:37:20');
INSERT INTO `post_views` VALUES (99, 17, 'Property', 0, 0, '2025-11-16 18:38:28');
INSERT INTO `post_views` VALUES (100, 17, 'Property', 0, 0, '2025-11-16 18:38:29');
INSERT INTO `post_views` VALUES (101, 17, 'Property', 0, 0, '2025-11-16 18:38:30');
INSERT INTO `post_views` VALUES (102, 17, 'Property', 0, 0, '2025-11-16 18:38:30');
INSERT INTO `post_views` VALUES (103, 18, 'Property', 0, 0, '2025-11-16 18:38:31');
INSERT INTO `post_views` VALUES (104, 18, 'Property', 0, 0, '2025-11-16 18:38:31');
INSERT INTO `post_views` VALUES (105, 18, 'Property', 0, 0, '2025-11-16 18:38:32');
INSERT INTO `post_views` VALUES (106, 18, 'Property', 0, 0, '2025-11-16 18:38:32');
INSERT INTO `post_views` VALUES (107, 18, 'Property', 0, 0, '2025-11-16 18:38:33');
INSERT INTO `post_views` VALUES (108, 18, 'Property', 0, 0, '2025-11-16 18:38:33');
INSERT INTO `post_views` VALUES (109, 18, 'Property', 0, 0, '2025-11-16 18:38:34');
INSERT INTO `post_views` VALUES (110, 18, 'Property', 0, 0, '2025-11-16 18:38:43');
INSERT INTO `post_views` VALUES (111, 42, 'Property', 0, 0, '2025-11-16 18:42:14');
INSERT INTO `post_views` VALUES (112, 38, 'Property', 0, 0, '2025-11-17 05:36:27');
INSERT INTO `post_views` VALUES (113, 16, 'Property', 0, 0, '2025-11-17 05:40:13');
INSERT INTO `post_views` VALUES (114, 16, 'Property', 0, 0, '2025-11-17 05:40:18');
INSERT INTO `post_views` VALUES (115, 16, 'Property', 0, 0, '2025-11-17 05:40:24');
INSERT INTO `post_views` VALUES (116, 42, 'Property', 0, 0, '2025-11-17 05:40:36');
INSERT INTO `post_views` VALUES (117, 16, 'Property', 0, 0, '2025-11-17 05:41:06');
INSERT INTO `post_views` VALUES (118, 7, 'Property', 0, 0, '2025-11-17 05:57:49');
INSERT INTO `post_views` VALUES (119, 34, 'Property', 0, 0, '2025-11-17 06:05:21');
INSERT INTO `post_views` VALUES (120, 7, 'Property', 0, 0, '2025-11-17 06:07:23');
INSERT INTO `post_views` VALUES (121, 39, 'Property', 0, 0, '2025-11-17 06:08:00');
INSERT INTO `post_views` VALUES (122, 34, 'Property', 0, 0, '2025-11-17 06:10:47');
INSERT INTO `post_views` VALUES (123, 2, 'Property', 0, 0, '2025-11-17 06:46:36');
INSERT INTO `post_views` VALUES (124, 38, 'Property', 0, 0, '2025-11-17 06:51:07');
INSERT INTO `post_views` VALUES (125, 16, 'Property', 0, 0, '2025-11-17 08:45:41');
INSERT INTO `post_views` VALUES (126, 34, 'Property', 0, 0, '2025-11-17 08:48:49');
INSERT INTO `post_views` VALUES (127, 9, 'Property', 0, 0, '2025-11-17 08:50:01');
INSERT INTO `post_views` VALUES (128, 16, 'Property', 0, 0, '2025-11-17 08:51:50');
INSERT INTO `post_views` VALUES (129, 19, 'Property', 0, 0, '2025-11-17 08:53:49');
INSERT INTO `post_views` VALUES (130, 19, 'Property', 0, 0, '2025-11-17 08:54:02');
INSERT INTO `post_views` VALUES (131, 7, 'Property', 0, 0, '2025-11-17 08:57:40');
INSERT INTO `post_views` VALUES (132, 16, 'Property', 0, 0, '2025-11-20 16:20:16');
INSERT INTO `post_views` VALUES (133, 2, 'Property', 0, 0, '2025-11-20 16:20:36');
INSERT INTO `post_views` VALUES (134, 34, 'Property', 0, 0, '2025-11-20 18:57:51');
INSERT INTO `post_views` VALUES (135, 16, 'Property', 0, 0, '2025-11-21 08:03:59');
INSERT INTO `post_views` VALUES (136, 41, 'Property', 0, 0, '2025-11-21 08:05:35');
INSERT INTO `post_views` VALUES (137, 41, 'Property', 0, 0, '2025-11-21 08:30:15');
INSERT INTO `post_views` VALUES (138, 42, 'Property', 0, 0, '2025-11-21 08:32:09');
INSERT INTO `post_views` VALUES (139, 40, 'Property', 0, 0, '2025-11-21 08:33:03');
INSERT INTO `post_views` VALUES (140, 42, 'Property', 0, 0, '2025-11-21 08:38:30');
INSERT INTO `post_views` VALUES (141, 16, 'Property', 0, 0, '2025-11-21 08:58:06');
INSERT INTO `post_views` VALUES (142, 13, 'Property', 0, 0, '2025-11-21 08:58:06');
INSERT INTO `post_views` VALUES (143, 34, 'Property', 0, 0, '2025-11-21 08:58:06');
INSERT INTO `post_views` VALUES (144, 2, 'Property', 0, 0, '2025-11-21 08:58:07');
INSERT INTO `post_views` VALUES (145, 7, 'Property', 0, 0, '2025-11-21 08:58:08');
INSERT INTO `post_views` VALUES (146, 34, 'Property', 0, 0, '2025-11-21 08:58:10');
INSERT INTO `post_views` VALUES (147, 16, 'Property', 0, 0, '2025-11-21 08:58:10');
INSERT INTO `post_views` VALUES (148, 13, 'Property', 0, 0, '2025-11-21 08:58:11');
INSERT INTO `post_views` VALUES (149, 7, 'Property', 0, 0, '2025-11-21 08:58:11');
INSERT INTO `post_views` VALUES (150, 2, 'Property', 0, 0, '2025-11-21 08:58:12');
INSERT INTO `post_views` VALUES (151, 42, 'Property', 0, 0, '2025-11-21 08:58:13');
INSERT INTO `post_views` VALUES (152, 41, 'Property', 0, 0, '2025-11-21 08:58:13');
INSERT INTO `post_views` VALUES (153, 40, 'Property', 0, 0, '2025-11-21 08:58:14');
INSERT INTO `post_views` VALUES (154, 39, 'Property', 0, 0, '2025-11-21 08:58:14');
INSERT INTO `post_views` VALUES (155, 38, 'Property', 0, 0, '2025-11-21 08:58:15');
INSERT INTO `post_views` VALUES (156, 37, 'Property', 0, 0, '2025-11-21 08:58:15');
INSERT INTO `post_views` VALUES (157, 36, 'Property', 0, 0, '2025-11-21 08:58:16');
INSERT INTO `post_views` VALUES (158, 35, 'Property', 0, 0, '2025-11-21 08:58:16');
INSERT INTO `post_views` VALUES (159, 33, 'Property', 0, 0, '2025-11-21 08:58:17');
INSERT INTO `post_views` VALUES (160, 19, 'Property', 0, 0, '2025-11-21 08:58:17');
INSERT INTO `post_views` VALUES (161, 18, 'Property', 0, 0, '2025-11-21 08:58:18');
INSERT INTO `post_views` VALUES (162, 17, 'Property', 0, 0, '2025-11-21 08:58:18');
INSERT INTO `post_views` VALUES (163, 15, 'Property', 0, 0, '2025-11-21 08:58:18');
INSERT INTO `post_views` VALUES (164, 14, 'Property', 0, 0, '2025-11-21 08:58:19');
INSERT INTO `post_views` VALUES (165, 12, 'Property', 0, 0, '2025-11-21 08:58:20');
INSERT INTO `post_views` VALUES (166, 11, 'Property', 0, 0, '2025-11-21 08:58:20');
INSERT INTO `post_views` VALUES (167, 9, 'Property', 0, 0, '2025-11-21 08:58:21');
INSERT INTO `post_views` VALUES (168, 8, 'Property', 0, 0, '2025-11-21 08:58:21');
INSERT INTO `post_views` VALUES (169, 6, 'Property', 0, 0, '2025-11-21 08:58:22');
INSERT INTO `post_views` VALUES (170, 34, 'Property', 0, 0, '2025-11-21 08:58:23');
INSERT INTO `post_views` VALUES (171, 16, 'Property', 0, 0, '2025-11-21 08:58:23');
INSERT INTO `post_views` VALUES (172, 13, 'Property', 0, 0, '2025-11-21 08:58:24');
INSERT INTO `post_views` VALUES (173, 7, 'Property', 0, 0, '2025-11-21 08:58:24');
INSERT INTO `post_views` VALUES (174, 2, 'Property', 0, 0, '2025-11-21 08:58:25');
INSERT INTO `post_views` VALUES (175, 42, 'Property', 0, 0, '2025-11-21 08:58:25');
INSERT INTO `post_views` VALUES (176, 41, 'Property', 0, 0, '2025-11-21 08:58:26');
INSERT INTO `post_views` VALUES (177, 40, 'Property', 0, 0, '2025-11-21 08:58:26');
INSERT INTO `post_views` VALUES (178, 39, 'Property', 0, 0, '2025-11-21 08:58:27');
INSERT INTO `post_views` VALUES (179, 38, 'Property', 0, 0, '2025-11-21 08:58:27');
INSERT INTO `post_views` VALUES (180, 34, 'Property', 0, 0, '2025-11-21 09:16:48');
INSERT INTO `post_views` VALUES (181, 16, 'Property', 0, 0, '2025-11-21 09:16:49');
INSERT INTO `post_views` VALUES (182, 13, 'Property', 0, 0, '2025-11-21 09:16:49');
INSERT INTO `post_views` VALUES (183, 7, 'Property', 0, 0, '2025-11-21 09:16:50');
INSERT INTO `post_views` VALUES (184, 2, 'Property', 0, 0, '2025-11-21 09:16:50');
INSERT INTO `post_views` VALUES (185, 42, 'Property', 0, 0, '2025-11-21 09:16:51');
INSERT INTO `post_views` VALUES (186, 41, 'Property', 0, 0, '2025-11-21 09:16:51');
INSERT INTO `post_views` VALUES (187, 40, 'Property', 0, 0, '2025-11-21 09:16:52');
INSERT INTO `post_views` VALUES (188, 42, 'Property', 0, 0, '2025-11-21 09:22:45');
INSERT INTO `post_views` VALUES (189, 42, 'Property', 0, 0, '2025-11-21 09:23:45');
INSERT INTO `post_views` VALUES (190, 42, 'Property', 0, 0, '2025-11-21 09:23:45');
INSERT INTO `post_views` VALUES (191, 42, 'Property', 0, 0, '2025-11-21 09:23:46');
INSERT INTO `post_views` VALUES (192, 42, 'Property', 0, 0, '2025-11-21 09:23:46');
INSERT INTO `post_views` VALUES (193, 42, 'Property', 0, 0, '2025-11-21 09:23:47');
INSERT INTO `post_views` VALUES (194, 42, 'Property', 0, 0, '2025-11-21 09:23:47');
INSERT INTO `post_views` VALUES (195, 42, 'Property', 0, 0, '2025-11-21 09:23:48');
INSERT INTO `post_views` VALUES (196, 42, 'Property', 0, 0, '2025-11-21 09:23:49');
INSERT INTO `post_views` VALUES (197, 42, 'Property', 0, 0, '2025-11-21 09:23:49');
INSERT INTO `post_views` VALUES (198, 42, 'Property', 0, 0, '2025-11-21 09:23:50');
INSERT INTO `post_views` VALUES (199, 42, 'Property', 0, 0, '2025-11-21 09:23:50');
INSERT INTO `post_views` VALUES (200, 42, 'Property', 0, 0, '2025-11-21 09:23:51');
INSERT INTO `post_views` VALUES (201, 42, 'Property', 0, 0, '2025-11-21 09:23:51');
INSERT INTO `post_views` VALUES (202, 42, 'Property', 0, 0, '2025-11-21 09:23:52');
INSERT INTO `post_views` VALUES (203, 42, 'Property', 0, 0, '2025-11-21 09:23:52');
INSERT INTO `post_views` VALUES (204, 42, 'Property', 0, 0, '2025-11-21 09:23:53');
INSERT INTO `post_views` VALUES (205, 42, 'Property', 0, 0, '2025-11-21 09:23:53');
INSERT INTO `post_views` VALUES (206, 42, 'Property', 0, 0, '2025-11-21 09:23:54');
INSERT INTO `post_views` VALUES (207, 42, 'Property', 0, 0, '2025-11-21 09:23:55');
INSERT INTO `post_views` VALUES (208, 42, 'Property', 0, 0, '2025-11-21 09:23:56');
INSERT INTO `post_views` VALUES (209, 42, 'Property', 0, 0, '2025-11-21 09:23:56');
INSERT INTO `post_views` VALUES (210, 42, 'Property', 0, 0, '2025-11-21 09:23:57');
INSERT INTO `post_views` VALUES (211, 42, 'Property', 0, 0, '2025-11-21 09:23:59');
INSERT INTO `post_views` VALUES (212, 42, 'Property', 0, 0, '2025-11-21 09:23:59');
INSERT INTO `post_views` VALUES (213, 42, 'Property', 0, 0, '2025-11-21 09:24:00');
INSERT INTO `post_views` VALUES (214, 42, 'Property', 0, 0, '2025-11-21 09:24:01');
INSERT INTO `post_views` VALUES (215, 42, 'Property', 0, 0, '2025-11-21 09:24:01');
INSERT INTO `post_views` VALUES (216, 42, 'Property', 0, 0, '2025-11-21 09:24:03');
INSERT INTO `post_views` VALUES (217, 42, 'Property', 0, 0, '2025-11-21 09:24:04');
INSERT INTO `post_views` VALUES (218, 42, 'Property', 0, 0, '2025-11-21 09:24:04');
INSERT INTO `post_views` VALUES (219, 42, 'Property', 0, 0, '2025-11-21 09:24:05');
INSERT INTO `post_views` VALUES (220, 42, 'Property', 0, 0, '2025-11-21 09:24:05');
INSERT INTO `post_views` VALUES (221, 42, 'Property', 0, 0, '2025-11-21 09:24:06');
INSERT INTO `post_views` VALUES (222, 42, 'Property', 0, 0, '2025-11-21 09:24:06');
INSERT INTO `post_views` VALUES (223, 42, 'Property', 0, 0, '2025-11-21 09:24:07');
INSERT INTO `post_views` VALUES (224, 42, 'Property', 0, 0, '2025-11-21 09:24:08');
INSERT INTO `post_views` VALUES (225, 42, 'Property', 0, 0, '2025-11-21 09:24:09');
INSERT INTO `post_views` VALUES (226, 42, 'Property', 0, 0, '2025-11-21 09:24:10');
INSERT INTO `post_views` VALUES (227, 42, 'Property', 0, 0, '2025-11-21 09:24:11');
INSERT INTO `post_views` VALUES (228, 42, 'Property', 0, 0, '2025-11-21 09:24:11');
INSERT INTO `post_views` VALUES (229, 42, 'Property', 0, 0, '2025-11-21 09:24:12');
INSERT INTO `post_views` VALUES (230, 42, 'Property', 0, 0, '2025-11-21 09:24:13');
INSERT INTO `post_views` VALUES (231, 42, 'Property', 0, 0, '2025-11-21 09:24:13');
INSERT INTO `post_views` VALUES (232, 42, 'Property', 0, 0, '2025-11-21 09:24:14');
INSERT INTO `post_views` VALUES (233, 42, 'Property', 0, 0, '2025-11-21 09:24:14');
INSERT INTO `post_views` VALUES (234, 42, 'Property', 0, 0, '2025-11-21 09:24:15');
INSERT INTO `post_views` VALUES (235, 42, 'Property', 0, 0, '2025-11-21 09:24:16');
INSERT INTO `post_views` VALUES (236, 42, 'Property', 0, 0, '2025-11-21 09:24:16');
INSERT INTO `post_views` VALUES (237, 42, 'Property', 0, 0, '2025-11-21 09:24:17');
INSERT INTO `post_views` VALUES (238, 42, 'Property', 0, 0, '2025-11-21 09:24:17');
INSERT INTO `post_views` VALUES (239, 42, 'Property', 0, 0, '2025-11-21 09:24:18');
INSERT INTO `post_views` VALUES (240, 42, 'Property', 0, 0, '2025-11-21 09:24:18');
INSERT INTO `post_views` VALUES (241, 42, 'Property', 0, 0, '2025-11-21 09:24:19');
INSERT INTO `post_views` VALUES (242, 42, 'Property', 0, 0, '2025-11-21 09:24:19');
INSERT INTO `post_views` VALUES (243, 42, 'Property', 0, 0, '2025-11-21 09:24:20');
INSERT INTO `post_views` VALUES (244, 42, 'Property', 0, 0, '2025-11-21 09:24:20');
INSERT INTO `post_views` VALUES (245, 42, 'Property', 0, 0, '2025-11-21 09:24:20');
INSERT INTO `post_views` VALUES (246, 42, 'Property', 0, 0, '2025-11-21 09:24:20');
INSERT INTO `post_views` VALUES (247, 42, 'Property', 0, 0, '2025-11-21 09:24:21');
INSERT INTO `post_views` VALUES (248, 42, 'Property', 0, 0, '2025-11-21 09:24:22');
INSERT INTO `post_views` VALUES (249, 42, 'Property', 0, 0, '2025-11-21 09:24:22');
INSERT INTO `post_views` VALUES (250, 42, 'Property', 0, 0, '2025-11-21 09:24:23');
INSERT INTO `post_views` VALUES (251, 42, 'Property', 0, 0, '2025-11-21 09:24:23');
INSERT INTO `post_views` VALUES (252, 42, 'Property', 0, 0, '2025-11-21 09:24:24');
INSERT INTO `post_views` VALUES (253, 42, 'Property', 0, 0, '2025-11-21 09:24:25');
INSERT INTO `post_views` VALUES (254, 42, 'Property', 0, 0, '2025-11-21 09:24:27');
INSERT INTO `post_views` VALUES (255, 42, 'Property', 0, 0, '2025-11-21 09:24:28');
INSERT INTO `post_views` VALUES (256, 42, 'Property', 0, 0, '2025-11-21 09:24:28');
INSERT INTO `post_views` VALUES (257, 42, 'Property', 0, 0, '2025-11-21 09:24:29');
INSERT INTO `post_views` VALUES (258, 42, 'Property', 0, 0, '2025-11-21 09:24:29');
INSERT INTO `post_views` VALUES (259, 42, 'Property', 0, 0, '2025-11-21 09:24:30');
INSERT INTO `post_views` VALUES (260, 42, 'Property', 0, 0, '2025-11-21 09:24:30');
INSERT INTO `post_views` VALUES (261, 42, 'Property', 0, 0, '2025-11-21 09:24:31');
INSERT INTO `post_views` VALUES (262, 42, 'Property', 0, 0, '2025-11-21 09:24:32');
INSERT INTO `post_views` VALUES (263, 42, 'Property', 0, 0, '2025-11-21 09:24:33');
INSERT INTO `post_views` VALUES (264, 42, 'Property', 0, 0, '2025-11-21 09:24:34');
INSERT INTO `post_views` VALUES (265, 42, 'Property', 0, 0, '2025-11-21 09:24:35');
INSERT INTO `post_views` VALUES (266, 42, 'Property', 0, 0, '2025-11-21 09:24:36');
INSERT INTO `post_views` VALUES (267, 42, 'Property', 0, 0, '2025-11-21 09:24:36');
INSERT INTO `post_views` VALUES (268, 42, 'Property', 0, 0, '2025-11-21 09:24:37');
INSERT INTO `post_views` VALUES (269, 42, 'Property', 0, 0, '2025-11-21 09:24:37');
INSERT INTO `post_views` VALUES (270, 42, 'Property', 0, 0, '2025-11-21 09:24:38');
INSERT INTO `post_views` VALUES (271, 42, 'Property', 0, 0, '2025-11-21 09:24:39');
INSERT INTO `post_views` VALUES (272, 42, 'Property', 0, 0, '2025-11-21 09:24:40');
INSERT INTO `post_views` VALUES (273, 42, 'Property', 0, 0, '2025-11-21 09:24:41');
INSERT INTO `post_views` VALUES (274, 42, 'Property', 0, 0, '2025-11-21 09:24:42');
INSERT INTO `post_views` VALUES (275, 42, 'Property', 0, 0, '2025-11-21 09:24:42');
INSERT INTO `post_views` VALUES (276, 42, 'Property', 0, 0, '2025-11-21 09:24:43');
INSERT INTO `post_views` VALUES (277, 42, 'Property', 0, 0, '2025-11-21 09:24:44');
INSERT INTO `post_views` VALUES (278, 42, 'Property', 0, 0, '2025-11-21 09:24:44');
INSERT INTO `post_views` VALUES (279, 42, 'Property', 0, 0, '2025-11-21 09:24:45');
INSERT INTO `post_views` VALUES (280, 42, 'Property', 0, 0, '2025-11-21 09:24:45');
INSERT INTO `post_views` VALUES (281, 42, 'Property', 0, 0, '2025-11-21 09:24:46');
INSERT INTO `post_views` VALUES (282, 42, 'Property', 0, 0, '2025-11-21 09:24:48');
INSERT INTO `post_views` VALUES (283, 42, 'Property', 0, 0, '2025-11-21 09:24:49');
INSERT INTO `post_views` VALUES (284, 42, 'Property', 0, 0, '2025-11-21 09:24:50');
INSERT INTO `post_views` VALUES (285, 42, 'Property', 0, 0, '2025-11-21 09:24:51');
INSERT INTO `post_views` VALUES (286, 42, 'Property', 0, 0, '2025-11-21 09:24:51');
INSERT INTO `post_views` VALUES (287, 42, 'Property', 0, 0, '2025-11-21 09:24:52');
INSERT INTO `post_views` VALUES (288, 42, 'Property', 0, 0, '2025-11-21 09:24:52');
INSERT INTO `post_views` VALUES (289, 42, 'Property', 0, 0, '2025-11-21 09:24:53');
INSERT INTO `post_views` VALUES (290, 42, 'Property', 0, 0, '2025-11-21 09:24:54');
INSERT INTO `post_views` VALUES (291, 42, 'Property', 0, 0, '2025-11-21 09:24:55');
INSERT INTO `post_views` VALUES (292, 42, 'Property', 0, 0, '2025-11-21 09:24:56');
INSERT INTO `post_views` VALUES (293, 42, 'Property', 0, 0, '2025-11-21 09:24:56');
INSERT INTO `post_views` VALUES (294, 42, 'Property', 0, 0, '2025-11-21 09:24:57');
INSERT INTO `post_views` VALUES (295, 42, 'Property', 0, 0, '2025-11-21 09:24:57');
INSERT INTO `post_views` VALUES (296, 42, 'Property', 0, 0, '2025-11-21 09:24:58');
INSERT INTO `post_views` VALUES (297, 42, 'Property', 0, 0, '2025-11-21 09:24:59');
INSERT INTO `post_views` VALUES (298, 42, 'Property', 0, 0, '2025-11-21 09:25:00');
INSERT INTO `post_views` VALUES (299, 42, 'Property', 0, 0, '2025-11-21 09:25:00');
INSERT INTO `post_views` VALUES (300, 42, 'Property', 0, 0, '2025-11-21 09:25:01');
INSERT INTO `post_views` VALUES (301, 42, 'Property', 0, 0, '2025-11-21 09:25:01');
INSERT INTO `post_views` VALUES (302, 42, 'Property', 0, 0, '2025-11-21 09:25:02');
INSERT INTO `post_views` VALUES (303, 42, 'Property', 0, 0, '2025-11-21 09:25:03');
INSERT INTO `post_views` VALUES (304, 42, 'Property', 0, 0, '2025-11-21 09:25:03');
INSERT INTO `post_views` VALUES (305, 42, 'Property', 0, 0, '2025-11-21 09:25:04');
INSERT INTO `post_views` VALUES (306, 42, 'Property', 0, 0, '2025-11-21 09:25:04');
INSERT INTO `post_views` VALUES (307, 42, 'Property', 0, 0, '2025-11-21 09:25:05');
INSERT INTO `post_views` VALUES (308, 42, 'Property', 0, 0, '2025-11-21 09:25:06');
INSERT INTO `post_views` VALUES (309, 42, 'Property', 0, 0, '2025-11-21 09:25:07');
INSERT INTO `post_views` VALUES (310, 42, 'Property', 0, 0, '2025-11-21 09:25:07');
INSERT INTO `post_views` VALUES (311, 42, 'Property', 0, 0, '2025-11-21 09:25:08');
INSERT INTO `post_views` VALUES (312, 42, 'Property', 0, 0, '2025-11-21 09:25:09');
INSERT INTO `post_views` VALUES (313, 42, 'Property', 0, 0, '2025-11-21 09:25:10');
INSERT INTO `post_views` VALUES (314, 42, 'Property', 0, 0, '2025-11-21 09:25:10');
INSERT INTO `post_views` VALUES (315, 42, 'Property', 0, 0, '2025-11-21 09:25:11');
INSERT INTO `post_views` VALUES (316, 42, 'Property', 0, 0, '2025-11-21 09:25:12');
INSERT INTO `post_views` VALUES (317, 42, 'Property', 0, 0, '2025-11-21 09:25:12');
INSERT INTO `post_views` VALUES (318, 42, 'Property', 0, 0, '2025-11-21 09:25:13');
INSERT INTO `post_views` VALUES (319, 42, 'Property', 0, 0, '2025-11-21 09:25:13');
INSERT INTO `post_views` VALUES (320, 42, 'Property', 0, 0, '2025-11-21 09:25:14');
INSERT INTO `post_views` VALUES (321, 42, 'Property', 0, 0, '2025-11-21 09:25:15');
INSERT INTO `post_views` VALUES (322, 42, 'Property', 0, 0, '2025-11-21 09:25:15');
INSERT INTO `post_views` VALUES (323, 42, 'Property', 0, 0, '2025-11-21 09:25:16');
INSERT INTO `post_views` VALUES (324, 42, 'Property', 0, 0, '2025-11-21 09:25:16');
INSERT INTO `post_views` VALUES (325, 42, 'Property', 0, 0, '2025-11-21 09:25:17');
INSERT INTO `post_views` VALUES (326, 42, 'Property', 0, 0, '2025-11-21 09:25:18');
INSERT INTO `post_views` VALUES (327, 42, 'Property', 0, 0, '2025-11-21 09:25:18');
INSERT INTO `post_views` VALUES (328, 42, 'Property', 0, 0, '2025-11-21 09:25:19');
INSERT INTO `post_views` VALUES (329, 42, 'Property', 0, 0, '2025-11-21 09:25:19');
INSERT INTO `post_views` VALUES (330, 42, 'Property', 0, 0, '2025-11-21 09:25:20');
INSERT INTO `post_views` VALUES (331, 42, 'Property', 0, 0, '2025-11-21 09:25:20');
INSERT INTO `post_views` VALUES (332, 42, 'Property', 0, 0, '2025-11-21 09:25:21');
INSERT INTO `post_views` VALUES (333, 42, 'Property', 0, 0, '2025-11-21 09:25:21');
INSERT INTO `post_views` VALUES (334, 42, 'Property', 0, 0, '2025-11-21 09:25:22');
INSERT INTO `post_views` VALUES (335, 42, 'Property', 0, 0, '2025-11-21 09:25:22');
INSERT INTO `post_views` VALUES (336, 42, 'Property', 0, 0, '2025-11-21 09:25:22');
INSERT INTO `post_views` VALUES (337, 42, 'Property', 0, 0, '2025-11-21 09:25:22');
INSERT INTO `post_views` VALUES (338, 42, 'Property', 0, 0, '2025-11-21 09:25:23');
INSERT INTO `post_views` VALUES (339, 42, 'Property', 0, 0, '2025-11-21 09:25:23');
INSERT INTO `post_views` VALUES (340, 42, 'Property', 0, 0, '2025-11-21 09:25:23');
INSERT INTO `post_views` VALUES (341, 42, 'Property', 0, 0, '2025-11-21 09:25:24');
INSERT INTO `post_views` VALUES (342, 42, 'Property', 0, 0, '2025-11-21 09:25:24');
INSERT INTO `post_views` VALUES (343, 42, 'Property', 0, 0, '2025-11-21 09:25:24');
INSERT INTO `post_views` VALUES (344, 42, 'Property', 0, 0, '2025-11-21 09:25:24');
INSERT INTO `post_views` VALUES (345, 42, 'Property', 0, 0, '2025-11-21 09:25:25');
INSERT INTO `post_views` VALUES (346, 42, 'Property', 0, 0, '2025-11-21 09:25:25');
INSERT INTO `post_views` VALUES (347, 42, 'Property', 0, 0, '2025-11-21 09:25:25');
INSERT INTO `post_views` VALUES (348, 42, 'Property', 0, 0, '2025-11-21 09:25:25');
INSERT INTO `post_views` VALUES (349, 42, 'Property', 0, 0, '2025-11-21 09:25:26');
INSERT INTO `post_views` VALUES (350, 42, 'Property', 0, 0, '2025-11-21 09:25:26');
INSERT INTO `post_views` VALUES (351, 42, 'Property', 0, 0, '2025-11-21 09:25:26');
INSERT INTO `post_views` VALUES (352, 42, 'Property', 0, 0, '2025-11-21 09:25:27');
INSERT INTO `post_views` VALUES (353, 42, 'Property', 0, 0, '2025-11-21 09:25:27');
INSERT INTO `post_views` VALUES (354, 42, 'Property', 0, 0, '2025-11-21 09:25:28');
INSERT INTO `post_views` VALUES (355, 42, 'Property', 0, 0, '2025-11-21 09:25:29');
INSERT INTO `post_views` VALUES (356, 42, 'Property', 0, 0, '2025-11-21 09:25:29');
INSERT INTO `post_views` VALUES (357, 42, 'Property', 0, 0, '2025-11-21 09:25:30');
INSERT INTO `post_views` VALUES (358, 42, 'Property', 0, 0, '2025-11-21 09:25:30');
INSERT INTO `post_views` VALUES (359, 42, 'Property', 0, 0, '2025-11-21 09:25:31');
INSERT INTO `post_views` VALUES (360, 42, 'Property', 0, 0, '2025-11-21 09:25:31');
INSERT INTO `post_views` VALUES (361, 42, 'Property', 0, 0, '2025-11-21 09:25:32');
INSERT INTO `post_views` VALUES (362, 42, 'Property', 0, 0, '2025-11-21 09:25:32');
INSERT INTO `post_views` VALUES (363, 42, 'Property', 0, 0, '2025-11-21 09:25:32');
INSERT INTO `post_views` VALUES (364, 42, 'Property', 0, 0, '2025-11-21 09:25:33');
INSERT INTO `post_views` VALUES (365, 42, 'Property', 0, 0, '2025-11-21 09:25:33');
INSERT INTO `post_views` VALUES (366, 42, 'Property', 0, 0, '2025-11-21 09:25:34');
INSERT INTO `post_views` VALUES (367, 42, 'Property', 0, 0, '2025-11-21 09:25:34');
INSERT INTO `post_views` VALUES (368, 42, 'Property', 0, 0, '2025-11-21 09:25:34');
INSERT INTO `post_views` VALUES (369, 42, 'Property', 0, 0, '2025-11-21 09:25:35');
INSERT INTO `post_views` VALUES (370, 42, 'Property', 0, 0, '2025-11-21 09:25:35');
INSERT INTO `post_views` VALUES (371, 42, 'Property', 0, 0, '2025-11-21 09:25:36');
INSERT INTO `post_views` VALUES (372, 42, 'Property', 0, 0, '2025-11-21 09:25:36');
INSERT INTO `post_views` VALUES (373, 42, 'Property', 0, 0, '2025-11-21 09:25:37');
INSERT INTO `post_views` VALUES (374, 42, 'Property', 0, 0, '2025-11-21 09:25:38');
INSERT INTO `post_views` VALUES (375, 42, 'Property', 0, 0, '2025-11-21 09:25:38');
INSERT INTO `post_views` VALUES (376, 42, 'Property', 0, 0, '2025-11-21 09:25:39');
INSERT INTO `post_views` VALUES (377, 42, 'Property', 0, 0, '2025-11-21 09:25:39');
INSERT INTO `post_views` VALUES (378, 42, 'Property', 0, 0, '2025-11-21 09:25:40');
INSERT INTO `post_views` VALUES (379, 42, 'Property', 0, 0, '2025-11-21 09:25:41');
INSERT INTO `post_views` VALUES (380, 42, 'Property', 0, 0, '2025-11-21 09:25:42');
INSERT INTO `post_views` VALUES (381, 42, 'Property', 0, 0, '2025-11-21 09:25:42');
INSERT INTO `post_views` VALUES (382, 42, 'Property', 0, 0, '2025-11-21 09:25:43');
INSERT INTO `post_views` VALUES (383, 42, 'Property', 0, 0, '2025-11-21 09:25:43');
INSERT INTO `post_views` VALUES (384, 42, 'Property', 0, 0, '2025-11-21 09:25:44');
INSERT INTO `post_views` VALUES (385, 42, 'Property', 0, 0, '2025-11-21 09:25:45');
INSERT INTO `post_views` VALUES (386, 42, 'Property', 0, 0, '2025-11-21 09:25:45');
INSERT INTO `post_views` VALUES (387, 42, 'Property', 0, 0, '2025-11-21 09:25:46');
INSERT INTO `post_views` VALUES (388, 42, 'Property', 0, 0, '2025-11-21 09:25:46');
INSERT INTO `post_views` VALUES (389, 42, 'Property', 0, 0, '2025-11-21 09:25:47');
INSERT INTO `post_views` VALUES (390, 42, 'Property', 0, 0, '2025-11-21 09:25:49');
INSERT INTO `post_views` VALUES (391, 42, 'Property', 0, 0, '2025-11-21 09:25:49');
INSERT INTO `post_views` VALUES (392, 42, 'Property', 0, 0, '2025-11-21 09:25:50');
INSERT INTO `post_views` VALUES (393, 42, 'Property', 0, 0, '2025-11-21 09:25:50');
INSERT INTO `post_views` VALUES (394, 42, 'Property', 0, 0, '2025-11-21 09:25:51');
INSERT INTO `post_views` VALUES (395, 42, 'Property', 0, 0, '2025-11-21 09:25:52');
INSERT INTO `post_views` VALUES (396, 42, 'Property', 0, 0, '2025-11-21 09:25:52');
INSERT INTO `post_views` VALUES (397, 42, 'Property', 0, 0, '2025-11-21 09:25:53');
INSERT INTO `post_views` VALUES (398, 42, 'Property', 0, 0, '2025-11-21 09:25:53');
INSERT INTO `post_views` VALUES (399, 42, 'Property', 0, 0, '2025-11-21 09:25:54');
INSERT INTO `post_views` VALUES (400, 42, 'Property', 0, 0, '2025-11-21 09:25:54');
INSERT INTO `post_views` VALUES (401, 42, 'Property', 0, 0, '2025-11-21 09:25:55');
INSERT INTO `post_views` VALUES (402, 42, 'Property', 0, 0, '2025-11-21 09:25:55');
INSERT INTO `post_views` VALUES (403, 42, 'Property', 0, 0, '2025-11-21 09:25:56');
INSERT INTO `post_views` VALUES (404, 42, 'Property', 0, 0, '2025-11-21 09:25:57');
INSERT INTO `post_views` VALUES (405, 42, 'Property', 0, 0, '2025-11-21 09:25:57');
INSERT INTO `post_views` VALUES (406, 42, 'Property', 0, 0, '2025-11-21 09:25:58');
INSERT INTO `post_views` VALUES (407, 42, 'Property', 0, 0, '2025-11-21 09:25:58');
INSERT INTO `post_views` VALUES (408, 42, 'Property', 0, 0, '2025-11-21 09:25:59');
INSERT INTO `post_views` VALUES (409, 42, 'Property', 0, 0, '2025-11-21 09:25:59');
INSERT INTO `post_views` VALUES (410, 42, 'Property', 0, 0, '2025-11-21 09:26:00');
INSERT INTO `post_views` VALUES (411, 42, 'Property', 0, 0, '2025-11-21 09:26:00');
INSERT INTO `post_views` VALUES (412, 42, 'Property', 0, 0, '2025-11-21 09:26:01');
INSERT INTO `post_views` VALUES (413, 42, 'Property', 0, 0, '2025-11-21 09:26:02');
INSERT INTO `post_views` VALUES (414, 42, 'Property', 0, 0, '2025-11-21 09:26:17');
INSERT INTO `post_views` VALUES (415, 42, 'Property', 0, 0, '2025-11-21 09:26:17');
INSERT INTO `post_views` VALUES (416, 42, 'Property', 0, 0, '2025-11-21 09:26:18');
INSERT INTO `post_views` VALUES (417, 42, 'Property', 0, 0, '2025-11-21 09:26:19');
INSERT INTO `post_views` VALUES (418, 42, 'Property', 0, 0, '2025-11-21 09:26:19');
INSERT INTO `post_views` VALUES (419, 42, 'Property', 0, 0, '2025-11-21 09:26:20');
INSERT INTO `post_views` VALUES (420, 42, 'Property', 0, 0, '2025-11-21 09:26:20');
INSERT INTO `post_views` VALUES (421, 42, 'Property', 0, 0, '2025-11-21 09:26:21');
INSERT INTO `post_views` VALUES (422, 42, 'Property', 0, 0, '2025-11-21 09:26:21');
INSERT INTO `post_views` VALUES (423, 42, 'Property', 0, 0, '2025-11-21 09:26:22');
INSERT INTO `post_views` VALUES (424, 42, 'Property', 0, 0, '2025-11-21 09:26:22');
INSERT INTO `post_views` VALUES (425, 42, 'Property', 0, 0, '2025-11-21 09:26:23');
INSERT INTO `post_views` VALUES (426, 42, 'Property', 0, 0, '2025-11-21 09:26:24');
INSERT INTO `post_views` VALUES (427, 42, 'Property', 0, 0, '2025-11-21 09:26:24');
INSERT INTO `post_views` VALUES (428, 42, 'Property', 0, 0, '2025-11-21 09:26:25');
INSERT INTO `post_views` VALUES (429, 42, 'Property', 0, 0, '2025-11-21 09:26:26');
INSERT INTO `post_views` VALUES (430, 42, 'Property', 0, 0, '2025-11-21 09:26:27');
INSERT INTO `post_views` VALUES (431, 42, 'Property', 0, 0, '2025-11-21 09:26:27');
INSERT INTO `post_views` VALUES (432, 42, 'Property', 0, 0, '2025-11-21 09:26:28');
INSERT INTO `post_views` VALUES (433, 42, 'Property', 0, 0, '2025-11-21 09:26:28');
INSERT INTO `post_views` VALUES (434, 42, 'Property', 0, 0, '2025-11-21 09:26:29');
INSERT INTO `post_views` VALUES (435, 42, 'Property', 0, 0, '2025-11-21 09:26:30');
INSERT INTO `post_views` VALUES (436, 42, 'Property', 0, 0, '2025-11-21 09:26:30');
INSERT INTO `post_views` VALUES (437, 42, 'Property', 0, 0, '2025-11-21 09:26:31');
INSERT INTO `post_views` VALUES (438, 42, 'Property', 0, 0, '2025-11-21 09:26:31');
INSERT INTO `post_views` VALUES (439, 42, 'Property', 0, 0, '2025-11-21 09:26:32');
INSERT INTO `post_views` VALUES (440, 42, 'Property', 0, 0, '2025-11-21 09:26:33');
INSERT INTO `post_views` VALUES (441, 42, 'Property', 0, 0, '2025-11-21 09:26:34');
INSERT INTO `post_views` VALUES (442, 42, 'Property', 0, 0, '2025-11-21 09:26:34');
INSERT INTO `post_views` VALUES (443, 42, 'Property', 0, 0, '2025-11-21 09:26:35');
INSERT INTO `post_views` VALUES (444, 42, 'Property', 0, 0, '2025-11-21 09:26:35');
INSERT INTO `post_views` VALUES (445, 42, 'Property', 0, 0, '2025-11-21 09:26:36');
INSERT INTO `post_views` VALUES (446, 42, 'Property', 0, 0, '2025-11-21 09:26:36');
INSERT INTO `post_views` VALUES (447, 42, 'Property', 0, 0, '2025-11-21 09:26:37');
INSERT INTO `post_views` VALUES (448, 42, 'Property', 0, 0, '2025-11-21 09:26:38');
INSERT INTO `post_views` VALUES (449, 42, 'Property', 0, 0, '2025-11-21 09:26:39');
INSERT INTO `post_views` VALUES (450, 42, 'Property', 0, 0, '2025-11-21 09:26:39');
INSERT INTO `post_views` VALUES (451, 42, 'Property', 0, 0, '2025-11-21 09:26:40');
INSERT INTO `post_views` VALUES (452, 42, 'Property', 0, 0, '2025-11-21 09:26:41');
INSERT INTO `post_views` VALUES (453, 42, 'Property', 0, 0, '2025-11-21 09:26:41');
INSERT INTO `post_views` VALUES (454, 42, 'Property', 0, 0, '2025-11-21 09:26:42');
INSERT INTO `post_views` VALUES (455, 42, 'Property', 0, 0, '2025-11-21 09:26:42');
INSERT INTO `post_views` VALUES (456, 42, 'Property', 0, 0, '2025-11-21 09:26:43');
INSERT INTO `post_views` VALUES (457, 42, 'Property', 0, 0, '2025-11-21 09:26:43');
INSERT INTO `post_views` VALUES (458, 42, 'Property', 0, 0, '2025-11-21 09:26:44');
INSERT INTO `post_views` VALUES (459, 42, 'Property', 0, 0, '2025-11-21 09:26:45');
INSERT INTO `post_views` VALUES (460, 42, 'Property', 0, 0, '2025-11-21 09:26:45');
INSERT INTO `post_views` VALUES (461, 42, 'Property', 0, 0, '2025-11-21 09:26:46');
INSERT INTO `post_views` VALUES (462, 42, 'Property', 0, 0, '2025-11-21 09:26:46');
INSERT INTO `post_views` VALUES (463, 42, 'Property', 0, 0, '2025-11-21 09:26:46');
INSERT INTO `post_views` VALUES (464, 42, 'Property', 0, 0, '2025-11-21 09:26:47');
INSERT INTO `post_views` VALUES (465, 42, 'Property', 0, 0, '2025-11-21 09:26:47');
INSERT INTO `post_views` VALUES (466, 42, 'Property', 0, 0, '2025-11-21 09:26:47');
INSERT INTO `post_views` VALUES (467, 42, 'Property', 0, 0, '2025-11-21 09:26:47');
INSERT INTO `post_views` VALUES (468, 42, 'Property', 0, 0, '2025-11-21 09:26:48');
INSERT INTO `post_views` VALUES (469, 42, 'Property', 0, 0, '2025-11-21 09:26:48');
INSERT INTO `post_views` VALUES (470, 42, 'Property', 0, 0, '2025-11-21 09:26:48');
INSERT INTO `post_views` VALUES (471, 42, 'Property', 0, 0, '2025-11-21 09:26:48');
INSERT INTO `post_views` VALUES (472, 42, 'Property', 0, 0, '2025-11-21 09:26:49');
INSERT INTO `post_views` VALUES (473, 42, 'Property', 0, 0, '2025-11-21 09:26:49');
INSERT INTO `post_views` VALUES (474, 42, 'Property', 0, 0, '2025-11-21 09:26:49');
INSERT INTO `post_views` VALUES (475, 42, 'Property', 0, 0, '2025-11-21 09:26:49');
INSERT INTO `post_views` VALUES (476, 42, 'Property', 0, 0, '2025-11-21 09:26:50');
INSERT INTO `post_views` VALUES (477, 42, 'Property', 0, 0, '2025-11-21 09:26:50');
INSERT INTO `post_views` VALUES (478, 42, 'Property', 0, 0, '2025-11-21 09:26:50');
INSERT INTO `post_views` VALUES (479, 42, 'Property', 0, 0, '2025-11-21 09:26:51');
INSERT INTO `post_views` VALUES (480, 42, 'Property', 0, 0, '2025-11-21 09:26:51');
INSERT INTO `post_views` VALUES (481, 42, 'Property', 0, 0, '2025-11-21 09:26:51');
INSERT INTO `post_views` VALUES (482, 42, 'Property', 0, 0, '2025-11-21 09:26:51');
INSERT INTO `post_views` VALUES (483, 42, 'Property', 0, 0, '2025-11-21 09:26:52');
INSERT INTO `post_views` VALUES (484, 42, 'Property', 0, 0, '2025-11-21 09:26:52');
INSERT INTO `post_views` VALUES (485, 42, 'Property', 0, 0, '2025-11-21 09:26:52');
INSERT INTO `post_views` VALUES (486, 42, 'Property', 0, 0, '2025-11-21 09:26:52');
INSERT INTO `post_views` VALUES (487, 42, 'Property', 0, 0, '2025-11-21 09:26:53');
INSERT INTO `post_views` VALUES (488, 42, 'Property', 0, 0, '2025-11-21 09:26:53');
INSERT INTO `post_views` VALUES (489, 42, 'Property', 0, 0, '2025-11-21 09:26:53');
INSERT INTO `post_views` VALUES (490, 42, 'Property', 0, 0, '2025-11-21 09:26:53');
INSERT INTO `post_views` VALUES (491, 42, 'Property', 0, 0, '2025-11-21 09:26:54');
INSERT INTO `post_views` VALUES (492, 42, 'Property', 0, 0, '2025-11-21 09:26:54');
INSERT INTO `post_views` VALUES (493, 42, 'Property', 0, 0, '2025-11-21 09:26:54');
INSERT INTO `post_views` VALUES (494, 42, 'Property', 0, 0, '2025-11-21 09:26:54');
INSERT INTO `post_views` VALUES (495, 42, 'Property', 0, 0, '2025-11-21 09:26:55');
INSERT INTO `post_views` VALUES (496, 42, 'Property', 0, 0, '2025-11-21 09:26:55');
INSERT INTO `post_views` VALUES (497, 42, 'Property', 0, 0, '2025-11-21 09:26:55');
INSERT INTO `post_views` VALUES (498, 42, 'Property', 0, 0, '2025-11-21 09:26:55');
INSERT INTO `post_views` VALUES (499, 42, 'Property', 0, 0, '2025-11-21 09:26:56');
INSERT INTO `post_views` VALUES (500, 42, 'Property', 0, 0, '2025-11-21 09:26:56');
INSERT INTO `post_views` VALUES (501, 42, 'Property', 0, 0, '2025-11-21 09:26:56');
INSERT INTO `post_views` VALUES (502, 42, 'Property', 0, 0, '2025-11-21 09:26:56');
INSERT INTO `post_views` VALUES (503, 42, 'Property', 0, 0, '2025-11-21 09:26:57');
INSERT INTO `post_views` VALUES (504, 42, 'Property', 0, 0, '2025-11-21 09:26:57');
INSERT INTO `post_views` VALUES (505, 42, 'Property', 0, 0, '2025-11-21 09:26:57');
INSERT INTO `post_views` VALUES (506, 42, 'Property', 0, 0, '2025-11-21 09:26:57');
INSERT INTO `post_views` VALUES (507, 42, 'Property', 0, 0, '2025-11-21 09:26:58');
INSERT INTO `post_views` VALUES (508, 42, 'Property', 0, 0, '2025-11-21 09:26:58');
INSERT INTO `post_views` VALUES (509, 42, 'Property', 0, 0, '2025-11-21 09:26:58');
INSERT INTO `post_views` VALUES (510, 42, 'Property', 0, 0, '2025-11-21 09:26:58');
INSERT INTO `post_views` VALUES (511, 42, 'Property', 0, 0, '2025-11-21 09:26:59');
INSERT INTO `post_views` VALUES (512, 42, 'Property', 0, 0, '2025-11-21 09:26:59');
INSERT INTO `post_views` VALUES (513, 42, 'Property', 0, 0, '2025-11-21 09:26:59');
INSERT INTO `post_views` VALUES (514, 42, 'Property', 0, 0, '2025-11-21 09:26:59');
INSERT INTO `post_views` VALUES (515, 42, 'Property', 0, 0, '2025-11-21 09:27:00');
INSERT INTO `post_views` VALUES (516, 42, 'Property', 0, 0, '2025-11-21 09:27:00');
INSERT INTO `post_views` VALUES (517, 42, 'Property', 0, 0, '2025-11-21 09:27:00');
INSERT INTO `post_views` VALUES (518, 42, 'Property', 0, 0, '2025-11-21 09:27:00');
INSERT INTO `post_views` VALUES (519, 42, 'Property', 0, 0, '2025-11-21 09:27:01');
INSERT INTO `post_views` VALUES (520, 42, 'Property', 0, 0, '2025-11-21 09:27:01');
INSERT INTO `post_views` VALUES (521, 42, 'Property', 0, 0, '2025-11-21 09:27:01');
INSERT INTO `post_views` VALUES (522, 42, 'Property', 0, 0, '2025-11-21 09:27:01');
INSERT INTO `post_views` VALUES (523, 42, 'Property', 0, 0, '2025-11-21 09:27:02');
INSERT INTO `post_views` VALUES (524, 42, 'Property', 0, 0, '2025-11-21 09:27:02');
INSERT INTO `post_views` VALUES (525, 42, 'Property', 0, 0, '2025-11-21 09:27:02');
INSERT INTO `post_views` VALUES (526, 42, 'Property', 0, 0, '2025-11-21 09:27:02');
INSERT INTO `post_views` VALUES (527, 42, 'Property', 0, 0, '2025-11-21 09:27:03');
INSERT INTO `post_views` VALUES (528, 42, 'Property', 0, 0, '2025-11-21 09:27:03');
INSERT INTO `post_views` VALUES (529, 42, 'Property', 0, 0, '2025-11-21 09:27:03');
INSERT INTO `post_views` VALUES (530, 42, 'Property', 0, 0, '2025-11-21 09:27:03');
INSERT INTO `post_views` VALUES (531, 42, 'Property', 0, 0, '2025-11-21 09:27:04');
INSERT INTO `post_views` VALUES (532, 42, 'Property', 0, 0, '2025-11-21 09:27:04');
INSERT INTO `post_views` VALUES (533, 42, 'Property', 0, 0, '2025-11-21 09:27:04');
INSERT INTO `post_views` VALUES (534, 42, 'Property', 0, 0, '2025-11-21 09:27:04');
INSERT INTO `post_views` VALUES (535, 42, 'Property', 0, 0, '2025-11-21 09:27:05');
INSERT INTO `post_views` VALUES (536, 42, 'Property', 0, 0, '2025-11-21 09:27:05');
INSERT INTO `post_views` VALUES (537, 42, 'Property', 0, 0, '2025-11-21 09:27:05');
INSERT INTO `post_views` VALUES (538, 42, 'Property', 0, 0, '2025-11-21 09:27:05');
INSERT INTO `post_views` VALUES (539, 42, 'Property', 0, 0, '2025-11-21 09:27:06');
INSERT INTO `post_views` VALUES (540, 42, 'Property', 0, 0, '2025-11-21 09:27:06');
INSERT INTO `post_views` VALUES (541, 42, 'Property', 0, 0, '2025-11-21 09:27:06');
INSERT INTO `post_views` VALUES (542, 42, 'Property', 0, 0, '2025-11-21 09:27:06');
INSERT INTO `post_views` VALUES (543, 42, 'Property', 0, 0, '2025-11-21 09:27:07');
INSERT INTO `post_views` VALUES (544, 42, 'Property', 0, 0, '2025-11-21 09:27:07');
INSERT INTO `post_views` VALUES (545, 42, 'Property', 0, 0, '2025-11-21 09:27:07');
INSERT INTO `post_views` VALUES (546, 42, 'Property', 0, 0, '2025-11-21 09:27:07');
INSERT INTO `post_views` VALUES (547, 42, 'Property', 0, 0, '2025-11-21 09:27:08');
INSERT INTO `post_views` VALUES (548, 42, 'Property', 0, 0, '2025-11-21 09:27:08');
INSERT INTO `post_views` VALUES (549, 42, 'Property', 0, 0, '2025-11-21 09:27:08');
INSERT INTO `post_views` VALUES (550, 42, 'Property', 0, 0, '2025-11-21 09:27:08');
INSERT INTO `post_views` VALUES (551, 42, 'Property', 0, 0, '2025-11-21 09:27:09');
INSERT INTO `post_views` VALUES (552, 42, 'Property', 0, 0, '2025-11-21 09:27:09');
INSERT INTO `post_views` VALUES (553, 42, 'Property', 0, 0, '2025-11-21 09:27:09');
INSERT INTO `post_views` VALUES (554, 42, 'Property', 0, 0, '2025-11-21 09:27:10');
INSERT INTO `post_views` VALUES (555, 42, 'Property', 0, 0, '2025-11-21 09:27:10');
INSERT INTO `post_views` VALUES (556, 42, 'Property', 0, 0, '2025-11-21 09:27:10');
INSERT INTO `post_views` VALUES (557, 42, 'Property', 0, 0, '2025-11-21 09:27:10');
INSERT INTO `post_views` VALUES (558, 42, 'Property', 0, 0, '2025-11-21 09:27:11');
INSERT INTO `post_views` VALUES (559, 42, 'Property', 0, 0, '2025-11-21 09:27:11');
INSERT INTO `post_views` VALUES (560, 42, 'Property', 0, 0, '2025-11-21 09:27:11');
INSERT INTO `post_views` VALUES (561, 42, 'Property', 0, 0, '2025-11-21 09:27:11');
INSERT INTO `post_views` VALUES (562, 42, 'Property', 0, 0, '2025-11-21 09:27:12');
INSERT INTO `post_views` VALUES (563, 42, 'Property', 0, 0, '2025-11-21 09:27:12');
INSERT INTO `post_views` VALUES (564, 42, 'Property', 0, 0, '2025-11-21 09:27:12');
INSERT INTO `post_views` VALUES (565, 42, 'Property', 0, 0, '2025-11-21 09:27:12');
INSERT INTO `post_views` VALUES (566, 42, 'Property', 0, 0, '2025-11-21 09:27:13');
INSERT INTO `post_views` VALUES (567, 42, 'Property', 0, 0, '2025-11-21 09:27:13');
INSERT INTO `post_views` VALUES (568, 42, 'Property', 0, 0, '2025-11-21 09:27:13');
INSERT INTO `post_views` VALUES (569, 42, 'Property', 0, 0, '2025-11-21 09:27:13');
INSERT INTO `post_views` VALUES (570, 42, 'Property', 0, 0, '2025-11-21 09:27:14');
INSERT INTO `post_views` VALUES (571, 42, 'Property', 0, 0, '2025-11-21 09:27:14');
INSERT INTO `post_views` VALUES (572, 42, 'Property', 0, 0, '2025-11-21 09:27:14');
INSERT INTO `post_views` VALUES (573, 42, 'Property', 0, 0, '2025-11-21 09:27:14');
INSERT INTO `post_views` VALUES (574, 42, 'Property', 0, 0, '2025-11-21 09:27:15');
INSERT INTO `post_views` VALUES (575, 42, 'Property', 0, 0, '2025-11-21 09:27:15');
INSERT INTO `post_views` VALUES (576, 42, 'Property', 0, 0, '2025-11-21 09:27:15');
INSERT INTO `post_views` VALUES (577, 42, 'Property', 0, 0, '2025-11-21 09:27:15');
INSERT INTO `post_views` VALUES (578, 42, 'Property', 0, 0, '2025-11-21 09:27:16');
INSERT INTO `post_views` VALUES (579, 42, 'Property', 0, 0, '2025-11-21 09:27:16');
INSERT INTO `post_views` VALUES (580, 42, 'Property', 0, 0, '2025-11-21 09:27:16');
INSERT INTO `post_views` VALUES (581, 42, 'Property', 0, 0, '2025-11-21 09:27:16');
INSERT INTO `post_views` VALUES (582, 42, 'Property', 0, 0, '2025-11-21 09:27:17');
INSERT INTO `post_views` VALUES (583, 42, 'Property', 0, 0, '2025-11-21 09:27:17');
INSERT INTO `post_views` VALUES (584, 42, 'Property', 0, 0, '2025-11-21 09:27:17');
INSERT INTO `post_views` VALUES (585, 42, 'Property', 0, 0, '2025-11-21 09:27:17');
INSERT INTO `post_views` VALUES (586, 42, 'Property', 0, 0, '2025-11-21 09:27:18');
INSERT INTO `post_views` VALUES (587, 42, 'Property', 0, 0, '2025-11-21 09:27:18');
INSERT INTO `post_views` VALUES (588, 42, 'Property', 0, 0, '2025-11-21 09:27:18');
INSERT INTO `post_views` VALUES (589, 42, 'Property', 0, 0, '2025-11-21 09:27:18');
INSERT INTO `post_views` VALUES (590, 42, 'Property', 0, 0, '2025-11-21 09:27:19');
INSERT INTO `post_views` VALUES (591, 42, 'Property', 0, 0, '2025-11-21 09:27:19');
INSERT INTO `post_views` VALUES (592, 42, 'Property', 0, 0, '2025-11-21 09:27:19');
INSERT INTO `post_views` VALUES (593, 42, 'Property', 0, 0, '2025-11-21 09:27:19');
INSERT INTO `post_views` VALUES (594, 42, 'Property', 0, 0, '2025-11-21 09:27:20');
INSERT INTO `post_views` VALUES (595, 42, 'Property', 0, 0, '2025-11-21 09:27:20');
INSERT INTO `post_views` VALUES (596, 42, 'Property', 0, 0, '2025-11-21 09:27:20');
INSERT INTO `post_views` VALUES (597, 42, 'Property', 0, 0, '2025-11-21 09:27:20');
INSERT INTO `post_views` VALUES (598, 42, 'Property', 0, 0, '2025-11-21 09:27:21');
INSERT INTO `post_views` VALUES (599, 42, 'Property', 0, 0, '2025-11-21 09:27:21');
INSERT INTO `post_views` VALUES (600, 42, 'Property', 0, 0, '2025-11-21 09:27:21');
INSERT INTO `post_views` VALUES (601, 42, 'Property', 0, 0, '2025-11-21 09:27:21');
INSERT INTO `post_views` VALUES (602, 42, 'Property', 0, 0, '2025-11-21 09:27:22');
INSERT INTO `post_views` VALUES (603, 42, 'Property', 0, 0, '2025-11-21 09:27:22');
INSERT INTO `post_views` VALUES (604, 42, 'Property', 0, 0, '2025-11-21 09:27:22');
INSERT INTO `post_views` VALUES (605, 42, 'Property', 0, 0, '2025-11-21 09:27:23');
INSERT INTO `post_views` VALUES (606, 42, 'Property', 0, 0, '2025-11-21 09:27:24');
INSERT INTO `post_views` VALUES (607, 42, 'Property', 0, 0, '2025-11-21 09:27:24');
INSERT INTO `post_views` VALUES (608, 42, 'Property', 0, 0, '2025-11-21 09:27:25');
INSERT INTO `post_views` VALUES (609, 42, 'Property', 0, 0, '2025-11-21 09:27:25');
INSERT INTO `post_views` VALUES (610, 42, 'Property', 0, 0, '2025-11-21 09:27:26');
INSERT INTO `post_views` VALUES (611, 42, 'Property', 0, 0, '2025-11-21 09:27:27');
INSERT INTO `post_views` VALUES (612, 42, 'Property', 0, 0, '2025-11-21 09:27:27');
INSERT INTO `post_views` VALUES (613, 42, 'Property', 0, 0, '2025-11-21 09:27:27');
INSERT INTO `post_views` VALUES (614, 42, 'Property', 0, 0, '2025-11-21 09:27:28');
INSERT INTO `post_views` VALUES (615, 42, 'Property', 0, 0, '2025-11-21 09:27:28');
INSERT INTO `post_views` VALUES (616, 42, 'Property', 0, 0, '2025-11-21 09:27:28');
INSERT INTO `post_views` VALUES (617, 42, 'Property', 0, 0, '2025-11-21 09:27:28');
INSERT INTO `post_views` VALUES (618, 42, 'Property', 0, 0, '2025-11-21 09:27:29');
INSERT INTO `post_views` VALUES (619, 42, 'Property', 0, 0, '2025-11-21 09:27:29');
INSERT INTO `post_views` VALUES (620, 42, 'Property', 0, 0, '2025-11-21 09:27:29');
INSERT INTO `post_views` VALUES (621, 42, 'Property', 0, 0, '2025-11-21 09:27:29');
INSERT INTO `post_views` VALUES (622, 42, 'Property', 0, 0, '2025-11-21 09:27:30');
INSERT INTO `post_views` VALUES (623, 42, 'Property', 0, 0, '2025-11-21 09:27:30');
INSERT INTO `post_views` VALUES (624, 42, 'Property', 0, 0, '2025-11-21 09:27:30');
INSERT INTO `post_views` VALUES (625, 42, 'Property', 0, 0, '2025-11-21 09:27:30');
INSERT INTO `post_views` VALUES (626, 42, 'Property', 0, 0, '2025-11-21 09:27:31');
INSERT INTO `post_views` VALUES (627, 42, 'Property', 0, 0, '2025-11-21 09:27:31');
INSERT INTO `post_views` VALUES (628, 42, 'Property', 0, 0, '2025-11-21 09:27:31');
INSERT INTO `post_views` VALUES (629, 42, 'Property', 0, 0, '2025-11-21 09:27:31');
INSERT INTO `post_views` VALUES (630, 42, 'Property', 0, 0, '2025-11-21 09:27:32');
INSERT INTO `post_views` VALUES (631, 42, 'Property', 0, 0, '2025-11-21 09:27:32');
INSERT INTO `post_views` VALUES (632, 42, 'Property', 0, 0, '2025-11-21 09:27:32');
INSERT INTO `post_views` VALUES (633, 42, 'Property', 0, 0, '2025-11-21 09:27:33');
INSERT INTO `post_views` VALUES (634, 42, 'Property', 0, 0, '2025-11-21 09:27:33');
INSERT INTO `post_views` VALUES (635, 42, 'Property', 0, 0, '2025-11-21 09:27:33');
INSERT INTO `post_views` VALUES (636, 42, 'Property', 0, 0, '2025-11-21 09:27:33');
INSERT INTO `post_views` VALUES (637, 42, 'Property', 0, 0, '2025-11-21 09:27:34');
INSERT INTO `post_views` VALUES (638, 42, 'Property', 0, 0, '2025-11-21 09:27:34');
INSERT INTO `post_views` VALUES (639, 42, 'Property', 0, 0, '2025-11-21 09:27:34');
INSERT INTO `post_views` VALUES (640, 42, 'Property', 0, 0, '2025-11-21 09:27:34');
INSERT INTO `post_views` VALUES (641, 42, 'Property', 0, 0, '2025-11-21 09:27:34');
INSERT INTO `post_views` VALUES (642, 42, 'Property', 0, 0, '2025-11-21 09:27:35');
INSERT INTO `post_views` VALUES (643, 42, 'Property', 0, 0, '2025-11-21 09:27:35');
INSERT INTO `post_views` VALUES (644, 42, 'Property', 0, 0, '2025-11-21 09:27:35');
INSERT INTO `post_views` VALUES (645, 42, 'Property', 0, 0, '2025-11-21 09:27:35');
INSERT INTO `post_views` VALUES (646, 42, 'Property', 0, 0, '2025-11-21 09:27:36');
INSERT INTO `post_views` VALUES (647, 42, 'Property', 0, 0, '2025-11-21 09:27:36');
INSERT INTO `post_views` VALUES (648, 42, 'Property', 0, 0, '2025-11-21 09:27:36');
INSERT INTO `post_views` VALUES (649, 42, 'Property', 0, 0, '2025-11-21 09:27:37');
INSERT INTO `post_views` VALUES (650, 42, 'Property', 0, 0, '2025-11-21 09:27:37');
INSERT INTO `post_views` VALUES (651, 42, 'Property', 0, 0, '2025-11-21 09:27:37');
INSERT INTO `post_views` VALUES (652, 42, 'Property', 0, 0, '2025-11-21 09:27:37');
INSERT INTO `post_views` VALUES (653, 42, 'Property', 0, 0, '2025-11-21 09:27:38');
INSERT INTO `post_views` VALUES (654, 42, 'Property', 0, 0, '2025-11-21 09:27:38');
INSERT INTO `post_views` VALUES (655, 42, 'Property', 0, 0, '2025-11-21 09:27:38');
INSERT INTO `post_views` VALUES (656, 42, 'Property', 0, 0, '2025-11-21 09:27:38');
INSERT INTO `post_views` VALUES (657, 42, 'Property', 0, 0, '2025-11-21 09:27:39');
INSERT INTO `post_views` VALUES (658, 42, 'Property', 0, 0, '2025-11-21 09:27:39');
INSERT INTO `post_views` VALUES (659, 42, 'Property', 0, 0, '2025-11-21 09:27:39');
INSERT INTO `post_views` VALUES (660, 42, 'Property', 0, 0, '2025-11-21 09:27:39');
INSERT INTO `post_views` VALUES (661, 42, 'Property', 0, 0, '2025-11-21 09:27:40');
INSERT INTO `post_views` VALUES (662, 42, 'Property', 0, 0, '2025-11-21 09:27:40');
INSERT INTO `post_views` VALUES (663, 42, 'Property', 0, 0, '2025-11-21 09:27:40');
INSERT INTO `post_views` VALUES (664, 42, 'Property', 0, 0, '2025-11-21 09:27:40');
INSERT INTO `post_views` VALUES (665, 42, 'Property', 0, 0, '2025-11-21 09:27:41');
INSERT INTO `post_views` VALUES (666, 42, 'Property', 0, 0, '2025-11-21 09:27:41');
INSERT INTO `post_views` VALUES (667, 42, 'Property', 0, 0, '2025-11-21 09:27:41');
INSERT INTO `post_views` VALUES (668, 42, 'Property', 0, 0, '2025-11-21 09:27:41');
INSERT INTO `post_views` VALUES (669, 42, 'Property', 0, 0, '2025-11-21 09:27:42');
INSERT INTO `post_views` VALUES (670, 42, 'Property', 0, 0, '2025-11-21 09:27:42');
INSERT INTO `post_views` VALUES (671, 42, 'Property', 0, 0, '2025-11-21 09:27:42');
INSERT INTO `post_views` VALUES (672, 42, 'Property', 0, 0, '2025-11-21 09:27:42');
INSERT INTO `post_views` VALUES (673, 42, 'Property', 0, 0, '2025-11-21 09:27:43');
INSERT INTO `post_views` VALUES (674, 42, 'Property', 0, 0, '2025-11-21 09:27:43');
INSERT INTO `post_views` VALUES (675, 42, 'Property', 0, 0, '2025-11-21 09:27:43');
INSERT INTO `post_views` VALUES (676, 42, 'Property', 0, 0, '2025-11-21 09:27:43');
INSERT INTO `post_views` VALUES (677, 42, 'Property', 0, 0, '2025-11-21 09:27:44');
INSERT INTO `post_views` VALUES (678, 42, 'Property', 0, 0, '2025-11-21 09:27:44');
INSERT INTO `post_views` VALUES (679, 42, 'Property', 0, 0, '2025-11-21 09:27:44');
INSERT INTO `post_views` VALUES (680, 42, 'Property', 0, 0, '2025-11-21 09:27:44');
INSERT INTO `post_views` VALUES (681, 42, 'Property', 0, 0, '2025-11-21 09:27:45');
INSERT INTO `post_views` VALUES (682, 42, 'Property', 0, 0, '2025-11-21 09:27:45');
INSERT INTO `post_views` VALUES (683, 42, 'Property', 0, 0, '2025-11-21 09:27:45');
INSERT INTO `post_views` VALUES (684, 42, 'Property', 0, 0, '2025-11-21 09:27:46');
INSERT INTO `post_views` VALUES (685, 42, 'Property', 0, 0, '2025-11-21 09:27:46');
INSERT INTO `post_views` VALUES (686, 42, 'Property', 0, 0, '2025-11-21 09:27:46');
INSERT INTO `post_views` VALUES (687, 42, 'Property', 0, 0, '2025-11-21 09:27:46');
INSERT INTO `post_views` VALUES (688, 42, 'Property', 0, 0, '2025-11-21 09:27:47');
INSERT INTO `post_views` VALUES (689, 42, 'Property', 0, 0, '2025-11-21 09:27:47');
INSERT INTO `post_views` VALUES (690, 42, 'Property', 0, 0, '2025-11-21 09:27:47');
INSERT INTO `post_views` VALUES (691, 42, 'Property', 0, 0, '2025-11-21 09:27:47');
INSERT INTO `post_views` VALUES (692, 42, 'Property', 0, 0, '2025-11-21 09:27:48');
INSERT INTO `post_views` VALUES (693, 42, 'Property', 0, 0, '2025-11-21 09:27:48');
INSERT INTO `post_views` VALUES (694, 42, 'Property', 0, 0, '2025-11-21 09:27:48');
INSERT INTO `post_views` VALUES (695, 42, 'Property', 0, 0, '2025-11-21 09:27:48');
INSERT INTO `post_views` VALUES (696, 42, 'Property', 0, 0, '2025-11-21 09:27:49');
INSERT INTO `post_views` VALUES (697, 42, 'Property', 0, 0, '2025-11-21 09:27:49');
INSERT INTO `post_views` VALUES (698, 42, 'Property', 0, 0, '2025-11-21 09:27:49');
INSERT INTO `post_views` VALUES (699, 42, 'Property', 0, 0, '2025-11-21 09:27:49');
INSERT INTO `post_views` VALUES (700, 42, 'Property', 0, 0, '2025-11-21 09:27:49');
INSERT INTO `post_views` VALUES (701, 42, 'Property', 0, 0, '2025-11-21 09:27:50');
INSERT INTO `post_views` VALUES (702, 42, 'Property', 0, 0, '2025-11-21 09:27:50');
INSERT INTO `post_views` VALUES (703, 42, 'Property', 0, 0, '2025-11-21 09:27:51');
INSERT INTO `post_views` VALUES (704, 42, 'Property', 0, 0, '2025-11-21 09:27:51');
INSERT INTO `post_views` VALUES (705, 42, 'Property', 0, 0, '2025-11-21 09:27:52');
INSERT INTO `post_views` VALUES (706, 42, 'Property', 0, 0, '2025-11-21 09:27:53');
INSERT INTO `post_views` VALUES (707, 42, 'Property', 0, 0, '2025-11-21 09:27:53');
INSERT INTO `post_views` VALUES (708, 42, 'Property', 0, 0, '2025-11-21 09:27:55');
INSERT INTO `post_views` VALUES (709, 42, 'Property', 0, 0, '2025-11-21 09:27:56');
INSERT INTO `post_views` VALUES (710, 42, 'Property', 0, 0, '2025-11-21 09:27:57');
INSERT INTO `post_views` VALUES (711, 42, 'Property', 0, 0, '2025-11-21 09:27:58');
INSERT INTO `post_views` VALUES (712, 42, 'Property', 0, 0, '2025-11-21 09:27:58');
INSERT INTO `post_views` VALUES (713, 42, 'Property', 0, 0, '2025-11-21 09:27:59');
INSERT INTO `post_views` VALUES (714, 42, 'Property', 0, 0, '2025-11-21 09:27:59');
INSERT INTO `post_views` VALUES (715, 42, 'Property', 0, 0, '2025-11-21 09:28:00');
INSERT INTO `post_views` VALUES (716, 42, 'Property', 0, 0, '2025-11-21 09:28:00');
INSERT INTO `post_views` VALUES (717, 42, 'Property', 0, 0, '2025-11-21 09:28:01');
INSERT INTO `post_views` VALUES (718, 42, 'Property', 0, 0, '2025-11-21 09:28:01');

-- ----------------------------
-- Table structure for property
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `location_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bedrooms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bathrooms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `furnishing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amenities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `floor_plan_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_property_user_id_type_id_location_id_status`(`user_id` ASC, `type_id` ASC, `location_id` ASC, `status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES (2, 1, 3, NULL, 'Retro House', 'retro-house', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '9236541233', 'Zeleni put 21, Croatia', '22.261270', '70.806760', 'Rent', '2', '1', '60 m2', 'Semi-Furnished', 'Parking,Balcony,Computer,Internet', 300000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (6, 1, 1, NULL, '201 Folsom St Apt 18B', '201-folsom-st-apt-18b', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '98789456361', '201 Folsom St Apt 18B, San Francisco, CA 94105', '37.788700', '-122.392260', 'Rent', '2', '2', '620 m2', 'Furnished', 'Air conditioning,Computer,Internet,Gardan', 700000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (7, 1, 3, NULL, 'Semi-detached house', 'semi-detached-house', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</p>', '9236541233', 'KKV Hall, Rajkot', '22.285897', '70.772054', 'Sale', '1', '1', '60 m2', 'Furnished', 'Parking,Balcony,Computer,Internet', 200000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (8, 1, 5, NULL, '9 Square', '9-square', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '98789456361', 'Mayani Chock, Rajkot', '22.274074', '70.787436', 'Rent', '2', '2', '620 m2', 'Furnished', 'Air conditioning,Computer,Internet,Gardan', 500000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (9, 1, 1, NULL, 'Panchtatva 3', 'panchtatva-3', '<p>Swastik Panchtatva 3, is a sprawling luxury enclave of magnificent Apartments in Rajkot, elevating the contemporary lifestyle. These Residential Apartments in Rajkot offers you the kind of life that rejuvenates you, the one that inspires you to live life to the fullest</p>', '9898989898', 'Nana Mava Road, Rajkot', '22.278070', '70.765960', 'Rent', '3', '3', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 7800000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (11, 1, 1, NULL, 'Utsav Villa', 'utsav-villa', '<p>Quick overview of Utsav VillaUtsav villa is a bunglow project in one of the most developing area of rajkot.</p>', '9898989898', 'Ghanteshwer, Rajkot', '22.278070', '70.765960', 'Sale', '2', '3', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 500000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (12, 1, 1, NULL, 'The Hills', 'the-hills', '<p>The HillsThe Hills is a spacious 4-BHK with 1-Lifestyle Room apartment project</p>', '9898989898', 'Kalawad Road, Rajkot', '22.278070', '70.765960', 'Sale', '3', '4', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 400000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (13, 1, 1, NULL, 'Alpha Mangalam', 'alpha-mangalam', '<p>Alpha MangalamALFA MANGALAM&nbsp; is an residential project in rajkot that offers ideal family homes.</p>', '9898989898', 'Nana Mava Road, Rajkot', '22.278070', '70.765960', 'Rent', '2', '4', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 600000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (14, 1, 4, NULL, 'Ratnam Glorious', 'ratnam-glorious', '<p>Ratnam GloriousRATNAM GLORIOUS is a appartment project which is been developed near morbi road.</p>', '9898989898', 'Madhapar, Rajkot', '22.278070', '70.765960', 'Sale', '3', '5', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 8000000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (15, 1, 1, NULL, 'Akshar Heights', 'akshar-heights', '<p>Akshar HeightsAKSHAR HEIGHTS is an residential project in rajkot&nbsp;</p>', '9898989898', 'Nana Mava, Rajkot', '22.278070', '70.765960', 'Rent', '4', '6', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 10000000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (16, 1, 1, NULL, 'Nilkanth Apartment', 'nilkanth-apartment', '<p>Nilkanth ApartmentNILKANTH APARTMENT is an residential project in rajkot that offers ideal family homes</p>', '9898989898', '150 Feet Ring Road, Rajkot', '22.278070', '70.765960', 'Rent', '2', '3', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 4000000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (17, 1, 1, NULL, 'Nageshwar City', 'nageshwar-city', '<p>Nageshwar CityThe Biggest Project Of Jamnagar Road \\\"\\\"NAGESHWAR CITY\\\"\\\" Welcomes You. We Build \\\"\\\"Dream Home\\\"\\\" in Your Budget.</p>', '9898989898', 'Jamnagar Road, Rajkot', '22.278070', '70.765960', 'Sale', '2', '3', '1200 Sq-ft', 'Furnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 5000000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (18, 1, 2, NULL, 'Naveen Towers', 'naveen-towers', 'Naveen TowersNavin Towers is an unmatched Residential property located in,Rajkot.&nbsp;', '9898989898', 'Bhagwatipara, Rajkot', '22.278070', '70.765960', 'Sale', '3', '4', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area', 800000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (19, 1, 1, NULL, 'Vertillas', 'vertillas', '<p>One of the most preferred destination for people working in IT/ITeSsector.Metro Connectivity to boost real estate demand.</p>', '9898989898', 'Kharadi, Pune', '22.278070', '70.765960', 'Rent', '3', '5', '1200 Sqft', 'Furnished', 'Lift, Security, Gymnasium, Grand Entrance lobby, CCTV Camera, Kids play area, Mediation area, Lawn', 11000000, 'YES', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (33, 1, 2, NULL, 'Flat/Apartment', 'flatapartment', '<p>Ghanteshwer is a mid segment locality situated in Rajkot. The pincode of this locality is 360006. This locality is near Dharam Nagar, 150 Feet Ring Road and Madhapar.&nbsp;</p>', '9898989898', 'Raiya Road, Rajkot', '22.278070', '70.765960', 'Rent', '3', '4', '1200 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 500000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (34, 1, 2, NULL, 'Madhav Flat', 'madhav-flat', 'Madhav Flat, Near Alap Green City, Raiya Road, Rajkot, Gujarat', '9898989898', 'Near Alap Green City, Raiya Road, Rajkot', '22.278070', '70.765960', 'Sale', '2', '2', '950 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 550000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (35, 1, 2, 5, 'Adarsh Dream', 'adarsh-dream', '<p>Adarsh Dream 1 Jivraj Park Ambika Township Mavdi Rajkot, Mavdi, Rajkot, Gujarat</p>', '9898989898', 'Mavdi, Rajkot', '22.278070', '70.765960', 'Rent', '2', '3', '950 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 400000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (36, 1, 4, 2, 'Plot For Sale', 'plot-for-sale', '<p>It is close to mavdi main road fly over bridge on mavdi main road.</p>', '9898989898', 'Nana Mava Road, Rajkot', '22.278070', '70.765960', 'Rent', '1', '1', '1500 Sq-ft', 'Unfurnished', 'Security, Grand Entrance, lobby, CCTV Camera', 880000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (37, 1, 4, 3, 'Industries Plot', 'industries-plot', '<p>Plot no. 27, Street No. 6, Kalawad Road, Nandanvan societyRajkot, Gujarat, Kalawad Road, Rajkot, Gujarat</p>', '9898989898', 'Kalawad Road, Rajkot', '22.278070', '70.765960', 'Sale', '1', '1', '1200 Sqft', 'Unfurnished', '', 500000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (38, 1, 5, 3, 'Agricultural Land', 'agricultural-land', '<p>Jamnagar Road, Rajkot, Gujarat</p>', '9898989898', 'Jamnagar Road, Rajkot,', '22.278070', '70.765960', 'Sale', '2', '1', '1500 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 780000, 'NO', NULL, 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (39, 1, 6, 5, 'Office Space', 'office-space', '<p>Ashish Complex, Sardarnagar Main Road, Sardar Nagar, Rajkot, Gujarat</p>', '9898989898', 'Raiya Road, Rajkot', '22.278070', '70.765960', 'Sale', '2', '1', '950 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 4000000, 'NO', 'images/property/feature/Office Space.jpg', 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (40, 1, 6, 4, 'Office  in Mill Pura', 'office-in-mill-pura', '<p>150 Ring Road The SPire Building, Mill Pura, Rajkot, Gujarat</p>', '9898989898', 'Mill Pura, Rajkot', '22.278070', '70.765960', 'Sale', '1', '1', '950 Sq-ft', 'Unfurnished', 'Lift, Security, Gymnasium, Grand Entrance, lobby, CCTV Camera', 300000, 'NO', 'images/property/feature/Office in Mill Pura.jpg', 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (41, 1, 7, 2, '3 BHK Villa', '3-bhk-villa', '<div class=\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\">Madhav ashrey railnagar -2., Rail Nagar, Rajkot, Gujarat</div>\r\n<div class=\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\">Close to newly constructed AIIMS - Rajkot</div>', '9898989898', 'Rail Nagar, Rajkot', '22.278070', '70.765960', 'Sale', '3', '3', '1200 Sq-ft', 'Unfurnished', 'Security, Gymnasium, Grand Entrance, CCTV Camera', 500000, 'NO', 'images/property/feature/3 BHK Villa.jpg', 'upload/placeholder_img.jpg', 0, 1);
INSERT INTO `property` VALUES (42, 1, 7, 3, '4 BHK Bungalows', '4-bhk-bungalows', '<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Dharti honda showroom</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Unfurnished</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Freehold</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--label\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Overlooking</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Main Road</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--label\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">Age of Construction</div>\r\n<div class=\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"mb-ldp__more-dtl__list--value\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\">10 to 15 years</div>', '9898989898', 'Nana Mava Road, Rajkot', '22.278070', '70.765960', 'Sale', '2', '4', '1200 Sq-ft', 'Unfurnished', 'Security, Gymnasium, Grand Entrance, lobby, CCTV Camera, Kids play area', 9000000, 'NO', 'images/property/feature/4 BHK Bungalows.jpg', 'upload/placeholder_img.jpg', 0, 1);

-- ----------------------------
-- Table structure for property_gallery
-- ----------------------------
DROP TABLE IF EXISTS `property_gallery`;
CREATE TABLE `property_gallery`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_gallery_post_id`(`post_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property_gallery
-- ----------------------------
INSERT INTO `property_gallery` VALUES (3, 6, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (4, 6, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (5, 8, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (6, 8, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (7, 2, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (9, 9, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (10, 9, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (11, 9, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (12, 9, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (16, 11, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (17, 11, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (18, 12, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (19, 12, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (20, 12, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (21, 13, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (22, 13, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (23, 13, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (25, 14, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (26, 14, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (27, 15, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (28, 15, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (29, 15, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (30, 15, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (31, 16, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (32, 16, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (33, 16, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (34, 16, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (35, 17, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (36, 17, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (37, 17, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (38, 17, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (39, 17, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (40, 18, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (41, 18, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (42, 18, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (43, 19, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (44, 19, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (45, 19, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (46, 19, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (47, 19, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (48, 7, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (49, 7, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (50, 7, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (51, 7, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (77, 33, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (78, 33, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (79, 33, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (80, 34, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (81, 34, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (82, 35, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (83, 35, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (84, 36, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (85, 36, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (86, 37, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (87, 37, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (88, 37, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (89, 37, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (90, 38, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (91, 38, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (94, 40, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (95, 40, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (96, 41, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (97, 41, 'upload/placeholder_img.jpg');
INSERT INTO `property_gallery` VALUES (119, 39, 'images/property/gallery/Office in Mill Pura.jpg');
INSERT INTO `property_gallery` VALUES (120, 39, 'images/property/gallery/Office in Mill Pura.jpg');

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `page_action_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_access
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(8) NOT NULL DEFAULT 0,
  `scope` enum('limited','full') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'limited',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_slug_unique`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Administrator', 'administrator', 1, 'full', 'Full access to all system modules and settings.', 1, NULL, NULL, '2025-11-27 15:40:59', '2025-11-27 15:40:59', NULL);
INSERT INTO `roles` VALUES (2, 'Manager', 'manager', 2, 'limited', 'Manages system users, content, and reports with certain restrictions.', 1, NULL, NULL, '2025-11-27 15:40:59', '2025-11-27 15:40:59', NULL);
INSERT INTO `roles` VALUES (3, 'Staff', 'staff', 3, 'limited', 'General staff responsible for daily operations and limited modules.', 1, NULL, NULL, '2025-11-27 15:40:59', '2025-11-27 15:40:59', NULL);
INSERT INTO `roles` VALUES (4, 'User', 'user', 4, 'limited', 'Read-only access to selected modules and dashboard.', 1, NULL, NULL, '2025-11-27 15:40:59', '2025-11-27 15:40:59', NULL);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('DSUkBkzSGJPBDkCDQ7uUuQAM8YkkNZFNwB0A5W0g', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoidVRvZ0ljRjZWTnNxMFFrRjBTUzc3T3lINE9IUGw4dzg5aVprZWEzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NjoiYWNjZXNzIjthOjA6e31zOjExOiJwZXJtaXNzaW9ucyI7YTowOnt9czoxMzoiYWRtaW5pc3RyYXRvciI7YjoxO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1764767227);
INSERT INTO `sessions` VALUES ('quYyBsCpDbikfgsnBuws3CQriEtGhL1Hy72TlhLM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiVFgxdmxxT0ZNcTF2YzBINHB5MFNRWnFuYkoxTzhxYktrd3lucVZFQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuc2FjdGlvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NjoiYWNjZXNzIjthOjA6e31zOjExOiJwZXJtaXNzaW9ucyI7YTowOnt9czoxMzoiYWRtaW5pc3RyYXRvciI7YjoxO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1764667606);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `web_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `web_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `favicon` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `web_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_uca1400_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 1, 'Real Estate', 'assets/images/default/E-book_Logo.png', 'assets/images/default/favicon_book.ico', 'realEstate@gmail.com', 'https://web.facebook.com/profile.php?id=100080200843202', 'https://www.instagram.com/lin2804542025/', 'Viavi Real estate made simple is lightning fast and light weight PHP script. Viavi Real estate agents work with property buyers or sellers and help them to navigate a complex nature of a property market.', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sub_modules
-- ----------------------------
DROP TABLE IF EXISTS `sub_modules`;
CREATE TABLE `sub_modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_kh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` tinyint(4) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sub_modules_module_id_foreign`(`module_id` ASC) USING BTREE,
  CONSTRAINT `sub_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_modules
-- ----------------------------

-- ----------------------------
-- Table structure for subscription_plan
-- ----------------------------
DROP TABLE IF EXISTS `subscription_plan`;
CREATE TABLE `subscription_plan`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_days` int(11) NOT NULL,
  `plan_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_duration_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_price` decimal(11, 2) NOT NULL,
  `plan_property_limit` int(4) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscription_plan
-- ----------------------------
INSERT INTO `subscription_plan` VALUES (1, 'Free Plan', 1, '1', '1', 0.00, 1, 1);
INSERT INTO `subscription_plan` VALUES (2, 'Basic Plan', 7, '7', '1', 10.00, 5, 1);
INSERT INTO `subscription_plan` VALUES (3, 'Premium Plan', 30, '1', '30', 50.00, 10, 1);
INSERT INTO `subscription_plan` VALUES (4, 'Platinum Plan', 365, '1', '365', 99.00, 50, 1);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_id` int(11) NULL DEFAULT NULL,
  `gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_transaction_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, 'Apartment', 'apartment', 'upload/types/apartment.png', 1);
INSERT INTO `type` VALUES (2, 'Commercial', 'commercial', 'upload/types/commercial.png', 1);
INSERT INTO `type` VALUES (3, 'House', 'house', 'upload/types/house.png', 1);
INSERT INTO `type` VALUES (4, 'Industrial', 'industrial', 'upload/types/industrial.png', 1);
INSERT INTO `type` VALUES (5, 'Land', 'land', 'upload/types/land.png', 1);
INSERT INTO `type` VALUES (6, 'Office', 'office', 'upload/types/office.png', 1);
INSERT INTO `type` VALUES (7, 'Residential', 'residential', 'upload/types/residential.png', 1);

-- ----------------------------
-- Table structure for user_inform
-- ----------------------------
DROP TABLE IF EXISTS `user_inform`;
CREATE TABLE `user_inform`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_infor_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `user_infor_plan_id_index`(`plan_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_inform
-- ----------------------------
INSERT INTO `user_inform` VALUES (1, 1, NULL, 'assets/images/users/male-avatar.jpg', '3rd Floor, Shyam Complex, Parivar Park, near Mayani Chowk, Rajkot, Gujarat', '+657 568 789 078', 'admin@gmail.com', 'https://www.google.com/maps/place/Prey+Sar/@11.517952,104.8346624,28878m/data=!3m1!1e3!4m6!3m5!1s0x31095aa515585157:0xc5ecccefc814204a!8m2!3d11.4902945!4d104.8561601!16s%2Fg%2F1hhnlknc3?entry=ttu&g_ep=EgoyMDI1MTEyMy4xIKXMDSoASAFQAw%3D%3D', 'https://web.facebook.com/profile.php?id=100080200843202', NULL, 'https://www.instagram.com/lin2804542025/', NULL, 1, 1, '2025-11-29 12:32:56', '2025-11-29 12:49:17');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_role_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `user_role_role_id_index`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, '2025-11-27 15:41:49', '2025-11-27 15:41:49');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `he_scholarship` tinyint(4) NOT NULL DEFAULT 0,
  `scholarship_category` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `users_role_id_index`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'admin', 'Administrator', 'admin@gmail.com', '2025-11-27 15:37:18', '$2y$12$we6DWOZKmqNsOxUWtnfyUOWndqK69Fl9DMM5oxKNdG5nMrFdJ8DOK', 'en', 1, 0, 0, NULL, NULL, NULL, NULL, '2025-11-27 15:37:18', '2025-11-27 09:30:01', NULL);

-- ----------------------------
-- Table structure for web_banner_ads
-- ----------------------------
DROP TABLE IF EXISTS `web_banner_ads`;
CREATE TABLE `web_banner_ads`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `home_top` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `home_bottom` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `list_top` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `list_bottom` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `details_top` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `details_bottom` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `other_page_top` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `other_page_bottom` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sidebar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_banner_ads
-- ----------------------------
INSERT INTO `web_banner_ads` VALUES (1, '', '', '', '', '', '', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
