/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : rwx

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-25 13:01:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rwx_user`
-- ----------------------------
DROP TABLE IF EXISTS `rwx_user`;
CREATE TABLE `rwx_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `sex` bigint(10) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_url` varchar(200) DEFAULT NULL COMMENT '头像URL',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `district` varchar(255) DEFAULT NULL COMMENT '地区',
  `address` varchar(500) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of rwx_user
-- ----------------------------
INSERT INTO `rwx_user` VALUES ('1', 'admin', 'Neo Li', '047c3a4459309951ec5cf05d3c2c9dd6', '125030963@qq.com', '18980458521', '1', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11', '1',null,null,null,null,null,null,null);

-- ----------------------------
-- Table structure for `rwx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `rwx_menu`;
CREATE TABLE `rwx_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of rwx_menu
-- ----------------------------
INSERT INTO `rwx_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '11', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('2', '1', '用户管理', 'rwx/user', null, '1', 'fa fa-user', '1', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('3', '1', '角色管理', 'rwx/role', null, '1', 'fa fa-user-secret', '2', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('4', '1', '菜单管理', 'rwx/menu', null, '1', 'fa fa-folder-open', '4', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('5', '1', 'SQL监控', 'druid/index.html', null, '1', 'fa fa-linux', '9', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('6', '1', 'API文档', 'swagger-ui.html', null, '1', 'fa fa-plug', '5', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');
INSERT INTO `rwx_menu` VALUES ('7', '1', '定时任务', 'rwx/schedule', null, '1', 'fa fa-tasks', '5', '0', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');

-- ----------------------------
-- Table structure for `rwx_role`
-- ----------------------------
DROP TABLE IF EXISTS `rwx_role`;
CREATE TABLE `rwx_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of rwx_role
-- ----------------------------
INSERT INTO `rwx_role` VALUES ('0', '超级管理员', '超级管理员', '1', '2018-11-11 11:11:11', '2018-11-11 11:11:11');

-- ----------------------------
-- Table structure for `rwx_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `rwx_role_menu`;
CREATE TABLE `rwx_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of rwx_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `rwx_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `rwx_user_role`;
CREATE TABLE `rwx_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of rwx_user_role
-- ----------------------------
INSERT INTO `rwx_user_role` VALUES ('0', '1', '0');

--
-- Table structure for table `rwx_dept`
--
DROP TABLE IF EXISTS `rwx_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwx_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rwx_dept`
--

LOCK TABLES `rwx_dept` WRITE;
/*!40000 ALTER TABLE `rwx_dept` DISABLE KEYS */;
INSERT INTO `rwx_dept` VALUES (0,0,'华圣铝业',1,1),(1,0,'电解厂',1,1),(2,0,'碳素厂',2,1),(3,0,'运维中心',3,1),(4,3,'包保车间',1,1),(5,3,'能源车间',2,1),(6,2,'煅烧车间',1,1),(7,2,'成型车间',2,1),(8,2,'焙烧车间',3,1),(9,2,'组装车间',4,1),(10,1,'电解一车间',1,1),(11,1,'电解二车间',2,1),(12,1,'净化车间',3,1),(13,1,'供电车间',4,1),(14,1,'铸造车间',5,1),(15,6,'操作一班',1,1),(16,6,'操作二班',2,1),(17,6,'操作三班',3,1),(21,6,'操作四班',4,1),(22,4,'煅烧维修班组',1,1),(23,4,'成型维修班组',2,1),(24,4,'焙烧维修班组',3,1),(25,4,'组装维修班组',4,1);
/*!40000 ALTER TABLE `rwx_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rwx_dict`
--

DROP TABLE IF EXISTS `rwx_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwx_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标签名',
  `value` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '数据值',
  `type` varchar(50)COLLATE utf8_bin DEFAULT NULL COMMENT '字典类型',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父级编号',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  KEY `rwx_dict_value` (`value`),
  KEY `rwx_dict_label` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rwx_dict`
--

LOCK TABLES `rwx_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `rwx_dict` VALUES (0,'编程','code','hobby','爱好',0,0,NULL,0,NULL,0),(1,'音乐','music','hobby','爱好',0,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rwx_file`
--

DROP TABLE IF EXISTS `rwx_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwx_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `filename` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='文件管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rwx_record`
--

DROP TABLE IF EXISTS `rwx_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwx_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

