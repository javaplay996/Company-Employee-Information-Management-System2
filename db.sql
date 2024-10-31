/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ltygxx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ltygxx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ltygxx`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型  Search111',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (1,7,'2021-03-02','2021-03-02 10:45:26','2021-03-02 10:51:07',6,NULL,'2021-03-02 10:45:26'),(2,8,'2021-03-02','2021-03-02 11:28:07','2021-03-02 11:28:52',6,NULL,'2021-03-02 11:28:07'),(3,13,'2021-03-02','2021-03-02 11:46:13','2021-03-02 11:46:15',6,NULL,'2021-03-02 11:46:13'),(4,15,'2021-03-02','2021-03-02 14:07:48','2021-03-02 14:07:53',6,NULL,'2021-03-02 14:07:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `cultivate` */

DROP TABLE IF EXISTS `cultivate`;

CREATE TABLE `cultivate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '培训开始时间 Search111 ',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '培训结束时间 Search111 ',
  `day_number` int(11) DEFAULT NULL COMMENT '培训天数 Search111 ',
  `cultivate_content` varchar(200) DEFAULT NULL COMMENT '培训内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='培训';

/*Data for the table `cultivate` */

insert  into `cultivate`(`id`,`yonghu_id`,`on_time`,`down_time`,`day_number`,`cultivate_content`,`create_time`) values (7,8,'2021-03-03 00:00:00','2021-03-04 00:00:00',1,'入职培训\r\n',NULL),(8,15,'2021-03-04 00:00:00','2021-03-06 00:00:00',2,'上班培训\r\n',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (49,'bumen_types','部门',1,'java部门',NULL,'2021-03-01 20:41:26'),(50,'bumen_types','部门',2,'.net部门',NULL,'2021-03-01 20:41:26'),(51,'bumen_types','部门',3,'安卓部门',NULL,'2021-03-01 20:41:26'),(52,'bumen_types','部门',4,'python部门',NULL,'2021-03-01 20:41:26'),(53,'zhiwei_types','职位',1,'普通员工',NULL,'2021-03-01 20:41:26'),(54,'zhiwei_types','职位',2,'小组长',NULL,'2021-03-01 20:41:26'),(55,'zhiwei_types','职位',3,'组长',NULL,'2021-03-01 20:41:26'),(56,'zhiwei_types','职位',4,'项目经理',NULL,'2021-03-01 20:41:26'),(57,'sex_types','性别',1,'男',NULL,'2021-03-01 20:41:26'),(58,'sex_types','性别',2,'女',NULL,'2021-03-01 20:41:26'),(59,'politics_types','政治面貌',1,'群众',NULL,'2021-03-01 20:41:26'),(60,'politics_types','政治面貌',2,'党员',NULL,'2021-03-01 20:41:26'),(61,'marriage_types','婚姻状况',1,'已婚',NULL,'2021-03-01 20:41:26'),(62,'marriage_types','婚姻状况',2,'离异',NULL,'2021-03-01 20:41:26'),(63,'marriage_types','婚姻状况',3,'丧偶',NULL,'2021-03-01 20:41:26'),(64,'marriage_types','婚姻状况',4,'未婚',NULL,'2021-03-01 20:41:26'),(65,'education_types','学历',1,'中专',NULL,'2021-03-01 20:41:26'),(66,'education_types','学历',2,'大专',NULL,'2021-03-01 20:41:26'),(67,'education_types','学历',3,'本科',NULL,'2021-03-01 20:41:26'),(68,'education_types','学历',4,'研究生',NULL,'2021-03-01 20:41:27'),(69,'zhuangtai_types','用户状态',1,'注册',NULL,'2021-03-01 20:41:27'),(70,'zhuangtai_types','用户状态',2,'在职',NULL,'2021-03-01 20:41:27'),(71,'zhuangtai_types','用户状态',3,'离职',NULL,'2021-03-01 20:41:27'),(72,'zhuangtai_types','用户状态',4,'退休',NULL,'2021-03-01 20:41:27'),(73,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-03-01 20:41:27'),(74,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-03-01 20:41:27'),(75,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-03-01 20:41:27'),(76,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-03-01 20:41:27'),(77,'chuqin_types','打卡类型',5,'加班',NULL,'2021-03-01 20:41:27'),(78,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-03-01 20:41:27'),(79,'chuqin_types','打卡类型',7,'早退',NULL,'2021-03-01 20:41:27'),(80,'qingjia_types','请假状态',1,'未审核',NULL,'2021-03-01 20:41:27'),(81,'qingjia_types','请假状态',2,'审核通过',NULL,'2021-03-01 20:41:27'),(82,'qingjia_types','请假状态',3,'审核不通过',NULL,'2021-03-01 20:41:27'),(83,'mianshi_types','面试状态',1,'已添加',NULL,'2021-03-01 20:41:27'),(84,'mianshi_types','面试状态',2,'面试通过',NULL,'2021-03-01 20:41:27'),(85,'mianshi_types','面试状态',3,'面试不通过',NULL,'2021-03-01 20:41:27'),(86,'bumen_types','部门',5,'c++',NULL,'2021-03-02 14:19:49');

/*Table structure for table `mianshi` */

DROP TABLE IF EXISTS `mianshi`;

CREATE TABLE `mianshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘id',
  `mianshi_time` timestamp NULL DEFAULT NULL COMMENT '面试时间',
  `mianshi_types` int(11) DEFAULT NULL COMMENT '面试结果',
  `mianshi_content` varchar(11) DEFAULT NULL COMMENT '面试评价',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='面试';

/*Data for the table `mianshi` */

insert  into `mianshi`(`id`,`zhaopin_id`,`mianshi_time`,`mianshi_types`,`mianshi_content`,`create_time`) values (1,1,'2021-03-05 00:00:00',1,NULL,'2021-03-02 11:36:27'),(2,2,'2021-03-04 00:00:00',2,'非常的好,通过了\r\n','2021-03-02 14:23:19');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `onday` varchar(200) DEFAULT NULL COMMENT '请假开始时间',
  `downday` varchar(200) DEFAULT NULL COMMENT '请假结束(上班时间)',
  `qingjia_number` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假状态',
  `huifu_content` varchar(200) DEFAULT NULL COMMENT '理由',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`onday`,`downday`,`qingjia_number`,`qingjia_types`,`huifu_content`,`update_time`,`create_time`) values (1,8,'2021-03-06','2021-03-07',1,3,'请假\r\n','2021-03-02 09:50:12','2021-03-02 09:50:12'),(2,7,'2021-03-05','2021-03-06',1,1,'52223\r\n',NULL,'2021-03-02 09:50:55'),(5,15,'2021-03-07','2021-03-14',7,2,'家里有事情\r\n','2021-03-02 14:11:13','2021-03-02 14:10:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','ilp5dd2mcbvdfe7bw72ngwe6ez3o44m1','2021-02-18 09:42:20','2021-02-22 11:05:19'),(18,6,'admin1','users','管理员','iwxlfc2ilny6o22tq8h35dxhtcoxqt0b','2021-02-19 16:42:49','2021-03-02 15:37:32'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','m3qi8ns8kwjwk2fbb3x74ppv5ftmf00p','2021-02-20 10:54:51','2021-02-22 10:27:37'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin11','111','管理员','2021-01-29 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`money`,`create_time`) values (7,8,'2021-02','998.0000','2021-03-01 21:04:27'),(8,8,'2021-03','98.0000','2021-03-01 21:04:42'),(9,15,'2021-03','999.0000','2021-03-02 14:13:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门  Search111',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位  Search111',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `residence` varchar(200) DEFAULT NULL COMMENT '居住地',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯(身份证上地址)',
  `marriage_types` int(11) DEFAULT NULL COMMENT '婚姻状况',
  `education_types` int(11) DEFAULT NULL COMMENT '学历  Search111',
  `school` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '用户状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`bumen_types`,`zhiwei_types`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`residence`,`birthplace`,`marriage_types`,`education_types`,`school`,`zhuangtai_types`,`create_time`) values (7,'a1','123456','a1','17703789991',4,4,'410224199610232011',2,'http://localhost:8080/ltygxx/file/download?fileName=1614603316954.jpg','汉',2,'河南开封','审犯罪',4,4,'南洋理工大学',2,'2021-03-01 20:55:30'),(8,'a2','123456','a2','17703789992',4,4,'410224199610232012',2,'http://localhost:8080/ltygxx/file/download?fileName=1614603629503.jpg','汉',1,'河南开封','审犯罪',4,2,'学校1',2,'2021-03-01 21:00:42'),(9,'a3','123456','a3','17703789993',4,4,'410224199610232013',2,'http://localhost:8080/ltygxx/file/download?fileName=1614603664128.jpg','汉',2,'河南开封','审犯罪',4,4,'学校1',3,'2021-03-01 21:01:14'),(12,'a9','123456','a9','17703789999',NULL,NULL,'410224199610232019',1,'http://localhost:8080/ltygxx/file/download?fileName=1614656489833.jpg','汉',2,'河南开封','审犯罪',2,4,'学校1',1,'2021-03-02 11:41:43'),(15,'a6','123456','账户6','17703789996',4,4,'410224199610232016',2,'http://localhost:8080/ltygxx/file/download?fileName=1614665115516.jpg','汉',2,'河南开封','审犯罪',4,4,'南洋理工大学',4,'2021-03-02 14:05:29'),(16,'aa9','123456','aaa9','17703789989',5,3,'410224199610232099',2,'http://localhost:8080/ltygxx/file/download?fileName=1614666076526.jpg','汉',2,'河南开封','审犯罪',4,4,'南洋理工大学',2,'2021-03-02 14:21:28');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `education_types` int(11) DEFAULT NULL COMMENT '学历  Search111',
  `school` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`education_types`,`school`,`create_time`) values (1,'张三','17703789991','410224199610232011',2,'http://localhost:8080/ltygxx/file/download?fileName=1614656161348.jpg',2,'学校1','2021-03-02 11:36:04'),(2,'a1','17703789999','410224199610232011',2,'http://localhost:8080/ltygxx/file/download?fileName=1614666158060.jpg',3,'学校1','2021-03-02 14:22:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
