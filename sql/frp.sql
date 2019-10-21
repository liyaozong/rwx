/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : rwx

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-07-25 13:01:21
*/

SET FOREIGN_KEY_CHECKS=0;

--
-- Table structure for table `frp_audit_record`
--

DROP TABLE IF EXISTS `frp_audit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_audit_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` bigint(20) DEFAULT NULL COMMENT '审核流程类型：0 故障审核；1 故障外委审核',
  `auditor` varchar(100) DEFAULT NULL COMMENT '审核人',
  `audit_object_id` bigint(20) DEFAULT NULL COMMENT '审核对象ID',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `result` int(11) DEFAULT NULL COMMENT '审核结论：0 拒绝；1 通过',
  `comment` varchar(45) DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='审核记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_audit_record`
--

LOCK TABLES `frp_audit_record` WRITE;
/*!40000 ALTER TABLE `frp_audit_record` DISABLE KEYS */;
INSERT INTO `frp_audit_record` VALUES (1,0,'超级管理员',11,NULL,0,'部处理'),(2,0,'超级管理员',11,NULL,1,'快修'),(3,0,'超级管理员',10,NULL,1,'快修吧'),(4,NULL,'超级管理员',11,'2018-05-26 02:17:53',1,'的点点滴滴的的'),(5,0,'超级管理员',9,'2018-05-26 02:18:36',1,'丰富的地点的'),(6,NULL,'超级管理员',12,'2018-05-26 02:42:34',1,'请求权请求权'),(7,0,'超级管理员',9,'2018-05-26 03:09:43',0,'123123'),(8,1,'超级管理员',13,'2018-05-26 17:00:50',0,'不修了，换台新的'),(9,1,'超级管理员',12,'2018-05-27 03:47:18',1,'搞快叫厂商来解决'),(10,1,'超级管理员',9,'2018-05-28 04:21:25',1,'啊飒飒飒'),(11,1,'超级管理员',11,'2018-05-28 04:22:40',1,'ssdfsdfsdfsdfsdf');
/*!40000 ALTER TABLE `frp_audit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_business_contact`
--

DROP TABLE IF EXISTS `frp_business_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_business_contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '单位名称',
  `contact_name` varchar(20) DEFAULT '' COMMENT '默认联系人',
  `contact_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(11) DEFAULT NULL COMMENT '传真',
  `tax_number` varchar(20) DEFAULT NULL COMMENT '税号',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `zip_code` varchar(10) DEFAULT NULL COMMENT '邮编',
  `bank_name` varchar(30) DEFAULT NULL COMMENT '开户银行名称',
  `bank_number` varchar(30) DEFAULT NULL COMMENT '开户银行账号',
  `web_site` varchar(50) DEFAULT NULL COMMENT '单位网址',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='往来单位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_business_contact`
--

LOCK TABLES `frp_business_contact` WRITE;
/*!40000 ALTER TABLE `frp_business_contact` DISABLE KEYS */;
INSERT INTO `frp_business_contact` VALUES (11,'榆次液压有限公司','','','','','','','','','','',''),(12,'天津减速机股份有限公司','','','','','','','','','','',''),(13,'天津大明电机股份','','','','','','','','','','',''),(14,'山西盛源昌电机有限公司','','','','','','','','','','',''),(15,'上海英格索兰空压机有限公司','','','','','','','','','','',''),(16,'岳阳华立电缆卷筒厂','','','','','','','','','','',''),(17,'焦作市制动器有限公司','','','','','','','','','','',''),(18,'江苏泰隆减速机股份有限公司','','','','','','','','','','',''),(19,'大连宏大电机配件厂','','','','','','','','','','',''),(20,'大连第二电机厂','','','','','','','','','','',''),(21,'郑州江河机电设备工程有限责任公司','','','','','','','','','','',''),(22,'靖江市双轮水泵厂','','','','','','','','','','',''),(23,'西安机电研究所','','','','','','','','','','',''),(24,'辽宁矿山设备机械有限公司','','','','','','','','','','',''),(25,'辽宁朝阳宏达机械有限公司','','','','','','','','','','',''),(26,'常州能源设备总厂有限公司','','','','','','','','','','',''),(27,'洛阳东信中央空调公司','','','','','','','','','','',''),(28,'河南矿山重型起重机械有限公司','','','','','','','','','','',''),(29,'江苏海安振动机械厂','','','','','','','','','','',''),(30,'上海震鸣电子设备有限公司','','','','','','','','','','',''),(31,'吉林市吉炭工程有限公司','','','','','','','','','','',''),(32,'河南卫华起重机械有限公司','','','','','','','','','','',''),(33,'山西东方智能物流股份有限公司','','','','','','','','','','',''),(34,'大连矿山起重机械有限公司','','','','','','','','','','','');
/*!40000 ALTER TABLE `frp_business_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_device_device`
--

DROP TABLE IF EXISTS `frp_device_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_device_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '设备主键',
  `child_device_id` bigint(20) NOT NULL COMMENT '子设备主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备—子设备关联信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_device_device`
--

LOCK TABLES `frp_device_device` WRITE;
/*!40000 ALTER TABLE `frp_device_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `frp_device_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_device_info`
--

DROP TABLE IF EXISTS `frp_device_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_device_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '设备名称',
  `specification` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `code` varchar(45) NOT NULL DEFAULT '' COMMENT '设备编号',
  `manufacturer` bigint(20) DEFAULT NULL COMMENT '生产厂商',
  `supplier` bigint(20) DEFAULT NULL COMMENT '供应商',
  `device_type` bigint(20) DEFAULT NULL COMMENT '设备类型',
  `buy_date` date DEFAULT NULL COMMENT '购置时间',
  `source_price` int(7) DEFAULT NULL COMMENT '资产原值',
  `net_worth` int(7) DEFAULT NULL COMMENT '资产净值',
  `useful_life` int(3) DEFAULT NULL COMMENT '折旧年限',
  `net_residue_rate` double(4,2) DEFAULT NULL COMMENT '净残率',
  `device_flag` bigint(20) DEFAULT NULL COMMENT '设备标识',
  `manager_id` bigint(20) DEFAULT NULL COMMENT '负责人ID',
  `use_status` bigint(20) DEFAULT NULL COMMENT '使用状况',
  `installation_address` varchar(80) DEFAULT NULL COMMENT '安装地点',
  `use_dept` bigint(20) DEFAULT NULL COMMENT '使用部门',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `extend_field_one` varchar(50) DEFAULT NULL COMMENT '自定义字段1',
  `extend_field_two` varchar(50) DEFAULT NULL COMMENT '自定义字段2',
  `extend_field_three` varchar(50) DEFAULT NULL COMMENT '自定义字段3',
  `extend_field_four` varchar(50) DEFAULT NULL COMMENT '自定义字段4',
  `extend_field_five` varchar(50) DEFAULT NULL COMMENT '自定义字段5',
  `extend_field_six` varchar(50) DEFAULT NULL COMMENT '自定义字段6',
  `extend_field_seven` varchar(50) DEFAULT NULL COMMENT '自定义字段7',
  `extend_field_eight` varchar(50) DEFAULT NULL COMMENT '自定义字段8',
  `extend_field_nine` varchar(50) DEFAULT NULL COMMENT '自定义字段9',
  `extend_field_ten` varchar(50) DEFAULT NULL COMMENT '自定义字段10',
  `extend_number_field` int(11) DEFAULT NULL COMMENT '自定义数字',
  `extend_date_field` date DEFAULT NULL COMMENT '自定义日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_device_info`
--

LOCK TABLES `frp_device_info` WRITE;
/*!40000 ALTER TABLE `frp_device_info` DISABLE KEYS */;
INSERT INTO `frp_device_info` VALUES (49,'沥青泵#1','KFJH-KJ-32','HF-8234-234-23',29,12,123,'2018-03-02',NULL,NULL,NULL,NULL,125,6,128,'',12,'','','','','','','','','','','',NULL,NULL),(50,'热媒锅炉','HK-YUO-84','HF-993-23-243',33,31,124,'2018-04-04',NULL,NULL,NULL,NULL,126,21,128,'',12,'','','','','','','','','','','',NULL,NULL);
/*!40000 ALTER TABLE `frp_device_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_device_spare`
--

DROP TABLE IF EXISTS `frp_device_spare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_device_spare` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '设备主键',
  `spare_id` bigint(20) NOT NULL COMMENT '备件主键',
  `replacement_cycle` int(3) DEFAULT NULL COMMENT '更换周期',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '更换周期单位（天，月，年）',
  `first_time` timestamp NULL DEFAULT NULL COMMENT '首次更换时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='设备—备件关联信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_device_spare`
--

LOCK TABLES `frp_device_spare` WRITE;
/*!40000 ALTER TABLE `frp_device_spare` DISABLE KEYS */;
INSERT INTO `frp_device_spare` VALUES (1,50,16,1,'年','2018-07-12 16:00:00'),(2,49,17,120,'天','2018-05-25 16:00:00');
/*!40000 ALTER TABLE `frp_device_spare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_device_worker`
--

DROP TABLE IF EXISTS `frp_device_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_device_worker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `device_id` bigint(20) NOT NULL COMMENT '设备ID',
  `worker_id` bigint(20) NOT NULL COMMENT '人员ID',
  `relationship` int(11) DEFAULT NULL COMMENT '关联关系：0 操作工；1 设备管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设备与操作工关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_device_worker`
--

LOCK TABLES `frp_device_worker` WRITE;
/*!40000 ALTER TABLE `frp_device_worker` DISABLE KEYS */;
INSERT INTO `frp_device_worker` VALUES (1,50,18,NULL),(2,49,18,1),(3,50,21,0);
/*!40000 ALTER TABLE `frp_device_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_plan`
--

DROP TABLE IF EXISTS `frp_inspection_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_plan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '点巡检计划名称',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '所在部门',
  `cycle_time_value` varchar(10) DEFAULT NULL COMMENT '循环周期值',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '循环周期单位（小时，天，月，年）',
  `level` int(1) DEFAULT NULL COMMENT '点巡检级别： 1 一级 操作工， 2 二级 维修工， 3 三级 设备员',
  `status` int(1) DEFAULT NULL COMMENT '计划状态（0:正常；1:暂停；2:完毕）',
  `first_time` timestamp NULL DEFAULT NULL COMMENT '首次执行时间',
  `last_time` timestamp NULL DEFAULT NULL COMMENT '上次执行时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='点巡检计划表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_plan`
--

LOCK TABLES `frp_inspection_plan` WRITE;
/*!40000 ALTER TABLE `frp_inspection_plan` DISABLE KEYS */;
INSERT INTO `frp_inspection_plan` VALUES (1,'1',1,'1','1',1,1,NULL,NULL,'2018-05-25 17:27:42'),(2,'2',2,'2','2',2,2,NULL,NULL,'2018-05-25 17:28:14');
/*!40000 ALTER TABLE `frp_inspection_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_plan_device`
--

DROP TABLE IF EXISTS `frp_inspection_plan_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_plan_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `plan_id` bigint(20) NOT NULL COMMENT '点巡检计划ID',
  `device_id` bigint(20) NOT NULL COMMENT '设备ID',
  `standard_id` bigint(20) NOT NULL COMMENT '点巡检标准ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='点巡检计划-设备条目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_plan_device`
--

LOCK TABLES `frp_inspection_plan_device` WRITE;
/*!40000 ALTER TABLE `frp_inspection_plan_device` DISABLE KEYS */;
INSERT INTO `frp_inspection_plan_device` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `frp_inspection_plan_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_record`
--

