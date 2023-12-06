-- MySQL dump 10.13  Distrib 5.7.43, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.43-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `content` mediumtext,
  `user_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'可以发布文章_制作laravel博客','2023-11-29 01:46:10','2023-12-04 12:55:42',NULL,'我做了一个富文本编辑器可以发布文章_制作laravel博客',1,2),(2,1,'页面提示未定义$article的变量解决','2023-11-30 00:52:41','2023-11-30 14:19:19',NULL,'原因分析：\r\n页面提示未定义$article的变量，因为之前使用了home控制器未发现问题，疏忽了使用/ index路由的时候，没有经过控制去定义文章变量$article。\r\n问题路由：\r\n```PHP\r\n  Route::get(\'/\', function () {\r\n    return view(\'index\');\r\n  });\r\n  ```\r\n解决方法：\r\n改正后：\r\n```php\r\nRoute::get(\'/\', [App\\Http\\Controllers\\IndexController::class, \'index\'])->name(\'index\');\r\n```',1,3),(3,1,'78789798','2023-11-30 08:40:09','2023-11-30 09:38:37','2023-11-30 09:38:37','786786789798',1,0),(4,1,'78789798','2023-11-30 08:41:35','2023-11-30 09:12:12','2023-11-30 09:12:12','786786789798',1,0),(5,1,'111111111111','2023-11-30 09:19:19','2023-11-30 09:38:32','2023-11-30 09:38:32','11111111111',1,0),(6,1,'111111111111','2023-11-30 09:20:18','2023-11-30 09:38:28','2023-11-30 09:38:28','1111111111111',1,0),(7,1,'111111111111','2023-11-30 09:26:49','2023-11-30 09:38:16','2023-11-30 09:38:16','1111111111111',1,0),(8,1,'111111111111','2023-11-30 09:27:50','2023-11-30 09:38:23','2023-11-30 09:38:23','1111111111111',1,0),(9,1,'111111111111','2023-11-30 09:27:56','2023-11-30 09:38:10','2023-11-30 09:38:10','1111111111111',1,0),(10,1,'111111111111','2023-11-30 09:28:08','2023-11-30 09:38:01','2023-11-30 09:38:01','1111111111111',1,0),(11,1,'111111111111','2023-11-30 09:28:26','2023-11-30 09:37:56','2023-11-30 09:37:56','1111111111111',1,0),(12,1,'测试模型观察','2023-11-30 09:28:50','2023-11-30 14:55:06',NULL,'###测试模型观察\r\n当我插入一篇文章数据时，文章模型会被系统检测到，从而采取相应的动作，应用场景可以是短信、邮箱验证或者避免误删等操作.',1,8),(13,1,'laravel-editor-md富文本的安装','2023-11-30 14:38:28','2023-11-30 14:38:51',NULL,'安装与配置\r\n```php\r\ncomposer require wangningkai/laravel-editor-md\r\n```\r\n然后，执行下面 artisan 命令，发布扩展包配置等\r\n```php\r\n<?php\r\n\r\n/**\r\n * 这里只列出一些比较重要的可配置项\r\n * 请注意，这里的配置项值必须为字符串型的 `ture` 或 `false`\r\n */\r\nreturn [\r\n    \'width\'=>\'100%\', //宽度百分比建议100%\r\n    \'height\'=>\'640\',//高度px\r\n    \'emoji\' => \'true\',  //emoji表情\r\n    \'toc\' => \'true\',  //目录\r\n    \'tocm\' => \'false\',  //目录下拉菜单\r\n    \'taskList\' => \'true\',  //任务列表\r\n    \'flowChart\' => \'false\',  //流程图\r\n    \'tex\' => \'false\',  //开启科学公式TeX语言支持，默认关闭\r\n    \'imageUpload\' => \'true\',  //图片上传支持\r\n    \'saveHTMLToTextarea\' => \'true\',  //保存 HTML 到 Textarea\r\n    \'codeFold\' => \'true\',  //代码折叠\r\n    \'sequenceDiagram\' => \'false\',  //开启时序/序列图支持，默认关闭\r\n    \'waterMarkType\' => \'image\', //水印类型 text/image 二选一\r\n    \'textWaterColor\' => \'#0B94C1\', //文字图片水印颜色\r\n    \'textWaterContent\' => \'DesignedByLablog\', //文字图片水印内容\r\n    \'imageWaterPath\' => public_path(\'vendor/editor.md/images/water_mark.png\'), //水印图片地址\r\n    \'example\' => true //是否开启示范路由 !!bool类型\r\n];\r\n```',1,2),(14,1,'laravel定义二级目录控制器','2023-11-30 14:40:14','2023-12-04 14:31:24',NULL,'```php\r\nnamespace App\\Http\\Controllers\\M;\r\nuse App\\Http\\Controllers\\Controller;\r\n```',1,2),(15,1,'Laravel 返回日期格式化','2023-11-30 14:41:19','2023-12-04 14:31:32',NULL,'######问题：”created_at”: “2022-08-25T20:29:26.000000Z”\r\n\r\n我们需要的年月日时分秒，解决办法如下\r\n\r\n将以下代码放入对应的Model中\r\n\r\n引入\r\n```php\r\nuse DateTimeInterface;\r\n```\r\n \r\n方法\r\n```php\r\nprotected function serializeDate(DateTimeInterface $date)\r\n    {\r\n        return $date->format(\'Y-m-d H:i:s\');\r\n    }\r\n```',1,4);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_log`
--

DROP TABLE IF EXISTS `http_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `http_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_log`
--

