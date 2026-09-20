-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl8218785
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl8218785`
--

/*!40000 DROP DATABASE IF EXISTS `cl8218785`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl8218785` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl8218785`;

--
-- Table structure for table `cheliangleixing`
--

DROP TABLE IF EXISTS `cheliangleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangleixing` varchar(200) DEFAULT NULL COMMENT '车辆类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708997106645 DEFAULT CHARSET=utf8 COMMENT='车辆类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangleixing`
--

LOCK TABLES `cheliangleixing` WRITE;
/*!40000 ALTER TABLE `cheliangleixing` DISABLE KEYS */;
INSERT INTO `cheliangleixing` VALUES (61,'2024-02-27 00:59:29','车辆类型1'),(62,'2024-02-27 00:59:29','车辆类型2'),(63,'2024-02-27 00:59:29','车辆类型3'),(64,'2024-02-27 00:59:29','车辆类型4'),(65,'2024-02-27 00:59:29','车辆类型5'),(66,'2024-02-27 00:59:29','车辆类型6'),(1708997106644,'2024-02-27 01:25:06','SUV');
/*!40000 ALTER TABLE `cheliangleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `cheliangtupian` longtext COMMENT '车辆图片',
  `cheliangleixing` varchar(200) NOT NULL COMMENT '车辆类型',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chepaihaoma` (`chepaihaoma`)
) ENGINE=InnoDB AUTO_INCREMENT=1708997129614 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (41,'2024-02-27 00:59:29','车牌号码1','车辆名称1','file/cheliangxinxiCheliangtupian1.jpg,file/cheliangxinxiCheliangtupian2.jpg,file/cheliangxinxiCheliangtupian3.jpg','车辆类型1','车身颜色1','用户账号1','用户姓名1'),(42,'2024-02-27 00:59:29','车牌号码2','车辆名称2','file/cheliangxinxiCheliangtupian2.jpg,file/cheliangxinxiCheliangtupian3.jpg,file/cheliangxinxiCheliangtupian4.jpg','车辆类型2','车身颜色2','用户账号2','用户姓名2'),(43,'2024-02-27 00:59:29','车牌号码3','车辆名称3','file/cheliangxinxiCheliangtupian3.jpg,file/cheliangxinxiCheliangtupian4.jpg,file/cheliangxinxiCheliangtupian5.jpg','车辆类型3','车身颜色3','用户账号3','用户姓名3'),(44,'2024-02-27 00:59:29','车牌号码4','车辆名称4','file/cheliangxinxiCheliangtupian4.jpg,file/cheliangxinxiCheliangtupian5.jpg,file/cheliangxinxiCheliangtupian6.jpg','车辆类型4','车身颜色4','用户账号4','用户姓名4'),(45,'2024-02-27 00:59:29','车牌号码5','车辆名称5','file/cheliangxinxiCheliangtupian5.jpg,file/cheliangxinxiCheliangtupian6.jpg,file/cheliangxinxiCheliangtupian7.jpg','车辆类型5','车身颜色5','用户账号5','用户姓名5'),(46,'2024-02-27 00:59:29','车牌号码6','车辆名称6','file/cheliangxinxiCheliangtupian6.jpg,file/cheliangxinxiCheliangtupian7.jpg,file/cheliangxinxiCheliangtupian8.jpg','车辆类型6','车身颜色6','用户账号6','用户姓名6'),(1708997129613,'2024-02-27 01:25:29','b1231346','丰田SUV','file/1708997122937.webp','SUV','蓝','111','111');
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `cheweitupian` longtext COMMENT '车位图片',
  `xiaoshijiage` double NOT NULL COMMENT '小时价格',
  `shoufeiguize` varchar(200) DEFAULT NULL COMMENT '收费规则',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweihao` (`cheweihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708996878601 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (51,'2024-02-27 00:59:29','车位号1','场地名称1','file/cheweixinxiCheweitupian1.jpg,file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg',1,'收费规则1','已用','2024-02-27 08:59:29'),(52,'2024-02-27 00:59:29','车位号2','场地名称2','file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg',2,'收费规则2','已用','2024-02-27 08:59:29'),(53,'2024-02-27 00:59:29','车位号3','场地名称3','file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg',3,'收费规则3','已用','2024-02-27 08:59:29'),(54,'2024-02-27 00:59:29','车位号4','场地名称4','file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg',4,'收费规则4','已用','2024-02-27 08:59:29'),(55,'2024-02-27 00:59:29','车位号5','场地名称5','file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg',5,'收费规则5','已用','2024-02-27 08:59:29'),(56,'2024-02-27 00:59:29','车位号6','场地名称6','file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg,file/cheweixinxiCheweitupian8.jpg',6,'收费规则6','已用','2024-02-27 08:59:29'),(1708996878600,'2024-02-27 01:21:18','101','恒大负一楼B区','file/1708996869117.jpg',10,'输入详情','已用',NULL);
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-27 00:59:29','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common13\",\"menu\":\"用户管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"出场收费\",\"离场收费\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车辆类型\",\"menuJump\":\"列表\",\"tableName\":\"cheliangleixing\"}],\"fontClass\":\"icon-common43\",\"menu\":\"车辆管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"fontClass\":\"icon-common8\",\"menu\":\"车位管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"刷卡入场\",\"menuJump\":\"列表\",\"tableName\":\"shuakaruchang\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"刷卡离场\",\"menuJump\":\"列表\",\"tableName\":\"shuakalichang\"}],\"fontClass\":\"icon-common8\",\"menu\":\"停车记录\",\"unicode\":\"&#xedb6;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车辆类型\",\"menuJump\":\"列表\",\"tableName\":\"cheliangleixing\"}],\"fontClass\":\"icon-common43\",\"menu\":\"车辆管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"入场\",\"查看\",\"刷卡入场\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"fontClass\":\"icon-common8\",\"menu\":\"车位管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"离场\",\"刷卡离场\"],\"menu\":\"刷卡入场\",\"menuJump\":\"列表\",\"tableName\":\"shuakaruchang\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"刷卡离场\",\"menuJump\":\"列表\",\"tableName\":\"shuakalichang\"}],\"fontClass\":\"icon-common8\",\"menu\":\"停车记录\",\"unicode\":\"&#xedb6;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuakalichang`
--

DROP TABLE IF EXISTS `shuakalichang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuakalichang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweihao` varchar(200) NOT NULL COMMENT '车位号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `chuchangshijian` datetime NOT NULL COMMENT '出场时间',
  `jifeishizhang` double NOT NULL COMMENT '计费时长',
  `xiaoshijiage` double NOT NULL COMMENT '价格/小时',
  `shoufeijine` double NOT NULL COMMENT '收费金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708997183037 DEFAULT CHARSET=utf8 COMMENT='刷卡离场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuakalichang`
--

LOCK TABLES `shuakalichang` WRITE;
/*!40000 ALTER TABLE `shuakalichang` DISABLE KEYS */;
INSERT INTO `shuakalichang` VALUES (81,'2024-02-27 00:59:29','车位号1','场地名称1','车牌号码1','车辆名称1','2024-02-27 08:59:29','2024-02-27 08:59:29',1,1,1,'用户账号1','用户姓名1','未支付',1,1),(82,'2024-02-27 00:59:29','车位号2','场地名称2','车牌号码2','车辆名称2','2024-02-27 08:59:29','2024-02-27 08:59:29',2,2,2,'用户账号2','用户姓名2','未支付',2,2),(83,'2024-02-27 00:59:29','车位号3','场地名称3','车牌号码3','车辆名称3','2024-02-27 08:59:29','2024-02-27 08:59:29',3,3,3,'用户账号3','用户姓名3','未支付',3,3),(84,'2024-02-27 00:59:29','车位号4','场地名称4','车牌号码4','车辆名称4','2024-02-27 08:59:29','2024-02-27 08:59:29',4,4,4,'用户账号4','用户姓名4','未支付',4,4),(85,'2024-02-27 00:59:29','车位号5','场地名称5','车牌号码5','车辆名称5','2024-02-27 08:59:29','2024-02-27 08:59:29',5,5,5,'用户账号5','用户姓名5','未支付',5,5),(86,'2024-02-27 00:59:29','车位号6','场地名称6','车牌号码6','车辆名称6','2024-02-27 08:59:29','2024-02-27 08:59:29',6,6,6,'用户账号6','用户姓名6','未支付',6,6),(1708997183036,'2024-02-27 01:26:22','101','恒大负一楼B区','b1231346','丰田SUV','2024-02-27 09:00:00','2024-02-27 09:26:14',1,10,10,'111','111','已支付',1708997088256,1708997163443);
/*!40000 ALTER TABLE `shuakalichang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuakaruchang`
--

DROP TABLE IF EXISTS `shuakaruchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuakaruchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `xiaoshijiage` varchar(200) NOT NULL COMMENT '小时价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708997163444 DEFAULT CHARSET=utf8 COMMENT='刷卡入场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuakaruchang`
--

LOCK TABLES `shuakaruchang` WRITE;
/*!40000 ALTER TABLE `shuakaruchang` DISABLE KEYS */;
INSERT INTO `shuakaruchang` VALUES (71,'2024-02-27 00:59:29','车位号1','场地名称1','车牌号码1','车辆名称1','2024-02-27 08:59:29','小时价格1','用户账号1','用户姓名1'),(72,'2024-02-27 00:59:29','车位号2','场地名称2','车牌号码2','车辆名称2','2024-02-27 08:59:29','小时价格2','用户账号2','用户姓名2'),(73,'2024-02-27 00:59:29','车位号3','场地名称3','车牌号码3','车辆名称3','2024-02-27 08:59:29','小时价格3','用户账号3','用户姓名3'),(74,'2024-02-27 00:59:29','车位号4','场地名称4','车牌号码4','车辆名称4','2024-02-27 08:59:29','小时价格4','用户账号4','用户姓名4'),(75,'2024-02-27 00:59:29','车位号5','场地名称5','车牌号码5','车辆名称5','2024-02-27 08:59:29','小时价格5','用户账号5','用户姓名5'),(76,'2024-02-27 00:59:29','车位号6','场地名称6','车牌号码6','车辆名称6','2024-02-27 08:59:29','小时价格6','用户账号6','用户姓名6'),(1708997163443,'2024-02-27 01:26:03','101','恒大负一楼B区','b1231346','丰田SUV','2024-02-27 09:00:00','10','111','111');
/*!40000 ALTER TABLE `shuakaruchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'用户账号1','yonghu','用户','lwfmuyy11jgtnk0qhp47jyat83nxdn3q','2024-02-27 01:18:44','2024-02-27 02:18:44'),(2,1,'admin','users','管理员','r1xmjw8ysgwq1xxvff62o2aga8sl087p','2024-02-27 01:19:35','2024-02-27 02:26:54'),(3,1708997088256,'111','yonghu','用户','h26jku2qp1gtvkucvle9a48mz7ovrf8p','2024-02-27 01:24:55','2024-02-27 02:24:56');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-27 00:59:29','admin','管理员','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708997088257 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-02-27 00:59:29','用户账号1','123456','用户姓名1','男','file/yonghuTouxiang1.jpg','19819881111'),(32,'2024-02-27 00:59:29','用户账号2','123456','用户姓名2','男','file/yonghuTouxiang2.jpg','19819881112'),(33,'2024-02-27 00:59:29','用户账号3','123456','用户姓名3','男','file/yonghuTouxiang3.jpg','19819881113'),(34,'2024-02-27 00:59:29','用户账号4','123456','用户姓名4','男','file/yonghuTouxiang4.jpg','19819881114'),(35,'2024-02-27 00:59:29','用户账号5','123456','用户姓名5','男','file/yonghuTouxiang5.jpg','19819881115'),(36,'2024-02-27 00:59:29','用户账号6','123456','用户姓名6','男','file/yonghuTouxiang6.jpg','19819881116'),(1708997088256,'2024-02-27 01:24:48','111','111','111','女','file/1708997083209.jpg','13622224444');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 18:31:36