DROP TABLE IF EXISTS `frp_inspection_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `plan_id` bigint(20) NOT NULL COMMENT '点巡检计划ID',
  `worker_id` bigint(20) NOT NULL COMMENT '执行人员ID',
  `status` int(1) DEFAULT NULL COMMENT '点巡检状态： 0 待检， 1 点检中， 2 完成点检',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='点巡检记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_record`
--

LOCK TABLES `frp_inspection_record` WRITE;
/*!40000 ALTER TABLE `frp_inspection_record` DISABLE KEYS */;
INSERT INTO `frp_inspection_record` VALUES (1,1,1,1,'2018-02-28 16:00:00',NULL,NULL),(2,2,2,2,'2018-05-31 16:00:00',NULL,NULL),(3,3,3,3,'2018-08-31 16:00:00',NULL,NULL);
/*!40000 ALTER TABLE `frp_inspection_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_record_device`
--

DROP TABLE IF EXISTS `frp_inspection_record_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_record_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `record_id` bigint(20) NOT NULL COMMENT '点巡检记录ID',
  `device_id` bigint(20) NOT NULL COMMENT '设备ID',
  `device_code` varchar(45) DEFAULT NULL COMMENT '设备编码',
  `worker_id` bigint(20) NOT NULL COMMENT '执行人员ID',
  `status` int(1) DEFAULT NULL COMMENT '点巡检状态： 0 待检， 1 点检中， 2 完成点检',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='点巡检记录-设备条目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_record_device`
--

LOCK TABLES `frp_inspection_record_device` WRITE;
/*!40000 ALTER TABLE `frp_inspection_record_device` DISABLE KEYS */;
INSERT INTO `frp_inspection_record_device` VALUES (1,1,32,'421315',1,1),(2,2,3124,'12345656',2,1),(3,3,5843,'51235436',3,1);
/*!40000 ALTER TABLE `frp_inspection_record_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_record_item`
--

DROP TABLE IF EXISTS `frp_inspection_record_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_record_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `record_id` bigint(20) NOT NULL COMMENT '点巡检记录ID',
  `device_id` bigint(20) NOT NULL COMMENT '设备ID',
  `standard_id` bigint(20) NOT NULL COMMENT '点巡检标准ID',
  `worker_id` bigint(20) NOT NULL COMMENT '执行人员ID',
  `status` int(1) DEFAULT NULL COMMENT '点巡检状态： 0 待检， 1 完成点检',
  `name` varchar(50) DEFAULT NULL COMMENT '点检项名称',
  `result` varchar(50) DEFAULT NULL COMMENT '点检结果值、选项、文字说明等，多个值用逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='点巡检记录-点检项记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_record_item`
--

LOCK TABLES `frp_inspection_record_item` WRITE;
/*!40000 ALTER TABLE `frp_inspection_record_item` DISABLE KEYS */;
INSERT INTO `frp_inspection_record_item` VALUES (1,1,32,123,1,NULL,NULL,NULL),(2,1,32,123,1,1,NULL,NULL),(3,1,32,32,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `frp_inspection_record_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_standard`
--

DROP TABLE IF EXISTS `frp_inspection_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_standard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `device_type` bigint(20) NOT NULL COMMENT '设备类型ID',
  `name` varchar(50) DEFAULT NULL COMMENT '点巡检标准名称',
  `level` int(1) DEFAULT NULL COMMENT '点巡检级别： 1 一级 操作工， 2 二级 维修工， 3 三级 设备员',
  `method` varchar(50) DEFAULT NULL COMMENT '点检方法',
  `cycle_time_value` varchar(10) DEFAULT NULL COMMENT '循环周期值',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '循环周期单位（小时，天，月，年）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='点巡检标准表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_standard`
--

LOCK TABLES `frp_inspection_standard` WRITE;
/*!40000 ALTER TABLE `frp_inspection_standard` DISABLE KEYS */;
INSERT INTO `frp_inspection_standard` VALUES (1,1,'sss',1,'ss','1','s','2018-05-25 15:03:46'),(2,2,'1',1,'1','1','1','2018-05-25 15:04:03'),(3,1,'1',1,'1','1','1','2018-05-25 15:04:12'),(4,1,'1',1,'1','1','1','2018-05-25 15:04:21');
/*!40000 ALTER TABLE `frp_inspection_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_inspection_standard_item`
--

DROP TABLE IF EXISTS `frp_inspection_standard_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_inspection_standard_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `standard_id` bigint(20) NOT NULL COMMENT '点巡检标准ID',
  `name` varchar(50) DEFAULT NULL COMMENT '点巡检项名字',
  `body` varchar(45) DEFAULT NULL COMMENT '设备点检部位',
  `method` varchar(45) DEFAULT NULL COMMENT '点检方法',
  `type` int(1) DEFAULT NULL COMMENT '点检值类型： 0 单选； 1 多选； 2 数值； 3 文字',
  `hint` varchar(50) DEFAULT NULL COMMENT '点检参考值、选项、文字说明等，多个值用逗号隔开',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='点巡检标准-点巡检项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_inspection_standard_item`
--

LOCK TABLES `frp_inspection_standard_item` WRITE;
/*!40000 ALTER TABLE `frp_inspection_standard_item` DISABLE KEYS */;
INSERT INTO `frp_inspection_standard_item` VALUES (1,1,'1','1','1',1,'1','2018-05-25 15:09:26'),(2,1,'1','1','1',1,'1','2018-05-25 15:09:36'),(3,1,'1','1','1',1,'1','2018-05-25 15:10:07');
/*!40000 ALTER TABLE `frp_inspection_standard_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_plan`
--

DROP TABLE IF EXISTS `frp_maintenance_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_plan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '保养润滑计划名称',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '所在部门ID',
  `cycle_time_value` varchar(10) DEFAULT NULL COMMENT '循环周期值',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '循环周期单位（天，月，年）',
  `worker_role` bigint(20) DEFAULT NULL COMMENT '责任人角色ID',
  `status` int(1) DEFAULT NULL COMMENT '计划状态（0:正常；1:暂停；2:完毕）',
  `first_time` timestamp NULL DEFAULT NULL COMMENT '首次执行时间',
  `last_time` timestamp NULL DEFAULT NULL COMMENT '上次执行时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保养润滑计划表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_plan`
--

LOCK TABLES `frp_maintenance_plan` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_plan` DISABLE KEYS */;
INSERT INTO `frp_maintenance_plan` VALUES (1,'1',1,'1','1',1,1,NULL,NULL,'2018-05-25 17:13:27'),(2,'2',2,'2','2',2,2,NULL,NULL,'2018-05-25 17:13:38');
/*!40000 ALTER TABLE `frp_maintenance_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_plan_device`
--

DROP TABLE IF EXISTS `frp_maintenance_plan_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_plan_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `plan_id` bigint(20) NOT NULL COMMENT '保养润滑计划ID',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `standard_id` bigint(20) DEFAULT NULL COMMENT '保养润滑标准ID',
  `worker_id` bigint(20) DEFAULT NULL COMMENT '执行人员ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保养润滑计划-设备条目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_plan_device`
--

LOCK TABLES `frp_maintenance_plan_device` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_plan_device` DISABLE KEYS */;
INSERT INTO `frp_maintenance_plan_device` VALUES (1,2,2,2,2),(2,1,1,1,1);
/*!40000 ALTER TABLE `frp_maintenance_plan_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_record`
--

DROP TABLE IF EXISTS `frp_maintenance_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `plan_id` bigint(20) NOT NULL COMMENT '保养润滑计划ID',
  `worker_id` bigint(20) NOT NULL COMMENT '执行人员ID',
  `status` int(1) DEFAULT NULL COMMENT '保养润滑状态： 0 待保养， 1 保养中， 2 完成保养',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保养润滑记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_record`
--

LOCK TABLES `frp_maintenance_record` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_record` DISABLE KEYS */;
INSERT INTO `frp_maintenance_record` VALUES (1,1,1,0,'2018-05-04 16:00:00',NULL,NULL),(2,2,2,2,'2018-02-01 16:00:00',NULL,NULL);
/*!40000 ALTER TABLE `frp_maintenance_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_record_device`
--

DROP TABLE IF EXISTS `frp_maintenance_record_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_record_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `record_id` bigint(20) NOT NULL COMMENT '保养润滑记录ID',
  `device_id` bigint(20) NOT NULL COMMENT '设备ID',
  `device_code` varchar(45) DEFAULT NULL,
  `worker_id` bigint(20) NOT NULL COMMENT '执行人员ID',
  `status` int(1) DEFAULT NULL COMMENT '保养润滑状态： 0 待保养， 1 保养中， 2 完成保养',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保养润滑记录-设备条目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_record_device`
--

LOCK TABLES `frp_maintenance_record_device` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_record_device` DISABLE KEYS */;
INSERT INTO `frp_maintenance_record_device` VALUES (1,2,32,'1412342354',1,NULL),(2,1,312,'wqrhdf234',1,NULL);
/*!40000 ALTER TABLE `frp_maintenance_record_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_standard`
--

DROP TABLE IF EXISTS `frp_maintenance_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_standard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) DEFAULT NULL COMMENT '保养标准名称',
  `device_type` bigint(20) NOT NULL COMMENT '设备类型ID',
  `cycle_time_value` varchar(10) DEFAULT NULL COMMENT '循环周期值',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '循环周期单位（天，月，年）',
  `worker_role` bigint(20) DEFAULT NULL COMMENT '责任人角色ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保养润滑标准表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_standard`
--

LOCK TABLES `frp_maintenance_standard` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_standard` DISABLE KEYS */;
INSERT INTO `frp_maintenance_standard` VALUES (1,'1',1,'1','1',1,'2018-05-25 16:54:31'),(2,'2',2,'2','2',2,'2018-05-25 16:54:39'),(3,'3',3,'3','3',3,'2018-05-25 16:54:46');
/*!40000 ALTER TABLE `frp_maintenance_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_maintenance_standard_item`
--

DROP TABLE IF EXISTS `frp_maintenance_standard_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_maintenance_standard_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `standard_id` bigint(20) DEFAULT NULL COMMENT '保养润滑标准',
  `body` varchar(45) DEFAULT NULL COMMENT '保养部位',
  `method` varchar(45) DEFAULT NULL COMMENT '保养方式',
  `oil` varchar(45) DEFAULT NULL COMMENT '油脂牌号',
  `oil_instead` varchar(45) DEFAULT NULL COMMENT '代油脂牌号',
  `number` int(11) DEFAULT NULL COMMENT '润滑点数',
  `amount` int(11) DEFAULT NULL COMMENT '用油量KG',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保养润滑标准 - 保养项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_maintenance_standard_item`
--

LOCK TABLES `frp_maintenance_standard_item` WRITE;
/*!40000 ALTER TABLE `frp_maintenance_standard_item` DISABLE KEYS */;
INSERT INTO `frp_maintenance_standard_item` VALUES (1,1,'1','1','1','1',1,1,'2018-05-25 16:54:58'),(2,1,'1','1','1','1',1,1,'2018-05-25 16:55:31');
/*!40000 ALTER TABLE `frp_maintenance_standard_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_overhaul_exp_lib`
--

DROP TABLE IF EXISTS `frp_overhaul_exp_lib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_overhaul_exp_lib` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `device_type` varchar(50) DEFAULT NULL COMMENT '设备类型',
  `trouble_desc` varchar(200) DEFAULT NULL COMMENT '故障描述',
  `overhaul_desc` varchar(200) DEFAULT NULL COMMENT '检修经验',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='检修经验库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_overhaul_exp_lib`
--

LOCK TABLES `frp_overhaul_exp_lib` WRITE;
/*!40000 ALTER TABLE `frp_overhaul_exp_lib` DISABLE KEYS */;
INSERT INTO `frp_overhaul_exp_lib` VALUES (1,'123','关头报警','卡路里卡对方品牌啊的离开了','2018-05-19 17:50:58'),(2,'123','琵琶来对抗','健康啦啦啦及卡对方','2018-05-01 16:00:00'),(3,'124','看看你从小','啊克拉克大','2018-05-01 16:00:00');
/*!40000 ALTER TABLE `frp_overhaul_exp_lib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_overhaul_plan`
--

DROP TABLE IF EXISTS `frp_overhaul_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_overhaul_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '检修计划名称',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `device_type` bigint(20) DEFAULT NULL COMMENT '设备类型ID',
  `department_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `work_group_id` bigint(20) DEFAULT NULL COMMENT '维修班组',
  `cycle_type` int(1) NOT NULL COMMENT '循环方式（0:单次；1:循环多次）',
  `cycle_time_value` varchar(10) DEFAULT NULL COMMENT '循环周期值',
  `cycle_time_unit` varchar(11) DEFAULT NULL COMMENT '循环周期单位（天，月，年）',
  `first_time` timestamp NULL DEFAULT NULL COMMENT '首次检修时间',
  `last_time` timestamp NULL DEFAULT NULL COMMENT '上次检修时间，检修任务执行完之后更新',
  `status` int(1) NOT NULL COMMENT '计划状态（0:正常；1:暂停；2:完毕）',
  `comment` varchar(200) DEFAULT NULL COMMENT '检修计划详情',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='检修计划表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_overhaul_plan`
--

LOCK TABLES `frp_overhaul_plan` WRITE;
/*!40000 ALTER TABLE `frp_overhaul_plan` DISABLE KEYS */;
INSERT INTO `frp_overhaul_plan` VALUES (1,'日',23,23,23,23,1,'1','月',NULL,NULL,0,'斯蒂芬撒地府','2018-05-19 17:50:36');
/*!40000 ALTER TABLE `frp_overhaul_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_spare_info`
--

DROP TABLE IF EXISTS `frp_spare_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_spare_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '备件名称',
  `code` varchar(45) DEFAULT NULL COMMENT '备件编号',
  `spare_part_type` bigint(20) DEFAULT NULL COMMENT '备件类型',
  `specifications` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `suppliers_id` bigint(20) DEFAULT NULL COMMENT '供应商ID',
  `reference_price` double DEFAULT NULL COMMENT '参考价',
  `unit_conversion` bigint(20) DEFAULT NULL COMMENT '换算单位',
  `remark` varchar(255) DEFAULT NULL COMMENT '备件备注',
  `extend_date_field_one` datetime DEFAULT NULL COMMENT '自定义日期1',
  `extend_date_field_two` datetime DEFAULT NULL COMMENT '自定义日期2',
  `extend_field_five` varchar(30) DEFAULT NULL COMMENT '自定义字段5',
  `extend_field_four` varchar(30) DEFAULT NULL COMMENT '自定义字段4',
  `extend_field_one` varchar(30) DEFAULT NULL COMMENT '自定义字段1',
  `extend_field_seven` varchar(30) DEFAULT NULL COMMENT '自定义字段7',
  `extend_field_six` varchar(30) DEFAULT NULL COMMENT '自定义字段6',
  `extend_field_three` varchar(30) DEFAULT NULL COMMENT '自定义字段3',
  `extend_field_two` varchar(30) DEFAULT NULL COMMENT '自定义字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='备件信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_spare_info`
--

LOCK TABLES `frp_spare_info` WRITE;
/*!40000 ALTER TABLE `frp_spare_info` DISABLE KEYS */;
INSERT INTO `frp_spare_info` VALUES (15,'压力表','HD-234-212',132,'HD-73-32',12,122,NULL,'',NULL,NULL,'','','','','','',''),(16,'过滤器','HD-23-12',131,'HD-034-33',16,20,NULL,'',NULL,NULL,'','','','','','',''),(17,'风叶罩','KG-234-002',131,'HD-32-43',11,30,NULL,'',NULL,NULL,'','','','','','',''),(18,'燃烧头','UU-09-001',132,'YU-23-241',23,200,NULL,'',NULL,NULL,'','','','','','','');
/*!40000 ALTER TABLE `frp_spare_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_trouble_improve`
--

DROP TABLE IF EXISTS `frp_trouble_improve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_trouble_improve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `trouble_id` bigint(20) NOT NULL COMMENT '故障ID',
  `issue` varchar(50) DEFAULT NULL COMMENT '问题点',
  `solution` varchar(50) DEFAULT NULL COMMENT '问题改进措施',
  `owner_id` bigint(20) DEFAULT NULL COMMENT '责任人',
  `deadline` datetime DEFAULT NULL COMMENT '需完成时间',
  `done_time` datetime DEFAULT NULL COMMENT '实际完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障问题改进措施记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_trouble_improve`
--

LOCK TABLES `frp_trouble_improve` WRITE;
/*!40000 ALTER TABLE `frp_trouble_improve` DISABLE KEYS */;
/*!40000 ALTER TABLE `frp_trouble_improve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_trouble_record`
--

DROP TABLE IF EXISTS `frp_trouble_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_trouble_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `device_id` bigint(20) NOT NULL COMMENT '故障设备ID',
  `device_code` varchar(45) DEFAULT NULL COMMENT '设备编码',
  `status` int(2) NOT NULL COMMENT '故障处理状态(0 待审核； 1 待检修；2 检修中；3 待验收；4 待分析；5 分析中；6 处理完成；7 待外委审核)',
  `reporter_id` bigint(20) DEFAULT NULL COMMENT '故障上报者',
  `trouble_type` int(1) NOT NULL COMMENT '检修类型：0 故障检修； 1 计划任务',
  `trouble_position` varchar(50) DEFAULT NULL COMMENT '故障位置',
  `trouble_comment` varchar(200) DEFAULT NULL COMMENT '故障类型',
  `trouble_desc` varchar(200) DEFAULT NULL COMMENT '故障详情备注',
  `overhaul_id` bigint(20) DEFAULT NULL COMMENT '检修计划ID',
  `repair_group` bigint(20) DEFAULT NULL COMMENT '维修班组ID',
  `repairer_id` bigint(20) DEFAULT NULL COMMENT '维修工ID',
  `is_stoped` int(1) DEFAULT NULL COMMENT '是否停机（0:否；1:是）',
  `stoped_hour` int(11) DEFAULT NULL COMMENT '停机时长（小时）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '故障上报时间',
  `repair_start_time` timestamp NULL DEFAULT NULL COMMENT '开始维修时间',
  `repair_end_time` timestamp NULL DEFAULT NULL COMMENT '结束维修时间',
  `repair_comment` varchar(200) DEFAULT NULL COMMENT '维修工作详情备注',
  `commission_flag` int(1) DEFAULT NULL COMMENT '外委维修标识：0 内部维修；1 外委维修',
  `commission_id` bigint(20) DEFAULT NULL COMMENT '外委维修方ID',
  `commission_time` timestamp NULL DEFAULT NULL COMMENT '委托时间',
  `commission_charge` int(11) DEFAULT NULL COMMENT '外委预计费用',
  `commission_reason` varchar(200) DEFAULT NULL COMMENT '外委原因',
  `inspector_id` bigint(20) DEFAULT NULL COMMENT '验收员',
  `inspect_time` timestamp NULL DEFAULT NULL COMMENT '验收时间',
  `is_repaired` int(1) DEFAULT NULL COMMENT '是否修复： 0 否；1 是',
  `star_level` int(1) DEFAULT NULL COMMENT '验收评级（星级）',
  `suggest` varchar(100) DEFAULT NULL COMMENT '验收意见',
  `analyst_id` bigint(20) DEFAULT NULL COMMENT '分析员',
  `analyze_start_time` timestamp NULL DEFAULT NULL COMMENT '分析开始时间',
  `analyze_end_time` timestamp NULL DEFAULT NULL COMMENT '分析结束时间',
  `failure_level` int(11) DEFAULT NULL COMMENT '故障等级：1 小故障；2 中故障；3 大故障，根据三项花费计算得出',
  `material_cost` int(11) DEFAULT NULL COMMENT '故障维修材料费（元）',
  `manhour_cost` int(11) DEFAULT NULL COMMENT '故障维修工时费（元）',
  `outside_cost` int(11) DEFAULT NULL COMMENT '故障外委维修费用（元）',
  `failure_reason` varchar(200) DEFAULT NULL COMMENT '故障原因总结',
  `standardization` varchar(200) DEFAULT NULL COMMENT '标准化建议',
  `improve_advice` varchar(200) DEFAULT NULL COMMENT '改进跟踪',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='故障报修单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_trouble_record`
--

LOCK TABLES `frp_trouble_record` WRITE;
/*!40000 ALTER TABLE `frp_trouble_record` DISABLE KEYS */;
INSERT INTO `frp_trouble_record` VALUES (9,50,NULL,1,1,0,NULL,'3','天然气红灯亮起',NULL,NULL,NULL,1,NULL,'2018-04-07 10:20:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,49,NULL,3,1,0,'','6','电机螺丝松动',NULL,NULL,NULL,0,NULL,'2018-04-07 10:23:31',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 17:54:01',1,4,'111111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,51,NULL,2,1,0,'','3','审核被拒绝，暂不处理',NULL,NULL,NULL,1,23,'2018-04-07 16:20:55','2018-05-27 18:22:35',NULL,'啊斯蒂芬大大缩短萨斯的',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,50,'',7,1,0,'故障部位','','',NULL,NULL,8,0,NULL,'2018-05-26 02:41:45',NULL,NULL,'',NULL,29,'2018-05-28 04:21:13',20000,'机器爆炸',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',''),(13,49,'HF-8234-234-23',6,1,0,'导热油管道','7','加班太多了，类坏了',NULL,25,NULL,1,NULL,'2018-05-27 04:07:44',NULL,NULL,'',NULL,34,'2018-05-27 04:59:58',12000,' 关键部件损坏无法维修',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 18:10:39','2018-05-27 18:10:48',NULL,22,22,22,'22','22','22');
/*!40000 ALTER TABLE `frp_trouble_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_trouble_spare`
--

DROP TABLE IF EXISTS `frp_trouble_spare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_trouble_spare` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `trouble_id` bigint(20) NOT NULL COMMENT '检修记录ID',
  `device_id` bigint(20) NOT NULL COMMENT '检修设备ID',
  `spare_id` bigint(20) NOT NULL COMMENT '更换备件ID',
  `spare_amount` int(3) DEFAULT NULL COMMENT '更换备件数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检修更换备件记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_trouble_spare`
--

LOCK TABLES `frp_trouble_spare` WRITE;
/*!40000 ALTER TABLE `frp_trouble_spare` DISABLE KEYS */;
/*!40000 ALTER TABLE `frp_trouble_spare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frp_trouble_type`
--

DROP TABLE IF EXISTS `frp_trouble_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frp_trouble_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `device_type` bigint(20) DEFAULT NULL COMMENT '设备类型',
  `editor_id` bigint(20) DEFAULT NULL COMMENT '填写人ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '填写时间',
  `trouble_position` varchar(50) DEFAULT NULL COMMENT '故障部位',
  `trouble_comment` varchar(200) DEFAULT NULL COMMENT '故障描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='故障描述字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frp_trouble_type`
--

LOCK TABLES `frp_trouble_type` WRITE;
/*!40000 ALTER TABLE `frp_trouble_type` DISABLE KEYS */;
INSERT INTO `frp_trouble_type` VALUES (1,123,1,'2018-02-20 16:00:00','泵体','泵体泄露'),(2,123,1,'2018-02-09 16:00:00','泵体','泵停运'),(3,124,1,'2018-04-07 10:08:26','储气罐','天然气泄漏报警'),(4,124,1,'2018-04-07 10:15:53','锅炉','锅炉停机报警'),(5,123,1,'2018-04-07 10:18:18','电机','电机声音大'),(6,123,1,'2018-04-07 10:18:33','电机','电机振动大'),(7,123,1,'2018-04-07 10:18:51','导热油管道','管道泄漏'),(8,123,1,'2018-04-07 10:19:09','仪表','仪表损坏');
/*!40000 ALTER TABLE `frp_trouble_type` ENABLE KEYS */;
UNLOCK TABLES;