LOCK TABLES `http_log` WRITE;
/*!40000 ALTER TABLE `http_log` DISABLE KEYS */;
INSERT INTO `http_log` VALUES (1,'john@example.com'),(2,'访问时间 :1701328296http://44.203.66.199/'),(3,'访问时间戳 :1701328338访问地址：http://44.203.66.199/'),(4,'访问时间戳 :1701328398访问地址：http://44.203.66.199/article/2'),(5,'访问时间戳 :1701332586访问地址：http://44.203.66.199/article/2'),(6,'访问时间戳 :1701332589访问地址：http://44.203.66.199/article/2'),(7,'访问时间戳 :1701332591访问地址：http://44.203.66.199/article/create'),(8,'访问时间戳 :1701332606访问地址：http://44.203.66.199/article/create'),(9,'访问时间戳 :1701332607访问地址：http://44.203.66.199/article/create'),(10,'访问时间戳 :1701332610访问地址：http://44.203.66.199/article/create'),(11,'访问时间戳 :1701332611访问地址：http://44.203.66.199/article/create'),(12,'访问时间戳 :1701332662访问地址：http://44.203.66.199/article/create'),(13,'访问时间戳 :1701332662访问地址：http://44.203.66.199/article/create'),(14,'访问时间戳 :1701333336访问地址：http://44.203.66.199/article/create'),(15,'访问时间戳 :1701333337访问地址：http://44.203.66.199/article/create'),(16,'访问时间戳 :1701333346访问地址：http://44.203.66.199/article/create'),(17,'访问时间戳 :1701333347访问地址：http://44.203.66.199/article/create'),(18,'访问时间戳 :1701333423访问地址：http://44.203.66.199/article/create'),(19,'访问时间戳 :1701333424访问地址：http://44.203.66.199/article/create'),(20,'访问时间戳 :1701333428访问地址：http://44.203.66.199/article/create'),(21,'访问时间戳 :1701333433访问地址：http://44.203.66.199/article/create'),(22,'访问时间戳 :1701333433访问地址：http://44.203.66.199/article/create'),(23,'访问时间戳 :1701333598访问地址：http://44.203.66.199/article/create'),(24,'访问时间戳 :1701333598访问地址：http://44.203.66.199/article/create'),(25,'访问时间戳 :1701333601访问地址：http://44.203.66.199/article/create'),(26,'访问时间戳 :1701333609访问地址：http://44.203.66.199/article/create'),(27,'访问时间戳 :1701333695访问地址：http://44.203.66.199/article/create'),(28,'模型观察着 :1701333695访问地址：666'),(29,'模型观察着 :1701333695访问地址：666'),(30,'访问时间戳 :1701333696访问地址：http://44.203.66.199/article/4'),(31,'访问时间戳 :1701333841访问地址：http://44.203.66.199/'),(32,'访问时间戳 :1701335528访问地址：http://44.203.66.199/article/4/edit'),(33,'访问时间戳 :1701335532访问地址：http://44.203.66.199/article/4/del'),(34,'访问时间戳 :1701335533访问地址：http://44.203.66.199/'),(35,'访问时间戳 :1701335536访问地址：http://44.203.66.199/article/create'),(36,'访问时间戳 :1701335684访问地址：http://44.203.66.199/article/create'),(37,'访问时间戳 :1701335696访问地址：http://44.203.66.199/article/create'),(38,'访问时间戳 :1701335696访问地址：http://44.203.66.199/article/create'),(39,'访问时间戳 :1701335856访问地址：http://44.203.66.199/article/create'),(40,'访问时间戳 :1701335863访问地址：http://44.203.66.199/article/create'),(41,'访问时间戳 :1701335864访问地址：http://44.203.66.199/article/create'),(42,'访问时间戳 :1701335882访问地址：http://44.203.66.199/article/create'),(43,'访问时间戳 :1701335882访问地址：http://44.203.66.199/article/create'),(44,'访问时间戳 :1701335887访问地址：http://44.203.66.199/article/create'),(45,'访问时间戳 :1701335887访问地址：http://44.203.66.199/article/create'),(46,'访问时间戳 :1701335920访问地址：http://44.203.66.199/article/create'),(47,'访问时间戳 :1701335921访问地址：http://44.203.66.199/article/create'),(48,'访问时间戳 :1701335940访问地址：http://44.203.66.199/article/create'),(49,'访问时间戳 :1701335940访问地址：http://44.203.66.199/article/create'),(50,'访问时间戳 :1701335947访问地址：http://44.203.66.199/article/create'),(51,'访问时间戳 :1701335959访问地址：http://44.203.66.199/article/create'),(52,'模型观察着 :1701335959文章标题：666'),(53,'模型观察着 :1701335959文章标题：666'),(54,'访问时间戳 :1701335960访问地址：http://44.203.66.199/article/5'),(55,'访问时间戳 :1701335963访问地址：http://44.203.66.199/article/create'),(56,'访问时间戳 :1701336012访问地址：http://44.203.66.199/article/create'),(57,'访问时间戳 :1701336018访问地址：http://44.203.66.199/article/create'),(58,'访问时间戳 :1701336409访问地址：http://44.203.66.199/article/create'),(59,'访问时间戳 :1701336470访问地址：http://44.203.66.199/article/create'),(60,'访问时间戳 :1701336476访问地址：http://44.203.66.199/article/create'),(61,'访问时间戳 :1701336488访问地址：http://44.203.66.199/article/create'),(62,'访问时间戳 :1701336506访问地址：http://44.203.66.199/article/create'),(63,'访问时间戳 :1701336530访问地址：http://44.203.66.199/article/create'),(64,'模型观察着 :1701336530文章标题： 111111111111'),(65,'模型观察着 :1701336530文章标题： 111111111111'),(66,'访问时间戳 :1701336530访问地址：http://44.203.66.199/article/12'),(67,'访问时间戳 :1701336961访问地址：http://44.203.66.199/article/12/edit'),(68,'访问时间戳 :1701337067访问地址：http://44.203.66.199/article/12/edit'),(69,'访问时间戳 :1701337068访问地址：http://44.203.66.199/article/12'),(70,'访问时间戳 :1701337070访问地址：http://44.203.66.199/'),(71,'访问时间戳 :1701337074访问地址：http://44.203.66.199/article/11'),(72,'访问时间戳 :1701337076访问地址：http://44.203.66.199/article/11/del'),(73,'访问时间戳 :1701337077访问地址：http://44.203.66.199/'),(74,'访问时间戳 :1701337079访问地址：http://44.203.66.199/article/10'),(75,'访问时间戳 :1701337081访问地址：http://44.203.66.199/article/10/del'),(76,'访问时间戳 :1701337082访问地址：http://44.203.66.199/'),(77,'访问时间戳 :1701337088访问地址：http://44.203.66.199/article/9'),(78,'访问时间戳 :1701337090访问地址：http://44.203.66.199/article/9/del'),(79,'访问时间戳 :1701337091访问地址：http://44.203.66.199/'),(80,'访问时间戳 :1701337093访问地址：http://44.203.66.199/article/7'),(81,'访问时间戳 :1701337096访问地址：http://44.203.66.199/article/7/del'),(82,'访问时间戳 :1701337096访问地址：http://44.203.66.199/'),(83,'访问时间戳 :1701337098访问地址：http://44.203.66.199/article/8'),(84,'访问时间戳 :1701337103访问地址：http://44.203.66.199/article/8/del'),(85,'访问时间戳 :1701337103访问地址：http://44.203.66.199/'),(86,'访问时间戳 :1701337105访问地址：http://44.203.66.199/article/6'),(87,'访问时间戳 :1701337108访问地址：http://44.203.66.199/article/6/del'),(88,'访问时间戳 :1701337108访问地址：http://44.203.66.199/'),(89,'访问时间戳 :1701337110访问地址：http://44.203.66.199/article/5'),(90,'访问时间戳 :1701337112访问地址：http://44.203.66.199/article/5/del'),(91,'访问时间戳 :1701337113访问地址：http://44.203.66.199/'),(92,'访问时间戳 :1701337115访问地址：http://44.203.66.199/article/3'),(93,'访问时间戳 :1701337117访问地址：http://44.203.66.199/article/3/del'),(94,'访问时间戳 :1701337118访问地址：http://44.203.66.199/'),(95,'访问时间戳 :1701337119访问地址：http://44.203.66.199/'),(96,'访问时间戳 :1701337799访问地址：http://44.203.66.199/'),(97,'访问时间戳 :1701343486访问地址：http://52.54.232.116/'),(98,'访问时间戳 :1701343492访问地址：http://52.54.232.116/'),(99,'访问时间戳 :1701343561访问地址：http://52.54.232.116/'),(100,'访问时间戳 :1701343572访问地址：http://52.54.232.116/'),(101,'访问时间戳 :1701343918访问地址：http://52.54.232.116/'),(102,'访问时间戳 :1701343983访问地址：http://52.54.232.116/'),(103,'访问时间戳 :1701344009访问地址：http://52.54.232.116/'),(104,'访问时间戳 :1701344028访问地址：http://52.54.232.116/'),(105,'访问时间戳 :1701344042访问地址：http://52.54.232.116/sort/2'),(106,'访问时间戳 :1701344048访问地址：http://52.54.232.116/'),(107,'访问时间戳 :1701344057访问地址：http://52.54.232.116/article/2'),(108,'访问时间戳 :1701344078访问地址：http://52.54.232.116/'),(109,'访问时间戳 :1701344079访问地址：http://52.54.232.116/article/2'),(110,'访问时间戳 :1701344083访问地址：http://52.54.232.116/'),(111,'访问时间戳 :1701344090访问地址：http://52.54.232.116/sort/1'),(112,'访问时间戳 :1701344092访问地址：http://52.54.232.116/sort/2'),(113,'访问时间戳 :1701344095访问地址：http://52.54.232.116/sort/3'),(114,'访问时间戳 :1701344096访问地址：http://52.54.232.116/sort/4'),(115,'访问时间戳 :1701344098访问地址：http://52.54.232.116/sort/5'),(116,'访问时间戳 :1701344100访问地址：http://52.54.232.116/sort/1'),(117,'访问时间戳 :1701344102访问地址：http://52.54.232.116/article/2'),(118,'访问时间戳 :1701344123访问地址：http://52.54.232.116/sort/1'),(119,'访问时间戳 :1701344124访问地址：http://52.54.232.116/sort/1'),(120,'访问时间戳 :1701344125访问地址：http://52.54.232.116/article/1'),(121,'访问时间戳 :1701344129访问地址：http://52.54.232.116/sort/1'),(122,'访问时间戳 :1701344131访问地址：http://52.54.232.116/article/12'),(123,'访问时间戳 :1701344131访问地址：http://52.54.232.116/article/12'),(124,'访问时间戳 :1701344131访问地址：http://52.54.232.116/'),(125,'访问时间戳 :1701344134访问地址：http://52.54.232.116/article/12'),(126,'访问时间戳 :1701344139访问地址：http://52.54.232.116/sort/1'),(127,'访问时间戳 :1701344142访问地址：http://52.54.232.116/article/2'),(128,'访问时间戳 :1701344146访问地址：http://52.54.232.116/article/12'),(129,'访问时间戳 :1701344152访问地址：http://52.54.232.116/'),(130,'访问时间戳 :1701344191访问地址：http://52.54.232.116/'),(131,'访问时间戳 :1701344201访问地址：http://52.54.232.116/sort/1'),(132,'访问时间戳 :1701344255访问地址：http://52.54.232.116/sort/1'),(133,'访问时间戳 :1701344260访问地址：http://52.54.232.116/sort/1'),(134,'访问时间戳 :1701344286访问地址：http://52.54.232.116/sort/1'),(135,'访问时间戳 :1701344297访问地址：http://52.54.232.116/sort/1'),(136,'访问时间戳 :1701344327访问地址：http://52.54.232.116/article/12'),(137,'访问时间戳 :1701344535访问地址：http://52.54.232.116/'),(138,'访问时间戳 :1701344540访问地址：http://52.54.232.116/sort/2'),(139,'访问时间戳 :1701344541访问地址：http://52.54.232.116/sort/4'),(140,'访问时间戳 :1701344543访问地址：http://52.54.232.116/'),(141,'访问时间戳 :1701344546访问地址：http://52.54.232.116/article/1'),(142,'访问时间戳 :1701344547访问地址：http://52.54.232.116/login'),(143,'访问时间戳 :1701344565访问地址：http://52.54.232.116/login'),(144,'访问时间戳 :1701344569访问地址：http://52.54.232.116/article/1'),(145,'访问时间戳 :1701344571访问地址：http://52.54.232.116/login'),(146,'访问时间戳 :1701344574访问地址：http://52.54.232.116/'),(147,'访问时间戳 :1701344583访问地址：http://52.54.232.116/login'),(148,'访问时间戳 :1701344586访问地址：http://52.54.232.116/'),(149,'访问时间戳 :1701344588访问地址：http://52.54.232.116/article/2'),(150,'访问时间戳 :1701344662访问地址：http://52.54.232.116/'),(151,'访问时间戳 :1701344857访问地址：http://52.54.232.116/sort/1'),(152,'访问时间戳 :1701344859访问地址：http://52.54.232.116/sort/2'),(153,'访问时间戳 :1701344861访问地址：http://52.54.232.116/sort/3'),(154,'访问时间戳 :1701344884访问地址：http://52.54.232.116/'),(155,'访问时间戳 :1701344886访问地址：http://52.54.232.116/'),(156,'访问时间戳 :1701344886访问地址：http://52.54.232.116/'),(157,'访问时间戳 :1701344888访问地址：http://52.54.232.116/'),(158,'访问时间戳 :1701344888访问地址：http://52.54.232.116/'),(159,'访问时间戳 :1701344890访问地址：http://52.54.232.116/login'),(160,'访问时间戳 :1701344891访问地址：http://52.54.232.116/article/12'),(161,'访问时间戳 :1701344891访问地址：http://52.54.232.116/article/12'),(162,'访问时间戳 :1701344896访问地址：http://52.54.232.116/article/12'),(163,'访问时间戳 :1701344896访问地址：http://52.54.232.116/article/12'),(164,'访问时间戳 :1701344901访问地址：http://52.54.232.116/login'),(165,'访问时间戳 :1701344902访问地址：http://52.54.232.116/sort/1'),(166,'访问时间戳 :1701344902访问地址：http://52.54.232.116/sort/1'),(167,'访问时间戳 :1701344903访问地址：http://52.54.232.116/home'),(168,'访问时间戳 :1701344904访问地址：http://52.54.232.116/sort/2'),(169,'访问时间戳 :1701344904访问地址：http://52.54.232.116/sort/2'),(170,'访问时间戳 :1701344905访问地址：http://52.54.232.116/sort/3'),(171,'访问时间戳 :1701344906访问地址：http://52.54.232.116/sort/3'),(172,'访问时间戳 :1701344907访问地址：http://52.54.232.116/sort/4'),(173,'访问时间戳 :1701344907访问地址：http://52.54.232.116/sort/4'),(174,'访问时间戳 :1701344908访问地址：http://52.54.232.116/sort/5'),(175,'访问时间戳 :1701344908访问地址：http://52.54.232.116/sort/5'),(176,'访问时间戳 :1701344910访问地址：http://52.54.232.116/article/create'),(177,'访问时间戳 :1701344939访问地址：http://52.54.232.116/laravel-editor-md/upload/picture?_token=wIzGRGqeyD1w50QYdbP7zNuvOmiIwFD4BzHmchcD&from=laravel-editor-md&guid=1701344930931'),(178,'访问时间戳 :1701344997访问地址：http://52.54.232.116/laravel-editor-md/upload/picture?_token=wIzGRGqeyD1w50QYdbP7zNuvOmiIwFD4BzHmchcD&from=laravel-editor-md&guid=1701344930931'),(179,'访问时间戳 :1701345135访问地址：http://52.54.232.116/laravel-editor-md/upload/picture?_token=wIzGRGqeyD1w50QYdbP7zNuvOmiIwFD4BzHmchcD&from=laravel-editor-md&guid=1701344930931'),(180,'访问时间戳 :1701345918访问地址：http://52.54.232.116/article/create'),(181,'访问时间戳 :1701346586访问地址：http://52.54.232.116/article/create'),(182,'访问时间戳 :1701346595访问地址：http://52.54.232.116/'),(183,'访问时间戳 :1701346620访问地址：http://52.54.232.116/'),(184,'访问时间戳 :1701347151访问地址：http://52.54.232.116/'),(185,'访问时间戳 :1701347153访问地址：http://52.54.232.116/article/12'),(186,'访问时间戳 :1701347163访问地址：http://52.54.232.116/'),(187,'访问时间戳 :1701347562访问地址：http://52.54.232.116/Temporary_Listen_Addresses'),(188,'访问时间戳 :1701348503访问地址：http://52.54.232.116/'),(189,'访问时间戳 :1701348716访问地址：http://52.54.232.116/'),(190,'访问时间戳 :1701349157访问地址：http://52.54.232.116/'),(191,'访问时间戳 :1701349165访问地址：http://52.54.232.116/'),(192,'访问时间戳 :1701349397访问地址：http://52.54.232.116/'),(193,'访问时间戳 :1701349736访问地址：http://52.54.232.116/article/12'),(194,'访问时间戳 :1701349741访问地址：http://52.54.232.116/'),(195,'访问时间戳 :1701349849访问地址：http://52.54.232.116/'),(196,'访问时间戳 :1701350270访问地址：http://52.54.232.116/'),(197,'访问时间戳 :1701351003访问地址：http://52.54.232.116/'),(198,'访问时间戳 :1701351040访问地址：http://52.54.232.116/'),(199,'访问时间戳 :1701351046访问地址：http://52.54.232.116/sort/1'),(200,'访问时间戳 :1701351073访问地址：http://52.54.232.116/'),(201,'访问时间戳 :1701351074访问地址：http://52.54.232.116/'),(202,'访问时间戳 :1701351076访问地址：http://52.54.232.116/sort/1'),(203,'访问时间戳 :1701351078访问地址：http://52.54.232.116/article/2'),(204,'访问时间戳 :1701351214访问地址：http://52.54.232.116/'),(205,'访问时间戳 :1701351986访问地址：http://52.54.232.116/'),(206,'访问时间戳 :1701352201访问地址：http://52.54.232.116/'),(207,'访问时间戳 :1701352206访问地址：http://52.54.232.116/article/2'),(208,'访问时间戳 :1701352451访问地址：http://52.54.232.116/article/12'),(209,'访问时间戳 :1701352454访问地址：http://52.54.232.116/article/12'),(210,'访问时间戳 :1701352626访问地址：http://52.54.232.116/'),(211,'访问时间戳 :1701352722访问地址：http://52.54.232.116/article/2'),(212,'访问时间戳 :1701352725访问地址：http://52.54.232.116/article/2'),(213,'访问时间戳 :1701352728访问地址：http://52.54.232.116/article/2'),(214,'访问时间戳 :1701352807访问地址：http://52.54.232.116/article/2'),(215,'访问时间戳 :1701352810访问地址：http://52.54.232.116/article/2'),(216,'访问时间戳 :1701352978访问地址：http://52.54.232.116/article/2'),(217,'访问时间戳 :1701352982访问地址：http://52.54.232.116/article/2'),(218,'访问时间戳 :1701352984访问地址：http://52.54.232.116/article/2'),(219,'访问时间戳 :1701352996访问地址：http://52.54.232.116/article/2'),(220,'访问时间戳 :1701353018访问地址：http://52.54.232.116/article/2'),(221,'访问时间戳 :1701353021访问地址：http://52.54.232.116/article/2'),(222,'访问时间戳 :1701353033访问地址：http://52.54.232.116/article/2'),(223,'访问时间戳 :1701353036访问地址：http://52.54.232.116/article/2'),(224,'访问时间戳 :1701353095访问地址：http://52.54.232.116/article/2'),(225,'访问时间戳 :1701353097访问地址：http://52.54.232.116/'),(226,'访问时间戳 :1701353099访问地址：http://52.54.232.116/article/2'),(227,'访问时间戳 :1701353102访问地址：http://52.54.232.116/article/2'),(228,'访问时间戳 :1701353104访问地址：http://52.54.232.116/article/2'),(229,'访问时间戳 :1701353107访问地址：http://52.54.232.116/article/2'),(230,'访问时间戳 :1701353137访问地址：http://52.54.232.116/article/2'),(231,'访问时间戳 :1701353306访问地址：http://52.54.232.116/article/12'),(232,'访问时间戳 :1701353528访问地址：http://52.54.232.116/article/12'),(233,'访问时间戳 :1701353595访问地址：http://52.54.232.116/article/12'),(234,'访问时间戳 :1701353598访问地址：http://52.54.232.116/article/12'),(235,'访问时间戳 :1701353600访问地址：http://52.54.232.116/article/12'),(236,'访问时间戳 :1701353620访问地址：http://52.54.232.116/article/12'),(237,'访问时间戳 :1701353623访问地址：http://52.54.232.116/article/12'),(238,'访问时间戳 :1701353626访问地址：http://52.54.232.116/article/12'),(239,'访问时间戳 :1701353816访问地址：http://52.54.232.116/'),(240,'访问时间戳 :1701353818访问地址：http://52.54.232.116/article/1'),(241,'访问时间戳 :1701353820访问地址：http://52.54.232.116/'),(242,'访问时间戳 :1701353822访问地址：http://52.54.232.116/article/2'),(243,'访问时间戳 :1701353826访问地址：http://52.54.232.116/article/2'),(244,'访问时间戳 :1701353828访问地址：http://52.54.232.116/article/2'),(245,'访问时间戳 :1701353942访问地址：http://52.54.232.116/article/2/edit'),(246,'访问时间戳 :1701353959访问地址：http://52.54.232.116/article/2/edit'),(247,'访问时间戳 :1701353960访问地址：http://52.54.232.116/article/2'),(248,'访问时间戳 :1701353972访问地址：http://52.54.232.116/'),(249,'访问时间戳 :1701354159访问地址：http://52.54.232.116/article/12'),(250,'访问时间戳 :1701354954访问地址：http://52.54.232.116/'),(251,'访问时间戳 :1701354989访问地址：http://52.54.232.116/'),(252,'访问时间戳 :1701354991访问地址：http://52.54.232.116/'),(253,'访问时间戳 :1701354998访问地址：http://52.54.232.116/article/create'),(254,'访问时间戳 :1701355107访问地址：http://52.54.232.116/article/create'),(255,'模型观察着 :1701355108文章标题： laravel-editor-md富文本的安装'),(256,'模型观察着 :1701355108文章标题： laravel-editor-md富文本的安装'),(257,'访问时间戳 :1701355108访问地址：http://52.54.232.116/article/13'),(258,'访问时间戳 :1701355112访问地址：http://52.54.232.116/article/13/edit'),(259,'访问时间戳 :1701355130访问地址：http://52.54.232.116/article/13/edit'),(260,'访问时间戳 :1701355131访问地址：http://52.54.232.116/article/13'),(261,'访问时间戳 :1701355133访问地址：http://52.54.232.116/'),(262,'访问时间戳 :1701355196访问地址：http://52.54.232.116/article/create'),(263,'访问时间戳 :1701355214访问地址：http://52.54.232.116/article/create'),(264,'模型观察着 :1701355214文章标题： laravel定义二级目录控制器'),(265,'模型观察着 :1701355214文章标题： laravel定义二级目录控制器'),(266,'访问时间戳 :1701355215访问地址：http://52.54.232.116/article/14'),(267,'访问时间戳 :1701355218访问地址：http://52.54.232.116/'),(268,'访问时间戳 :1701355233访问地址：http://52.54.232.116/article/create'),(269,'访问时间戳 :1701355279访问地址：http://52.54.232.116/article/create'),(270,'模型观察着 :1701355279文章标题： Laravel 返回日期格式化'),(271,'模型观察着 :1701355279文章标题： Laravel 返回日期格式化'),(272,'访问时间戳 :1701355280访问地址：http://52.54.232.116/article/15'),(273,'访问时间戳 :1701355285访问地址：http://52.54.232.116/'),(274,'访问时间戳 :1701355899访问地址：http://52.54.232.116/'),(275,'访问时间戳 :1701356106访问地址：http://52.54.232.116/article/12'),(276,'访问时间戳 :1701356140访问地址：http://52.54.232.116/article/12'),(277,'访问时间戳 :1701356143访问地址：http://52.54.232.116/logout'),(278,'访问时间戳 :1701356143访问地址：http://52.54.232.116/'),(279,'访问时间戳 :1701356180访问地址：http://52.54.232.116/'),(280,'访问时间戳 :1701356268访问地址：http://52.54.232.116/'),(281,'访问时间戳 :1701676672访问地址：http://44.221.196.65/muieblackcat'),(282,'访问时间戳 :1701676672访问地址：http://44.221.196.65//'),(283,'访问时间戳 :1701679367访问地址：http://44.221.196.65/'),(284,'访问时间戳 :1701679430访问地址：http://44.221.196.65/'),(285,'访问时间戳 :1701680269访问地址：http://44.221.196.65/'),(286,'访问时间戳 :1701682708访问地址：http://44.221.196.65/'),(287,'访问时间戳 :1701683461访问地址：http://44.221.196.65/'),(288,'访问时间戳 :1701684185访问地址：http://44.221.196.65/'),(289,'访问时间戳 :1701684198访问地址：http://44.221.196.65/'),(290,'访问时间戳 :1701684198访问地址：http://44.221.196.65/'),(291,'访问时间戳 :1701684199访问地址：http://44.221.196.65/'),(292,'访问时间戳 :1701684205访问地址：http://44.221.196.65/'),(293,'访问时间戳 :1701684210访问地址：http://44.221.196.65/article/15'),(294,'访问时间戳 :1701693613访问地址：http://44.221.196.65/'),(295,'访问时间戳 :1701693669访问地址：http://44.221.196.65/'),(296,'访问时间戳 :1701694537访问地址：http://44.221.196.65/'),(297,'访问时间戳 :1701694542访问地址：http://44.221.196.65/article/1'),(298,'访问时间戳 :1701694544访问地址：http://44.221.196.65/article/13'),(299,'访问时间戳 :1701694553访问地址：http://44.221.196.65/article/15'),(300,'访问时间戳 :1701694559访问地址：http://44.221.196.65/'),(301,'访问时间戳 :1701699182访问地址：http://44.221.196.65/login.html'),(302,'访问时间戳 :1701700265访问地址：http://44.221.196.65/'),(303,'访问时间戳 :1701700272访问地址：http://44.221.196.65/sort/1'),(304,'访问时间戳 :1701700273访问地址：http://44.221.196.65/sort/2'),(305,'访问时间戳 :1701700274访问地址：http://44.221.196.65/sort/4'),(306,'访问时间戳 :1701700275访问地址：http://44.221.196.65/sort/4'),(307,'访问时间戳 :1701700276访问地址：http://44.221.196.65/sort/3'),(308,'访问时间戳 :1701700276访问地址：http://44.221.196.65/sort/5'),(309,'访问时间戳 :1701700277访问地址：http://44.221.196.65/sort/6'),(310,'访问时间戳 :1701700278访问地址：http://44.221.196.65/'),(311,'访问时间戳 :1701700280访问地址：http://44.221.196.65/sort/1'),(312,'访问时间戳 :1701700284访问地址：http://44.221.196.65/article/14'),(313,'访问时间戳 :1701700284访问地址：http://44.221.196.65/article/14'),(314,'访问时间戳 :1701700292访问地址：http://44.221.196.65/article/15'),(315,'访问时间戳 :1701700292访问地址：http://44.221.196.65/article/15'),(316,'访问时间戳 :1701700545访问地址：http://44.221.196.65/'),(317,'访问时间戳 :1701701693访问地址：http://44.221.196.65/'),(318,'访问时间戳 :1701702567访问地址：http://44.221.196.65/'),(319,'访问时间戳 :1701718640访问地址：http://44.221.196.65/'),(320,'访问时间戳 :1701721166访问地址：http://44.221.196.65/'),(321,'访问时间戳 :1701725469访问地址：http://44.221.196.65/'),(322,'访问时间戳 :1701796098访问地址：http://44.221.196.65/'),(323,'访问时间戳 :1701796256访问地址：http://44.221.196.65/'),(324,'访问时间戳 :1701797590访问地址：http://44.221.196.65/'),(325,'访问时间戳 :1701797874访问地址：http://44.221.196.65/');
/*!40000 ALTER TABLE `http_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sorts`
--

DROP TABLE IF EXISTS `sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sorts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sorts`
--

LOCK TABLES `sorts` WRITE;
/*!40000 ALTER TABLE `sorts` DISABLE KEYS */;
INSERT INTO `sorts` VALUES (1,'PHP','2023-06-05 15:54:03','2023-06-05 15:54:03',NULL),(2,'SQL','2023-06-05 15:54:17','2023-06-05 15:56:01',NULL),(3,'JS','2023-06-05 15:54:34','2023-06-05 15:54:34',NULL),(4,'CSS','2023-06-05 15:54:41','2023-06-05 15:54:41',NULL),(5,'HTML','2023-06-05 15:54:52','2023-06-05 15:54:52',NULL),(6,'其他','2023-06-05 16:01:25','2023-06-05 16:01:25',NULL),(7,'VUE','2023-09-15 15:22:50','2023-09-15 15:23:38',NULL);
/*!40000 ALTER TABLE `sorts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'第一个mysql数据库');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xuexi','xuexi@qq.com',NULL,'$2y$12$Y2nGifVmusKYCYoNCFLVPe/IMaytCtw.XlvyGvrS3N0L9C/CwwwWG',NULL,'2023-11-24 07:45:14','2023-11-24 07:45:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'laravel'
--

--
-- Dumping routines for database 'laravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 17:44:49
