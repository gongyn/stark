-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: stark
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `starkjobs`
--

DROP TABLE IF EXISTS `starkjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starkjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `school` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starkjobs`
--

LOCK TABLES `starkjobs` WRITE;
/*!40000 ALTER TABLE `starkjobs` DISABLE KEYS */;
INSERT INTO `starkjobs` VALUES (1,'搜狗暑期实习招聘沙龙活动开始了！','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1264&MenuID=002001','2016-06-14 15:30:00','中国科学技术大学'),(2,'京东方暑期实习生招聘专场宣讲会','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1263&MenuID=002001','2016-06-06 15:30:00','中国科学技术大学'),(3,'上海万革始应用软件有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1262&MenuID=002001','2016-05-26 18:00:00','中国科学技术大学'),(4,'恒生电子股份有限公司实习生招聘计划','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1261&MenuID=002001','2016-05-20 15:30:00','中国科学技术大学'),(5,'航天科工二院专家报告会暨暑期实践团招募','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1235&MenuID=002001','2016-05-12 18:00:00','中国科学技术大学'),(6,'宁德时代新能源科技股份有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1256&MenuID=002001','2016-04-28 18:00:00','中国科学技术大学'),(7,'趋势科技（中国）有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1258&MenuID=002001','2016-04-27 18:00:00','中国科学技术大学'),(8,'世坤投资咨询(北京)有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1241&MenuID=002001','2016-04-25 18:00:00','中国科学技术大学'),(9,'中国工程物理研究院暑期社会实践生招募','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1259&MenuID=002001','2016-04-23 16:00:00','中国科学技术大学'),(10,'深圳市大疆创新科技有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1254&MenuID=002001','2016-04-21 18:00:00','中国科学技术大学'),(11,'中科院电子所苏州研究院','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1260&MenuID=002001','2016-04-21 13:00:00','中国科学技术大学'),(12,'东莞市星火教育科技有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1253&MenuID=002001','2016-04-18 18:00:00','中国科学技术大学'),(13,'美银宝网络信息服务（上海）有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1257&MenuID=002001','2016-04-15 15:30:00','中国科学技术大学'),(14,'螃蟹实验室','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1244&MenuID=002001','2016-04-08 15:30:00','中国科学技术大学'),(15,'温州长江汽车电子有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1230&MenuID=002001','2016-04-06 15:30:00','中国科学技术大学'),(16,'2016年微软预科生招聘即刻起航：成为改变世界的你','西区学生活动中心二楼学术报告厅','http://job.ustc.edu.cn/zph_info.php?id=1223&MenuID=002001','2016-03-30 18:30:00','中国科学技术大学'),(17,'杰克缝纫机股份有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1243&MenuID=002001','2016-03-29 18:00:00','中国科学技术大学'),(18,'上海七牛信息技术有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1229&MenuID=002001','2016-03-28 18:00:00','中国科学技术大学'),(19,'昆山国显光电有限公司','西区学生活动中心二楼学术报告厅','http://job.ustc.edu.cn/zph_info.php?id=1250&MenuID=002001','2016-03-28 16:00:00','中国科学技术大学'),(20,'万达信息股份有限公司','西区学生活动中心一楼报告厅','http://job.ustc.edu.cn/zph_info.php?id=1239&MenuID=002001','2016-03-28 15:30:00','中国科学技术大学'),(21,'中核集团公司二O二厂','东区学生服务中心一楼会议室','http://job.ustc.edu.cn/zph_info.php?id=1255&MenuID=002001','2016-03-28 10:00:00','中国科学技术大学'),(22,'山西省阳泉市教育局','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13990','2016-06-15 09:30:00','浙江大学'),(23,'Works Applications','玉泉永谦活动中心小剧场','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13723','2016-05-19 18:30:00','浙江大学'),(24,'杭州龙湖房地产开发有限公司','紫金港国际会议中心223室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13734','2016-05-17 14:30:00','浙江大学'),(25,'北京大学国际法学院','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13749','2016-05-09 18:30:00','浙江大学'),(26,'深圳盛祥科技开发有限公司(已取消)','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13715','2016-04-29 09:00:00','浙江大学'),(27,'深圳前海深港创新金融研究院有限公司(已取消)','永谦学生活动中心A110','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13698','2016-04-28 14:00:00','浙江大学'),(28,'石家庄市长安区鑫鹏业余文化辅导学校(已取消)','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13732','2016-04-27 13:30:00','浙江大学'),(29,'华自科技股份有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13590','2016-04-26 18:30:00','浙江大学'),(30,'阳光城集团股份有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13608','2016-04-20 18:30:00','浙江大学'),(31,'秦皇岛康姿百德高新技术开发有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13486','2016-04-18 19:00:00','浙江大学'),(32,'中南林业科技大学','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13672','2016-04-15 09:30:00','浙江大学'),(33,'科磊半导体设备技术（上海）有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13585','2016-04-13 18:00:00','浙江大学'),(34,'中国航空油料集团公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13620','2016-04-11 09:30:00','浙江大学'),(35,'郑州轻工业学院','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13640','2016-04-11 14:00:00','浙江大学'),(36,'合肥京东方光电科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13482','2016-04-10 18:00:00','浙江大学'),(37,'温州市鹿城区中津先进科技研究院','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13485','2016-04-08 18:00:00','浙江大学'),(38,'浙江金龙自控设备有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13561','2016-04-06 09:00:00','浙江大学'),(39,'温州长江汽车电子有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13449','2016-04-06 13:30:00','浙江大学'),(40,'竹间智能科技有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13501','2016-04-06 18:00:00','浙江大学'),(41,'特变电工股份有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13316','2016-03-31 13:30:00','浙江大学'),(42,'山西农业大学','永谦学生活动中心A110','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13563','2016-03-31 15:00:00','浙江大学'),(43,'凯盛融英信息科技（上海）有限公司(已取消)','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13324','2016-03-31 18:00:00','浙江大学'),(44,'上海中和软件有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13395','2016-03-30 14:00:00','浙江大学'),(45,'浙江海亮教育集团有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13538','2016-03-29 13:30:00','浙江大学'),(46,'苹果电子产品商贸（北京）有限公司上海分公司','紫金港国际会议中心139室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13361','2016-03-29 18:30:00','浙江大学'),(47,'美丽中国（原中国教育行动）','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13364','2016-03-29 19:00:00','浙江大学'),(48,'微软','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13291','2016-03-28 18:30:00','浙江大学'),(49,'上海埃士工业科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13487','2016-03-24 18:00:00','浙江大学'),(50,'嘉兴中润光学科技有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13428','2016-03-24 18:30:00','浙江大学'),(51,'成都前沿动力科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13442','2016-03-23 13:30:00','浙江大学'),(52,'上海汉得信息技术有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13275','2016-03-23 19:00:00','浙江大学'),(53,'杭州畅唐科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13294','2016-03-22 09:00:00','浙江大学'),(54,'深圳市飞宇天下国际旅行社有限公司(已取消)','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13437','2016-03-22 13:30:00','浙江大学'),(55,'微额速达（上海）金融信息服务有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13394','2016-03-20 18:00:00','浙江大学'),(56,'杭州连帆科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13444','2016-03-20 19:00:00','浙江大学'),(57,'上海爱福窝云技术有限公司(已取消)','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13243','2016-03-17 09:00:00','浙江大学'),(58,'南车株洲电力机车研究所有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13330','2016-03-17 18:00:00','浙江大学'),(59,'无锡东电化兰达电子有限公司上海分公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13415','2016-03-16 09:00:00','浙江大学'),(60,'联化科技股份有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13293','2016-03-16 09:30:00','浙江大学'),(61,'成都市温江区人事考试中心','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13373','2016-03-16 14:00:00','浙江大学'),(62,'青岛实验学校','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13434','2016-03-15 13:30:00','浙江大学'),(63,'芜湖天弋能源科技有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13238','2016-03-15 14:30:00','浙江大学'),(64,'欧尚（中国）投资有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13240','2016-03-15 18:00:00','浙江大学'),(65,'上海东大聚氨酯有限公司','玉泉永谦活动中心第二报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13235','2016-03-15 18:30:00','浙江大学'),(66,'永安期货股份有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13251','2016-03-14 18:00:00','浙江大学'),(67,'潮州三环（集团）股份有限公司','玉泉永谦活动中心第二报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13245','2016-03-13 19:00:00','浙江大学'),(68,'浙商银行股份有限公司杭州分行','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13388','2016-03-12 18:30:00','浙江大学'),(69,'安徽江淮汽车股份有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13303','2016-03-11 09:30:00','浙江大学'),(70,'兴业证券股份有限杭州分公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13327','2016-03-11 09:30:00','浙江大学'),(71,'蓝鸽集团有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13299','2016-03-11 13:30:00','浙江大学'),(72,'特变电工沈阳变压器集团有限公司','玉泉永谦活动中心B111职业生涯辅导室','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13304','2016-03-11 18:00:00','浙江大学'),(73,'杭州海康威视数字技术股份有限公司','玉泉永谦活动中心第二报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13317','2016-03-11 19:00:00','浙江大学'),(74,'中国第一汽车股份有限公司技术中心(已更改)','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13368','2016-03-10 08:30:00','浙江大学'),(75,'成都欧飞凌通讯技术有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13229','2016-03-10 18:30:00','浙江大学'),(76,'万向集团公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13354','2016-03-09 13:30:00','浙江大学'),(77,'浙江润丰能源工程有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13217','2016-03-09 18:30:00','浙江大学'),(78,'（TP-LINK）普联技术有限公司','玉泉永谦活动中心第二报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13253','2016-03-09 19:00:00','浙江大学'),(79,'北京奥一新源科技股份有限公司','玉泉永谦活动中心第二报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13233','2016-03-08 19:00:00','浙江大学'),(80,'许继集团有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13263','2016-03-06 19:00:00','浙江大学'),(81,'杭州对点人力资源管理有限公司','玉泉永谦活动中心第一报告厅','http://www.career.zju.edu.cn/ejob/zczphxxlogin.do?pkValue=13259','2016-03-05 13:30:00','浙江大学'),(82,'华为技术有限公司上海研究所','电信群楼3-100报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=MtaJErm9J5ekCfwzjSmCWr','2016-07-04 14:00:00','上海交通大学'),(83,'中兴通讯股份有限公司上海研发中心','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=M6S5Y5y3q7qVyybdNqVeUk','2016-06-28 18:30:00','上海交通大学'),(84,'江森自控（中国）投资有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=T2vF65tH3bYW1ZgHtMXz49','2016-06-08 14:00:00','上海交通大学'),(85,'威比网络科技（上海）有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=LHvDpWDKgezL55QPmo2E3N','2016-06-07 18:00:00','上海交通大学'),(86,'上汽乘用车公司','光彪楼一楼多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=AkptGdvQk1fzr193y5FmLH','2016-06-06 18:00:00','上海交通大学'),(87,'上海学而思教育信息咨询有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=3fhDFw8hgZemp92Vcx2Mk6','2016-06-06 18:00:00','上海交通大学'),(88,'京东方科技集团股份有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=A7imok9dRYF8k41GXP71LP','2016-06-06 18:00:00','上海交通大学'),(89,'罗尔斯-罗伊斯商业（北京）有限公司上海分公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=LeX9p4u17LJi7D7eCd5Hr4','2016-06-02 14:00:00','上海交通大学'),(90,'中国工程物理研究院材料研究所','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=31hNMNuEAFeNRpcL2hKH72','2016-05-30 18:00:00','上海交通大学'),(91,'上海实邑文化传播有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=WsDssuQCiBrG8soBpynKgv','2016-05-30 18:00:00','上海交通大学'),(92,'拉扎斯网络科技（上海）有限公司','逸夫楼101','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=Pseh5BiTuuWj41gcHm1dJE','2016-05-25 18:30:00','上海交通大学'),(93,'威伯科汽车控制系统（中国）有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=D2mNqbw4g9nB3kY7braS58','2016-05-24 18:30:00','上海交通大学'),(94,'上海西域机电系统有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=NFb4eL8x6HPRQNYuQNfcYy','2016-05-23 18:00:00','上海交通大学'),(95,'澳帝桦（上海）商贸有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=UHiY6bFRib4FGDVWkq6EKq','2016-05-19 18:00:00','上海交通大学'),(96,'上海市浦东新区金融促进会','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=NtmQCQx7b6QA6U5k6EEyiu','2016-05-18 18:00:00','上海交通大学'),(97,'厦门航空有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=7nT73aPBdiCXxic6UqtrLA','2016-05-18 14:00:00','上海交通大学'),(98,'上海九沛金融信息服务有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=BfvyUGw4mdcQJscf7yujMK','2016-05-12 14:00:00','上海交通大学'),(99,'施耐德电气（中国）有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=NHT2FqpPnofF5fG9ZzBJKK','2016-05-11 18:00:00','上海交通大学'),(100,'上海趣医网络技术服务有限公司','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=6DHf1bfLzxNvjPYto3TUEW','2016-05-09 14:00:00','上海交通大学'),(101,'中国航天科工集团第二研究院','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=BoDqWWdkuPZkCLoDcDHb56','2016-05-09 16:00:00','上海交通大学'),(102,'北京京东尚博广益投资管理有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=6dxbxczWyX3Yxfg7BD2XFf','2016-05-06 18:00:00','上海交通大学'),(103,'勃林格殷格翰（中国）投资有限公司','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=JYGUHGvbz49ZPuerxvRUFu','2016-05-04 18:00:00','上海交通大学'),(104,'上海安吉汽车零部件物流有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=NMBnv77TzaQmMrnWGDofif','2016-05-04 14:00:00','上海交通大学'),(105,'北京京广中心有限公司瑰丽酒店分公司','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=4vcFx8wDVKiJqdB9kpSuxx','2016-04-27 18:00:00','上海交通大学'),(106,'野村综研（上海）咨询有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=QbFAzUf159gG5HzAYwmgsh','2016-04-27 18:00:00','上海交通大学'),(107,'武汉华中高校大学生就业市场发展有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=DJwA625iVfjNbVYF52ALAA','2016-04-27 18:00:00','上海交通大学'),(108,'通用电气（中国）研究开发中心有限公司','光彪楼一楼多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=H4XTdeGMUMcvJpULgv9t8N','2016-04-27 14:00:00','上海交通大学'),(109,'深圳前海深港创新金融研究院有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=PVXuuSRYQKsYxYY3PKhJbJ','2016-04-27 14:00:00','上海交通大学'),(110,'华域汽车系统股份有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=PpGw7sSr5Dyadk7jxSnExX','2016-04-26 18:00:00','上海交通大学'),(111,'迪卡侬（上海）体育用品有限公司金桥分公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=XMKdsQDV7aBZcfdPwbXkms','2016-04-26 14:00:00','上海交通大学'),(112,'博格华纳（中国）投资有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=K63upFLar59Umydhv96Eu4','2016-04-25 18:00:00','上海交通大学'),(113,'上海艾杰飞人力资源有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=Sq2x7g16ByoPekjLUEFjry','2016-04-25 18:00:00','上海交通大学'),(114,'建发房地产集团有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=XPPyi5VRiMguCMJEXFTqNy','2016-04-25 14:00:00','上海交通大学'),(115,'世坤投资咨询（北京）有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=4CY4ShX8bWxAt4mtqPQtDG','2016-04-22 18:00:00','上海交通大学'),(116,'中国第一汽车股份有限公司','大智居二楼会议室','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=PvaZatFJfdRNaL7WLV6BZ2','2016-04-21 18:30:00','上海交通大学'),(117,'秦皇岛康姿百德高新技术开发有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=FxoNG1HdJZxGL1Wt7zHNZw','2016-04-21 14:00:00','上海交通大学'),(118,'上汽通用汽车有限公司','光彪楼一楼多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=61bz66AHueQ3vtYLkge4L9','2016-04-20 18:00:00','上海交通大学'),(119,'安永华明会计事务所（特殊普通合伙人）上海分所','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=U7nCoPVSBkBNLcPmBGdmwu','2016-04-20 18:00:00','上海交通大学'),(120,'德意志银行（中国）有限公司上海分行','铁生馆200号宣讲厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=BdHZRaPRQT5mUwGr4FyHWm','2016-04-20 14:00:00','上海交通大学'),(121,'麦穗科技交流南京有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=JWQaRLSy8cFtyKae7BgzaY','2016-04-19 18:00:00','上海交通大学'),(122,'科磊半导体设备技术（上海）有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=Cw3Zmdqe4fY3ayvQZnC89j','2016-04-19 14:00:00','上海交通大学'),(123,'中南林业科技大学','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=DS3zLBbxQ9PBc33MSzDiA5','2016-04-18 14:00:00','上海交通大学'),(124,'北京快乐时代科技发展有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=A7f16syMuHdyi664XzWiSm','2016-04-15 14:00:00','上海交通大学'),(125,'招商银行','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=MpRUyghVm1Dnj5YFe2Gjp6','2016-04-15 10:00:00','上海交通大学'),(126,'嘉吉投资（中国）有限公司','铁生馆200号宣讲厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=R99tC45BZb553E44ZfWEkA','2016-04-14 18:00:00','上海交通大学'),(127,'华为技术有限公司','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=HPmPrPxYqei39sEk1HaxpU','2016-04-13 18:30:00','上海交通大学'),(128,'中国建筑第五工程局有限公司','铁生馆100号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=P8tzZoCc9WAfDg9VH4wHP8','2016-04-13 14:00:00','上海交通大学'),(129,'道达尔（中国）投资有限责任公司','铁生馆200号宣讲厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=DtoQahGWDU6Hy33CN11T2o','2016-04-12 18:00:00','上海交通大学'),(130,'上海比亚迪有限公司','铁生馆200号报告厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=PQxVfSLFNizvJmuHQtCvHo','2016-04-12 14:00:00','上海交通大学'),(131,'竹间智能科技（上海）有限公司（','铁生馆300号多功能厅','http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id=Cm3sMf67sqSwyG8PNDK9ao','2016-04-11 14:00:00','上海交通大学'),(132,'[已举办]诸暨市2016年面向全国公开招聘全日制硕士研究生宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=cnbk8aot-w1gv-7481-r8jn-69yt9y7fhqw7','2016-05-26 09:30:00','复旦大学'),(133,'[已举办]东吴证券实习生宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=wdep8wug-dua2-c38m-trq7-9n1s6kry84t1','2016-05-25 15:30:00','复旦大学'),(134,'[已举办]雅培营养品部宣讲会','枫林校区2202教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=qby318oo-cih0-jejv-r0wv-is2wvyvw7v8v','2016-05-19 18:30:00','复旦大学'),(135,'[已举办]德交所2016校园宣讲会','史带楼205','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=eslzejyn-5bip-xm7j-e0ey-i7uf0b74kpj8','2016-05-19 16:00:00','复旦大学'),(136,'[已举办]赛诺菲校园宣讲会','枫林校区明道楼2楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=k9ylnb7b-w1s0-a01h-lynk-zwegm7px8kei','2016-05-12 18:30:00','复旦大学'),(137,'[已举办]中国航天科工二院暑期实践招募宣讲会','三教3108','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=d7w9jdle-cl03-unff-4xkg-4m6fi2b0gqjj','2016-05-10 15:30:00','复旦大学'),(138,'[已举办]中国工程物理研究院暑期社会实践生招募宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=hjuzxr9e-7r62-g4oa-mt63-k401pu0iyv7w','2016-05-10 15:00:00','复旦大学'),(139,'[已举办]勃林格殷格汉2016实习生宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=clw8go63-h8ay-1as0-rl35-n6yaec5ck6sv','2016-05-05 18:30:00','复旦大学'),(140,'[已举办]野村综研2016实习生宣讲会','逸夫楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=xb0932t6-pxqz-zsfp-anzl-w5pl9701qng5','2016-05-03 18:30:00','复旦大学'),(141,'[已举办]深圳前海深港金融研究院2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=c32yp6t9-b51o-oyza-yuma-e0uwuj4eo5e1','2016-04-28 15:30:00','复旦大学'),(142,'[已举办]三一重工2016校园宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=i6cbskmt-86yn-bgu0-e19v-iozh8yrnmr24','2016-04-27 18:30:00','复旦大学'),(143,'[已举办]瑰丽2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=wj0jqnm6-b6cf-ezx9-45xc-sa8zalciz057','2016-04-27 10:00:00','复旦大学'),(144,'[已举办]欧莱雅研发中心2016暑期实习生校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=zxzbkrdb-wqel-b3b4-n9vq-dsmfhyugyicn','2016-04-26 18:30:00','复旦大学'),(145,'[已举办]比亚迪2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=26m63wpv-np0h-igh1-ct1o-owtoh6iuykol','2016-04-26 15:30:00','复旦大学'),(146,'[已举办]东方证券2016校园宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=zocxgok8-u556-hqcz-vdgw-eiqjzm2h5iss','2016-04-21 18:30:00','复旦大学'),(147,'[已举办]世坤投资2016校园实习生宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=yzai8spq-t1k8-45na-sde7-iaqcs4maecy3','2016-04-21 18:30:00','复旦大学'),(148,'[已举办]北京安必奇生物科技2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=cbcey96f-oto6-vexc-cgwo-th4zn0hifahb','2016-04-20 15:30:00','复旦大学'),(149,'[已举办]上饶师范学院2016年高层次人才专场招聘宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=eb8yepw3-6pci-hc0s-ujol-fxzod9hudg2q','2016-04-18 15:00:00','复旦大学'),(150,'[已举办]华为销售&网络技术大赛暨销服岗位实习生宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=jer6x2n1-pbfm-sbu5-ziq8-j028h2z7zy0m','2016-04-14 18:30:00','复旦大学'),(151,'[已举办]科磊半导体2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=s7vpt2sh-pkyh-m5l4-gra9-7gvtzk4h3g8e','2016-04-14 15:30:00','复旦大学'),(152,'[已举办]2016年乌鲁木齐市事业单位引进紧缺人才推介会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=natqm72c-mq2z-o7g9-7z67-u493nfclvhgw','2016-04-14 09:30:00','复旦大学'),(153,'[已举办]优酷土豆2016校园实习生宣讲会','光华楼东辅楼102','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=74hlr4ny-k700-4l1j-8bh1-tvq917r2h6rm','2016-04-13 19:00:00','复旦大学'),(154,'[已举办]嘉吉投资2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=23pocm3v-b1uc-1ayp-i2l7-k0jgzho6njyw','2016-04-13 18:30:00','复旦大学'),(155,'[已举办]百替生物宣讲会','枫林校区2202教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=8m3p5xeq-33ns-ddtm-bda4-aa1h4yx1j3mb','2016-04-12 19:00:00','复旦大学'),(156,'[已举办]四川省雅安市2016招才引智宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=5rf30zu9-a6k1-hb94-ve8t-jdu0a8ugfa5p','2016-04-12 10:00:00','复旦大学'),(157,'[已举办]旭东数字医学影像宣讲会','枫林校区2202教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=qhmoljnm-s1x5-8rdw-024f-muwnhw2wb22a','2016-04-11 18:30:00','复旦大学'),(158,'[已举办]竹间智能2016校园宣讲会','张江行政楼106','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=1yp0l4vz-yuby-gjo8-sr4y-bfdv2g6wuq0j','2016-04-08 13:30:00','复旦大学'),(159,'[已举办]2016年乌鲁木齐高新技术产业开发区（新市区）引进人才推介会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=m1c95xv0-9wb0-hz4u-ec1u-qypzwi3jblee','2016-04-08 09:30:00','复旦大学'),(160,'[已举办]韬睿惠悦2016校园宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=mrw3895q-s873-8orq-wf52-3ey77yd7s55z','2016-04-07 18:30:00','复旦大学'),(161,'[已举办]学而思国际教育集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=s7fafzba-1cv6-uiv2-3gj1-ccyxgwawv53b','2016-04-06 18:30:00','复旦大学'),(162,'[已举办]南方报业2016校园宣讲会','光华楼东辅楼102','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=k826zccr-gn9e-irsg-4lt5-nvovlk7y608k','2016-04-06 15:30:00','复旦大学'),(163,'[已举办]倍比拓管理咨询2016校园宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=z19hzlaj-rqde-qzjf-hcwd-xnzyzbqu6z8n','2016-03-31 18:30:00','复旦大学'),(164,'[已举办]通用电气（中国）有限公司医疗事业部商业领导力管培生项目招聘和宣讲会','逸夫楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=xu0ywyju-bdtw-v006-uktj-2gskg2tzwu6o','2016-03-30 18:30:00','复旦大学'),(165,'[已举办]上海容易网2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=nqljtawp-d971-dco5-oqj2-urqvhgteksa9','2016-03-30 15:30:00','复旦大学'),(166,'[已举办]PAYPAL2016实习生招聘宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=inzuendj-cpuz-l2e9-e7rk-tuamfvrtjsxy','2016-03-28 18:30:00','复旦大学'),(167,'[已举办]深圳市2016年度公开招考紧缺专业人才校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=apoyk24o-sg3n-s3ha-tymm-ng3ay0io8uwv','2016-03-25 10:00:00','复旦大学'),(168,'[已举办]壳牌2016校园宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=sj8ubada-ywfb-ylmd-7afk-0j43w2izx9xa','2016-03-24 18:30:00','复旦大学'),(169,'[已举办]NBA体育文化2016校园宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=u35neoi5-1c97-5xko-y6po-kgtwwe83wvq4','2016-03-24 18:30:00','复旦大学'),(170,'[已举办]浙江新和成2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=rti36kry-l5nq-iukl-asup-q2g7tkn3bibk','2016-03-24 09:30:00','复旦大学'),(171,'[已举办]泰康同济国际医院宣讲会','枫林校区明道楼2楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=ann9xij0-jgv2-z4ds-p8ib-vvldthv1rxgn','2016-03-23 19:00:00','复旦大学'),(172,'[已举办]A+培优2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=aa6v4npm-1dzk-qlwc-wboo-a4c830ftny06','2016-03-23 18:30:00','复旦大学'),(173,'[已举办]新东方2016校园宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=amo8qz4v-rb74-8faj-99m8-j6gq341onrft','2016-03-23 18:30:00','复旦大学'),(174,'[已举办]京东方科技集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=2ewzd95z-9gta-2ya4-qwal-169g0x4ed71r','2016-03-23 15:30:00','复旦大学'),(175,'[已举办]微软2016实习生宣讲会','张江行政楼106','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=fo1ea9hw-cqs1-ek80-0541-9uinoi9gvhqc','2016-03-22 18:30:00','复旦大学'),(176,'[已举办]联讯证券2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=yls2o0pf-r11g-oknb-ay0s-w97kogniqtis','2016-03-22 18:30:00','复旦大学'),(177,'[已举办]西安高校、企事业重点单位复旦大学2016届毕业生就业洽谈会					','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=007ig0e9-re1e-nxrn-t0ot-22xjua403b7x','2016-03-20 09:00:00','复旦大学'),(178,'[已举办]汉得信息2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=4f1j0dut-s4kn-fxou-y0h7-6r741zid7qgq','2016-03-17 18:30:00','复旦大学'),(179,'[已举办]卓立汉光仪器2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=wzugdt7q-863u-a1we-3yty-0eln33o4wct7','2016-03-16 15:30:00','复旦大学'),(180,'[已举办]厦门国际银行2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=c50vzyhi-cpv1-efpm-l1ky-vg249e0yk6px','2016-03-15 18:30:00','复旦大学'),(181,'[已举办]途牛旅游网2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=g83v9yck-9tlx-ss13-dibp-y8f4xs8c4rqa','2016-03-15 15:30:00','复旦大学'),(182,'[已举办]青岛啤酒2016校园宣讲会','逸夫楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=f9xn0whk-8peu-qzil-vjqa-6tg2uitrkh4u','2016-03-15 15:30:00','复旦大学'),(183,'[已举办]浦东新区储备人才招录宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=cgm5ue3z-yt69-tpyo-so4g-fnwflc56w8rz','2016-03-15 09:30:00','复旦大学'),(184,'[已举办]上海中和软件2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=0m3xdq0o-1d4l-oa4j-bpqz-t4zibx5vbi31','2016-03-14 18:30:00','复旦大学'),(185,'[已举办]山西师范大学2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=08jaygdm-orw1-shau-si10-fzqgahh9i2nz','2016-03-14 15:30:00','复旦大学'),(186,'[已举办]TP-LINK2016校园宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=dcrcgmzw-jqjj-uzlj-t6s5-rl1k2as9qmk5','2016-03-11 18:30:00','复旦大学'),(187,'[已举办]大亚科技2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=d3ty59ud-da8m-wn27-xkk2-fpyekzqu5vdc','2016-03-11 15:30:00','复旦大学'),(188,'[已举办]鲁能集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=m2lfs4wm-p1iy-yt40-s1ia-273xhwqup6zy','2016-03-11 10:00:00','复旦大学'),(189,'[已举办]江西中烟2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=5y7v0rq0-tuz1-kedi-newf-3tyrby75ucs2','2016-03-10 14:00:00','复旦大学'),(190,'[已举办]山西省肿瘤医院宣讲会','枫林校区2204教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=bsrgxhj7-jon3-47ry-6atf-qioc74k4aj2u','2016-03-09 18:30:00','复旦大学'),(191,'[已举办]中交上海航道局2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=s1abae9n-q3v9-iel3-ecch-xigsto2jj44q','2016-03-08 18:30:00','复旦大学'),(192,'[已举办]湖南益阳市2016年度定向引进高层次人才宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=bb68dz9m-wrre-5r18-2zgf-5tvgjb2dk9pz','2016-03-03 15:00:00','复旦大学'),(193,'[已举办]中国浦东干部学院2016校园宣讲会','光华楼东辅楼103','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=af4bkc5y-hmrg-g5j6-9m5j-uvw62oy8fnwn','2015-12-29 14:30:00','复旦大学'),(194,'[已举办]郑州轻工业学院2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=z04m1lfi-dha1-234a-nuel-v0l7aj836gz1','2015-12-24 10:00:00','复旦大学'),(195,'[已举办]雅培制药实习宣讲会','枫林校区2303教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=7fet6csp-1ayv-sitx-d0aa-dgrvdwwce6fr','2015-12-23 18:30:00','复旦大学'),(196,'[已举办]易居中国（控股）有限公司2015校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=b62pahwl-amwl-09kz-vnzc-84gxqmmecdqq','2015-12-17 18:30:00','复旦大学'),(197,'[已举办]天府新区成都管委会社会事业局宣讲会','枫林校区2204教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=zt4wbj8q-8fqw-t88a-gas6-ov5ueror5c4e','2015-12-17 18:30:00','复旦大学'),(198,'[已举办]2015高校人事招聘团赴复旦大学招聘会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=g2b31s63-66i6-ao7z-m1lh-ifoxkhexefo8','2015-12-16 14:00:00','复旦大学'),(199,'[已举办]广西梧州市引进高层次（紧缺）人才宣讲会 ','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=rn1mp5df-tgqk-6rf8-7wrt-a5h54ztxotat','2015-12-15 15:00:00','复旦大学'),(200,'[已举办]济宁医学院附属医院宣讲会','枫林校区2204教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=9v4uljss-imcf-hewd-fk7a-c4qtu5rkkyi2','2015-12-14 19:00:00','复旦大学'),(201,'[已举办]洛阳市2016年招录优秀人才宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=kvlalv6r-bdgg-n5cw-jxrn-vk4ug9thv3v5','2015-12-14 15:30:00','复旦大学'),(202,'[已举办]武汉市面向复旦大学专项选聘优秀毕业研究生专场宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=xxte999a-h3ty-vzew-gful-y8ifljnsts8d','2015-12-14 10:00:00','复旦大学'),(203,'[已举办]厦门市直属卫生事业单位招聘会','明道楼1楼大厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=ufasx3hi-gax3-v1fm-8854-o5wjb3jzy3hb','2015-12-12 08:30:00','复旦大学'),(204,'[已举办]成都高新区管委会2016校园宣讲会','逸夫科技楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=p57czhk0-awpb-r4pr-g4h0-bh5euvn8t72z','2015-12-10 09:30:00','复旦大学'),(205,'[已举办]成都高新区人社局宣讲会_医药类','枫林校区2303教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=nbcbza6o-600q-7peg-he1q-smzh6kdv0wpt','2015-12-09 18:30:00','复旦大学'),(206,'[已举办]江苏省启东市市政府储备干部2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=vqd2r4p1-0hfw-h5or-5z3c-2238g2x4ysx1','2015-12-09 15:30:00','复旦大学'),(207,'[已举办]陆家嘴金融城联合招聘会','光华楼学生广场','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=dwdn2edq-ui93-1kar-b3ja-uqxyy70g3yei','2015-12-09 09:00:00','复旦大学'),(208,'[已举办]瑞盛投资2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=70xlzbuf-44oo-9m2n-25x5-r0fgh7xkwgg3','2015-12-08 18:30:00','复旦大学'),(209,'[已举办]横店集团2016校园宣讲会','逸夫楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=oawf5d7y-0dix-p42u-m4ne-qhj118d8h9ek','2015-12-08 15:30:00','复旦大学'),(210,'[已举办]金鹿金融2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=sgf31dnl-sztc-vr2i-qr2q-vv8sau4ygef3','2015-12-07 18:30:00','复旦大学'),(211,'[已举办]维信集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=ire03md0-7lho-iupf-0tk7-164qsv9k3m9f','2015-12-07 15:30:00','复旦大学'),(212,'[已举办]花旗银行2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=437fdnja-snep-v0sx-keca-xhz0q3rwnk4q','2015-12-04 15:30:00','复旦大学'),(213,'[已举办]苏州睿研纳米医学科技有限公司宣讲会','枫林校区2405教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=67gnjald-s60q-5sec-aglw-kkotlm6omcpn','2015-12-03 18:30:00','复旦大学'),(214,'[已举办]民生证券2016校园宣讲会','逸夫楼报告厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=kpxo3hyx-pvuq-ho9x-166m-068lhhpimobv','2015-12-03 18:30:00','复旦大学'),(215,'[已举办]杭州和壹基因科技2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=6zf84mdf-ykfm-6fls-r47j-rjh7mf758uiu','2015-12-03 15:30:00','复旦大学'),(216,'[已举办]浙江省某政法机关及下属11个市政府机关2016年度公务员考录招聘物选会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=eo6lg4jm-md0i-9lwo-xd9p-bsa15zv5otuy','2015-12-03 09:30:00','复旦大学'),(217,'[已举办]上海鹰赛信息科技宣讲会','枫林校区2303教室','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=k2uqownz-wv8t-bkz3-sv3r-8vdk4fs1xi8j','2015-12-02 18:30:00','复旦大学'),(218,'[已举办]浙江海亮集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=azr1wgpr-rs8g-vefk-tl8w-4z5niislbqt7','2015-12-02 18:30:00','复旦大学'),(219,'[已举办]王品集团2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=oz9iewho-652v-nbx3-if33-iyq8o6ts1g0l','2015-12-01 18:30:00','复旦大学'),(220,'[已举办]LVMH Fashion Group 2016 零售精英项目2016校园宣讲会','逸夫科技楼多功能厅','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=zw1v9mpo-1yi2-dqde-hdf3-7yl654b19cxu','2015-12-01 18:30:00','复旦大学'),(221,'[已举办]闻政管理咨询2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=ut6budzi-5bxs-9lb3-yjv4-xyc4igxzdi88','2015-12-01 15:30:00','复旦大学'),(222,'[已举办]招商基金2016校园宣讲会','光华楼东辅楼102','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=r6fg5dln-s1io-lwba-p74v-cez7xl9bxqog','2015-11-30 18:30:00','复旦大学'),(223,'[已举办]爱茉莉太平洋2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=th3dgb0m-hkl7-i5e7-2r24-dsj2nivong3k','2015-11-30 18:30:00','复旦大学'),(224,'[已举办]云汉电子2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=o4kk0j66-le6a-1fn2-lpsz-yr28spj672a2','2015-11-30 15:30:00','复旦大学'),(225,'[已举办]青海省2016年面向复旦大学定向招录选调生宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=zbh5oewx-jmeg-5j64-ooci-wnorbv2t6f7s','2015-11-27 14:00:00','复旦大学'),(226,'[已举办]塞普锐思半导体2016校园宣讲会','张江行政楼106','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=3ayu6cm4-8zhq-38nh-55s8-49w7odmrh3sm','2015-11-26 15:30:00','复旦大学'),(227,'[已举办]清华附中2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=k9fv3jl1-kpup-mbg0-n9dh-kz9ulp3k350v','2015-11-26 15:00:00','复旦大学'),(228,'[已举办]东北财经大学2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=c5uuvzqp-2nvp-cn20-5n5d-idg7v6xda2fx','2015-11-26 09:30:00','复旦大学'),(229,'[已举办]中国保险行业协会保险大讲堂进校园招聘会','光华楼学生广场','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=f66mz4t6-qvi1-ps3l-q95h-s0wsxps6da0m','2015-11-26 09:00:00','复旦大学'),(230,'[已举办]三胞集团2016校园宣讲会','光华楼东辅楼102','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=l437wet2-iiix-t1m1-j78p-wur7pfs08t9z','2015-11-25 19:00:00','复旦大学'),(231,'[已举办]中民财富2016校园宣讲会','叶耀珍楼202','http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key=5th8eiyq-my3u-pjus-3cku-hw5jkckgrn5a','2015-11-25 18:30:00','复旦大学');
/*!40000 ALTER TABLE `starkjobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-26 10:14:34