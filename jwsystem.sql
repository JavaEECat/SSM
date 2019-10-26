/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : jwsystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-09-07 22:27:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_class`;
CREATE TABLE `sys_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_class
-- ----------------------------
INSERT INTO `sys_class` VALUES ('17', '网络工程1班', '11', '网络工程', '9');
INSERT INTO `sys_class` VALUES ('18', '网络工程2班', '11', '网络工程', '9');

-- ----------------------------
-- Table structure for sys_classbegin
-- ----------------------------
DROP TABLE IF EXISTS `sys_classbegin`;
CREATE TABLE `sys_classbegin` (
  `classbegin_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `class_time` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `isJX` varchar(2) DEFAULT NULL,
  `class_room` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`classbegin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_classbegin
-- ----------------------------
INSERT INTO `sys_classbegin` VALUES ('12', '5', null, '20190104', null, null, '2-56', '17', null, 'A教304');
INSERT INTO `sys_classbegin` VALUES ('13', '19', null, '20190111', null, null, '4-78', '17', null, 'B教103');

-- ----------------------------
-- Table structure for sys_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_course`;
CREATE TABLE `sys_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(765) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `course_type` varchar(765) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_course
-- ----------------------------
INSERT INTO `sys_course` VALUES ('1', 'C++程序设计', '3', '48', '必修');
INSERT INTO `sys_course` VALUES ('2', 'java程序设计', '3', '48', '必修');
INSERT INTO `sys_course` VALUES ('4', '高等数学', '5.5', '70', '必修');
INSERT INTO `sys_course` VALUES ('5', '大学物理1', '3', '56', '必修');
INSERT INTO `sys_course` VALUES ('6', '大学物理2', '3', '56', '必修');
INSERT INTO `sys_course` VALUES ('7', '数据结构', '3', '48', '必修');
INSERT INTO `sys_course` VALUES ('8', '算法分析', '3', '48', '必修');
INSERT INTO `sys_course` VALUES ('9', '计算机网络', '3', '56', '必修');
INSERT INTO `sys_course` VALUES ('10', '数据库原理', '2', '48', '必修');
INSERT INTO `sys_course` VALUES ('11', '通信原理', '2', '48', '必修');
INSERT INTO `sys_course` VALUES ('12', '大学英语', '1', '48', '必修');
INSERT INTO `sys_course` VALUES ('14', '大学生心理素质', '1', '24', '选修');
INSERT INTO `sys_course` VALUES ('15', '马克思', '1', '24', '必修');
INSERT INTO `sys_course` VALUES ('16', '毛泽东思想', '1', '24', '必修');
INSERT INTO `sys_course` VALUES ('17', '体育', '1', '12', '必修');
INSERT INTO `sys_course` VALUES ('18', '形势与政策（1）', '0.5', '6', '必修');
INSERT INTO `sys_course` VALUES ('19', '思想道德修养与法律基础', '2', '24', '必修');
INSERT INTO `sys_course` VALUES ('20', '计算机应用技术', '2', '24', '必修');
INSERT INTO `sys_course` VALUES ('21', '计算机应用试验', '1.5', '18', '必修');
INSERT INTO `sys_course` VALUES ('22', '职业生涯规划（一）', '0.5', '6', '必修');
INSERT INTO `sys_course` VALUES ('23', '国学基础（上）', '2', '24', '选修');
INSERT INTO `sys_course` VALUES ('24', '思想政治理论课程主题实践', '1', '12', '必修');
INSERT INTO `sys_course` VALUES ('25', '形式与政策（2）', '0.5', '6', '必修');
INSERT INTO `sys_course` VALUES ('26', '中国近代史纲要', '1.5', '18', '必修');
INSERT INTO `sys_course` VALUES ('27', '线性代数', '2', '24', '必修');
INSERT INTO `sys_course` VALUES ('28', '大学生心理健康与素养', '1.5', '18', '选修');
INSERT INTO `sys_course` VALUES ('29', '电路电子与射频技术', '3.5', '42', '必修');
INSERT INTO `sys_course` VALUES ('30', '概率与数理统计', '3', '36', '必修');
INSERT INTO `sys_course` VALUES ('31', '离散数学', '2.5', '30', '必修');
INSERT INTO `sys_course` VALUES ('32', '计算机通信原理', '3', '36', '必修');
INSERT INTO `sys_course` VALUES ('33', '文化遗产概览', '2', '20', '选修');
INSERT INTO `sys_course` VALUES ('34', 'GYB（产生你的企业想法）', '1', '10', '选修');
INSERT INTO `sys_course` VALUES ('35', '新时期身心灵合一成长', '1.5', '15', '必修');
INSERT INTO `sys_course` VALUES ('36', '书法鉴赏（硬笔）', '1', '10', '选修');
INSERT INTO `sys_course` VALUES ('37', '影视鉴赏', '2', '20', '选修');
INSERT INTO `sys_course` VALUES ('38', '星海求知:天文学的奥秘', '2', '20', '选修');
INSERT INTO `sys_course` VALUES ('39', '网络信息安全', '3', '36', '必修');
INSERT INTO `sys_course` VALUES ('40', '大学生就业指导教育', '0.5', '5', '必修');
INSERT INTO `sys_course` VALUES ('41', '戏曲鉴赏', '2', '20', '选修');
INSERT INTO `sys_course` VALUES ('42', '突发事件及自救互救', '2', '20', '选修');
INSERT INTO `sys_course` VALUES ('43', 'Linux操作系统原理', '2', '24', '必修');
INSERT INTO `sys_course` VALUES ('44', '网络攻防技术实训', '2', '24', '必修');
INSERT INTO `sys_course` VALUES ('45', '中国茶文化', '1', '10', '选修');
INSERT INTO `sys_course` VALUES ('46', '物联网技术', '3.5', '48', '必修');
INSERT INTO `sys_course` VALUES ('47', '.Net程序设计', '3.5', '48', '必修');
INSERT INTO `sys_course` VALUES ('48', '微机原理与接口技术', '1', '12', '必修');
INSERT INTO `sys_course` VALUES ('49', '网络设备配置与管理', '3', '36', '必修');

-- ----------------------------
-- Table structure for sys_course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sys_course_teacher`;
CREATE TABLE `sys_course_teacher` (
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_course_teacher
-- ----------------------------
INSERT INTO `sys_course_teacher` VALUES ('4', '4');
INSERT INTO `sys_course_teacher` VALUES ('2', '1');
INSERT INTO `sys_course_teacher` VALUES ('2', '3');
INSERT INTO `sys_course_teacher` VALUES ('5', '10');
INSERT INTO `sys_course_teacher` VALUES ('5', '20190104');
INSERT INTO `sys_course_teacher` VALUES ('19', '20190111');

-- ----------------------------
-- Table structure for sys_dep
-- ----------------------------
DROP TABLE IF EXISTS `sys_dep`;
CREATE TABLE `sys_dep` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dep
-- ----------------------------
INSERT INTO `sys_dep` VALUES ('1', '人文社科学院');
INSERT INTO `sys_dep` VALUES ('2', '经济与管理学院');
INSERT INTO `sys_dep` VALUES ('3', '艺术学院');
INSERT INTO `sys_dep` VALUES ('4', '外国语学院');
INSERT INTO `sys_dep` VALUES ('5', '土木与建筑工程学院');
INSERT INTO `sys_dep` VALUES ('6', '钒钛学院');
INSERT INTO `sys_dep` VALUES ('7', '生物与化学工程学院');
INSERT INTO `sys_dep` VALUES ('8', '智能制造学院');
INSERT INTO `sys_dep` VALUES ('9', '数学与计算机学院');
INSERT INTO `sys_dep` VALUES ('10', '医学院');
INSERT INTO `sys_dep` VALUES ('11', '康养学院');
INSERT INTO `sys_dep` VALUES ('12', '交通与汽车工程学院');

-- ----------------------------
-- Table structure for sys_exam
-- ----------------------------
DROP TABLE IF EXISTS `sys_exam`;
CREATE TABLE `sys_exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `exam_longtime` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_exam
-- ----------------------------

-- ----------------------------
-- Table structure for sys_ge
-- ----------------------------
DROP TABLE IF EXISTS `sys_ge`;
CREATE TABLE `sys_ge` (
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(765) DEFAULT NULL,
  `idcard` varchar(765) DEFAULT NULL,
  `age` varchar(765) DEFAULT NULL,
  `sex` varchar(765) DEFAULT NULL,
  `ncre` varchar(765) DEFAULT NULL,
  `ncre_score` varchar(765) DEFAULT NULL,
  `ncre_date` date DEFAULT NULL,
  `cet` varchar(765) DEFAULT NULL,
  `cet_score` varchar(765) DEFAULT NULL,
  `cet_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ge
-- ----------------------------
INSERT INTO `sys_ge` VALUES ('2019010101', '唐瑞', null, null, null, '已报', null, null, '已报', null, null);
INSERT INTO `sys_ge` VALUES ('2019010102', 'sdfs', null, '18', '男', null, null, null, null, null, null);
INSERT INTO `sys_ge` VALUES ('2019010103', '刘春', null, '20', '男', null, null, null, '已报', null, null);
INSERT INTO `sys_ge` VALUES ('2019010104', '魏畅', null, '20', '男', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_information
-- ----------------------------
DROP TABLE IF EXISTS `sys_information`;
CREATE TABLE `sys_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `fulltime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_information
-- ----------------------------
INSERT INTO `sys_information` VALUES ('1', '隆盛科技浪费时间浪费吉林省金粉世家', '2019-09-06 09:23:40');

-- ----------------------------
-- Table structure for sys_major
-- ----------------------------
DROP TABLE IF EXISTS `sys_major`;
CREATE TABLE `sys_major` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(255) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_major
-- ----------------------------
INSERT INTO `sys_major` VALUES ('1', '新闻学', '1');
INSERT INTO `sys_major` VALUES ('2', '汉语言文学', '1');
INSERT INTO `sys_major` VALUES ('10', '材料工程', '6');
INSERT INTO `sys_major` VALUES ('11', '网络工程', '9');
INSERT INTO `sys_major` VALUES ('12', '软件工程', '9');
INSERT INTO `sys_major` VALUES ('13', '信息工程', '9');
INSERT INTO `sys_major` VALUES ('14', '物联网工程', '9');
INSERT INTO `sys_major` VALUES ('15', '计算机工程', '9');
INSERT INTO `sys_major` VALUES ('16', '编辑出版学', '1');
INSERT INTO `sys_major` VALUES ('17', '历史学', '1');
INSERT INTO `sys_major` VALUES ('18', '世界史', '1');
INSERT INTO `sys_major` VALUES ('19', '哲学', '1');
INSERT INTO `sys_major` VALUES ('20', '马克思', '1');
INSERT INTO `sys_major` VALUES ('21', '伦理学', '1');
INSERT INTO `sys_major` VALUES ('22', '逻辑学', '1');
INSERT INTO `sys_major` VALUES ('23', '音乐学', '1');
INSERT INTO `sys_major` VALUES ('24', '美术学', '1');
INSERT INTO `sys_major` VALUES ('25', '舞蹈学', '1');
INSERT INTO `sys_major` VALUES ('26', '书法学', '1');
INSERT INTO `sys_major` VALUES ('27', '经济学', '2');
INSERT INTO `sys_major` VALUES ('28', '国际贸易学', '2');
INSERT INTO `sys_major` VALUES ('29', '统计学', '2');
INSERT INTO `sys_major` VALUES ('30', '保险学', '2');
INSERT INTO `sys_major` VALUES ('31', '市场营销', '2');
INSERT INTO `sys_major` VALUES ('32', '旅游管理', '2');
INSERT INTO `sys_major` VALUES ('33', '投资经济学', '2');
INSERT INTO `sys_major` VALUES ('34', '审计学', '2');
INSERT INTO `sys_major` VALUES ('35', '作曲学', '3');
INSERT INTO `sys_major` VALUES ('36', '戏剧与影视', '3');
INSERT INTO `sys_major` VALUES ('37', '电影学', '3');
INSERT INTO `sys_major` VALUES ('38', '广播电视学', '3');
INSERT INTO `sys_major` VALUES ('39', '动画', '3');
INSERT INTO `sys_major` VALUES ('40', '播音与主持', '3');
INSERT INTO `sys_major` VALUES ('41', '日语学', '4');
INSERT INTO `sys_major` VALUES ('42', '英语学', '4');
INSERT INTO `sys_major` VALUES ('43', '俄语学', '4');
INSERT INTO `sys_major` VALUES ('44', '法语学', '4');
INSERT INTO `sys_major` VALUES ('45', '韩语学', '4');
INSERT INTO `sys_major` VALUES ('46', '理论力学', '5');
INSERT INTO `sys_major` VALUES ('47', '材料力学', '5');
INSERT INTO `sys_major` VALUES ('48', '结构力学', '5');
INSERT INTO `sys_major` VALUES ('49', '流体力学', '5');
INSERT INTO `sys_major` VALUES ('50', '工程地质', '5');
INSERT INTO `sys_major` VALUES ('51', '房屋建筑学', '5');
INSERT INTO `sys_major` VALUES ('52', '岩土力学', '5');
INSERT INTO `sys_major` VALUES ('53', '工程项目管理', '5');
INSERT INTO `sys_major` VALUES ('54', '材料科学', '6');
INSERT INTO `sys_major` VALUES ('55', '材料成型', '6');
INSERT INTO `sys_major` VALUES ('56', '冶金', '6');
INSERT INTO `sys_major` VALUES ('57', '新能源工程', '6');
INSERT INTO `sys_major` VALUES ('58', '金属', '6');
INSERT INTO `sys_major` VALUES ('59', '环境工程', '7');
INSERT INTO `sys_major` VALUES ('60', '生物工程', '7');
INSERT INTO `sys_major` VALUES ('61', '应用化学', '7');
INSERT INTO `sys_major` VALUES ('62', '应用化工技术', '7');
INSERT INTO `sys_major` VALUES ('63', '电子信息工程', '8');
INSERT INTO `sys_major` VALUES ('64', '内科学', '10');
INSERT INTO `sys_major` VALUES ('65', '儿科学', '10');
INSERT INTO `sys_major` VALUES ('66', '老年医学', '10');
INSERT INTO `sys_major` VALUES ('67', '神经病学', '10');
INSERT INTO `sys_major` VALUES ('68', '精神病与精神卫生学', '10');
INSERT INTO `sys_major` VALUES ('69', '皮肤病与性病学', '10');
INSERT INTO `sys_major` VALUES ('70', '影像医学与核医学', '10');
INSERT INTO `sys_major` VALUES ('71', '临床检验诊断学', '10');
INSERT INTO `sys_major` VALUES ('72', '护理学', '10');
INSERT INTO `sys_major` VALUES ('73', '外科学', '10');
INSERT INTO `sys_major` VALUES ('74', '眼科学', '10');
INSERT INTO `sys_major` VALUES ('75', '肿瘤学', '10');
INSERT INTO `sys_major` VALUES ('76', '车辆工程', '12');
INSERT INTO `sys_major` VALUES ('77', '交通设备与控制', '12');
INSERT INTO `sys_major` VALUES ('78', '自动化', '12');
INSERT INTO `sys_major` VALUES ('79', '汽车服务工程', '12');
INSERT INTO `sys_major` VALUES ('80', '护理', '11');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `p_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `desc` varchar(255) DEFAULT NULL COMMENT '菜单描述',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `percode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '-1', '根级节点', 'root', '根级节点', '无', '2019-09-03 09:02:16', '无');
INSERT INTO `sys_permission` VALUES ('4', '1', '系统管理', 'menu', '一级菜单', '无', '2019-09-03 09:02:17', '无');
INSERT INTO `sys_permission` VALUES ('5', '4', '用户管理', 'permission', '用户管理', 'user.do', '2019-09-03 10:54:51', 'user:add');
INSERT INTO `sys_permission` VALUES ('6', '4', '角色管理', 'permission', '角色管理', 'role.do', '2019-09-03 15:31:07', '无');
INSERT INTO `sys_permission` VALUES ('7', '4', '菜单管理', 'permission', '菜单管理', 'permissionquery.do', '2019-09-03 22:20:41', '无');
INSERT INTO `sys_permission` VALUES ('8', '1', '邮件管理', 'menu', '一级菜单', '无', '2019-09-03 09:02:24', '无');
INSERT INTO `sys_permission` VALUES ('9', '8', '写邮件', 'permission', '写邮件', '无', '2019-09-03 09:02:25', '无');
INSERT INTO `sys_permission` VALUES ('10', '8', '收件箱', 'permission', '收件箱', '无', '2019-09-03 09:02:26', '无');
INSERT INTO `sys_permission` VALUES ('11', '8', '发件箱', 'permission', '发件箱', '无', '2019-09-03 09:02:27', '无');
INSERT INTO `sys_permission` VALUES ('12', '8', '草稿箱', 'permission', '草稿箱', '无', '2019-09-03 09:02:29', '无');
INSERT INTO `sys_permission` VALUES ('13', '8', '垃圾箱', 'permission', '垃圾箱', '无', '2019-09-03 09:02:30', '无');
INSERT INTO `sys_permission` VALUES ('14', '1', '公文管理', 'menu', '一级菜单', '无', '2019-09-03 09:02:31', '无');
INSERT INTO `sys_permission` VALUES ('15', '14', '请假单', 'permission', '请假单', '无', '2019-09-03 09:02:33', '无');
INSERT INTO `sys_permission` VALUES ('16', '1', '学籍管理', 'menu', '一级菜单', '无', '2019-09-03 08:56:59', '无');
INSERT INTO `sys_permission` VALUES ('17', '16', '学籍信息管理', 'permission', '学籍信息管理', 'schoolrollList.do', '2019-09-05 09:17:45', 'user:add');
INSERT INTO `sys_permission` VALUES ('19', '1', '基本信息管理', 'menu', '基本信息管理', '无', '2019-09-05 09:18:34', '无 ');
INSERT INTO `sys_permission` VALUES ('20', '19', '学生基本信息管理', 'permission', '学生基本信息管理', 'studentController/studentQueryAll.do', '2019-09-05 11:49:50', 'stu:base');
INSERT INTO `sys_permission` VALUES ('21', '19', '教师基本信息管理', 'permission', '教师基本信息管理', 'queryTeacherListByTeacher.do', '2019-09-05 09:18:59', '无');
INSERT INTO `sys_permission` VALUES ('22', '19', '院系基本信息管理', 'permission', '院系基本信息管理', 'DepController/dep.do', '2019-09-05 09:19:06', '无');
INSERT INTO `sys_permission` VALUES ('23', '19', '班级信息管理', 'permission', '班级信息管理', 'queryClassListByClass.do', '2019-09-05 09:19:08', '无');
INSERT INTO `sys_permission` VALUES ('27', '1', '选课管理', 'menu', '选课管理', '无', '2019-09-05 09:22:58', '无');
INSERT INTO `sys_permission` VALUES ('28', '27', '网上选课', 'permission', '网上选课', 'chooseCourseController/findAll.do', '2019-09-05 09:23:52', '无');
INSERT INTO `sys_permission` VALUES ('29', '27', '选课结果', 'permission', '选课结果', 'chooseCourseController/findChoose.do', '2019-09-05 09:24:36', '无');
INSERT INTO `sys_permission` VALUES ('30', '27', '生成课表', 'permission', '生成课表', 'queryClassTable.do', '2019-09-07 13:27:25', '无');
INSERT INTO `sys_permission` VALUES ('31', '27', '授课管理', 'permission', '授课管理', 'chooseCourseController/CourseManage.do', '2019-09-06 10:44:40', '无');
INSERT INTO `sys_permission` VALUES ('32', '1', '成绩管理', 'menu', '成绩管理', '无', '2019-09-05 09:29:33', '无');
INSERT INTO `sys_permission` VALUES ('33', '32', '管理学生成绩', 'permission', '管理学生成绩', 'scoreController/queryAll.do', '2019-09-06 15:32:16', '无');
INSERT INTO `sys_permission` VALUES ('34', '32', '成绩查询', 'permission', '成绩查询', 'scoreController/queryScoreByStu_id.do', '2019-09-05 09:32:07', '无');
INSERT INTO `sys_permission` VALUES ('35', '32', '成绩录入', 'permission', '成绩录入', 'scoreController/addStuScore.do', '2019-09-06 15:33:08', '无');
INSERT INTO `sys_permission` VALUES ('36', '1', '教务信息发布', 'menu', '教务信息发布', '无', '2019-09-05 09:34:07', '无');
INSERT INTO `sys_permission` VALUES ('37', '36', '教务信息管理', 'permission', '教务信息管理', 'queryinformationlist.do', '2019-09-05 09:34:13', '无');
INSERT INTO `sys_permission` VALUES ('38', '1', '开课计划', 'menu', '开课计划', '无', '2019-09-05 09:35:52', '无');
INSERT INTO `sys_permission` VALUES ('39', '38', '开课计划制定', 'permission', '开课计划制定', 'queryClassbeginListByClassbegin.do', '2019-09-05 09:36:04', '无');
INSERT INTO `sys_permission` VALUES ('40', '1', '考试报名系统', 'menu', '考试报名系统', '无', '2019-09-05 09:38:54', '无');
INSERT INTO `sys_permission` VALUES ('41', '40', '等级考试报名', 'permission', '等级考试报名', '无', '2019-09-05 09:38:56', '无');
INSERT INTO `sys_permission` VALUES ('42', '40', '等级考试成绩', 'permission', '等级考试成绩', '无', '2019-09-05 09:39:03', '无');
INSERT INTO `sys_permission` VALUES ('43', '1', '排课管理', 'menu', '排课管理', '无', '2019-09-05 09:42:37', '无');
INSERT INTO `sys_permission` VALUES ('44', '43', '教室信息管理', 'permission', '教室信息管理', 'roomController/roomList.do', '2019-09-05 09:42:44', '无');
INSERT INTO `sys_permission` VALUES ('45', '43', '课程管理', 'permission', '课程管理', 'courseController/courseList.do', '2019-09-05 09:42:54', '无');
INSERT INTO `sys_permission` VALUES ('46', '43', '考试安排', 'permission', '考试安排', 'examController/examList.do', '2019-09-05 09:42:58', '无');
INSERT INTO `sys_permission` VALUES ('47', '43', '课表查询', 'permission', '课表查询', 'courseController/timeTable.do', '2019-09-05 18:12:37', '无');
INSERT INTO `sys_permission` VALUES ('48', '1', '教材管理', 'menu', '教材管理', '无', '2019-09-05 09:45:49', '无');
INSERT INTO `sys_permission` VALUES ('49', '48', '教材预定', 'permission', '教材预定', '无', '2019-09-05 09:45:53', '无');
INSERT INTO `sys_permission` VALUES ('50', '48', '订单管理', 'permission', '订单管理', '无', '2019-09-05 09:45:58', '无');
INSERT INTO `sys_permission` VALUES ('51', '48', '出库信息管理', 'permission', '出库信息管理', '无', '2019-09-05 09:46:07', '无');
INSERT INTO `sys_permission` VALUES ('52', '48', '教材出库管理', 'permission', '教材出库管理', '无', '2019-09-05 09:46:12', '无');
INSERT INTO `sys_permission` VALUES ('53', '48', '教材入库管理', 'permission', '教材入库管理', '无', '2019-09-05 09:46:16', '无');
INSERT INTO `sys_permission` VALUES ('54', '19', '学生信息学生版', 'permission', '学生信息学生版', 'studentController/studentQueryAll.do', '2019-09-05 12:22:11', '无');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(225) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(225) DEFAULT NULL COMMENT '描述',
  `role_state` varchar(225) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('5', '校长', '学校最大的官', '启用', null);
INSERT INTO `sys_role` VALUES ('6', '老师', '老师是一个灵魂工程师', '启用', null);
INSERT INTO `sys_role` VALUES ('7', '班长', '班级最大的官', '启用', null);
INSERT INTO `sys_role` VALUES ('8', '学生', '学习inging', '启用', null);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `role_permission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色菜单ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `permission_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8 COMMENT='角色菜单';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('113', '7', '1');
INSERT INTO `sys_role_permission` VALUES ('114', '7', '8');
INSERT INTO `sys_role_permission` VALUES ('115', '7', '9');
INSERT INTO `sys_role_permission` VALUES ('349', '5', '1');
INSERT INTO `sys_role_permission` VALUES ('350', '5', '4');
INSERT INTO `sys_role_permission` VALUES ('351', '5', '5');
INSERT INTO `sys_role_permission` VALUES ('352', '5', '6');
INSERT INTO `sys_role_permission` VALUES ('353', '5', '7');
INSERT INTO `sys_role_permission` VALUES ('354', '5', '16');
INSERT INTO `sys_role_permission` VALUES ('355', '5', '17');
INSERT INTO `sys_role_permission` VALUES ('356', '5', '19');
INSERT INTO `sys_role_permission` VALUES ('357', '5', '20');
INSERT INTO `sys_role_permission` VALUES ('358', '5', '21');
INSERT INTO `sys_role_permission` VALUES ('359', '5', '22');
INSERT INTO `sys_role_permission` VALUES ('360', '5', '23');
INSERT INTO `sys_role_permission` VALUES ('361', '5', '29');
INSERT INTO `sys_role_permission` VALUES ('362', '5', '30');
INSERT INTO `sys_role_permission` VALUES ('363', '5', '31');
INSERT INTO `sys_role_permission` VALUES ('364', '5', '32');
INSERT INTO `sys_role_permission` VALUES ('365', '5', '33');
INSERT INTO `sys_role_permission` VALUES ('366', '5', '36');
INSERT INTO `sys_role_permission` VALUES ('367', '5', '37');
INSERT INTO `sys_role_permission` VALUES ('368', '5', '38');
INSERT INTO `sys_role_permission` VALUES ('369', '5', '39');
INSERT INTO `sys_role_permission` VALUES ('370', '5', '40');
INSERT INTO `sys_role_permission` VALUES ('371', '5', '41');
INSERT INTO `sys_role_permission` VALUES ('372', '5', '42');
INSERT INTO `sys_role_permission` VALUES ('373', '5', '43');
INSERT INTO `sys_role_permission` VALUES ('374', '5', '44');
INSERT INTO `sys_role_permission` VALUES ('375', '5', '45');
INSERT INTO `sys_role_permission` VALUES ('376', '5', '46');
INSERT INTO `sys_role_permission` VALUES ('377', '5', '47');
INSERT INTO `sys_role_permission` VALUES ('378', '5', '48');
INSERT INTO `sys_role_permission` VALUES ('379', '5', '49');
INSERT INTO `sys_role_permission` VALUES ('380', '5', '50');
INSERT INTO `sys_role_permission` VALUES ('381', '5', '51');
INSERT INTO `sys_role_permission` VALUES ('382', '5', '52');
INSERT INTO `sys_role_permission` VALUES ('383', '5', '53');
INSERT INTO `sys_role_permission` VALUES ('402', '6', '1');
INSERT INTO `sys_role_permission` VALUES ('403', '6', '19');
INSERT INTO `sys_role_permission` VALUES ('404', '6', '21');
INSERT INTO `sys_role_permission` VALUES ('405', '6', '31');
INSERT INTO `sys_role_permission` VALUES ('406', '6', '32');
INSERT INTO `sys_role_permission` VALUES ('407', '6', '33');
INSERT INTO `sys_role_permission` VALUES ('408', '6', '35');
INSERT INTO `sys_role_permission` VALUES ('409', '6', '38');
INSERT INTO `sys_role_permission` VALUES ('410', '6', '39');
INSERT INTO `sys_role_permission` VALUES ('411', '6', '43');
INSERT INTO `sys_role_permission` VALUES ('412', '6', '44');
INSERT INTO `sys_role_permission` VALUES ('413', '6', '45');
INSERT INTO `sys_role_permission` VALUES ('414', '6', '46');
INSERT INTO `sys_role_permission` VALUES ('415', '6', '47');
INSERT INTO `sys_role_permission` VALUES ('416', '8', '1');
INSERT INTO `sys_role_permission` VALUES ('417', '8', '16');
INSERT INTO `sys_role_permission` VALUES ('418', '8', '17');
INSERT INTO `sys_role_permission` VALUES ('419', '8', '19');
INSERT INTO `sys_role_permission` VALUES ('420', '8', '27');
INSERT INTO `sys_role_permission` VALUES ('421', '8', '28');
INSERT INTO `sys_role_permission` VALUES ('422', '8', '29');
INSERT INTO `sys_role_permission` VALUES ('423', '8', '30');
INSERT INTO `sys_role_permission` VALUES ('424', '8', '31');
INSERT INTO `sys_role_permission` VALUES ('425', '8', '32');
INSERT INTO `sys_role_permission` VALUES ('426', '8', '34');
INSERT INTO `sys_role_permission` VALUES ('427', '8', '40');
INSERT INTO `sys_role_permission` VALUES ('428', '8', '41');
INSERT INTO `sys_role_permission` VALUES ('429', '8', '42');
INSERT INTO `sys_role_permission` VALUES ('430', '8', '43');
INSERT INTO `sys_role_permission` VALUES ('431', '8', '44');
INSERT INTO `sys_role_permission` VALUES ('432', '8', '45');
INSERT INTO `sys_role_permission` VALUES ('433', '8', '46');
INSERT INTO `sys_role_permission` VALUES ('434', '8', '47');
INSERT INTO `sys_role_permission` VALUES ('435', '8', '54');

-- ----------------------------
-- Table structure for sys_room
-- ----------------------------
DROP TABLE IF EXISTS `sys_room`;
CREATE TABLE `sys_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_room` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_room
-- ----------------------------
INSERT INTO `sys_room` VALUES ('1', 'A教101', '1', null);
INSERT INTO `sys_room` VALUES ('2', 'A教102', null, null);
INSERT INTO `sys_room` VALUES ('3', 'A教103', null, null);
INSERT INTO `sys_room` VALUES ('4', 'A教104', null, null);
INSERT INTO `sys_room` VALUES ('5', 'A教105', null, null);
INSERT INTO `sys_room` VALUES ('6', 'A教201', null, null);
INSERT INTO `sys_room` VALUES ('7', 'A教202', null, null);
INSERT INTO `sys_room` VALUES ('8', 'A教203', null, null);
INSERT INTO `sys_room` VALUES ('9', 'A教204', null, null);
INSERT INTO `sys_room` VALUES ('10', 'A教205', null, null);
INSERT INTO `sys_room` VALUES ('11', 'A教301', null, null);
INSERT INTO `sys_room` VALUES ('12', 'A教302', null, null);
INSERT INTO `sys_room` VALUES ('13', 'A教303', null, null);
INSERT INTO `sys_room` VALUES ('14', 'A教304', null, null);
INSERT INTO `sys_room` VALUES ('15', 'A教305', null, null);
INSERT INTO `sys_room` VALUES ('16', 'B教101', null, null);
INSERT INTO `sys_room` VALUES ('17', 'B教102', null, null);
INSERT INTO `sys_room` VALUES ('18', 'B教103', null, null);
INSERT INTO `sys_room` VALUES ('19', 'B教104', null, null);
INSERT INTO `sys_room` VALUES ('20', 'B教105', null, null);
INSERT INTO `sys_room` VALUES ('21', 'B教201', null, null);
INSERT INTO `sys_room` VALUES ('22', 'B教202', null, null);
INSERT INTO `sys_room` VALUES ('23', 'B教203', null, null);
INSERT INTO `sys_room` VALUES ('24', 'B教204', null, null);
INSERT INTO `sys_room` VALUES ('25', 'B教205', null, null);
INSERT INTO `sys_room` VALUES ('26', 'B教301', null, null);
INSERT INTO `sys_room` VALUES ('27', 'B教302', null, null);
INSERT INTO `sys_room` VALUES ('28', 'B教303', null, null);
INSERT INTO `sys_room` VALUES ('29', 'B教304', null, null);
INSERT INTO `sys_room` VALUES ('30', 'B教305', null, null);
INSERT INTO `sys_room` VALUES ('31', 'C教101', null, null);
INSERT INTO `sys_room` VALUES ('32', 'C教102', null, null);
INSERT INTO `sys_room` VALUES ('33', 'C教103', null, null);
INSERT INTO `sys_room` VALUES ('34', 'C教104', '34', null);
INSERT INTO `sys_room` VALUES ('35', 'C教105', '35', null);
INSERT INTO `sys_room` VALUES ('36', 'C教201', null, null);
INSERT INTO `sys_room` VALUES ('37', 'C教202', null, null);
INSERT INTO `sys_room` VALUES ('38', 'C教203', null, null);
INSERT INTO `sys_room` VALUES ('39', 'C教204', null, null);
INSERT INTO `sys_room` VALUES ('40', 'C教205', null, null);
INSERT INTO `sys_room` VALUES ('41', 'C教301', null, null);
INSERT INTO `sys_room` VALUES ('42', 'C教302', null, null);
INSERT INTO `sys_room` VALUES ('43', 'C教303', null, null);
INSERT INTO `sys_room` VALUES ('44', 'C教304', null, null);
INSERT INTO `sys_room` VALUES ('45', 'C教305', null, null);

-- ----------------------------
-- Table structure for sys_schoolroll
-- ----------------------------
DROP TABLE IF EXISTS `sys_schoolroll`;
CREATE TABLE `sys_schoolroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) DEFAULT NULL,
  `student_id` int(12) DEFAULT NULL,
  `stu_card` varchar(18) DEFAULT NULL,
  `stu_address` varchar(255) DEFAULT NULL,
  `stu_intime` datetime DEFAULT NULL,
  `stu_education` varchar(255) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_schoolroll
-- ----------------------------
INSERT INTO `sys_schoolroll` VALUES ('1', '唐瑞', '2019010101', '20190101014564', '重庆', '2016-09-01 11:50:26', '本科', '1', '1');

-- ----------------------------
-- Table structure for sys_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_student`;
CREATE TABLE `sys_student` (
  `student_id` int(12) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_student
-- ----------------------------
INSERT INTO `sys_student` VALUES ('2019010101', 'panchao', '男', '21', '17', '11', '9');

-- ----------------------------
-- Table structure for sys_stu_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_stu_course`;
CREATE TABLE `sys_stu_course` (
  `student_id` int(12) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `course_state` varchar(255) DEFAULT NULL,
  `grades` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_stu_course
-- ----------------------------
INSERT INTO `sys_stu_course` VALUES ('2019010101', '1', '1', '启用', '80');
INSERT INTO `sys_stu_course` VALUES ('2019010101', '5', '20190104', null, null);
INSERT INTO `sys_stu_course` VALUES ('2019010101', '19', '20190111', null, null);

-- ----------------------------
-- Table structure for sys_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sys_teacher`;
CREATE TABLE `sys_teacher` (
  `teacher_id` int(12) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20190113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_teacher
-- ----------------------------
INSERT INTO `sys_teacher` VALUES ('20190101', '黄月英', '42', '女', null);
INSERT INTO `sys_teacher` VALUES ('20190102', '刘备', '26', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190103', '周瑜', '18', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190104', '黄盖', '23', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190105', '马超', '24', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190106', '大乔', '23', '女', null);
INSERT INTO `sys_teacher` VALUES ('20190107', '小乔', '24', '女', null);
INSERT INTO `sys_teacher` VALUES ('20190108', '曹操', '56', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190109', '曹丕', '23', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190110', '曹植', '25', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190111', '曹冲', '24', '男', null);
INSERT INTO `sys_teacher` VALUES ('20190112', '诸葛亮', '25', '男', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1280 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1267', 'admin', '23280d1e189c1e30d4aba29928d4f896');
INSERT INTO `sys_user` VALUES ('1277', 'tr', '23280d1e189c1e30d4aba29928d4f896');
INSERT INTO `sys_user` VALUES ('1278', '20190202', '23280d1e189c1e30d4aba29928d4f896');
INSERT INTO `sys_user` VALUES ('1279', '2019010101', '23280d1e189c1e30d4aba29928d4f896');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('17', '1268', '6');
INSERT INTO `sys_user_role` VALUES ('18', '1269', '7');
INSERT INTO `sys_user_role` VALUES ('19', '1270', '8');
INSERT INTO `sys_user_role` VALUES ('25', '1267', '5');
INSERT INTO `sys_user_role` VALUES ('26', '1277', '8');
INSERT INTO `sys_user_role` VALUES ('27', '1279', '8');
