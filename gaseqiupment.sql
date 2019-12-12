-- MySQL dump 10.13  Distrib 5.6.43, for Win64 (x86_64)
--
-- Host: localhost    Database: gaseqiupment
-- ------------------------------------------------------
-- Server version	5.6.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `yupe_blog_blog`
--

DROP TABLE IF EXISTS `yupe_blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `icon` varchar(250) NOT NULL DEFAULT '',
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `member_status` int(11) NOT NULL DEFAULT '1',
  `post_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_blog_blog_slug_lang` (`slug`,`lang`),
  KEY `ix_yupe_blog_blog_create_user` (`create_user_id`),
  KEY `ix_yupe_blog_blog_update_user` (`update_user_id`),
  KEY `ix_yupe_blog_blog_status` (`status`),
  KEY `ix_yupe_blog_blog_type` (`type`),
  KEY `ix_yupe_blog_blog_create_date` (`create_time`),
  KEY `ix_yupe_blog_blog_update_date` (`update_time`),
  KEY `ix_yupe_blog_blog_lang` (`lang`),
  KEY `ix_yupe_blog_blog_slug` (`slug`),
  KEY `ix_yupe_blog_blog_category_id` (`category_id`),
  CONSTRAINT `fk_yupe_blog_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_blog_create_user` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_blog_update_user` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_blog_blog`
--

LOCK TABLES `yupe_blog_blog` WRITE;
/*!40000 ALTER TABLE `yupe_blog_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_blog_post`
--

DROP TABLE IF EXISTS `yupe_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `publish_time` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `quote` text,
  `content` text NOT NULL,
  `link` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `comment_status` int(11) NOT NULL DEFAULT '1',
  `create_user_ip` varchar(20) NOT NULL,
  `access_type` int(11) NOT NULL DEFAULT '1',
  `meta_keywords` varchar(250) NOT NULL DEFAULT '',
  `meta_description` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(300) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_blog_post_lang_slug` (`slug`,`lang`),
  KEY `ix_yupe_blog_post_blog_id` (`blog_id`),
  KEY `ix_yupe_blog_post_create_user_id` (`create_user_id`),
  KEY `ix_yupe_blog_post_update_user_id` (`update_user_id`),
  KEY `ix_yupe_blog_post_status` (`status`),
  KEY `ix_yupe_blog_post_access_type` (`access_type`),
  KEY `ix_yupe_blog_post_comment_status` (`comment_status`),
  KEY `ix_yupe_blog_post_lang` (`lang`),
  KEY `ix_yupe_blog_post_slug` (`slug`),
  KEY `ix_yupe_blog_post_publish_date` (`publish_time`),
  KEY `ix_yupe_blog_post_category_id` (`category_id`),
  CONSTRAINT `fk_yupe_blog_post_blog` FOREIGN KEY (`blog_id`) REFERENCES `yupe_blog_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_post_create_user` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_post_update_user` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_blog_post`
--

LOCK TABLES `yupe_blog_post` WRITE;
/*!40000 ALTER TABLE `yupe_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_blog_post_to_tag`
--

DROP TABLE IF EXISTS `yupe_blog_post_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_blog_post_to_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `ix_yupe_blog_post_to_tag_post_id` (`post_id`),
  KEY `ix_yupe_blog_post_to_tag_tag_id` (`tag_id`),
  CONSTRAINT `fk_yupe_blog_post_to_tag_post_id` FOREIGN KEY (`post_id`) REFERENCES `yupe_blog_post` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_post_to_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `yupe_blog_tag` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_blog_post_to_tag`
--

LOCK TABLES `yupe_blog_post_to_tag` WRITE;
/*!40000 ALTER TABLE `yupe_blog_post_to_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_blog_post_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_blog_tag`
--

DROP TABLE IF EXISTS `yupe_blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_blog_tag_tag_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_blog_tag`
--

LOCK TABLES `yupe_blog_tag` WRITE;
/*!40000 ALTER TABLE `yupe_blog_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_blog_user_to_blog`
--

DROP TABLE IF EXISTS `yupe_blog_user_to_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_blog_user_to_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `note` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_blog_user_to_blog_blog_user_to_blog_u_b` (`user_id`,`blog_id`),
  KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_user_id` (`user_id`),
  KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_id` (`blog_id`),
  KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_status` (`status`),
  KEY `ix_yupe_blog_user_to_blog_blog_user_to_blog_role` (`role`),
  CONSTRAINT `fk_yupe_blog_user_to_blog_blog_user_to_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `yupe_blog_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_blog_user_to_blog_blog_user_to_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_blog_user_to_blog`
--

LOCK TABLES `yupe_blog_user_to_blog` WRITE;
/*!40000 ALTER TABLE `yupe_blog_user_to_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_blog_user_to_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_callback`
--

DROP TABLE IF EXISTS `yupe_callback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_callback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `url` text,
  `agree` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_callback`
--

LOCK TABLES `yupe_callback` WRITE;
/*!40000 ALTER TABLE `yupe_callback` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_callback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_category_category`
--

DROP TABLE IF EXISTS `yupe_category_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_category_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_category_category_alias_lang` (`slug`,`lang`),
  KEY `ix_yupe_category_category_parent_id` (`parent_id`),
  KEY `ix_yupe_category_category_status` (`status`),
  CONSTRAINT `fk_yupe_category_category_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_category_category`
--

LOCK TABLES `yupe_category_category` WRITE;
/*!40000 ALTER TABLE `yupe_category_category` DISABLE KEYS */;
INSERT INTO `yupe_category_category` VALUES (1,NULL,'stocks','ru','Акции',NULL,'','',1);
/*!40000 ALTER TABLE `yupe_category_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_comment_comment`
--

DROP TABLE IF EXISTS `yupe_comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `model_id` int(11) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `root` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ix_yupe_comment_comment_status` (`status`),
  KEY `ix_yupe_comment_comment_model_model_id` (`model`,`model_id`),
  KEY `ix_yupe_comment_comment_model` (`model`),
  KEY `ix_yupe_comment_comment_model_id` (`model_id`),
  KEY `ix_yupe_comment_comment_user_id` (`user_id`),
  KEY `ix_yupe_comment_comment_parent_id` (`parent_id`),
  KEY `ix_yupe_comment_comment_level` (`level`),
  KEY `ix_yupe_comment_comment_root` (`root`),
  KEY `ix_yupe_comment_comment_lft` (`lft`),
  KEY `ix_yupe_comment_comment_rgt` (`rgt`),
  CONSTRAINT `fk_yupe_comment_comment_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_comment_comment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_comment_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_comment_comment`
--

LOCK TABLES `yupe_comment_comment` WRITE;
/*!40000 ALTER TABLE `yupe_comment_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_contentblock_content_block`
--

DROP TABLE IF EXISTS `yupe_contentblock_content_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_contentblock_content_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_contentblock_content_block_code` (`code`),
  KEY `ix_yupe_contentblock_content_block_type` (`type`),
  KEY `ix_yupe_contentblock_content_block_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_contentblock_content_block`
--

LOCK TABLES `yupe_contentblock_content_block` WRITE;
/*!40000 ALTER TABLE `yupe_contentblock_content_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_contentblock_content_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_dictionary_dictionary_data`
--

DROP TABLE IF EXISTS `yupe_dictionary_dictionary_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_dictionary_dictionary_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_dictionary_dictionary_data_code_unique` (`code`),
  KEY `ix_yupe_dictionary_dictionary_data_group_id` (`group_id`),
  KEY `ix_yupe_dictionary_dictionary_data_create_user_id` (`create_user_id`),
  KEY `ix_yupe_dictionary_dictionary_data_update_user_id` (`update_user_id`),
  KEY `ix_yupe_dictionary_dictionary_data_status` (`status`),
  CONSTRAINT `fk_yupe_dictionary_dictionary_data_create_user_id` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_dictionary_dictionary_data_data_group_id` FOREIGN KEY (`group_id`) REFERENCES `yupe_dictionary_dictionary_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_dictionary_dictionary_data_update_user_id` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_dictionary_dictionary_data`
--

LOCK TABLES `yupe_dictionary_dictionary_data` WRITE;
/*!40000 ALTER TABLE `yupe_dictionary_dictionary_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_dictionary_dictionary_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_dictionary_dictionary_group`
--

DROP TABLE IF EXISTS `yupe_dictionary_dictionary_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_dictionary_dictionary_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_dictionary_dictionary_group_code` (`code`),
  KEY `ix_yupe_dictionary_dictionary_group_create_user_id` (`create_user_id`),
  KEY `ix_yupe_dictionary_dictionary_group_update_user_id` (`update_user_id`),
  CONSTRAINT `fk_yupe_dictionary_dictionary_group_create_user_id` FOREIGN KEY (`create_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_dictionary_dictionary_group_update_user_id` FOREIGN KEY (`update_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_dictionary_dictionary_group`
--

LOCK TABLES `yupe_dictionary_dictionary_group` WRITE;
/*!40000 ALTER TABLE `yupe_dictionary_dictionary_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_dictionary_dictionary_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_feedback_feedback`
--

DROP TABLE IF EXISTS `yupe_feedback_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_feedback_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `answer_user` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `theme` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `answer_time` datetime DEFAULT NULL,
  `is_faq` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_yupe_feedback_feedback_category` (`category_id`),
  KEY `ix_yupe_feedback_feedback_type` (`type`),
  KEY `ix_yupe_feedback_feedback_status` (`status`),
  KEY `ix_yupe_feedback_feedback_isfaq` (`is_faq`),
  KEY `ix_yupe_feedback_feedback_answer_user` (`answer_user`),
  CONSTRAINT `fk_yupe_feedback_feedback_answer_user` FOREIGN KEY (`answer_user`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_feedback_feedback_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_feedback_feedback`
--

LOCK TABLES `yupe_feedback_feedback` WRITE;
/*!40000 ALTER TABLE `yupe_feedback_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_feedback_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_gallery_gallery`
--

DROP TABLE IF EXISTS `yupe_gallery_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_gallery_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `owner` int(11) DEFAULT NULL,
  `preview_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ix_yupe_gallery_gallery_status` (`status`),
  KEY `ix_yupe_gallery_gallery_owner` (`owner`),
  KEY `fk_yupe_gallery_gallery_gallery_preview_to_image` (`preview_id`),
  KEY `fk_yupe_gallery_gallery_gallery_to_category` (`category_id`),
  KEY `ix_yupe_gallery_gallery_sort` (`sort`),
  CONSTRAINT `fk_yupe_gallery_gallery_gallery_preview_to_image` FOREIGN KEY (`preview_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_gallery_gallery_gallery_to_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_gallery_gallery_owner` FOREIGN KEY (`owner`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_gallery_gallery`
--

LOCK TABLES `yupe_gallery_gallery` WRITE;
/*!40000 ALTER TABLE `yupe_gallery_gallery` DISABLE KEYS */;
INSERT INTO `yupe_gallery_gallery` VALUES (1,'Slider','<p>Слайдер на главной</p>',1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `yupe_gallery_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_gallery_image_to_gallery`
--

DROP TABLE IF EXISTS `yupe_gallery_image_to_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_gallery_image_to_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_gallery_image_to_gallery_gallery_to_image` (`image_id`,`gallery_id`),
  KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_image` (`image_id`),
  KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_gallery` (`gallery_id`),
  CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_gallery` FOREIGN KEY (`gallery_id`) REFERENCES `yupe_gallery_gallery` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_image` FOREIGN KEY (`image_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_gallery_image_to_gallery`
--

LOCK TABLES `yupe_gallery_image_to_gallery` WRITE;
/*!40000 ALTER TABLE `yupe_gallery_image_to_gallery` DISABLE KEYS */;
INSERT INTO `yupe_gallery_image_to_gallery` VALUES (1,1,1,'2019-12-09 17:32:05',1),(2,2,1,'2019-12-09 17:32:31',2);
/*!40000 ALTER TABLE `yupe_gallery_image_to_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_image_image`
--

DROP TABLE IF EXISTS `yupe_image_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_image_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `file` varchar(250) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `alt` varchar(250) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ix_yupe_image_image_status` (`status`),
  KEY `ix_yupe_image_image_user` (`user_id`),
  KEY `ix_yupe_image_image_type` (`type`),
  KEY `ix_yupe_image_image_category_id` (`category_id`),
  KEY `fk_yupe_image_image_parent_id` (`parent_id`),
  CONSTRAINT `fk_yupe_image_image_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_image_image_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_image_image_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_image_image`
--

LOCK TABLES `yupe_image_image` WRITE;
/*!40000 ALTER TABLE `yupe_image_image` DISABLE KEYS */;
INSERT INTO `yupe_image_image` VALUES (1,NULL,NULL,'c6','','100bafdc465c3adb68a282b2a97ba415.jpg','2019-12-09 17:32:05',1,'c6',0,1,1),(2,NULL,NULL,'c8','','f22f18676fadce04693a77d14303fe2a.jpg','2019-12-09 17:32:31',1,'c8',0,1,2);
/*!40000 ALTER TABLE `yupe_image_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_mail_mail_event`
--

DROP TABLE IF EXISTS `yupe_mail_mail_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_mail_mail_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_mail_mail_event_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_mail_mail_event`
--

LOCK TABLES `yupe_mail_mail_event` WRITE;
/*!40000 ALTER TABLE `yupe_mail_mail_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_mail_mail_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_mail_mail_template`
--

DROP TABLE IF EXISTS `yupe_mail_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_mail_mail_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(150) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `from` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `theme` text NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_mail_mail_template_code` (`code`),
  KEY `ix_yupe_mail_mail_template_status` (`status`),
  KEY `ix_yupe_mail_mail_template_event_id` (`event_id`),
  CONSTRAINT `fk_yupe_mail_mail_template_event_id` FOREIGN KEY (`event_id`) REFERENCES `yupe_mail_mail_event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_mail_mail_template`
--

LOCK TABLES `yupe_mail_mail_template` WRITE;
/*!40000 ALTER TABLE `yupe_mail_mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_mail_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_menu_menu`
--

DROP TABLE IF EXISTS `yupe_menu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_menu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_menu_menu_code` (`code`),
  KEY `ix_yupe_menu_menu_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_menu_menu`
--

LOCK TABLES `yupe_menu_menu` WRITE;
/*!40000 ALTER TABLE `yupe_menu_menu` DISABLE KEYS */;
INSERT INTO `yupe_menu_menu` VALUES (1,'Верхнее меню','top-menu','Основное меню сайта, расположенное сверху в блоке mainmenu.',1);
/*!40000 ALTER TABLE `yupe_menu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_menu_menu_item`
--

DROP TABLE IF EXISTS `yupe_menu_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_menu_menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `regular_link` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL,
  `href` varchar(150) NOT NULL,
  `class` varchar(150) DEFAULT NULL,
  `title_attr` varchar(150) DEFAULT NULL,
  `before_link` varchar(150) DEFAULT NULL,
  `after_link` varchar(150) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `rel` varchar(150) DEFAULT NULL,
  `condition_name` varchar(150) DEFAULT '0',
  `condition_denial` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `entity_module_name` varchar(40) DEFAULT NULL,
  `entity_name` varchar(40) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_yupe_menu_menu_item_menu_id` (`menu_id`),
  KEY `ix_yupe_menu_menu_item_sort` (`sort`),
  KEY `ix_yupe_menu_menu_item_status` (`status`),
  CONSTRAINT `fk_yupe_menu_menu_item_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `yupe_menu_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_menu_menu_item`
--

LOCK TABLES `yupe_menu_menu_item` WRITE;
/*!40000 ALTER TABLE `yupe_menu_menu_item` DISABLE KEYS */;
INSERT INTO `yupe_menu_menu_item` VALUES (1,0,1,1,'Главная','/','','Главная','','','','','',0,1,1,NULL,NULL,NULL),(9,0,1,0,'Акции','/news/news/index','','Акции','','','','','',0,3,1,'','',NULL),(10,0,1,0,'Контакты','/feedback/contact/index','','Контакты','','','','','',0,5,1,NULL,NULL,NULL),(11,0,1,0,'Продукция','/store/category/index','','Продукция','','','','','',0,2,1,NULL,NULL,NULL),(12,0,1,0,'Наши работы','/store/producer/index','','Наши работы','','','','','',0,4,1,'','',NULL);
/*!40000 ALTER TABLE `yupe_menu_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_migrations`
--

DROP TABLE IF EXISTS `yupe_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_migrations_module` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_migrations`
--

LOCK TABLES `yupe_migrations` WRITE;
/*!40000 ALTER TABLE `yupe_migrations` DISABLE KEYS */;
INSERT INTO `yupe_migrations` VALUES (1,'user','m000000_000000_user_base',1575524590),(2,'user','m131019_212911_user_tokens',1575524590),(3,'user','m131025_152911_clean_user_table',1575524596),(4,'user','m131026_002234_prepare_hash_user_password',1575524598),(5,'user','m131106_111552_user_restore_fields',1575524599),(6,'user','m131121_190850_modify_tokes_table',1575524601),(7,'user','m140812_100348_add_expire_to_token_table',1575524602),(8,'user','m150416_113652_rename_fields',1575524602),(9,'user','m151006_000000_user_add_phone',1575524603),(10,'yupe','m000000_000000_yupe_base',1575524606),(11,'yupe','m130527_154455_yupe_change_unique_index',1575524606),(12,'yupe','m150416_125517_rename_fields',1575524606),(13,'yupe','m160204_195213_change_settings_type',1575524607),(14,'category','m000000_000000_category_base',1575524610),(15,'category','m150415_150436_rename_fields',1575524610),(16,'image','m000000_000000_image_base',1575524616),(17,'image','m150226_121100_image_order',1575524616),(18,'image','m150416_080008_rename_fields',1575524617),(19,'comment','m000000_000000_comment_base',1575524621),(20,'comment','m130704_095200_comment_nestedsets',1575524625),(21,'comment','m150415_151804_rename_fields',1575524625),(22,'gallery','m000000_000000_gallery_base',1575524629),(23,'gallery','m130427_120500_gallery_creation_user',1575524631),(24,'gallery','m150416_074146_rename_fields',1575524631),(25,'gallery','m160514_131314_add_preview_to_gallery',1575524634),(26,'gallery','m160515_123559_add_category_to_gallery',1575524636),(27,'gallery','m160515_151348_add_position_to_gallery_image',1575524636),(28,'gallery','m181224_072816_add_sort_to_gallery',1575524637),(29,'store','m140812_160000_store_attribute_group_base',1575524638),(30,'store','m140812_170000_store_attribute_base',1575524640),(31,'store','m140812_180000_store_attribute_option_base',1575524642),(32,'store','m140813_200000_store_category_base',1575524644),(33,'store','m140813_210000_store_type_base',1575524646),(34,'store','m140813_220000_store_type_attribute_base',1575524647),(35,'store','m140813_230000_store_producer_base',1575524648),(36,'store','m140814_000000_store_product_base',1575524653),(37,'store','m140814_000010_store_product_category_base',1575524655),(38,'store','m140814_000013_store_product_attribute_eav_base',1575524658),(39,'store','m140814_000018_store_product_image_base',1575524659),(40,'store','m140814_000020_store_product_variant_base',1575524662),(41,'store','m141014_210000_store_product_category_column',1575524665),(42,'store','m141015_170000_store_product_image_column',1575524666),(43,'store','m141218_091834_default_null',1575524667),(44,'store','m150210_063409_add_store_menu_item',1575524667),(45,'store','m150210_105811_add_price_column',1575524669),(46,'store','m150210_131238_order_category',1575524670),(47,'store','m150211_105453_add_position_for_product_variant',1575524670),(48,'store','m150226_065935_add_product_position',1575524671),(49,'store','m150416_112008_rename_fields',1575524672),(50,'store','m150417_180000_store_product_link_base',1575524676),(51,'store','m150825_184407_change_store_url',1575524676),(52,'store','m150907_084604_new_attributes',1575524679),(53,'store','m151218_081635_add_external_id_fields',1575524681),(54,'store','m151218_082939_add_external_id_ix',1575524681),(55,'store','m151218_142113_add_product_index',1575524682),(56,'store','m151223_140722_drop_product_type_categories',1575524683),(57,'store','m160210_084850_add_h1_and_canonical',1575524687),(58,'store','m160210_131541_add_main_image_alt_title',1575524690),(59,'store','m160211_180200_add_additional_images_alt_title',1575524690),(60,'store','m160215_110749_add_image_groups_table',1575524692),(61,'store','m160227_114934_rename_producer_order_column',1575524692),(62,'store','m160309_091039_add_attributes_sort_and_search_fields',1575524693),(63,'store','m160413_184551_add_type_attr_fk',1575524694),(64,'store','m160602_091243_add_position_product_index',1575524694),(65,'store','m160602_091909_add_producer_sort_index',1575524695),(66,'store','m160713_105449_remove_irrelevant_product_status',1575524695),(67,'store','m160805_070905_add_attribute_description',1575524695),(68,'store','m161015_121915_change_product_external_id_type',1575524697),(69,'store','m161122_090922_add_sort_product_position',1575524698),(70,'store','m161122_093736_add_store_layouts',1575524701),(71,'store','m181218_121815_store_product_variant_quantity_column',1575524701),(72,'payment','m140815_170000_store_payment_base',1575524703),(73,'mail','m000000_000000_mail_base',1575524706),(74,'delivery','m140815_190000_store_delivery_base',1575524709),(75,'delivery','m140815_200000_store_delivery_payment_base',1575524711),(76,'order','m140814_200000_store_order_base',1575524720),(77,'order','m150324_105949_order_status_table',1575524722),(78,'order','m150416_100212_rename_fields',1575524722),(79,'order','m150514_065554_change_order_price',1575524722),(80,'order','m151209_185124_split_address',1575524726),(81,'order','m151211_115447_add_appartment_field',1575524726),(82,'order','m160415_055344_add_manager_to_order',1575524729),(83,'order','m160618_145025_add_status_color',1575524730),(84,'notify','m141031_091039_add_notify_table',1575524732),(85,'blog','m000000_000000_blog_base',1575524752),(86,'blog','m130503_091124_BlogPostImage',1575524753),(87,'blog','m130529_151602_add_post_category',1575524756),(88,'blog','m140226_052326_add_community_fields',1575524757),(89,'blog','m140714_110238_blog_post_quote_type',1575524759),(90,'blog','m150406_094809_blog_post_quote_type',1575524760),(91,'blog','m150414_180119_rename_date_fields',1575524761),(92,'blog','m160518_175903_alter_blog_foreign_keys',1575524764),(93,'blog','m180421_143937_update_blog_meta_column',1575524764),(94,'blog','m180421_143938_add_post_meta_title_column',1575524766),(95,'page','m000000_000000_page_base',1575524771),(96,'page','m130115_155600_columns_rename',1575524772),(97,'page','m140115_083618_add_layout',1575524772),(98,'page','m140620_072543_add_view',1575524773),(99,'page','m150312_151049_change_body_type',1575524774),(100,'page','m150416_101038_rename_fields',1575524774),(101,'page','m180224_105407_meta_title_column',1575524775),(102,'page','m180421_143324_update_page_meta_column',1575524775),(103,'coupon','m140816_200000_store_coupon_base',1575524779),(104,'coupon','m150414_124659_add_order_coupon_table',1575524782),(105,'coupon','m150415_153218_rename_fields',1575524783),(106,'yml','m141110_090000_yandex_market_export_base',1575524789),(107,'yml','m160119_084800_rename_yandex_market_table',1575524789),(108,'contentblock','m000000_000000_contentblock_base',1575524792),(109,'contentblock','m140715_130737_add_category_id',1575524793),(110,'contentblock','m150127_130425_add_status_column',1575524794),(111,'social','m000000_000000_social_profile',1575524796),(112,'sitemap','m141004_130000_sitemap_page',1575524797),(113,'sitemap','m141004_140000_sitemap_page_data',1575524797),(114,'rbac','m140115_131455_auth_item',1575524799),(115,'rbac','m140115_132045_auth_item_child',1575524802),(116,'rbac','m140115_132319_auth_item_assign',1575524804),(117,'rbac','m140702_230000_initial_role_data',1575524804),(118,'queue','m000000_000000_queue_base',1575524807),(119,'queue','m131007_031000_queue_fix_index',1575524808),(120,'dictionary','m000000_000000_dictionary_base',1575524820),(121,'dictionary','m150415_183050_rename_fields',1575524820),(122,'callback','m150926_083350_callback_base',1575524822),(123,'callback','m160621_075232_add_date_to_callback',1575524823),(124,'callback','m161125_181730_add_url_to_callback',1575524823),(125,'callback','m161204_122528_update_callback_encoding',1575524824),(126,'callback','m180224_103745_add_agree_column',1575524825),(127,'callback','m181213_214512_add_type_column',1575524825),(128,'news','m000000_000000_news_base',1575524829),(129,'news','m150416_081251_rename_fields',1575524830),(130,'news','m180224_105353_meta_title_column',1575524830),(131,'news','m180421_142416_update_news_meta_column',1575524831),(132,'menu','m000000_000000_menu_base',1575524834),(133,'menu','m121220_001126_menu_test_data',1575524834),(134,'menu','m160914_134555_fix_menu_item_default_values',1575524838),(135,'menu','m181214_110527_menu_item_add_entity_fields',1575524840),(136,'feedback','m000000_000000_feedback_base',1575524844),(137,'feedback','m150415_184108_rename_fields',1575524844);
/*!40000 ALTER TABLE `yupe_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_news_news`
--

DROP TABLE IF EXISTS `yupe_news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `date` date NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `short_text` text,
  `full_text` text NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `meta_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_news_news_alias_lang` (`slug`,`lang`),
  KEY `ix_yupe_news_news_status` (`status`),
  KEY `ix_yupe_news_news_user_id` (`user_id`),
  KEY `ix_yupe_news_news_category_id` (`category_id`),
  KEY `ix_yupe_news_news_date` (`date`),
  CONSTRAINT `fk_yupe_news_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_news_news_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_news_news`
--

LOCK TABLES `yupe_news_news` WRITE;
/*!40000 ALTER TABLE `yupe_news_news` DISABLE KEYS */;
INSERT INTO `yupe_news_news` VALUES (1,1,'ru','2019-12-11 14:27:23','2019-12-12 10:44:21','2019-12-11','Акция 1','akciya-1','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p>','460685ec7e012dd1a265e00bbdd61297.jpg','',1,1,0,'','',''),(2,1,'ru','2019-12-11 14:28:44','2019-12-11 14:28:58','2019-12-11','Акция 2','akciya-2','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p>','e4ff82ed0f76cb7026dc1a821d0857df.jpg','',1,1,0,'','',''),(3,1,'ru','2019-12-12 14:20:09','2019-12-12 14:20:34','2019-12-12','Акция 3','akciya-3','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p>','0632167b91c69e92ae47597dee7c4e3a.jpg','',1,1,0,'','','');
/*!40000 ALTER TABLE `yupe_news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_notify_settings`
--

DROP TABLE IF EXISTS `yupe_notify_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_notify_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `my_post` tinyint(1) NOT NULL DEFAULT '1',
  `my_comment` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ix_yupe_notify_settings_user_id` (`user_id`),
  CONSTRAINT `fk_yupe_notify_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_notify_settings`
--

LOCK TABLES `yupe_notify_settings` WRITE;
/*!40000 ALTER TABLE `yupe_notify_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_notify_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_page_page`
--

DROP TABLE IF EXISTS `yupe_page_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_page_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `change_user_id` int(11) DEFAULT NULL,
  `title_short` varchar(150) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `body` mediumtext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `layout` varchar(250) DEFAULT NULL,
  `view` varchar(250) DEFAULT NULL,
  `meta_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_page_page_slug_lang` (`slug`,`lang`),
  KEY `ix_yupe_page_page_status` (`status`),
  KEY `ix_yupe_page_page_is_protected` (`is_protected`),
  KEY `ix_yupe_page_page_user_id` (`user_id`),
  KEY `ix_yupe_page_page_change_user_id` (`change_user_id`),
  KEY `ix_yupe_page_page_menu_order` (`order`),
  KEY `ix_yupe_page_page_category_id` (`category_id`),
  CONSTRAINT `fk_yupe_page_page_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_page_page_change_user_id` FOREIGN KEY (`change_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_yupe_page_page_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_page_page`
--

LOCK TABLES `yupe_page_page` WRITE;
/*!40000 ALTER TABLE `yupe_page_page` DISABLE KEYS */;
INSERT INTO `yupe_page_page` VALUES (1,NULL,'ru',NULL,'2019-12-06 16:47:14','2019-12-06 16:51:55',1,1,'Главная','Главная страница','glavnaya-stranica','<p>Главная страница</p>','','',1,0,1,'','','');
/*!40000 ALTER TABLE `yupe_page_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_queue_queue`
--

DROP TABLE IF EXISTS `yupe_queue_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_queue_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `task` text NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `notice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ux_yupe_queue_queue_worker` (`worker`),
  KEY `ux_yupe_queue_queue_priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_queue_queue`
--

LOCK TABLES `yupe_queue_queue` WRITE;
/*!40000 ALTER TABLE `yupe_queue_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_queue_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_sitemap_page`
--

DROP TABLE IF EXISTS `yupe_sitemap_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_sitemap_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `changefreq` varchar(20) NOT NULL,
  `priority` float NOT NULL DEFAULT '0.5',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_sitemap_page_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_sitemap_page`
--

LOCK TABLES `yupe_sitemap_page` WRITE;
/*!40000 ALTER TABLE `yupe_sitemap_page` DISABLE KEYS */;
INSERT INTO `yupe_sitemap_page` VALUES (1,'/','daily',0.5,1);
/*!40000 ALTER TABLE `yupe_sitemap_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_social_user`
--

DROP TABLE IF EXISTS `yupe_social_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_social_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(250) NOT NULL,
  `uid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_social_user_uid` (`uid`),
  KEY `ix_yupe_social_user_provider` (`provider`),
  KEY `fk_yupe_social_user_user_id` (`user_id`),
  CONSTRAINT `fk_yupe_social_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_social_user`
--

LOCK TABLES `yupe_social_user` WRITE;
/*!40000 ALTER TABLE `yupe_social_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_social_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_attribute`
--

DROP TABLE IF EXISTS `yupe_store_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_filter` smallint(6) NOT NULL DEFAULT '1',
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_attribute_name_group` (`name`,`group_id`),
  KEY `ix_yupe_store_attribute_title` (`title`),
  KEY `fk_yupe_store_attribute_group` (`group_id`),
  CONSTRAINT `fk_yupe_store_attribute_group` FOREIGN KEY (`group_id`) REFERENCES `yupe_store_attribute_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_attribute`
--

LOCK TABLES `yupe_store_attribute` WRITE;
/*!40000 ALTER TABLE `yupe_store_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_attribute_group`
--

DROP TABLE IF EXISTS `yupe_store_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_attribute_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_attribute_group`
--

LOCK TABLES `yupe_store_attribute_group` WRITE;
/*!40000 ALTER TABLE `yupe_store_attribute_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_attribute_option`
--

DROP TABLE IF EXISTS `yupe_store_attribute_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_attribute_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ix_yupe_store_attribute_option_attribute_id` (`attribute_id`),
  KEY `ix_yupe_store_attribute_option_position` (`position`),
  CONSTRAINT `fk_yupe_store_attribute_option_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_attribute_option`
--

LOCK TABLES `yupe_store_attribute_option` WRITE;
/*!40000 ALTER TABLE `yupe_store_attribute_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_category`
--

DROP TABLE IF EXISTS `yupe_store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `external_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `view` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_category_alias` (`slug`),
  KEY `ix_yupe_store_category_parent_id` (`parent_id`),
  KEY `ix_yupe_store_category_status` (`status`),
  KEY `yupe_store_category_external_id_ix` (`external_id`),
  CONSTRAINT `fk_yupe_store_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_category`
--

LOCK TABLES `yupe_store_category` WRITE;
/*!40000 ALTER TABLE `yupe_store_category` DISABLE KEYS */;
INSERT INTO `yupe_store_category` VALUES (1,NULL,'ballony-otechestvennye','Баллоны отечественные','c11f5e0c6e231565891767aa3f865206.jpg','','','','','',1,1,NULL,'','','','',''),(2,NULL,'italyanskoe-oborudovanie-i-komplektuyushchie','Итальянское оборудование и комплектующие','34e03a61053f09cd88dd0cdfe94e2d6a.jpg','','','','','',1,2,NULL,'','','','',''),(3,NULL,'komplektuyushchie-vprysk-n','Комплектующие ВПРЫСК (н)','1e693708f50f9a2c582e9e47023252e5.jpg','','','','','',1,3,NULL,'','','','',''),(4,NULL,'shlangi','Шланги','af6eae57222b731d82cfff7176a6317b.jpg','','','','','',1,4,NULL,'','','','',''),(5,NULL,'elektronika-rezol','Электроника Резол','18ad429ad5e44fbe92bb57710c8041a7.jpg','','','','','',1,5,NULL,'','','','',''),(6,NULL,'smesiteli','Смесители','f8a52954aef0249da4a5d678e3663372.jpg','','','','','',1,6,NULL,'','','','',''),(7,NULL,'servisnoe-oborudovanie','Сервисное оборудование','f20ff9a9cadf2c1729fd0ced93a0d3bc.jpg','','','','','',1,7,NULL,'','','','',''),(8,NULL,'remkomplekty-i-filtry','Ремкомплекты и фильтры','fe1e52873a1c8fc5b5d37bf59d4d486b.jpg','','','','','',1,8,NULL,'','','','',''),(9,1,'toroidalnye','Тороидальные','5d29ead20fa7e521a7b804d4a6de3cc2.jpg','','','','','',1,9,NULL,'','','','',''),(10,1,'cilindricheskie','Цилиндрические','2c57b2723c9d451b19cecd7c1d0bc756.jpg','','','','','',1,10,NULL,'','','','','');
/*!40000 ALTER TABLE `yupe_store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_coupon`
--

DROP TABLE IF EXISTS `yupe_store_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `min_order_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `registered_user` tinyint(4) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_per_user` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_coupon`
--

LOCK TABLES `yupe_store_coupon` WRITE;
/*!40000 ALTER TABLE `yupe_store_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_delivery`
--

DROP TABLE IF EXISTS `yupe_store_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT NULL,
  `available_from` float(10,2) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `separate_payment` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_yupe_store_delivery_position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_delivery`
--

LOCK TABLES `yupe_store_delivery` WRITE;
/*!40000 ALTER TABLE `yupe_store_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_delivery_payment`
--

DROP TABLE IF EXISTS `yupe_store_delivery_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_delivery_payment` (
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`delivery_id`,`payment_id`),
  KEY `fk_yupe_store_delivery_payment_payment` (`payment_id`),
  CONSTRAINT `fk_yupe_store_delivery_payment_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `yupe_store_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_delivery_payment_payment` FOREIGN KEY (`payment_id`) REFERENCES `yupe_store_payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_delivery_payment`
--

LOCK TABLES `yupe_store_delivery_payment` WRITE;
/*!40000 ALTER TABLE `yupe_store_delivery_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_delivery_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_order`
--

DROP TABLE IF EXISTS `yupe_store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method_id` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `payment_time` datetime DEFAULT NULL,
  `payment_details` text,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `separate_delivery` tinyint(4) DEFAULT '0',
  `status_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(1024) NOT NULL DEFAULT '',
  `ip` varchar(15) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `note` varchar(1024) NOT NULL DEFAULT '',
  `modified` datetime DEFAULT NULL,
  `zipcode` varchar(30) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `apartment` varchar(10) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_yupe_store_order_url` (`url`),
  KEY `idx_yupe_store_order_user_id` (`user_id`),
  KEY `idx_yupe_store_order_date` (`date`),
  KEY `idx_yupe_store_order_status` (`status_id`),
  KEY `idx_yupe_store_order_paid` (`paid`),
  KEY `fk_yupe_store_order_delivery` (`delivery_id`),
  KEY `fk_yupe_store_order_payment` (`payment_method_id`),
  KEY `fk_yupe_store_order_manager` (`manager_id`),
  CONSTRAINT `fk_yupe_store_order_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `yupe_store_delivery` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_order_manager` FOREIGN KEY (`manager_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_order_payment` FOREIGN KEY (`payment_method_id`) REFERENCES `yupe_store_payment` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_order_status` FOREIGN KEY (`status_id`) REFERENCES `yupe_store_order_status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_order_user` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_order`
--

LOCK TABLES `yupe_store_order` WRITE;
/*!40000 ALTER TABLE `yupe_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_order_coupon`
--

DROP TABLE IF EXISTS `yupe_store_order_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_order_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_yupe_store_order_coupon_order` (`order_id`),
  KEY `fk_yupe_store_order_coupon_coupon` (`coupon_id`),
  CONSTRAINT `fk_yupe_store_order_coupon_coupon` FOREIGN KEY (`coupon_id`) REFERENCES `yupe_store_coupon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_yupe_store_order_coupon_order` FOREIGN KEY (`order_id`) REFERENCES `yupe_store_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_order_coupon`
--

LOCK TABLES `yupe_store_order_coupon` WRITE;
/*!40000 ALTER TABLE `yupe_store_order_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_order_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_order_product`
--

DROP TABLE IF EXISTS `yupe_store_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `variants` text,
  `variants_text` varchar(1024) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_yupe_store_order_product_order_id` (`order_id`),
  KEY `idx_yupe_store_order_product_product_id` (`product_id`),
  CONSTRAINT `fk_yupe_store_order_product_order` FOREIGN KEY (`order_id`) REFERENCES `yupe_store_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_order_product_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_order_product`
--

LOCK TABLES `yupe_store_order_product` WRITE;
/*!40000 ALTER TABLE `yupe_store_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_order_status`
--

DROP TABLE IF EXISTS `yupe_store_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_order_status`
--

LOCK TABLES `yupe_store_order_status` WRITE;
/*!40000 ALTER TABLE `yupe_store_order_status` DISABLE KEYS */;
INSERT INTO `yupe_store_order_status` VALUES (1,'Новый',1,'default'),(2,'Принят',1,'info'),(3,'Выполнен',1,'success'),(4,'Удален',1,'danger');
/*!40000 ALTER TABLE `yupe_store_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_payment`
--

DROP TABLE IF EXISTS `yupe_store_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `settings` text,
  `currency_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_yupe_store_payment_position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_payment`
--

LOCK TABLES `yupe_store_payment` WRITE;
/*!40000 ALTER TABLE `yupe_store_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_producer`
--

DROP TABLE IF EXISTS `yupe_store_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_producer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_short` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `view` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_yupe_store_producer_slug` (`slug`),
  KEY `ix_yupe_store_producer_sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_producer`
--

LOCK TABLES `yupe_store_producer` WRITE;
/*!40000 ALTER TABLE `yupe_store_producer` DISABLE KEYS */;
INSERT INTO `yupe_store_producer` VALUES (3,'job1','Работа 1','job1','8311ec6ff1ada25eb94afca45d2a84de.jpg','','','','','',1,2,''),(4,'job2','Работа 2','job2','ae7c5da70eab5b7fe2afba99be6b09b4.jpg','','','','','',1,3,''),(5,'job3','Работа 3','job3','62323ec6b38a39a2e80b755f8df3102e.jpg','','','','','',1,4,'');
/*!40000 ALTER TABLE `yupe_store_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product`
--

DROP TABLE IF EXISTS `yupe_store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT '0.000',
  `discount_price` decimal(19,3) DEFAULT NULL,
  `discount` decimal(19,3) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `data` text,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `length` decimal(19,3) DEFAULT NULL,
  `width` decimal(19,3) DEFAULT NULL,
  `height` decimal(19,3) DEFAULT NULL,
  `weight` decimal(19,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `average_price` decimal(19,3) DEFAULT NULL,
  `purchase_price` decimal(19,3) DEFAULT NULL,
  `recommended_price` decimal(19,3) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `external_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `view` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_product_alias` (`slug`),
  KEY `ix_yupe_store_product_status` (`status`),
  KEY `ix_yupe_store_product_type_id` (`type_id`),
  KEY `ix_yupe_store_product_producer_id` (`producer_id`),
  KEY `ix_yupe_store_product_price` (`price`),
  KEY `ix_yupe_store_product_discount_price` (`discount_price`),
  KEY `ix_yupe_store_product_create_time` (`create_time`),
  KEY `ix_yupe_store_product_update_time` (`update_time`),
  KEY `fk_yupe_store_product_category` (`category_id`),
  KEY `yupe_store_product_external_id_ix` (`external_id`),
  KEY `ix_yupe_store_product_sku` (`sku`),
  KEY `ix_yupe_store_product_name` (`name`),
  KEY `ix_yupe_store_product_position` (`position`),
  CONSTRAINT `fk_yupe_store_product_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_producer` FOREIGN KEY (`producer_id`) REFERENCES `yupe_store_producer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product`
--

LOCK TABLES `yupe_store_product` WRITE;
/*!40000 ALTER TABLE `yupe_store_product` DISABLE KEYS */;
INSERT INTO `yupe_store_product` VALUES (1,NULL,NULL,9,'','Тор. баллон ВНУТР 42 л  600*200 НЗГА','tor-ballon-vnutr-42-l-600200-nzga',10000000.000,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p><div><img src=\"https://d1h0x9w88ijkiq.cloudfront.net/3190/images/transparent.gif\" alt=\"transparent.gif\" /><div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p></div></div><div><img src=\"https://d1h0x9w88ijkiq.cloudfront.net/3190/images/transparent.gif\" alt=\"transparent.gif\" /><div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p></div></div>','','',0,NULL,NULL,NULL,NULL,NULL,1,1,'2019-12-11 11:37:56','2019-12-12 15:04:19','','','','e98cb7bbcd8b1fd584f45ddb1cce683e.jpg',NULL,NULL,NULL,1,NULL,'','','','','');
/*!40000 ALTER TABLE `yupe_store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_attribute_value`
--

DROP TABLE IF EXISTS `yupe_store_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `number_value` double DEFAULT NULL,
  `string_value` varchar(250) DEFAULT NULL,
  `text_value` text,
  `option_value` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yupe_fk_product_attribute_product` (`product_id`),
  KEY `yupe_fk_product_attribute_attribute` (`attribute_id`),
  KEY `yupe_fk_product_attribute_option` (`option_value`),
  KEY `yupe_ix_product_attribute_number_value` (`number_value`),
  KEY `yupe_ix_product_attribute_string_value` (`string_value`),
  CONSTRAINT `yupe_fk_product_attribute_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE,
  CONSTRAINT `yupe_fk_product_attribute_option` FOREIGN KEY (`option_value`) REFERENCES `yupe_store_attribute_option` (`id`) ON DELETE CASCADE,
  CONSTRAINT `yupe_fk_product_attribute_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_attribute_value`
--

LOCK TABLES `yupe_store_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_category`
--

DROP TABLE IF EXISTS `yupe_store_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_yupe_store_product_category_product_id` (`product_id`),
  KEY `ix_yupe_store_product_category_category_id` (`category_id`),
  CONSTRAINT `fk_yupe_store_product_category_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_category_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_category`
--

LOCK TABLES `yupe_store_product_category` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_image`
--

DROP TABLE IF EXISTS `yupe_store_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_yupe_store_product_image_product` (`product_id`),
  KEY `fk_yupe_store_product_image_group` (`group_id`),
  CONSTRAINT `fk_yupe_store_product_image_group` FOREIGN KEY (`group_id`) REFERENCES `yupe_store_product_image_group` (`id`) ON DELETE NO ACTION ON UPDATE SET NULL,
  CONSTRAINT `fk_yupe_store_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_image`
--

LOCK TABLES `yupe_store_product_image` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_image_group`
--

DROP TABLE IF EXISTS `yupe_store_product_image_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_image_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_image_group`
--

LOCK TABLES `yupe_store_product_image_group` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_image_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_image_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_link`
--

DROP TABLE IF EXISTS `yupe_store_product_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `linked_product_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_product_link_product` (`product_id`,`linked_product_id`),
  KEY `fk_yupe_store_product_link_linked_product` (`linked_product_id`),
  KEY `fk_yupe_store_product_link_type` (`type_id`),
  CONSTRAINT `fk_yupe_store_product_link_linked_product` FOREIGN KEY (`linked_product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_link_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_link_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_product_link_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_link`
--

LOCK TABLES `yupe_store_product_link` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_link_type`
--

DROP TABLE IF EXISTS `yupe_store_product_link_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_link_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_product_link_type_code` (`code`),
  UNIQUE KEY `ux_yupe_store_product_link_type_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_link_type`
--

LOCK TABLES `yupe_store_product_link_type` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_link_type` DISABLE KEYS */;
INSERT INTO `yupe_store_product_link_type` VALUES (1,'similar','Похожие'),(2,'related','Сопутствующие');
/*!40000 ALTER TABLE `yupe_store_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_product_variant`
--

DROP TABLE IF EXISTS `yupe_store_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_yupe_store_product_variant_product` (`product_id`),
  KEY `idx_yupe_store_product_variant_attribute` (`attribute_id`),
  KEY `idx_yupe_store_product_variant_value` (`attribute_value`),
  CONSTRAINT `fk_yupe_store_product_variant_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_product_variant_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_product_variant`
--

LOCK TABLES `yupe_store_product_variant` WRITE;
/*!40000 ALTER TABLE `yupe_store_product_variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_type`
--

DROP TABLE IF EXISTS `yupe_store_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_store_type_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_type`
--

LOCK TABLES `yupe_store_type` WRITE;
/*!40000 ALTER TABLE `yupe_store_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_store_type_attribute`
--

DROP TABLE IF EXISTS `yupe_store_type_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_store_type_attribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`),
  KEY `fk_yupe_store_type_attribute_attribute` (`attribute_id`),
  CONSTRAINT `fk_yupe_store_type_attribute_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_store_type_attribute_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_store_type_attribute`
--

LOCK TABLES `yupe_store_type_attribute` WRITE;
/*!40000 ALTER TABLE `yupe_store_type_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_store_type_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_user_tokens`
--

DROP TABLE IF EXISTS `yupe_user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_user_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `expire_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_yupe_user_tokens_user_id` (`user_id`),
  CONSTRAINT `fk_yupe_user_tokens_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_user_tokens`
--

LOCK TABLES `yupe_user_tokens` WRITE;
/*!40000 ALTER TABLE `yupe_user_tokens` DISABLE KEYS */;
INSERT INTO `yupe_user_tokens` VALUES (1,1,'LTcZC1~TAAX_IQC9FWmrYcPHmFabMhJC',2,0,'2019-12-06 10:59:21','2019-12-06 10:59:21','127.0.0.1','2019-12-07 10:59:21'),(6,1,'z8MNNrFT0kHQ4Ls9eVTRnbeGmm73Scnp',4,0,'2019-12-12 10:41:54','2019-12-12 10:41:54','127.0.0.1','2019-12-19 10:41:54');
/*!40000 ALTER TABLE `yupe_user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_user_user`
--

DROP TABLE IF EXISTS `yupe_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `nick_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birth_date` date DEFAULT NULL,
  `site` varchar(250) NOT NULL DEFAULT '',
  `about` varchar(250) NOT NULL DEFAULT '',
  `location` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '2',
  `access_level` int(11) NOT NULL DEFAULT '0',
  `visit_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '7d262015c29e60ce95bd3d15be218e0f0.79365700 1575524596',
  `email_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `phone` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_user_user_nick_name` (`nick_name`),
  UNIQUE KEY `ux_yupe_user_user_email` (`email`),
  KEY `ix_yupe_user_user_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_user_user`
--

LOCK TABLES `yupe_user_user` WRITE;
/*!40000 ALTER TABLE `yupe_user_user` DISABLE KEYS */;
INSERT INTO `yupe_user_user` VALUES (1,'2019-12-05 12:48:24','','','','admin','toropovpavel1991@gmail.com',0,NULL,'','','',1,1,'2019-12-12 10:41:54','2019-12-05 12:48:24',NULL,'$2y$13$o.1zkavTmIR2Khu4wEDwYuY60Guo5He.Dc.2ym/zzCtaQFlYjHVee',1,NULL);
/*!40000 ALTER TABLE `yupe_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_user_user_auth_assignment`
--

DROP TABLE IF EXISTS `yupe_user_user_auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_user_user_auth_assignment` (
  `itemname` char(64) NOT NULL,
  `userid` int(11) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  KEY `fk_yupe_user_user_auth_assignment_user` (`userid`),
  CONSTRAINT `fk_yupe_user_user_auth_assignment_item` FOREIGN KEY (`itemname`) REFERENCES `yupe_user_user_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_user_user_auth_assignment_user` FOREIGN KEY (`userid`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_user_user_auth_assignment`
--

LOCK TABLES `yupe_user_user_auth_assignment` WRITE;
/*!40000 ALTER TABLE `yupe_user_user_auth_assignment` DISABLE KEYS */;
INSERT INTO `yupe_user_user_auth_assignment` VALUES ('admin',1,NULL,NULL);
/*!40000 ALTER TABLE `yupe_user_user_auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_user_user_auth_item`
--

DROP TABLE IF EXISTS `yupe_user_user_auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_user_user_auth_item` (
  `name` char(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`),
  KEY `ix_yupe_user_user_auth_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_user_user_auth_item`
--

LOCK TABLES `yupe_user_user_auth_item` WRITE;
/*!40000 ALTER TABLE `yupe_user_user_auth_item` DISABLE KEYS */;
INSERT INTO `yupe_user_user_auth_item` VALUES ('admin',2,'Администратор',NULL,NULL);
/*!40000 ALTER TABLE `yupe_user_user_auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_user_user_auth_item_child`
--

DROP TABLE IF EXISTS `yupe_user_user_auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_user_user_auth_item_child` (
  `parent` char(64) NOT NULL,
  `child` char(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_yupe_user_user_auth_item_child_child` (`child`),
  CONSTRAINT `fk_yupe_user_user_auth_item_child_child` FOREIGN KEY (`child`) REFERENCES `yupe_user_user_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_yupe_user_user_auth_itemchild_parent` FOREIGN KEY (`parent`) REFERENCES `yupe_user_user_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_user_user_auth_item_child`
--

LOCK TABLES `yupe_user_user_auth_item_child` WRITE;
/*!40000 ALTER TABLE `yupe_user_user_auth_item_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_user_user_auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_yml_export`
--

DROP TABLE IF EXISTS `yupe_yml_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_yml_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_yml_export`
--

LOCK TABLES `yupe_yml_export` WRITE;
/*!40000 ALTER TABLE `yupe_yml_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `yupe_yml_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yupe_yupe_settings`
--

DROP TABLE IF EXISTS `yupe_yupe_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yupe_yupe_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(100) NOT NULL,
  `param_name` varchar(100) NOT NULL,
  `param_value` varchar(500) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_yupe_yupe_settings_module_id_param_name_user_id` (`module_id`,`param_name`,`user_id`),
  KEY `ix_yupe_yupe_settings_module_id` (`module_id`),
  KEY `ix_yupe_yupe_settings_param_name` (`param_name`),
  KEY `fk_yupe_yupe_settings_user_id` (`user_id`),
  CONSTRAINT `fk_yupe_yupe_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yupe_yupe_settings`
--

LOCK TABLES `yupe_yupe_settings` WRITE;
/*!40000 ALTER TABLE `yupe_yupe_settings` DISABLE KEYS */;
INSERT INTO `yupe_yupe_settings` VALUES (1,'yupe','siteDescription','Газобаллонное оборудование','2019-12-05 12:49:04','2019-12-05 12:49:04',1,1),(2,'yupe','siteName','Газобаллонное оборудование','2019-12-05 12:49:04','2019-12-05 12:49:04',1,1),(3,'yupe','siteKeyWords','Газобаллонное оборудование','2019-12-05 12:49:04','2019-12-05 12:49:04',1,1),(4,'yupe','email','toropovpavel1991@gmail.com','2019-12-05 12:49:05','2019-12-05 12:49:05',1,1),(5,'yupe','theme','gasequipment','2019-12-05 12:49:05','2019-12-05 17:12:01',1,1),(6,'yupe','backendTheme','','2019-12-05 12:49:05','2019-12-05 12:49:05',1,1),(7,'yupe','defaultLanguage','ru','2019-12-05 12:49:05','2019-12-05 12:49:05',1,1),(8,'yupe','defaultBackendLanguage','ru','2019-12-05 12:49:05','2019-12-05 12:49:05',1,1),(9,'yupe','coreCacheTime','3600','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(10,'yupe','uploadPath','uploads','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(11,'yupe','editor','redactor','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(12,'yupe','availableLanguages','ru,uk,en,zh','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(13,'yupe','allowedIp','','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(14,'yupe','hidePanelUrls','0','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(15,'yupe','logo','images/logo.png','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(16,'yupe','allowedExtensions','gif, jpeg, png, jpg, zip, rar, doc, docx, xls, xlsx, pdf','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(17,'yupe','mimeTypes','image/gif,image/jpeg,image/png,application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document, application/zip,application/x-rar,application/x-rar-compressed, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(18,'yupe','maxSize','5242880','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(19,'yupe','defaultImage','/images/nophoto.jpg','2019-12-05 16:15:00','2019-12-05 16:15:00',1,1),(20,'homepage','mode','3','2019-12-06 16:36:37','2019-12-06 16:54:51',1,1),(21,'homepage','target','','2019-12-06 16:36:37','2019-12-06 16:53:23',1,1),(22,'homepage','limit','','2019-12-06 16:36:37','2019-12-06 16:36:37',1,1);
/*!40000 ALTER TABLE `yupe_yupe_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-12 18:14:12
