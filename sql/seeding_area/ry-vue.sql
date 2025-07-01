/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : ry-vue

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2025-07-01 15:17:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for corn_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `corn_planting_area`;
CREATE TABLE `corn_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID，主键',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region_year` (`region`,`year`) COMMENT '地区和年份联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='玉米播种面积表';

-- ----------------------------
-- Records of corn_planting_area
-- ----------------------------
INSERT INTO `corn_planting_area` VALUES ('1', '北京市', '2023', '56.14', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('2', '北京市', '2022', '51.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('3', '北京市', '2021', '42.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('4', '北京市', '2020', '35.65', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('5', '北京市', '2019', '33.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('6', '北京市', '2018', '40.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('7', '北京市', '2017', '49.74', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('8', '北京市', '2016', '64.26', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('9', '北京市', '2015', '76.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('10', '北京市', '2014', '88.62', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('11', '北京市', '2013', '114.49', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('12', '北京市', '2012', '132.02', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('13', '北京市', '2011', '140.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('14', '北京市', '2010', '149.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('15', '北京市', '2009', '150.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('16', '北京市', '2008', '146.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('17', '北京市', '2007', '138.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('18', '北京市', '2006', '135.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('19', '北京市', '2005', '119.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('20', '北京市', '2004', '93.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('21', '北京市', '2003', '75.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('22', '北京市', '2002', '87.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('23', '北京市', '2001', '100.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('24', '北京市', '2000', '135.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('25', '天津市', '2023', '194.22', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('26', '天津市', '2022', '187.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('27', '天津市', '2021', '185.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('28', '天津市', '2020', '178.86', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('29', '天津市', '2019', '180.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('30', '天津市', '2018', '186.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('31', '天津市', '2017', '201.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('32', '天津市', '2016', '219.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('33', '天津市', '2015', '215.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('34', '天津市', '2014', '203.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('35', '天津市', '2013', '192.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('36', '天津市', '2012', '179.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('37', '天津市', '2011', '169.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('38', '天津市', '2010', '169.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('39', '天津市', '2009', '166.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('40', '天津市', '2008', '159.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('41', '天津市', '2007', '162.26', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('42', '天津市', '2006', '150.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('43', '天津市', '2005', '138.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('44', '天津市', '2004', '134.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('45', '天津市', '2003', '124.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('46', '天津市', '2002', '146.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('47', '天津市', '2001', '140.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('48', '天津市', '2000', '131.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('49', '河北省', '2023', '3442.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('50', '河北省', '2022', '3455.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('51', '河北省', '2021', '3454.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('52', '河北省', '2020', '3417.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('53', '河北省', '2019', '3408.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('54', '河北省', '2018', '3437.74', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('55', '河北省', '2017', '3544.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('56', '河北省', '2016', '3696.14', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('57', '河北省', '2015', '3654.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('58', '河北省', '2014', '3542.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('59', '河北省', '2013', '3428.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('60', '河北省', '2012', '3323.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('61', '河北省', '2011', '3264.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('62', '河北省', '2010', '3191.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('63', '河北省', '2009', '3080.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('64', '河北省', '2008', '2885.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('65', '河北省', '2007', '2903.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('66', '河北省', '2006', '2799.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('67', '河北省', '2005', '2677.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('68', '河北省', '2004', '2630.57', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('69', '河北省', '2003', '2488.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('70', '河北省', '2002', '2577.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('71', '河北省', '2001', '2543.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('72', '河北省', '2000', '2478.57', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('73', '山西省', '2023', '1842.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('74', '山西省', '2022', '1813.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('75', '山西省', '2021', '1772.57', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('76', '山西省', '2020', '1742.22', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('77', '山西省', '2019', '1715.04', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('78', '山西省', '2018', '1747.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('79', '山西省', '2017', '1806.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('80', '山西省', '2016', '1860.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('81', '山西省', '2015', '1894.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('82', '山西省', '2014', '1868.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('83', '山西省', '2013', '1836.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('84', '山西省', '2012', '1810.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('85', '山西省', '2011', '1762.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('86', '山西省', '2010', '1635.25', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('87', '山西省', '2009', '1511.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('88', '山西省', '2008', '1416.44', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('89', '山西省', '2007', '1287.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('90', '山西省', '2006', '1260.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('91', '山西省', '2005', '1183.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('92', '山西省', '2004', '1125.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('93', '山西省', '2003', '915.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('94', '山西省', '2002', '890.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('95', '山西省', '2001', '837.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('96', '山西省', '2000', '793.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('97', '内蒙古自治区', '2023', '4280.25', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('98', '内蒙古自治区', '2022', '4194.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('99', '内蒙古自治区', '2021', '4204.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('100', '内蒙古自治区', '2020', '3823.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('101', '内蒙古自治区', '2019', '3776.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('102', '内蒙古自治区', '2018', '3742.14', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('103', '内蒙古自治区', '2017', '3716.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('104', '内蒙古自治区', '2016', '3843.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('105', '内蒙古自治区', '2015', '3938.32', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('106', '内蒙古自治区', '2014', '3828.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('107', '内蒙古自治区', '2013', '3534.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('108', '内蒙古自治区', '2012', '3174.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('109', '内蒙古自治区', '2011', '2956.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('110', '内蒙古自治区', '2010', '2709.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('111', '内蒙古自治区', '2009', '2560.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('112', '内蒙古自治区', '2008', '2401.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('113', '内蒙古自治区', '2007', '2074.13', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('114', '内蒙古自治区', '2006', '1916.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('115', '内蒙古自治区', '2005', '1805.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('116', '内蒙古自治区', '2004', '1675.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('117', '内蒙古自治区', '2003', '1591.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('118', '内蒙古自治区', '2002', '1562.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('119', '内蒙古自治区', '2001', '1518.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('120', '内蒙古自治区', '2000', '1298.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('121', '辽宁省', '2023', '2803.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('122', '辽宁省', '2022', '2757.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('123', '辽宁省', '2021', '2724.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('124', '辽宁省', '2020', '2699.31', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('125', '辽宁省', '2019', '2675.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('126', '辽宁省', '2018', '2712.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('127', '辽宁省', '2017', '2691.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('128', '辽宁省', '2016', '2789.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('129', '辽宁省', '2015', '2922.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('130', '辽宁省', '2014', '2758.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('131', '辽宁省', '2013', '2603.12', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('132', '辽宁省', '2012', '2504.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('133', '辽宁省', '2011', '2372.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('134', '辽宁省', '2010', '2277.38', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('135', '辽宁省', '2009', '2092.49', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('136', '辽宁省', '2008', '1966.17', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('137', '辽宁省', '2007', '2041.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('138', '辽宁省', '2006', '1983.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('139', '辽宁省', '2005', '1792.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('140', '辽宁省', '2004', '1598.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('141', '辽宁省', '2003', '1434.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('142', '辽宁省', '2002', '1431.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('143', '辽宁省', '2001', '1566.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('144', '辽宁省', '2000', '1422.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('145', '吉林省', '2023', '4544.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('146', '吉林省', '2022', '4469.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('147', '吉林省', '2021', '4401.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('148', '吉林省', '2020', '4287.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('149', '吉林省', '2019', '4219.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('150', '吉林省', '2018', '4231.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('151', '吉林省', '2017', '4164.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('152', '吉林省', '2016', '4241.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('153', '吉林省', '2015', '4251.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('154', '吉林省', '2014', '4062.64', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('155', '吉林省', '2013', '3808.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('156', '吉林省', '2012', '3534.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('157', '吉林省', '2011', '3340.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('158', '吉林省', '2010', '3214.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('159', '吉林省', '2009', '3029.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('160', '吉林省', '2008', '2987.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('161', '吉林省', '2007', '2885.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('162', '吉林省', '2006', '2880.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('163', '吉林省', '2005', '2775.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('164', '吉林省', '2004', '2901.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('165', '吉林省', '2003', '2627.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('166', '吉林省', '2002', '2579.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('167', '吉林省', '2001', '2609.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('168', '吉林省', '2000', '2197.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('169', '黑龙江省', '2023', '6451.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('170', '黑龙江省', '2022', '5970.18', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('171', '黑龙江省', '2021', '6524.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('172', '黑龙江省', '2020', '5480.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('173', '黑龙江省', '2019', '5874.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('174', '黑龙江省', '2018', '6317.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('175', '黑龙江省', '2017', '5862.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('176', '黑龙江省', '2016', '6528.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('177', '黑龙江省', '2015', '7361.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('178', '黑龙江省', '2014', '6707.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('179', '黑龙江省', '2013', '6571.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('180', '黑龙江省', '2012', '6100.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('181', '黑龙江省', '2011', '5179.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('182', '黑龙江省', '2010', '4756.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('183', '黑龙江省', '2009', '4361.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('184', '黑龙江省', '2008', '3849.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('185', '黑龙江省', '2007', '4055.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('186', '黑龙江省', '2006', '3305.13', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('187', '黑龙江省', '2005', '2220.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('188', '黑龙江省', '2004', '2179.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('189', '黑龙江省', '2003', '2053.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('190', '黑龙江省', '2002', '2285.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('191', '黑龙江省', '2001', '2132.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('192', '黑龙江省', '2000', '1801.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('193', '上海市', '2023', '0.69', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('194', '上海市', '2022', '0.96', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('195', '上海市', '2021', '1.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('196', '上海市', '2020', '1.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('197', '上海市', '2019', '1.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('198', '上海市', '2018', '1.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('199', '上海市', '2017', '3.03', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('200', '上海市', '2016', '3.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('201', '上海市', '2015', '4.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('202', '上海市', '2014', '4.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('203', '上海市', '2013', '4.36', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('204', '上海市', '2012', '4.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('205', '上海市', '2011', '4.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('206', '上海市', '2010', '4.92', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('207', '上海市', '2009', '4.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('208', '上海市', '2008', '3.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('209', '上海市', '2007', '4.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('210', '上海市', '2006', '3.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('211', '上海市', '2005', '4.28', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('212', '上海市', '2004', '4.17', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('213', '上海市', '2003', '4.62', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('214', '上海市', '2002', '4.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('215', '上海市', '2001', '5.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('216', '上海市', '2000', '5.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('217', '江苏省', '2023', '488.31', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('218', '江苏省', '2022', '495.04', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('219', '江苏省', '2021', '500.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('220', '江苏省', '2020', '509.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('221', '江苏省', '2019', '504.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('222', '江苏省', '2018', '515.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('223', '江苏省', '2017', '543.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('224', '江苏省', '2016', '540.17', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('225', '江苏省', '2015', '540.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('226', '江苏省', '2014', '519.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('227', '江苏省', '2013', '467.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('228', '江苏省', '2012', '453.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('229', '江苏省', '2011', '448.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('230', '江苏省', '2010', '439.57', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('231', '江苏省', '2009', '433.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('232', '江苏省', '2008', '432.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('233', '江苏省', '2007', '393.13', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('234', '江苏省', '2006', '378.17', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('235', '江苏省', '2005', '370.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('236', '江苏省', '2004', '389.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('237', '江苏省', '2003', '451.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('238', '江苏省', '2002', '436.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('239', '江苏省', '2001', '429.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('240', '江苏省', '2000', '423.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('241', '浙江省', '2023', '27.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('242', '浙江省', '2022', '55.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('243', '浙江省', '2021', '57.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('244', '浙江省', '2020', '63.28', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('245', '浙江省', '2019', '76.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('246', '浙江省', '2018', '49.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('247', '浙江省', '2017', '51.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('248', '浙江省', '2016', '49.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('249', '浙江省', '2015', '51.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('250', '浙江省', '2014', '51.07', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('251', '浙江省', '2013', '50.31', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('252', '浙江省', '2012', '50.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('253', '浙江省', '2011', '26.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('254', '浙江省', '2010', '23.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('255', '浙江省', '2009', '24.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('256', '浙江省', '2008', '24.26', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('257', '浙江省', '2007', '22.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('258', '浙江省', '2006', '22.03', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('259', '浙江省', '2005', '62.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('260', '浙江省', '2004', '54.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('261', '浙江省', '2003', '51.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('262', '浙江省', '2002', '52.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('263', '浙江省', '2001', '51.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('264', '浙江省', '2000', '52.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('265', '安徽省', '2023', '1209.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('266', '安徽省', '2022', '1228.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('267', '安徽省', '2021', '1252.74', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('268', '安徽省', '2020', '1234.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('269', '安徽省', '2019', '1196.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('270', '安徽省', '2018', '1138.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('271', '安徽省', '2017', '1160.07', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('272', '安徽省', '2016', '1203.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('273', '安徽省', '2015', '1206.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('274', '安徽省', '2014', '1098.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('275', '安徽省', '2013', '1045.25', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('276', '安徽省', '2012', '975.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('277', '安徽省', '2011', '952.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('278', '安徽省', '2010', '864.08', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('279', '安徽省', '2009', '803.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('280', '安徽省', '2008', '731.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('281', '安徽省', '2007', '733.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('282', '安徽省', '2006', '623.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('283', '安徽省', '2005', '670.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('284', '安徽省', '2004', '662.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('285', '安徽省', '2003', '627.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('286', '安徽省', '2002', '651.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('287', '安徽省', '2001', '589.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('288', '安徽省', '2000', '485.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('289', '福建省', '2023', '36.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('290', '福建省', '2022', '34.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('291', '福建省', '2021', '33.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('292', '福建省', '2020', '33.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('293', '福建省', '2019', '30.49', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('294', '福建省', '2018', '28.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('295', '福建省', '2017', '26.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('296', '福建省', '2016', '26.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('297', '福建省', '2015', '27.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('298', '福建省', '2014', '28.62', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('299', '福建省', '2013', '29.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('300', '福建省', '2012', '30.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('301', '福建省', '2011', '30.22', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('302', '福建省', '2010', '30.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('303', '福建省', '2009', '30.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('304', '福建省', '2008', '32.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('305', '福建省', '2007', '32.36', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('306', '福建省', '2006', '33.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('307', '福建省', '2005', '39.12', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('308', '福建省', '2004', '37.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('309', '福建省', '2003', '36.86', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('310', '福建省', '2002', '36.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('311', '福建省', '2001', '35.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('312', '福建省', '2000', '36.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('313', '江西省', '2023', '60.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('314', '江西省', '2022', '55.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('315', '江西省', '2021', '50.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('316', '江西省', '2020', '47.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('317', '江西省', '2019', '46.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('318', '江西省', '2018', '35.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('319', '江西省', '2017', '35.65', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('320', '江西省', '2016', '35.62', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('321', '江西省', '2015', '31.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('322', '江西省', '2014', '28.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('323', '江西省', '2013', '26.02', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('324', '江西省', '2012', '25.35', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('325', '江西省', '2011', '24.31', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('326', '江西省', '2010', '24.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('327', '江西省', '2009', '21.04', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('328', '江西省', '2008', '15.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('329', '江西省', '2007', '14.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('330', '江西省', '2006', '14.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('331', '江西省', '2005', '16.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('332', '江西省', '2004', '14.36', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('333', '江西省', '2003', '17.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('334', '江西省', '2002', '16.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('335', '江西省', '2001', '19.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('336', '江西省', '2000', '25.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('337', '山东省', '2023', '3881.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('338', '山东省', '2022', '3880.26', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('339', '山东省', '2021', '3897.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('340', '山东省', '2020', '3871.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('341', '山东省', '2019', '3846.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('342', '山东省', '2018', '3934.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('343', '山东省', '2017', '4000.12', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('344', '山东省', '2016', '4059.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('345', '山东省', '2015', '3943.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('346', '山东省', '2014', '3828.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('347', '山东省', '2013', '3663.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('348', '山东省', '2012', '3476.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('349', '山东省', '2011', '3370.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('350', '山东省', '2010', '3247.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('351', '山东省', '2009', '3131.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('352', '山东省', '2008', '3012.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('353', '山东省', '2007', '2855.64', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('354', '山东省', '2006', '2844.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('355', '山东省', '2005', '2731.44', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('356', '山东省', '2004', '2455.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('357', '山东省', '2003', '2405.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('358', '山东省', '2002', '2530.07', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('359', '山东省', '2001', '2505.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('360', '山东省', '2000', '2413.92', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('361', '河南省', '2023', '3864.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('362', '河南省', '2022', '3857.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('363', '河南省', '2021', '3853.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('364', '河南省', '2020', '3818.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('365', '河南省', '2019', '3801.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('366', '河南省', '2018', '3918.96', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('367', '河南省', '2017', '3998.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('368', '河南省', '2016', '4210.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('369', '河南省', '2015', '4189.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('370', '河南省', '2014', '4009.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('371', '河南省', '2013', '3823.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('372', '河南省', '2012', '3564.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('373', '河南省', '2011', '3398.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('374', '河南省', '2010', '3233.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('375', '河南省', '2009', '3104.86', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('376', '河南省', '2008', '2954.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('377', '河南省', '2007', '2844.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('378', '河南省', '2006', '2751.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('379', '河南省', '2005', '2508.31', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('380', '河南省', '2004', '2420.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('381', '河南省', '2003', '2386.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('382', '河南省', '2002', '2319.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('383', '河南省', '2001', '2200.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('384', '河南省', '2000', '2201.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('385', '湖北省', '2023', '765.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('386', '湖北省', '2022', '775.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('387', '湖北省', '2021', '762.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('388', '湖北省', '2020', '751.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('389', '湖北省', '2019', '727.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('390', '湖北省', '2018', '781.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('391', '湖北省', '2017', '794.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('392', '湖北省', '2016', '797.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('393', '湖北省', '2015', '813.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('394', '湖北省', '2014', '745.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('395', '湖北省', '2013', '653.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('396', '湖北省', '2012', '663.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('397', '湖北省', '2011', '603.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('398', '湖北省', '2010', '572.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('399', '湖北省', '2009', '536.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('400', '湖北省', '2008', '488.24', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('401', '湖北省', '2007', '444.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('402', '湖北省', '2006', '431.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('403', '湖北省', '2005', '389.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('404', '湖北省', '2004', '357.49', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('405', '湖北省', '2003', '341.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('406', '湖北省', '2002', '390.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('407', '湖北省', '2001', '400.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('408', '湖北省', '2000', '424.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('409', '湖南省', '2023', '406.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('410', '湖南省', '2022', '393.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('411', '湖南省', '2021', '397.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('412', '湖南省', '2020', '384.38', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('413', '湖南省', '2019', '386.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('414', '湖南省', '2018', '359.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('415', '湖南省', '2017', '365.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('416', '湖南省', '2016', '370.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('417', '湖南省', '2015', '366.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('418', '湖南省', '2014', '361.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('419', '湖南省', '2013', '358.35', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('420', '湖南省', '2012', '353.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('421', '湖南省', '2011', '336.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('422', '湖南省', '2010', '299.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('423', '湖南省', '2009', '286.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('424', '湖南省', '2008', '244.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('425', '湖南省', '2007', '221.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('426', '湖南省', '2006', '196.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('427', '湖南省', '2005', '277.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('428', '湖南省', '2004', '276.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('429', '湖南省', '2003', '289.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('430', '湖南省', '2002', '272.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('431', '湖南省', '2001', '269.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('432', '湖南省', '2000', '278.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('433', '广东省', '2023', '134.03', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('434', '广东省', '2022', '131.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('435', '广东省', '2021', '129.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('436', '广东省', '2020', '123.14', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('437', '广东省', '2019', '120.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('438', '广东省', '2018', '120.08', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('439', '广东省', '2017', '120.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('440', '广东省', '2016', '123.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('441', '广东省', '2015', '127.19', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('442', '广东省', '2014', '130.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('443', '广东省', '2013', '135.44', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('444', '广东省', '2012', '137.38', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('445', '广东省', '2011', '143.21', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('446', '广东省', '2010', '139.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('447', '广东省', '2009', '148.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('448', '广东省', '2008', '132.94', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('449', '广东省', '2007', '127.86', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('450', '广东省', '2006', '118.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('451', '广东省', '2005', '136.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('452', '广东省', '2004', '137.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('453', '广东省', '2003', '135.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('454', '广东省', '2002', '141.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('455', '广东省', '2001', '164.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('456', '广东省', '2000', '189.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('457', '广西壮族自治区', '2023', '616.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('458', '广西壮族自治区', '2022', '616.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('459', '广西壮族自治区', '2021', '615.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('460', '广西壮族自治区', '2020', '596.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('461', '广西壮族自治区', '2019', '580.14', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('462', '广西壮族自治区', '2018', '584.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('463', '广西壮族自治区', '2017', '591.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('464', '广西壮族自治区', '2016', '603.25', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('465', '广西壮族自治区', '2015', '616.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('466', '广西壮族自治区', '2014', '579.32', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('467', '广西壮族自治区', '2013', '583.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('468', '广西壮族自治区', '2012', '577.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('469', '广西壮族自治区', '2011', '563.04', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('470', '广西壮族自治区', '2010', '536.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('471', '广西壮族自治区', '2009', '532.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('472', '广西壮族自治区', '2008', '488.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('473', '广西壮族自治区', '2007', '489.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('474', '广西壮族自治区', '2006', '516.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('475', '广西壮族自治区', '2005', '575.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('476', '广西壮族自治区', '2004', '586.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('477', '广西壮族自治区', '2003', '531.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('478', '广西壮族自治区', '2002', '520.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('479', '广西壮族自治区', '2001', '556.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('480', '广西壮族自治区', '2000', '610.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('481', '海南省', '2016', '0.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('482', '海南省', '2015', '0.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('483', '海南省', '2014', '0.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('484', '海南省', '2013', '27.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('485', '海南省', '2012', '27.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('486', '海南省', '2011', '23.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('487', '海南省', '2010', '21.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('488', '海南省', '2009', '18.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('489', '海南省', '2008', '17.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('490', '海南省', '2007', '17.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('491', '海南省', '2006', '16.27', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('492', '海南省', '2005', '12.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('493', '海南省', '2004', '13.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('494', '海南省', '2003', '19.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('495', '海南省', '2002', '16.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('496', '海南省', '2001', '16.71', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('497', '海南省', '2000', '17.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('498', '重庆市', '2023', '448.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('499', '重庆市', '2022', '447.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('500', '重庆市', '2021', '443.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('501', '重庆市', '2020', '440.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('502', '重庆市', '2019', '438.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('503', '重庆市', '2018', '442.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('504', '重庆市', '2017', '447.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('505', '重庆市', '2016', '453.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('506', '重庆市', '2015', '451.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('507', '重庆市', '2014', '450.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('508', '重庆市', '2013', '451.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('509', '重庆市', '2012', '457.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('510', '重庆市', '2011', '455.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('511', '重庆市', '2010', '452.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('512', '重庆市', '2009', '452.28', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('513', '重庆市', '2008', '451.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('514', '重庆市', '2007', '451.35', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('515', '重庆市', '2006', '440.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('516', '重庆市', '2005', '460.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('517', '重庆市', '2004', '460.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('518', '重庆市', '2003', '455.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('519', '重庆市', '2002', '476.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('520', '重庆市', '2001', '489.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('521', '重庆市', '2000', '500.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('522', '四川省', '2023', '1866.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('523', '四川省', '2022', '1855.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('524', '四川省', '2021', '1849.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('525', '四川省', '2020', '1839.36', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('526', '四川省', '2019', '1844.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('527', '四川省', '2018', '1856.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('528', '四川省', '2017', '1863.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('529', '四川省', '2016', '1866.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('530', '四川省', '2015', '1816.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('531', '四川省', '2014', '1739.13', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('532', '四川省', '2013', '1685.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('533', '四川省', '2012', '1629.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('534', '四川省', '2011', '1574.25', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('535', '四川省', '2010', '1520.92', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('536', '四川省', '2009', '1454.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('537', '四川省', '2008', '1402.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('538', '四川省', '2007', '1369.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('539', '四川省', '2006', '1291.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('540', '四川省', '2005', '1196.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('541', '四川省', '2004', '1172.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('542', '四川省', '2003', '1161.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('543', '四川省', '2002', '1207.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('544', '四川省', '2001', '1200.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('545', '四川省', '2000', '1235.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('546', '贵州省', '2023', '687.12', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('547', '贵州省', '2022', '622.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('548', '贵州省', '2021', '550.39', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('549', '贵州省', '2020', '501.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('550', '贵州省', '2019', '530.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('551', '贵州省', '2018', '602.12', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('552', '贵州省', '2017', '1006.38', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('553', '贵州省', '2016', '1041.63', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('554', '贵州省', '2015', '1037.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('555', '贵州省', '2014', '1034.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('556', '贵州省', '2013', '988.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('557', '贵州省', '2012', '951.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('558', '贵州省', '2011', '934.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('559', '贵州省', '2010', '895.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('560', '贵州省', '2009', '832.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('561', '贵州省', '2008', '786.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('562', '贵州省', '2007', '756.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('563', '贵州省', '2006', '734.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('564', '贵州省', '2005', '719.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('565', '贵州省', '2004', '706.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('566', '贵州省', '2003', '686.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('567', '贵州省', '2002', '703.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('568', '贵州省', '2001', '721.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('569', '贵州省', '2000', '727.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('570', '云南省', '2023', '1943.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('571', '云南省', '2022', '1917.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('572', '云南省', '2021', '1879.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('573', '云南省', '2020', '1802.46', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('574', '云南省', '2019', '1782.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('575', '云南省', '2018', '1785.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('576', '云南省', '2017', '1763.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('577', '云南省', '2016', '1784.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('578', '云南省', '2015', '1762.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('579', '云南省', '2014', '1745.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('580', '云南省', '2013', '1703.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('581', '云南省', '2012', '1623.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('582', '云南省', '2011', '1559.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('583', '云南省', '2010', '1527.51', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('584', '云南省', '2009', '1444.83', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('585', '云南省', '2008', '1384.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('586', '云南省', '2007', '1309.61', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('587', '云南省', '2006', '1251.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('588', '云南省', '2005', '1182.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('589', '云南省', '2004', '1111.13', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('590', '云南省', '2003', '1066.87', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('591', '云南省', '2002', '1128.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('592', '云南省', '2001', '1138.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('593', '云南省', '2000', '1129.70', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('594', '西藏自治区', '2023', '4.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('595', '西藏自治区', '2022', '4.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('596', '西藏自治区', '2021', '4.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('597', '西藏自治区', '2020', '4.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('598', '西藏自治区', '2019', '4.74', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('599', '西藏自治区', '2018', '5.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('600', '西藏自治区', '2017', '4.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('601', '西藏自治区', '2016', '4.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('602', '西藏自治区', '2015', '4.53', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('603', '西藏自治区', '2014', '4.16', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('604', '西藏自治区', '2013', '4.32', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('605', '西藏自治区', '2012', '4.35', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('606', '西藏自治区', '2011', '4.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('607', '西藏自治区', '2010', '4.22', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('608', '西藏自治区', '2009', '4.02', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('609', '西藏自治区', '2008', '4.02', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('610', '西藏自治区', '2007', '3.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('611', '西藏自治区', '2006', '3.39', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('612', '西藏自治区', '2005', '3.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('613', '西藏自治区', '2004', '3.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('614', '西藏自治区', '2003', '3.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('615', '西藏自治区', '2002', '3.55', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('616', '西藏自治区', '2001', '3.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('617', '西藏自治区', '2000', '3.15', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('618', '陕西省', '2023', '1212.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('619', '陕西省', '2022', '1188.43', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('620', '陕西省', '2021', '1182.48', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('621', '陕西省', '2020', '1179.44', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('622', '陕西省', '2019', '1177.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('623', '陕西省', '2018', '1179.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('624', '陕西省', '2017', '1196.88', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('625', '陕西省', '2016', '1341.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('626', '陕西省', '2015', '1203.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('627', '陕西省', '2014', '1212.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('628', '陕西省', '2013', '1225.98', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('629', '陕西省', '2012', '1241.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('630', '陕西省', '2011', '1252.65', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('631', '陕西省', '2010', '1257.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('632', '陕西省', '2009', '1219.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('633', '陕西省', '2008', '1193.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('634', '陕西省', '2007', '1171.91', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('635', '陕西省', '2006', '1129.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('636', '陕西省', '2005', '1097.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('637', '陕西省', '2004', '1047.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('638', '陕西省', '2003', '948.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('639', '陕西省', '2002', '999.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('640', '陕西省', '2001', '1005.06', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('641', '陕西省', '2000', '1057.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('642', '甘肃省', '2023', '1099.17', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('643', '甘肃省', '2022', '1074.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('644', '甘肃省', '2021', '1051.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('645', '甘肃省', '2020', '1000.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('646', '甘肃省', '2019', '987.92', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('647', '甘肃省', '2018', '1012.74', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('648', '甘肃省', '2017', '1040.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('649', '甘肃省', '2016', '1056.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('650', '甘肃省', '2015', '1065.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('651', '甘肃省', '2014', '1045.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('652', '甘肃省', '2013', '1013.99', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('653', '甘肃省', '2012', '932.60', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('654', '甘肃省', '2011', '861.84', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('655', '甘肃省', '2010', '853.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('656', '甘肃省', '2009', '668.62', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('657', '甘肃省', '2008', '563.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('658', '甘肃省', '2007', '494.68', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('659', '甘肃省', '2006', '517.72', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('660', '甘肃省', '2005', '484.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('661', '甘肃省', '2004', '487.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('662', '甘肃省', '2003', '490.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('663', '甘肃省', '2002', '503.50', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('664', '甘肃省', '2001', '467.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('665', '甘肃省', '2000', '464.36', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('666', '青海省', '2023', '22.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('667', '青海省', '2022', '22.67', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('668', '青海省', '2021', '22.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('669', '青海省', '2020', '21.37', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('670', '青海省', '2019', '20.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('671', '青海省', '2018', '18.45', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('672', '青海省', '2017', '18.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('673', '青海省', '2016', '20.07', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('674', '青海省', '2015', '21.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('675', '青海省', '2014', '21.54', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('676', '青海省', '2013', '19.11', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('677', '青海省', '2012', '19.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('678', '青海省', '2011', '17.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('679', '青海省', '2010', '11.01', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('680', '青海省', '2009', '4.82', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('681', '青海省', '2008', '1.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('682', '青海省', '2007', '0.81', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('683', '青海省', '2006', '1.89', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('684', '青海省', '2005', '1.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('685', '青海省', '2004', '1.58', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('686', '青海省', '2002', '1.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('687', '青海省', '2001', '2.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('688', '青海省', '2000', '2.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('689', '宁夏回族自治区', '2023', '390.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('690', '宁夏回族自治区', '2022', '365.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('691', '宁夏回族自治区', '2021', '367.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('692', '宁夏回族自治区', '2020', '322.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('693', '宁夏回族自治区', '2019', '299.78', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('694', '宁夏回族自治区', '2018', '310.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('695', '宁夏回族自治区', '2017', '306.33', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('696', '宁夏回族自治区', '2016', '313.23', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('697', '宁夏回族自治区', '2015', '301.77', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('698', '宁夏回族自治区', '2014', '288.75', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('699', '宁夏回族自治区', '2013', '262.02', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('700', '宁夏回族自治区', '2012', '245.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('701', '宁夏回族自治区', '2011', '231.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('702', '宁夏回族自治区', '2010', '223.41', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('703', '宁夏回族自治区', '2009', '215.08', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('704', '宁夏回族自治区', '2008', '208.52', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('705', '宁夏回族自治区', '2007', '206.00', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('706', '宁夏回族自治区', '2006', '182.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('707', '宁夏回族自治区', '2005', '178.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('708', '宁夏回族自治区', '2004', '187.85', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('709', '宁夏回族自治区', '2003', '176.34', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('710', '宁夏回族自治区', '2002', '155.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('711', '宁夏回族自治区', '2001', '147.80', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('712', '宁夏回族自治区', '2000', '131.10', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('713', '新疆维吾尔自治区', '2023', '1437.66', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('714', '新疆维吾尔自治区', '2022', '1145.56', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('715', '新疆维吾尔自治区', '2021', '1110.26', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('716', '新疆维吾尔自治区', '2020', '1051.05', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('717', '新疆维吾尔自治区', '2019', '997.20', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('718', '新疆维吾尔自治区', '2018', '1033.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('719', '新疆维吾尔自治区', '2017', '1019.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('720', '新疆维吾尔自治区', '2016', '1026.40', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('721', '新疆维吾尔自治区', '2015', '1067.73', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('722', '新疆维吾尔自治区', '2014', '1006.04', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('723', '新疆维吾尔自治区', '2013', '987.86', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('724', '新疆维吾尔自治区', '2012', '903.79', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('725', '新疆维吾尔自治区', '2011', '763.95', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('726', '新疆维吾尔自治区', '2010', '689.30', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('727', '新疆维吾尔自治区', '2009', '621.47', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('728', '新疆维吾尔自治区', '2008', '592.59', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('729', '新疆维吾尔自治区', '2007', '509.76', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('730', '新疆维吾尔自治区', '2006', '526.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('731', '新疆维吾尔自治区', '2005', '526.09', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('732', '新疆维吾尔自治区', '2004', '517.97', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('733', '新疆维吾尔自治区', '2003', '467.90', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('734', '新疆维吾尔自治区', '2002', '501.93', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('735', '新疆维吾尔自治区', '2001', '410.29', '2025-06-30 20:14:50', '2025-06-30 20:14:50');
INSERT INTO `corn_planting_area` VALUES ('736', '新疆维吾尔自治区', '2000', '382.42', '2025-06-30 20:14:50', '2025-06-30 20:14:50');

-- ----------------------------
-- Table structure for cotton_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `cotton_planting_area`;
CREATE TABLE `cotton_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID，主键',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) DEFAULT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region_year` (`region`,`year`) COMMENT '地区和年份联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='棉花播种面积表';

-- ----------------------------
-- Records of cotton_planting_area
-- ----------------------------
INSERT INTO `cotton_planting_area` VALUES ('1', '北京市', '2023', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('2', '北京市', '2022', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('3', '北京市', '2021', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('4', '北京市', '2020', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('5', '北京市', '2019', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('6', '北京市', '2018', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('7', '北京市', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('8', '北京市', '2016', '0.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('9', '北京市', '2015', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('10', '北京市', '2014', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('11', '北京市', '2013', '0.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('12', '北京市', '2012', '0.24', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('13', '北京市', '2011', '0.44', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('14', '北京市', '2010', '0.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('15', '北京市', '2009', '0.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('16', '北京市', '2008', '1.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('17', '北京市', '2007', '1.68', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('18', '北京市', '2006', '2.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('19', '北京市', '2005', '1.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('20', '北京市', '2004', '6.54', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('21', '北京市', '2003', '3.17', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('22', '北京市', '2002', '3.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('23', '北京市', '2001', '2.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('24', '北京市', '2000', '1.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('25', '天津市', '2023', '1.15', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('26', '天津市', '2022', '2.48', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('27', '天津市', '2021', '3.65', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('28', '天津市', '2020', '7.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('29', '天津市', '2019', '14.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('30', '天津市', '2018', '17.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('31', '天津市', '2017', '20.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('32', '天津市', '2016', '12.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('33', '天津市', '2015', '17.32', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('34', '天津市', '2014', '27.99', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('35', '天津市', '2013', '36.71', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('36', '天津市', '2012', '52.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('37', '天津市', '2011', '57.28', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('38', '天津市', '2010', '49.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('39', '天津市', '2009', '54.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('40', '天津市', '2008', '67.91', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('41', '天津市', '2007', '66.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('42', '天津市', '2006', '68.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('43', '天津市', '2005', '61.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('44', '天津市', '2004', '86.87', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('45', '天津市', '2003', '70.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('46', '天津市', '2002', '44.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('47', '天津市', '2001', '45.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('48', '天津市', '2000', '15.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('49', '河北省', '2023', '86.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('50', '河北省', '2022', '116.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('51', '河北省', '2021', '139.77', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('52', '河北省', '2020', '189.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('53', '河北省', '2019', '203.89', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('54', '河北省', '2018', '210.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('55', '河北省', '2017', '220.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('56', '河北省', '2016', '230.86', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('57', '河北省', '2015', '298.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('58', '河北省', '2014', '398.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('59', '河北省', '2013', '423.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('60', '河北省', '2012', '446.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('61', '河北省', '2011', '459.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('62', '河北省', '2010', '467.61', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('63', '河北省', '2009', '585.99', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('64', '河北省', '2008', '685.49', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('65', '河北省', '2007', '445.54', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('66', '河北省', '2006', '664.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('67', '河北省', '2005', '573.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('68', '河北省', '2004', '669.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('69', '河北省', '2003', '581.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('70', '河北省', '2002', '407.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('71', '河北省', '2001', '418.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('72', '河北省', '2000', '307.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('73', '山西省', '2023', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('74', '山西省', '2022', '0.32', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('75', '山西省', '2021', '0.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('76', '山西省', '2020', '1.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('77', '山西省', '2019', '2.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('78', '山西省', '2018', '2.58', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('79', '山西省', '2017', '2.87', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('80', '山西省', '2016', '3.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('81', '山西省', '2015', '8.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('82', '山西省', '2014', '15.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('83', '山西省', '2013', '20.97', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('84', '山西省', '2012', '28.55', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('85', '山西省', '2011', '35.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('86', '山西省', '2010', '38.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('87', '山西省', '2009', '40.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('88', '山西省', '2008', '50.81', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('89', '山西省', '2007', '75.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('90', '山西省', '2006', '119.87', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('91', '山西省', '2005', '97.45', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('92', '山西省', '2004', '114.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('93', '山西省', '2003', '91.45', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('94', '山西省', '2002', '72.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('95', '山西省', '2001', '90.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('96', '山西省', '2000', '43.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('97', '内蒙古自治区', '2021', '0.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('98', '内蒙古自治区', '2020', '0.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('99', '内蒙古自治区', '2019', '0.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('100', '内蒙古自治区', '2018', '0.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('101', '内蒙古自治区', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('102', '内蒙古自治区', '2016', '0.22', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('103', '内蒙古自治区', '2015', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('104', '内蒙古自治区', '2014', '1.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('105', '内蒙古自治区', '2013', '1.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('106', '内蒙古自治区', '2012', '1.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('107', '内蒙古自治区', '2011', '1.61', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('108', '内蒙古自治区', '2010', '0.89', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('109', '内蒙古自治区', '2009', '0.83', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('110', '内蒙古自治区', '2008', '1.98', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('111', '内蒙古自治区', '2007', '2.61', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('112', '内蒙古自治区', '2006', '1.98', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('113', '内蒙古自治区', '2005', '1.58', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('114', '内蒙古自治区', '2004', '6.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('115', '内蒙古自治区', '2003', '5.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('116', '内蒙古自治区', '2002', '0.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('117', '内蒙古自治区', '2001', '0.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('118', '内蒙古自治区', '2000', '0.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('119', '辽宁省', '2022', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('120', '辽宁省', '2020', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('121', '辽宁省', '2019', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('122', '辽宁省', '2018', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('123', '辽宁省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('124', '辽宁省', '2016', '0.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('125', '辽宁省', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('126', '辽宁省', '2014', '0.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('127', '辽宁省', '2013', '0.18', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('128', '辽宁省', '2012', '0.22', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('129', '辽宁省', '2011', '0.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('130', '辽宁省', '2010', '0.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('131', '辽宁省', '2009', '0.61', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('132', '辽宁省', '2008', '0.83', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('133', '辽宁省', '2007', '0.81', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('134', '辽宁省', '2006', '1.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('135', '辽宁省', '2005', '2.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('136', '辽宁省', '2004', '5.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('137', '辽宁省', '2003', '4.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('138', '辽宁省', '2002', '3.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('139', '辽宁省', '2001', '7.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('140', '辽宁省', '2000', '7.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('141', '吉林省', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('142', '吉林省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('143', '吉林省', '2016', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('144', '吉林省', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('145', '吉林省', '2014', '0.48', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('146', '吉林省', '2013', '3.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('147', '吉林省', '2012', '4.16', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('148', '吉林省', '2011', '6.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('149', '吉林省', '2010', '3.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('150', '吉林省', '2009', '1.59', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('151', '吉林省', '2008', '2.37', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('152', '吉林省', '2007', '0.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('153', '吉林省', '2006', '0.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('154', '吉林省', '2005', '1.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('155', '吉林省', '2004', '0.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('156', '吉林省', '2003', '0.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('157', '吉林省', '2002', '0.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('158', '吉林省', '2001', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('159', '黑龙江省', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('160', '黑龙江省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('161', '黑龙江省', '2016', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('162', '黑龙江省', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('163', '黑龙江省', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('164', '黑龙江省', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('165', '黑龙江省', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('166', '黑龙江省', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('167', '黑龙江省', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('168', '黑龙江省', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('169', '黑龙江省', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('170', '黑龙江省', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('171', '黑龙江省', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('172', '黑龙江省', '2005', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('173', '上海市', '2022', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('174', '上海市', '2021', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('175', '上海市', '2020', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('176', '上海市', '2019', '0.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('177', '上海市', '2018', '0.09', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('178', '上海市', '2017', '0.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('179', '上海市', '2016', '0.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('180', '上海市', '2015', '0.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('181', '上海市', '2014', '0.84', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('182', '上海市', '2013', '2.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('183', '上海市', '2012', '2.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('184', '上海市', '2011', '2.57', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('185', '上海市', '2010', '2.57', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('186', '上海市', '2009', '1.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('187', '上海市', '2008', '1.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('188', '上海市', '2007', '1.41', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('189', '上海市', '2006', '1.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('190', '上海市', '2005', '1.09', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('191', '上海市', '2004', '1.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('192', '上海市', '2003', '0.77', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('193', '上海市', '2002', '0.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('194', '上海市', '2001', '1.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('195', '上海市', '2000', '1.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('196', '江苏省', '2023', '3.46', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('197', '江苏省', '2022', '4.15', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('198', '江苏省', '2021', '5.78', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('199', '江苏省', '2020', '8.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('200', '江苏省', '2019', '11.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('201', '江苏省', '2018', '16.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('202', '江苏省', '2017', '21.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('203', '江苏省', '2016', '31.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('204', '江苏省', '2015', '50.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('205', '江苏省', '2014', '75.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('206', '江苏省', '2013', '92.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('207', '江苏省', '2012', '88.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('208', '江苏省', '2011', '101.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('209', '江苏省', '2010', '81.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('210', '江苏省', '2009', '117.69', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('211', '江苏省', '2008', '157.24', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('212', '江苏省', '2007', '220.15', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('213', '江苏省', '2006', '330.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('214', '江苏省', '2005', '368.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('215', '江苏省', '2004', '409.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('216', '江苏省', '2003', '369.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('217', '江苏省', '2002', '311.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('218', '江苏省', '2001', '384.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('219', '江苏省', '2000', '295.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('220', '浙江省', '2023', '2.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('221', '浙江省', '2022', '3.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('222', '浙江省', '2021', '4.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('223', '浙江省', '2020', '4.81', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('224', '浙江省', '2019', '5.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('225', '浙江省', '2018', '5.71', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('226', '浙江省', '2017', '4.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('227', '浙江省', '2016', '5.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('228', '浙江省', '2015', '5.87', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('229', '浙江省', '2014', '6.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('230', '浙江省', '2013', '7.91', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('231', '浙江省', '2012', '10.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('232', '浙江省', '2011', '13.45', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('233', '浙江省', '2010', '13.41', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('234', '浙江省', '2009', '13.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('235', '浙江省', '2008', '15.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('236', '浙江省', '2007', '15.31', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('237', '浙江省', '2006', '18.25', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('238', '浙江省', '2005', '17.91', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('239', '浙江省', '2004', '18.77', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('240', '浙江省', '2003', '17.63', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('241', '浙江省', '2002', '18.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('242', '浙江省', '2001', '27.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('243', '浙江省', '2000', '26.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('244', '安徽省', '2023', '22.66', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('245', '安徽省', '2022', '30.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('246', '安徽省', '2021', '34.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('247', '安徽省', '2020', '51.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('248', '安徽省', '2019', '60.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('249', '安徽省', '2018', '86.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('250', '安徽省', '2017', '88.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('251', '安徽省', '2016', '110.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('252', '安徽省', '2015', '232.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('253', '安徽省', '2014', '265.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('254', '安徽省', '2013', '285.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('255', '安徽省', '2012', '304.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('256', '安徽省', '2011', '350.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('257', '安徽省', '2010', '344.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('258', '安徽省', '2009', '327.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('259', '安徽省', '2008', '381.41', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('260', '安徽省', '2007', '376.15', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('261', '安徽省', '2006', '360.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('262', '安徽省', '2005', '375.73', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('263', '安徽省', '2004', '398.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('264', '安徽省', '2003', '390.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('265', '安徽省', '2002', '321.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('266', '安徽省', '2001', '363.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('267', '安徽省', '2000', '308.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('268', '福建省', '2022', '0.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('269', '福建省', '2021', '0.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('270', '福建省', '2020', '0.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('271', '福建省', '2019', '0.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('272', '福建省', '2018', '0.09', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('273', '福建省', '2016', '0.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('274', '福建省', '2015', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('275', '福建省', '2014', '0.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('276', '福建省', '2013', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('277', '福建省', '2012', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('278', '福建省', '2011', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('279', '福建省', '2010', '0.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('280', '福建省', '2009', '0.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('281', '福建省', '2008', '0.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('282', '福建省', '2007', '0.79', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('283', '福建省', '2006', '0.72', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('284', '福建省', '2005', '0.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('285', '福建省', '2004', '0.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('286', '福建省', '2003', '0.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('287', '福建省', '2002', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('288', '福建省', '2001', '0.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('289', '福建省', '2000', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('290', '江西省', '2023', '19.38', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('291', '江西省', '2022', '19.72', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('292', '江西省', '2021', '11.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('293', '江西省', '2020', '35.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('294', '江西省', '2019', '42.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('295', '江西省', '2018', '46.69', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('296', '江西省', '2017', '69.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('297', '江西省', '2016', '67.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('298', '江西省', '2015', '81.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('299', '江西省', '2014', '84.92', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('300', '江西省', '2013', '84.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('301', '江西省', '2012', '85.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('302', '江西省', '2011', '81.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('303', '江西省', '2010', '79.74', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('304', '江西省', '2009', '75.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('305', '江西省', '2008', '66.56', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('306', '江西省', '2007', '78.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('307', '江西省', '2006', '78.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('308', '江西省', '2005', '63.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('309', '江西省', '2004', '62.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('310', '江西省', '2003', '65.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('311', '江西省', '2002', '55.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('312', '江西省', '2001', '70.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('313', '江西省', '2000', '69.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('314', '山东省', '2023', '96.48', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('315', '山东省', '2022', '113.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('316', '山东省', '2021', '110.18', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('317', '山东省', '2020', '142.88', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('318', '山东省', '2019', '169.28', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('319', '山东省', '2018', '183.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('320', '山东省', '2017', '174.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('321', '山东省', '2016', '279.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('322', '山东省', '2015', '451.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('323', '山东省', '2014', '495.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('324', '山东省', '2013', '551.68', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('325', '山东省', '2012', '562.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('326', '山东省', '2011', '601.94', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('327', '山东省', '2010', '633.71', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('328', '山东省', '2009', '756.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('329', '山东省', '2008', '792.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('330', '山东省', '2007', '801.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('331', '山东省', '2006', '890.17', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('332', '山东省', '2005', '846.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('333', '山东省', '2004', '1059.21', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('334', '山东省', '2003', '881.69', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('335', '山东省', '2002', '664.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('336', '山东省', '2001', '735.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('337', '山东省', '2000', '568.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('338', '河南省', '2023', '6.12', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('339', '河南省', '2022', '10.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('340', '河南省', '2021', '11.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('341', '河南省', '2020', '16.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('342', '河南省', '2019', '33.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('343', '河南省', '2018', '36.68', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('344', '河南省', '2017', '40.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('345', '河南省', '2016', '50.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('346', '河南省', '2015', '64.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('347', '河南省', '2014', '88.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('348', '河南省', '2013', '114.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('349', '河南省', '2012', '169.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('350', '河南省', '2011', '280.57', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('351', '河南省', '2010', '354.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('352', '河南省', '2009', '436.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('353', '河南省', '2008', '527.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('354', '河南省', '2007', '653.16', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('355', '河南省', '2006', '748.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('356', '河南省', '2005', '781.57', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('357', '河南省', '2004', '951.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('358', '河南省', '2003', '926.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('359', '河南省', '2002', '793.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('360', '河南省', '2001', '858.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('361', '河南省', '2000', '779.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('362', '湖北省', '2023', '103.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('363', '湖北省', '2022', '115.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('364', '湖北省', '2021', '120.71', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('365', '湖北省', '2020', '129.73', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('366', '湖北省', '2019', '162.83', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('367', '湖北省', '2018', '159.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('368', '湖北省', '2017', '204.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('369', '湖北省', '2016', '204.96', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('370', '湖北省', '2015', '264.74', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('371', '湖北省', '2014', '344.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('372', '湖北省', '2013', '415.59', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('373', '湖北省', '2012', '472.87', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('374', '湖北省', '2011', '488.66', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('375', '湖北省', '2010', '480.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('376', '湖北省', '2009', '460.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('377', '湖北省', '2008', '543.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('378', '湖北省', '2007', '514.22', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('379', '湖北省', '2006', '496.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('380', '湖北省', '2005', '390.31', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('381', '湖北省', '2004', '408.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('382', '湖北省', '2003', '355.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('383', '湖北省', '2002', '293.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('384', '湖北省', '2001', '346.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('385', '湖北省', '2000', '318.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('386', '湖南省', '2023', '55.89', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('387', '湖南省', '2022', '64.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('388', '湖南省', '2021', '60.16', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('389', '湖南省', '2020', '59.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('390', '湖南省', '2019', '63.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('391', '湖南省', '2018', '63.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('392', '湖南省', '2017', '95.67', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('393', '湖南省', '2016', '106.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('394', '湖南省', '2015', '103.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('395', '湖南省', '2014', '130.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('396', '湖南省', '2013', '159.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('397', '湖南省', '2012', '172.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('398', '湖南省', '2011', '192.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('399', '湖南省', '2010', '175.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('400', '湖南省', '2009', '152.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('401', '湖南省', '2008', '183.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('402', '湖南省', '2007', '172.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('403', '湖南省', '2006', '158.58', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('404', '湖南省', '2005', '150.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('405', '湖南省', '2004', '167.72', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('406', '湖南省', '2003', '138.99', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('407', '湖南省', '2002', '129.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('408', '湖南省', '2001', '149.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('409', '湖南省', '2000', '146.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('410', '广东省', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('411', '广东省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('412', '广东省', '2016', '0.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('413', '广东省', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('414', '广东省', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('415', '广东省', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('416', '广东省', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('417', '广东省', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('418', '广东省', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('419', '广东省', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('420', '广东省', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('421', '广东省', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('422', '广东省', '2005', '0.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('423', '广西壮族自治区', '2023', '0.84', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('424', '广西壮族自治区', '2022', '1.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('425', '广西壮族自治区', '2021', '1.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('426', '广西壮族自治区', '2020', '1.12', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('427', '广西壮族自治区', '2019', '1.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('428', '广西壮族自治区', '2018', '1.21', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('429', '广西壮族自治区', '2017', '1.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('430', '广西壮族自治区', '2016', '1.54', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('431', '广西壮族自治区', '2015', '2.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('432', '广西壮族自治区', '2014', '2.31', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('433', '广西壮族自治区', '2013', '2.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('434', '广西壮族自治区', '2012', '2.19', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('435', '广西壮族自治区', '2011', '2.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('436', '广西壮族自治区', '2010', '2.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('437', '广西壮族自治区', '2009', '2.24', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('438', '广西壮族自治区', '2008', '2.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('439', '广西壮族自治区', '2007', '2.46', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('440', '广西壮族自治区', '2006', '2.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('441', '广西壮族自治区', '2005', '1.66', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('442', '广西壮族自治区', '2004', '1.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('443', '广西壮族自治区', '2003', '1.42', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('444', '广西壮族自治区', '2002', '1.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('445', '广西壮族自治区', '2001', '1.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('446', '广西壮族自治区', '2000', '1.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('447', '海南省', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('448', '海南省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('449', '海南省', '2016', '0.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('450', '海南省', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('451', '海南省', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('452', '海南省', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('453', '海南省', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('454', '海南省', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('455', '海南省', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('456', '海南省', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('457', '海南省', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('458', '海南省', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('459', '海南省', '2005', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('460', '重庆市', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('461', '重庆市', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('462', '重庆市', '2016', '0.05', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('463', '重庆市', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('464', '重庆市', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('465', '重庆市', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('466', '重庆市', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('467', '重庆市', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('468', '重庆市', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('469', '重庆市', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('470', '重庆市', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('471', '重庆市', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('472', '重庆市', '2005', '0.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('473', '重庆市', '2004', '0.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('474', '重庆市', '2003', '0.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('475', '重庆市', '2002', '0.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('476', '重庆市', '2001', '0.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('477', '重庆市', '2000', '0.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('478', '四川省', '2023', '0.15', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('479', '四川省', '2022', '0.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('480', '四川省', '2021', '2.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('481', '四川省', '2020', '2.28', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('482', '四川省', '2019', '2.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('483', '四川省', '2018', '4.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('484', '四川省', '2017', '4.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('485', '四川省', '2016', '4.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('486', '四川省', '2015', '4.93', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('487', '四川省', '2014', '6.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('488', '四川省', '2013', '6.65', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('489', '四川省', '2012', '7.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('490', '四川省', '2011', '7.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('491', '四川省', '2010', '8.18', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('492', '四川省', '2009', '8.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('493', '四川省', '2008', '9.45', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('494', '四川省', '2007', '10.84', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('495', '四川省', '2006', '24.46', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('496', '四川省', '2005', '27.84', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('497', '四川省', '2004', '35.82', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('498', '四川省', '2003', '31.21', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('499', '四川省', '2002', '33.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('500', '四川省', '2001', '66.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('501', '四川省', '2000', '70.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('502', '贵州省', '2023', '0.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('503', '贵州省', '2022', '0.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('504', '贵州省', '2021', '0.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('505', '贵州省', '2020', '0.37', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('506', '贵州省', '2019', '0.44', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('507', '贵州省', '2018', '0.65', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('508', '贵州省', '2017', '1.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('509', '贵州省', '2016', '1.84', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('510', '贵州省', '2015', '1.85', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('511', '贵州省', '2014', '1.82', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('512', '贵州省', '2013', '1.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('513', '贵州省', '2012', '1.86', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('514', '贵州省', '2011', '1.73', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('515', '贵州省', '2010', '1.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('516', '贵州省', '2009', '1.59', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('517', '贵州省', '2008', '1.45', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('518', '贵州省', '2007', '1.46', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('519', '贵州省', '2006', '1.34', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('520', '贵州省', '2005', '1.43', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('521', '贵州省', '2004', '1.56', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('522', '贵州省', '2003', '1.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('523', '贵州省', '2002', '1.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('524', '贵州省', '2001', '2.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('525', '贵州省', '2000', '2.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('526', '云南省', '2020', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('527', '云南省', '2019', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('528', '云南省', '2018', '0.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('529', '云南省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('530', '云南省', '2016', '0.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('531', '云南省', '2015', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('532', '云南省', '2014', '0.13', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('533', '云南省', '2013', '0.19', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('534', '云南省', '2012', '0.29', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('535', '云南省', '2011', '0.27', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('536', '云南省', '2010', '0.32', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('537', '云南省', '2009', '0.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('538', '云南省', '2008', '0.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('539', '云南省', '2007', '0.41', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('540', '云南省', '2006', '0.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('541', '云南省', '2005', '0.56', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('542', '云南省', '2004', '0.64', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('543', '云南省', '2003', '0.83', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('544', '云南省', '2002', '1.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('545', '云南省', '2001', '1.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('546', '云南省', '2000', '1.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('547', '西藏自治区', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('548', '西藏自治区', '2016', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('549', '西藏自治区', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('550', '西藏自治区', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('551', '西藏自治区', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('552', '西藏自治区', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('553', '西藏自治区', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('554', '西藏自治区', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('555', '西藏自治区', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('556', '西藏自治区', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('557', '西藏自治区', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('558', '西藏自治区', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('559', '陕西省', '2023', '0.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('560', '陕西省', '2022', '0.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('561', '陕西省', '2021', '0.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('562', '陕西省', '2020', '0.72', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('563', '陕西省', '2019', '5.46', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('564', '陕西省', '2018', '6.92', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('565', '陕西省', '2017', '8.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('566', '陕西省', '2016', '12.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('567', '陕西省', '2015', '14.66', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('568', '陕西省', '2014', '17.79', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('569', '陕西省', '2013', '22.55', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('570', '陕西省', '2012', '31.81', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('571', '陕西省', '2011', '35.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('572', '陕西省', '2010', '38.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('573', '陕西省', '2009', '50.19', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('574', '陕西省', '2008', '74.08', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('575', '陕西省', '2007', '83.14', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('576', '陕西省', '2006', '85.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('577', '陕西省', '2005', '70.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('578', '陕西省', '2004', '80.09', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('579', '陕西省', '2003', '65.06', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('580', '陕西省', '2002', '42.80', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('581', '陕西省', '2001', '50.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('582', '陕西省', '2000', '30.10', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('583', '甘肃省', '2023', '20.41', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('584', '甘肃省', '2022', '20.31', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('585', '甘肃省', '2021', '16.23', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('586', '甘肃省', '2020', '16.59', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('587', '甘肃省', '2019', '19.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('588', '甘肃省', '2018', '21.53', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('589', '甘肃省', '2017', '19.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('590', '甘肃省', '2016', '15.22', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('591', '甘肃省', '2015', '29.11', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('592', '甘肃省', '2014', '42.55', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('593', '甘肃省', '2013', '44.86', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('594', '甘肃省', '2012', '52.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('595', '甘肃省', '2011', '51.35', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('596', '甘肃省', '2010', '50.64', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('597', '甘肃省', '2009', '58.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('598', '甘肃省', '2008', '74.77', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('599', '甘肃省', '2007', '80.36', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('600', '甘肃省', '2006', '76.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('601', '甘肃省', '2005', '63.95', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('602', '甘肃省', '2004', '68.33', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('603', '甘肃省', '2003', '52.16', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('604', '甘肃省', '2002', '40.40', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('605', '甘肃省', '2001', '56.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('606', '甘肃省', '2000', '34.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('607', '青海省', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('608', '青海省', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('609', '青海省', '2016', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('610', '青海省', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('611', '青海省', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('612', '青海省', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('613', '青海省', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('614', '青海省', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('615', '青海省', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('616', '青海省', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('617', '青海省', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('618', '青海省', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('619', '青海省', '2006', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('620', '青海省', '2005', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('621', '宁夏回族自治区', '2018', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('622', '宁夏回族自治区', '2017', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('623', '宁夏回族自治区', '2016', '0.04', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('624', '宁夏回族自治区', '2015', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('625', '宁夏回族自治区', '2014', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('626', '宁夏回族自治区', '2013', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('627', '宁夏回族自治区', '2012', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('628', '宁夏回族自治区', '2011', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('629', '宁夏回族自治区', '2010', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('630', '宁夏回族自治区', '2009', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('631', '宁夏回族自治区', '2008', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('632', '宁夏回族自治区', '2007', '0.00', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('633', '宁夏回族自治区', '2006', '0.03', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('634', '宁夏回族自治区', '2005', '0.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('635', '宁夏回族自治区', '2004', '0.01', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('636', '宁夏回族自治区', '2003', '0.20', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('637', '宁夏回族自治区', '2000', '0.02', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('638', '新疆维吾尔自治区', '2023', '2369.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('639', '新疆维吾尔自治区', '2022', '2496.89', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('640', '新疆维吾尔自治区', '2021', '2506.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('641', '新疆维吾尔自治区', '2020', '2501.92', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('642', '新疆维吾尔自治区', '2019', '2540.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('643', '新疆维吾尔自治区', '2018', '2491.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('644', '新疆维吾尔自治区', '2017', '2217.47', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('645', '新疆维吾尔自治区', '2016', '2059.60', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('646', '新疆维吾尔自治区', '2015', '2144.26', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('647', '新疆维吾尔自治区', '2014', '2170.62', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('648', '新疆维吾尔自治区', '2013', '1884.42', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('649', '新疆维吾尔自治区', '2012', '1862.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('650', '新疆维吾尔自治区', '2011', '1749.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('651', '新疆维吾尔自治区', '2010', '1539.71', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('652', '新疆维吾尔自治区', '2009', '1338.39', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('653', '新疆维吾尔自治区', '2008', '1635.89', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('654', '新疆维吾尔自治区', '2007', '1592.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('655', '新疆维吾尔自治区', '2006', '1684.07', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('656', '新疆维吾尔自治区', '2005', '1160.51', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('657', '新疆维吾尔自治区', '2004', '1136.86', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('658', '新疆维吾尔自治区', '2003', '1055.50', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('659', '新疆维吾尔自治区', '2002', '943.90', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('660', '新疆维吾尔自治区', '2001', '1129.70', '2025-06-30 19:28:03', '2025-06-30 19:28:03');
INSERT INTO `cotton_planting_area` VALUES ('661', '新疆维吾尔自治区', '2000', '1012.30', '2025-06-30 19:28:03', '2025-06-30 19:28:03');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for millet_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `millet_planting_area`;
CREATE TABLE `millet_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='谷子播种面积统计表(分省年度数据)';

-- ----------------------------
-- Records of millet_planting_area
-- ----------------------------
INSERT INTO `millet_planting_area` VALUES ('1', '北京市', '2022', '0.98', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('2', '北京市', '2021', '1.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('3', '北京市', '2020', '1.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('4', '北京市', '2019', '1.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('5', '北京市', '2018', '1.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('6', '北京市', '2017', '1.45', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('7', '北京市', '2016', '1.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('8', '北京市', '2015', '1.36', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('9', '北京市', '2014', '1.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('10', '北京市', '2013', '1.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('11', '北京市', '2012', '1.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('12', '北京市', '2011', '1.48', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('13', '北京市', '2010', '1.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('14', '北京市', '2009', '1.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('15', '北京市', '2008', '1.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('16', '北京市', '2007', '1.61', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('17', '北京市', '2006', '1.83', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('18', '北京市', '2005', '1.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('19', '北京市', '2004', '1.17', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('20', '北京市', '2003', '2.63', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('21', '北京市', '2002', '3.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('22', '北京市', '2001', '3.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('23', '北京市', '2000', '2.79', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('24', '天津市', '2022', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('25', '天津市', '2021', '0.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('26', '天津市', '2020', '0.86', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('27', '天津市', '2019', '0.44', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('28', '天津市', '2018', '0.27', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('29', '天津市', '2017', '1.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('30', '天津市', '2016', '0.81', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('31', '天津市', '2015', '2.44', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('32', '天津市', '2014', '0.91', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('33', '天津市', '2013', '0.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('34', '天津市', '2012', '0.92', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('35', '天津市', '2011', '0.12', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('36', '天津市', '2010', '0.08', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('37', '天津市', '2009', '0.08', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('38', '天津市', '2008', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('39', '天津市', '2007', '0.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('40', '天津市', '2006', '0.08', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('41', '天津市', '2005', '0.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('42', '天津市', '2004', '0.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('43', '天津市', '2003', '0.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('44', '天津市', '2002', '0.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('45', '天津市', '2001', '0.72', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('46', '天津市', '2000', '0.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('47', '河北省', '2022', '114.46', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('48', '河北省', '2021', '124.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('49', '河北省', '2020', '129.48', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('50', '河北省', '2019', '115.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('51', '河北省', '2018', '118.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('52', '河北省', '2017', '127.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('53', '河北省', '2016', '130.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('54', '河北省', '2015', '158.43', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('55', '河北省', '2014', '157.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('56', '河北省', '2013', '153.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('57', '河北省', '2012', '159.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('58', '河北省', '2011', '171.46', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('59', '河北省', '2010', '161.56', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('60', '河北省', '2009', '149.87', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('61', '河北省', '2008', '176.38', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('62', '河北省', '2007', '177.83', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('63', '河北省', '2006', '194.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('64', '河北省', '2005', '194.76', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('65', '河北省', '2004', '222.72', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('66', '河北省', '2003', '226.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('67', '河北省', '2002', '262.26', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('68', '河北省', '2001', '273.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('69', '河北省', '2000', '309.64', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('70', '山西省', '2022', '219.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('71', '山西省', '2021', '221.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('72', '山西省', '2020', '220.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('73', '山西省', '2019', '211.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('74', '山西省', '2018', '197.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('75', '山西省', '2017', '199.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('76', '山西省', '2016', '195.87', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('77', '山西省', '2015', '203.56', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('78', '山西省', '2014', '196.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('79', '山西省', '2013', '192.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('80', '山西省', '2012', '192.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('81', '山西省', '2011', '193.84', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('82', '山西省', '2010', '195.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('83', '山西省', '2009', '192.53', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('84', '山西省', '2008', '219.67', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('85', '山西省', '2007', '228.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('86', '山西省', '2006', '192.93', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('87', '山西省', '2005', '216.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('88', '山西省', '2004', '223.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('89', '山西省', '2003', '234.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('90', '山西省', '2002', '249.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('91', '山西省', '2001', '218.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('92', '山西省', '2000', '280.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('93', '内蒙古自治区', '2022', '253.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('94', '内蒙古自治区', '2021', '286.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('95', '内蒙古自治区', '2020', '253.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('96', '内蒙古自治区', '2019', '208.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('97', '内蒙古自治区', '2018', '181.93', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('98', '内蒙古自治区', '2017', '234.44', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('99', '内蒙古自治区', '2016', '230.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('100', '内蒙古自治区', '2015', '214.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('101', '内蒙古自治区', '2014', '185.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('102', '内蒙古自治区', '2013', '137.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('103', '内蒙古自治区', '2012', '160.64', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('104', '内蒙古自治区', '2011', '146.77', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('105', '内蒙古自治区', '2010', '182.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('106', '内蒙古自治区', '2009', '159.77', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('107', '内蒙古自治区', '2008', '146.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('108', '内蒙古自治区', '2007', '135.61', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('109', '内蒙古自治区', '2006', '158.85', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('110', '内蒙古自治区', '2005', '124.52', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('111', '内蒙古自治区', '2004', '126.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('112', '内蒙古自治区', '2003', '141.98', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('113', '内蒙古自治区', '2002', '177.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('114', '内蒙古自治区', '2001', '176.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('115', '内蒙古自治区', '2000', '164.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('116', '辽宁省', '2022', '57.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('117', '辽宁省', '2021', '68.44', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('118', '辽宁省', '2020', '66.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('119', '辽宁省', '2019', '62.35', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('120', '辽宁省', '2018', '55.34', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('121', '辽宁省', '2017', '54.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('122', '辽宁省', '2016', '38.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('123', '辽宁省', '2015', '38.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('124', '辽宁省', '2014', '40.82', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('125', '辽宁省', '2013', '36.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('126', '辽宁省', '2012', '38.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('127', '辽宁省', '2011', '48.93', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('128', '辽宁省', '2010', '62.35', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('129', '辽宁省', '2009', '74.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('130', '辽宁省', '2008', '68.57', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('131', '辽宁省', '2007', '78.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('132', '辽宁省', '2006', '82.84', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('133', '辽宁省', '2005', '90.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('134', '辽宁省', '2004', '103.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('135', '辽宁省', '2003', '113.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('136', '辽宁省', '2002', '107.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('137', '辽宁省', '2001', '149.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('138', '辽宁省', '2000', '86.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('139', '吉林省', '2022', '22.79', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('140', '吉林省', '2021', '44.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('141', '吉林省', '2020', '48.28', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('142', '吉林省', '2019', '46.82', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('143', '吉林省', '2018', '29.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('144', '吉林省', '2017', '46.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('145', '吉林省', '2016', '43.74', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('146', '吉林省', '2015', '38.16', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('147', '吉林省', '2014', '35.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('148', '吉林省', '2013', '30.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('149', '吉林省', '2012', '34.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('150', '吉林省', '2011', '32.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('151', '吉林省', '2010', '27.19', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('152', '吉林省', '2009', '24.92', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('153', '吉林省', '2008', '26.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('154', '吉林省', '2007', '33.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('155', '吉林省', '2006', '13.36', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('156', '吉林省', '2005', '12.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('157', '吉林省', '2004', '10.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('158', '吉林省', '2003', '22.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('159', '吉林省', '2002', '17.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('160', '吉林省', '2001', '7.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('161', '吉林省', '2000', '26.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('162', '黑龙江省', '2022', '1.62', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('163', '黑龙江省', '2021', '7.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('164', '黑龙江省', '2020', '8.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('165', '黑龙江省', '2019', '11.45', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('166', '黑龙江省', '2018', '21.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('167', '黑龙江省', '2017', '18.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('168', '黑龙江省', '2016', '24.19', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('169', '黑龙江省', '2015', '7.38', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('170', '黑龙江省', '2014', '7.69', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('171', '黑龙江省', '2013', '5.95', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('172', '黑龙江省', '2012', '7.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('173', '黑龙江省', '2011', '12.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('174', '黑龙江省', '2010', '15.85', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('175', '黑龙江省', '2009', '19.51', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('176', '黑龙江省', '2008', '23.72', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('177', '黑龙江省', '2007', '10.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('178', '黑龙江省', '2006', '34.49', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('179', '黑龙江省', '2005', '38.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('180', '黑龙江省', '2004', '43.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('181', '黑龙江省', '2003', '66.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('182', '黑龙江省', '2002', '79.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('183', '黑龙江省', '2001', '67.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('184', '黑龙江省', '2000', '81.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('185', '上海市', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('186', '上海市', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('187', '上海市', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('188', '上海市', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('189', '上海市', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('190', '上海市', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('191', '上海市', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('192', '上海市', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('193', '上海市', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('194', '上海市', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('195', '上海市', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('196', '江苏省', '2022', '0.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('197', '江苏省', '2021', '0.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('198', '江苏省', '2020', '0.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('199', '江苏省', '2019', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('200', '江苏省', '2018', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('201', '江苏省', '2017', '0.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('202', '江苏省', '2016', '0.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('203', '江苏省', '2015', '0.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('204', '江苏省', '2014', '0.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('205', '江苏省', '2013', '0.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('206', '江苏省', '2012', '2.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('207', '江苏省', '2011', '0.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('208', '江苏省', '2010', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('209', '江苏省', '2009', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('210', '江苏省', '2008', '0.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('211', '江苏省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('212', '江苏省', '2006', '0.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('213', '江苏省', '2005', '0.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('214', '江苏省', '2004', '0.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('215', '江苏省', '2003', '0.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('216', '江苏省', '2000', '0.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('217', '浙江省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('218', '浙江省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('219', '浙江省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('220', '浙江省', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('221', '浙江省', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('222', '浙江省', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('223', '浙江省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('224', '浙江省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('225', '浙江省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('226', '浙江省', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('227', '浙江省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('228', '安徽省', '2022', '2.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('229', '安徽省', '2021', '1.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('230', '安徽省', '2020', '1.39', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('231', '安徽省', '2019', '1.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('232', '安徽省', '2018', '6.48', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('233', '安徽省', '2017', '8.79', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('234', '安徽省', '2016', '22.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('235', '安徽省', '2015', '22.28', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('236', '安徽省', '2014', '18.82', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('237', '安徽省', '2013', '19.27', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('238', '安徽省', '2012', '16.45', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('239', '安徽省', '2011', '19.53', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('240', '安徽省', '2010', '11.39', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('241', '安徽省', '2009', '11.43', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('242', '安徽省', '2008', '15.92', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('243', '安徽省', '2007', '1.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('244', '安徽省', '2006', '0.08', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('245', '安徽省', '2005', '0.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('246', '安徽省', '2004', '0.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('247', '安徽省', '2003', '0.82', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('248', '安徽省', '2002', '0.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('249', '安徽省', '2001', '0.27', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('250', '安徽省', '2000', '0.25', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('251', '福建省', '2018', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('252', '福建省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('253', '福建省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('254', '福建省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('255', '福建省', '2014', '0.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('256', '福建省', '2013', '0.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('257', '福建省', '2012', '0.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('258', '福建省', '2011', '0.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('259', '福建省', '2010', '0.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('260', '福建省', '2009', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('261', '福建省', '2008', '0.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('262', '福建省', '2007', '0.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('263', '福建省', '2006', '0.16', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('264', '福建省', '2005', '0.27', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('265', '福建省', '2004', '0.27', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('266', '福建省', '2003', '0.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('267', '福建省', '2002', '0.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('268', '福建省', '2001', '0.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('269', '福建省', '2000', '0.70', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('270', '江西省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('271', '江西省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('272', '江西省', '2015', '0.34', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('273', '江西省', '2014', '0.34', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('274', '江西省', '2013', '0.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('275', '江西省', '2012', '0.47', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('276', '江西省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('277', '江西省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('278', '江西省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('279', '江西省', '2008', '0.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('280', '江西省', '2007', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('281', '江西省', '2006', '0.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('282', '江西省', '2005', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('283', '江西省', '2004', '0.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('284', '江西省', '2003', '0.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('285', '江西省', '2002', '0.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('286', '江西省', '2001', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('287', '江西省', '2000', '0.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('288', '山东省', '2022', '31.81', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('289', '山东省', '2021', '32.73', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('290', '山东省', '2020', '33.16', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('291', '山东省', '2019', '34.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('292', '山东省', '2018', '31.43', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('293', '山东省', '2017', '30.61', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('294', '山东省', '2016', '27.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('295', '山东省', '2015', '24.63', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('296', '山东省', '2014', '26.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('297', '山东省', '2013', '24.97', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('298', '山东省', '2012', '24.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('299', '山东省', '2011', '21.99', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('300', '山东省', '2010', '20.77', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('301', '山东省', '2009', '14.71', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('302', '山东省', '2008', '15.17', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('303', '山东省', '2007', '15.39', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('304', '山东省', '2006', '15.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('305', '山东省', '2005', '28.71', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('306', '山东省', '2004', '31.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('307', '山东省', '2003', '39.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('308', '山东省', '2002', '43.87', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('309', '山东省', '2001', '47.98', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('310', '山东省', '2000', '54.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('311', '河南省', '2022', '25.94', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('312', '河南省', '2021', '27.97', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('313', '河南省', '2020', '37.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('314', '河南省', '2019', '36.62', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('315', '河南省', '2018', '36.36', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('316', '河南省', '2017', '36.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('317', '河南省', '2016', '38.67', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('318', '河南省', '2015', '33.83', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('319', '河南省', '2014', '34.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('320', '河南省', '2013', '34.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('321', '河南省', '2012', '34.14', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('322', '河南省', '2011', '34.82', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('323', '河南省', '2010', '35.52', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('324', '河南省', '2009', '37.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('325', '河南省', '2008', '34.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('326', '河南省', '2007', '33.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('327', '河南省', '2006', '34.85', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('328', '河南省', '2005', '41.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('329', '河南省', '2004', '39.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('330', '河南省', '2003', '58.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('331', '河南省', '2002', '58.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('332', '河南省', '2001', '65.89', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('333', '河南省', '2000', '80.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('334', '湖北省', '2022', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('335', '湖北省', '2021', '0.12', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('336', '湖北省', '2020', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('337', '湖北省', '2019', '0.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('338', '湖北省', '2018', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('339', '湖北省', '2017', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('340', '湖北省', '2016', '0.12', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('341', '湖北省', '2015', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('342', '湖北省', '2014', '0.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('343', '湖北省', '2013', '0.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('344', '湖北省', '2012', '0.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('345', '湖北省', '2011', '0.12', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('346', '湖北省', '2010', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('347', '湖北省', '2009', '0.15', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('348', '湖北省', '2008', '0.08', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('349', '湖北省', '2007', '0.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('350', '湖北省', '2006', '0.28', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('351', '湖北省', '2005', '0.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('352', '湖北省', '2004', '0.92', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('353', '湖北省', '2003', '2.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('354', '湖北省', '2002', '1.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('355', '湖北省', '2001', '1.95', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('356', '湖北省', '2000', '4.23', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('357', '湖南省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('358', '湖南省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('359', '湖南省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('360', '湖南省', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('361', '湖南省', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('362', '湖南省', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('363', '湖南省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('364', '湖南省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('365', '湖南省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('366', '湖南省', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('367', '湖南省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('368', '广东省', '2022', '0.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('369', '广东省', '2021', '0.09', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('370', '广东省', '2020', '0.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('371', '广东省', '2019', '0.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('372', '广东省', '2018', '0.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('373', '广东省', '2017', '0.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('374', '广东省', '2016', '0.17', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('375', '广东省', '2015', '0.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('376', '广东省', '2014', '0.25', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('377', '广东省', '2013', '0.28', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('378', '广东省', '2012', '0.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('379', '广东省', '2011', '0.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('380', '广东省', '2010', '0.23', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('381', '广东省', '2009', '0.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('382', '广东省', '2008', '0.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('383', '广东省', '2007', '0.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('384', '广东省', '2006', '0.43', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('385', '广东省', '2005', '0.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('386', '广东省', '2004', '0.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('387', '广东省', '2003', '0.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('388', '广东省', '2002', '0.53', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('389', '广东省', '2001', '0.66', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('390', '广东省', '2000', '1.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('391', '广西壮族自治区', '2022', '3.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('392', '广西壮族自治区', '2021', '3.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('393', '广西壮族自治区', '2020', '3.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('394', '广西壮族自治区', '2019', '4.68', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('395', '广西壮族自治区', '2018', '4.64', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('396', '广西壮族自治区', '2017', '5.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('397', '广西壮族自治区', '2016', '4.73', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('398', '广西壮族自治区', '2015', '4.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('399', '广西壮族自治区', '2014', '3.35', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('400', '广西壮族自治区', '2013', '2.78', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('401', '广西壮族自治区', '2012', '2.96', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('402', '广西壮族自治区', '2011', '3.96', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('403', '广西壮族自治区', '2010', '3.68', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('404', '广西壮族自治区', '2009', '3.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('405', '广西壮族自治区', '2008', '2.86', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('406', '广西壮族自治区', '2007', '2.69', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('407', '广西壮族自治区', '2006', '2.53', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('408', '广西壮族自治区', '2005', '2.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('409', '广西壮族自治区', '2004', '2.70', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('410', '广西壮族自治区', '2003', '2.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('411', '广西壮族自治区', '2002', '3.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('412', '广西壮族自治区', '2001', '3.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('413', '广西壮族自治区', '2000', '4.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('414', '海南省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('415', '海南省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('416', '海南省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('417', '海南省', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('418', '海南省', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('419', '海南省', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('420', '海南省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('421', '海南省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('422', '海南省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('423', '海南省', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('424', '海南省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('425', '重庆市', '2018', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('426', '重庆市', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('427', '重庆市', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('428', '重庆市', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('429', '重庆市', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('430', '重庆市', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('431', '重庆市', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('432', '重庆市', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('433', '重庆市', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('434', '重庆市', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('435', '重庆市', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('436', '重庆市', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('437', '重庆市', '2006', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('438', '四川省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('439', '四川省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('440', '四川省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('441', '四川省', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('442', '四川省', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('443', '四川省', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('444', '四川省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('445', '四川省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('446', '四川省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('447', '四川省', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('448', '四川省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('449', '贵州省', '2022', '2.50', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('450', '贵州省', '2021', '3.56', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('451', '贵州省', '2020', '4.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('452', '贵州省', '2019', '3.97', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('453', '贵州省', '2018', '3.78', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('454', '贵州省', '2017', '4.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('455', '贵州省', '2016', '4.56', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('456', '贵州省', '2015', '0.89', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('457', '贵州省', '2014', '0.89', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('458', '贵州省', '2013', '0.90', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('459', '贵州省', '2012', '0.86', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('460', '贵州省', '2011', '1.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('461', '贵州省', '2010', '1.13', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('462', '贵州省', '2009', '1.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('463', '贵州省', '2008', '1.68', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('464', '贵州省', '2007', '2.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('465', '贵州省', '2006', '2.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('466', '贵州省', '2005', '2.46', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('467', '贵州省', '2004', '2.74', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('468', '贵州省', '2003', '3.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('469', '贵州省', '2002', '3.30', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('470', '贵州省', '2001', '4.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('471', '贵州省', '2000', '4.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('472', '云南省', '2022', '0.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('473', '云南省', '2021', '0.88', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('474', '云南省', '2020', '0.44', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('475', '云南省', '2019', '0.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('476', '云南省', '2018', '0.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('477', '云南省', '2017', '0.42', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('478', '云南省', '2016', '0.43', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('479', '云南省', '2015', '0.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('480', '云南省', '2014', '0.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('481', '云南省', '2013', '0.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('482', '云南省', '2012', '0.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('483', '云南省', '2011', '0.28', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('484', '云南省', '2010', '0.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('485', '云南省', '2009', '0.25', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('486', '云南省', '2008', '0.24', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('487', '云南省', '2007', '0.19', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('488', '云南省', '2006', '0.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('489', '云南省', '2005', '0.12', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('490', '云南省', '2004', '0.06', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('491', '云南省', '2003', '0.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('492', '云南省', '2002', '0.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('493', '云南省', '2001', '0.07', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('494', '云南省', '2000', '0.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('495', '西藏自治区', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('496', '西藏自治区', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('497', '西藏自治区', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('498', '西藏自治区', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('499', '西藏自治区', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('500', '西藏自治区', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('501', '西藏自治区', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('502', '西藏自治区', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('503', '西藏自治区', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('504', '西藏自治区', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('505', '西藏自治区', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('506', '陕西省', '2022', '70.52', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('507', '陕西省', '2021', '73.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('508', '陕西省', '2020', '67.73', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('509', '陕西省', '2019', '67.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('510', '陕西省', '2018', '68.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('511', '陕西省', '2017', '67.01', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('512', '陕西省', '2016', '65.72', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('513', '陕西省', '2015', '65.76', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('514', '陕西省', '2014', '63.17', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('515', '陕西省', '2013', '61.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('516', '陕西省', '2012', '63.98', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('517', '陕西省', '2011', '58.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('518', '陕西省', '2010', '74.65', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('519', '陕西省', '2009', '80.16', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('520', '陕西省', '2008', '76.55', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('521', '陕西省', '2007', '76.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('522', '陕西省', '2006', '77.70', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('523', '陕西省', '2005', '51.70', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('524', '陕西省', '2004', '62.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('525', '陕西省', '2003', '63.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('526', '陕西省', '2002', '78.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('527', '陕西省', '2001', '80.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('528', '陕西省', '2000', '90.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('529', '甘肃省', '2022', '9.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('530', '甘肃省', '2021', '12.02', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('531', '甘肃省', '2020', '12.69', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('532', '甘肃省', '2019', '11.83', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('533', '甘肃省', '2018', '10.31', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('534', '甘肃省', '2017', '9.72', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('535', '甘肃省', '2016', '9.96', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('536', '甘肃省', '2015', '10.65', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('537', '甘肃省', '2014', '9.64', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('538', '甘肃省', '2013', '10.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('539', '甘肃省', '2012', '10.29', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('540', '甘肃省', '2011', '11.51', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('541', '甘肃省', '2010', '11.32', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('542', '甘肃省', '2009', '17.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('543', '甘肃省', '2008', '18.92', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('544', '甘肃省', '2007', '26.20', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('545', '甘肃省', '2006', '31.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('546', '甘肃省', '2005', '32.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('547', '甘肃省', '2004', '33.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('548', '甘肃省', '2003', '33.79', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('549', '甘肃省', '2002', '34.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('550', '甘肃省', '2001', '36.25', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('551', '甘肃省', '2000', '43.59', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('552', '青海省', '2018', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('553', '青海省', '2017', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('554', '青海省', '2016', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('555', '青海省', '2015', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('556', '青海省', '2014', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('557', '青海省', '2013', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('558', '青海省', '2012', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('559', '青海省', '2011', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('560', '青海省', '2010', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('561', '青海省', '2009', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('562', '青海省', '2008', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('563', '青海省', '2007', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('564', '青海省', '2006', '0.00', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('565', '宁夏回族自治区', '2022', '20.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('566', '宁夏回族自治区', '2021', '18.16', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('567', '宁夏回族自治区', '2020', '15.91', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('568', '宁夏回族自治区', '2019', '10.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('569', '宁夏回族自治区', '2018', '9.53', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('570', '宁夏回族自治区', '2017', '14.67', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('571', '宁夏回族自治区', '2016', '15.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('572', '宁夏回族自治区', '2015', '8.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('573', '宁夏回族自治区', '2014', '7.84', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('574', '宁夏回族自治区', '2013', '7.03', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('575', '宁夏回族自治区', '2012', '7.41', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('576', '宁夏回族自治区', '2011', '7.91', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('577', '宁夏回族自治区', '2010', '6.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('578', '宁夏回族自治区', '2009', '5.47', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('579', '宁夏回族自治区', '2008', '4.40', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('580', '宁夏回族自治区', '2007', '12.71', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('581', '宁夏回族自治区', '2006', '12.76', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('582', '宁夏回族自治区', '2005', '8.59', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('583', '宁夏回族自治区', '2004', '9.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('584', '宁夏回族自治区', '2003', '11.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('585', '宁夏回族自治区', '2002', '16.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('586', '宁夏回族自治区', '2001', '7.60', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('587', '宁夏回族自治区', '2000', '11.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('588', '新疆维吾尔自治区', '2022', '3.62', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('589', '新疆维吾尔自治区', '2021', '2.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('590', '新疆维吾尔自治区', '2020', '0.54', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('591', '新疆维吾尔自治区', '2019', '1.33', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('592', '新疆维吾尔自治区', '2018', '1.35', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('593', '新疆维吾尔自治区', '2017', '1.80', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('594', '新疆维吾尔自治区', '2016', '3.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('595', '新疆维吾尔自治区', '2015', '6.75', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('596', '新疆维吾尔自治区', '2014', '1.10', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('597', '新疆维吾尔自治区', '2013', '0.94', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('598', '新疆维吾尔自治区', '2012', '1.46', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('599', '新疆维吾尔自治区', '2011', '1.17', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('600', '新疆维吾尔自治区', '2010', '3.22', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('601', '新疆维吾尔自治区', '2009', '1.18', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('602', '新疆维吾尔自治区', '2008', '1.56', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('603', '新疆维吾尔自治区', '2007', '0.21', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('604', '新疆维吾尔自治区', '2006', '0.94', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('605', '新疆维吾尔自治区', '2005', '1.11', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('606', '新疆维吾尔自治区', '2004', '1.05', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('607', '新疆维吾尔自治区', '2003', '1.04', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('608', '新疆维吾尔自治区', '2002', '1.91', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('609', '新疆维吾尔自治区', '2001', '1.58', '2025-06-30 17:40:43', '2025-06-30 17:40:43');
INSERT INTO `millet_planting_area` VALUES ('610', '新疆维吾尔自治区', '2000', '1.37', '2025-06-30 17:40:43', '2025-06-30 17:40:43');

-- ----------------------------
-- Table structure for peanut_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `peanut_planting_area`;
CREATE TABLE `peanut_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='花生播种面积统计表(分省年度数据)';

-- ----------------------------
-- Records of peanut_planting_area
-- ----------------------------
INSERT INTO `peanut_planting_area` VALUES ('1', '北京市', '2023', '0.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('2', '北京市', '2022', '0.42', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('3', '北京市', '2021', '0.38', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('4', '北京市', '2020', '0.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('5', '北京市', '2019', '0.32', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('6', '北京市', '2018', '0.28', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('7', '北京市', '2017', '0.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('8', '北京市', '2016', '0.22', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('9', '北京市', '2015', '0.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('10', '北京市', '2014', '0.18', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('11', '北京市', '2013', '0.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('12', '北京市', '2012', '0.13', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('13', '北京市', '2011', '0.12', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('14', '北京市', '2010', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('15', '北京市', '2009', '0.09', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('16', '北京市', '2008', '0.08', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('17', '北京市', '2007', '0.07', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('18', '北京市', '2006', '0.06', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('19', '北京市', '2005', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('20', '北京市', '2004', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('21', '北京市', '2003', '0.04', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('22', '北京市', '2002', '0.04', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('23', '北京市', '2001', '0.03', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('24', '北京市', '2000', '0.03', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('25', '天津市', '2023', '2.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('26', '天津市', '2022', '2.08', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('27', '天津市', '2021', '1.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('28', '天津市', '2020', '1.82', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('29', '天津市', '2019', '1.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('30', '天津市', '2018', '1.68', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('31', '天津市', '2017', '1.62', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('32', '天津市', '2016', '1.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('33', '天津市', '2015', '1.48', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('34', '天津市', '2014', '1.42', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('35', '天津市', '2013', '1.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('36', '天津市', '2012', '1.28', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('37', '天津市', '2011', '1.22', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('38', '天津市', '2010', '1.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('39', '天津市', '2009', '1.08', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('40', '天津市', '2008', '1.02', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('41', '天津市', '2007', '0.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('42', '天津市', '2006', '0.88', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('43', '天津市', '2005', '0.82', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('44', '天津市', '2004', '0.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('45', '天津市', '2003', '0.68', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('46', '天津市', '2002', '0.62', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('47', '天津市', '2001', '0.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('48', '天津市', '2000', '0.48', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('49', '河北省', '2023', '125.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('50', '河北省', '2022', '122.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('51', '河北省', '2021', '118.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('52', '河北省', '2020', '115.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('53', '河北省', '2019', '112.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('54', '河北省', '2018', '108.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('55', '河北省', '2017', '105.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('56', '河北省', '2016', '102.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('57', '河北省', '2015', '99.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('58', '河北省', '2014', '96.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('59', '河北省', '2013', '93.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('60', '河北省', '2012', '90.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('61', '河北省', '2011', '86.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('62', '河北省', '2010', '83.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('63', '河北省', '2009', '80.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('64', '河北省', '2008', '77.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('65', '河北省', '2007', '74.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('66', '河北省', '2006', '71.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('67', '河北省', '2005', '68.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('68', '河北省', '2004', '64.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('69', '河北省', '2003', '61.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('70', '河北省', '2002', '58.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('71', '河北省', '2001', '55.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('72', '河北省', '2000', '52.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('73', '山西省', '2023', '45.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('74', '山西省', '2022', '44.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('75', '山西省', '2021', '43.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('76', '山西省', '2020', '42.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('77', '山西省', '2019', '40.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('78', '山西省', '2018', '39.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('79', '山西省', '2017', '38.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('80', '山西省', '2016', '37.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('81', '山西省', '2015', '36.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('82', '山西省', '2014', '35.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('83', '山西省', '2013', '34.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('84', '山西省', '2012', '33.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('85', '山西省', '2011', '32.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('86', '山西省', '2010', '31.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('87', '山西省', '2009', '29.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('88', '山西省', '2008', '28.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('89', '山西省', '2007', '27.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('90', '山西省', '2006', '26.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('91', '山西省', '2005', '25.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('92', '山西省', '2004', '24.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('93', '山西省', '2003', '23.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('94', '山西省', '2002', '22.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('95', '山西省', '2001', '21.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('96', '山西省', '2000', '20.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('97', '内蒙古自治区', '2023', '12.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('98', '内蒙古自治区', '2022', '12.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('99', '内蒙古自治区', '2021', '12.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('100', '内蒙古自治区', '2020', '11.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('101', '内蒙古自治区', '2019', '11.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('102', '内蒙古自治区', '2018', '11.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('103', '内蒙古自治区', '2017', '10.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('104', '内蒙古自治区', '2016', '10.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('105', '内蒙古自治区', '2015', '9.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('106', '内蒙古自治区', '2014', '9.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('107', '内蒙古自治区', '2013', '9.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('108', '内蒙古自治区', '2012', '8.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('109', '内蒙古自治区', '2011', '8.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('110', '内蒙古自治区', '2010', '8.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('111', '内蒙古自治区', '2009', '7.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('112', '内蒙古自治区', '2008', '7.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('113', '内蒙古自治区', '2007', '7.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('114', '内蒙古自治区', '2006', '6.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('115', '内蒙古自治区', '2005', '6.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('116', '内蒙古自治区', '2004', '6.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('117', '内蒙古自治区', '2003', '5.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('118', '内蒙古自治区', '2002', '5.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('119', '内蒙古自治区', '2001', '5.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('120', '内蒙古自治区', '2000', '4.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('121', '辽宁省', '2023', '85.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('122', '辽宁省', '2022', '83.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('123', '辽宁省', '2021', '81.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('124', '辽宁省', '2020', '78.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('125', '辽宁省', '2019', '76.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('126', '辽宁省', '2018', '74.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('127', '辽宁省', '2017', '72.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('128', '辽宁省', '2016', '70.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('129', '辽宁省', '2015', '68.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('130', '辽宁省', '2014', '66.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('131', '辽宁省', '2013', '64.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('132', '辽宁省', '2012', '62.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('133', '辽宁省', '2011', '60.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('134', '辽宁省', '2010', '57.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('135', '辽宁省', '2009', '55.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('136', '辽宁省', '2008', '53.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('137', '辽宁省', '2007', '51.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('138', '辽宁省', '2006', '49.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('139', '辽宁省', '2005', '47.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('140', '辽宁省', '2004', '45.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('141', '辽宁省', '2003', '43.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('142', '辽宁省', '2002', '41.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('143', '辽宁省', '2001', '39.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('144', '辽宁省', '2000', '36.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('145', '吉林省', '2023', '32.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('146', '吉林省', '2022', '31.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('147', '吉林省', '2021', '30.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('148', '吉林省', '2020', '29.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('149', '吉林省', '2019', '29.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('150', '吉林省', '2018', '28.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('151', '吉林省', '2017', '27.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('152', '吉林省', '2016', '26.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('153', '吉林省', '2015', '25.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('154', '吉林省', '2014', '24.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('155', '吉林省', '2013', '23.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('156', '吉林省', '2012', '23.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('157', '吉林省', '2011', '22.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('158', '吉林省', '2010', '21.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('159', '吉林省', '2009', '20.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('160', '吉林省', '2008', '19.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('161', '吉林省', '2007', '18.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('162', '吉林省', '2006', '18.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('163', '吉林省', '2005', '17.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('164', '吉林省', '2004', '16.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('165', '吉林省', '2003', '15.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('166', '吉林省', '2002', '14.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('167', '吉林省', '2001', '13.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('168', '吉林省', '2000', '12.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('169', '黑龙江省', '2023', '15.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('170', '黑龙江省', '2022', '15.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('171', '黑龙江省', '2021', '15.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('172', '黑龙江省', '2020', '14.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('173', '黑龙江省', '2019', '14.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('174', '黑龙江省', '2018', '13.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('175', '黑龙江省', '2017', '13.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('176', '黑龙江省', '2016', '13.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('177', '黑龙江省', '2015', '12.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('178', '黑龙江省', '2014', '12.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('179', '黑龙江省', '2013', '11.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('180', '黑龙江省', '2012', '11.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('181', '黑龙江省', '2011', '11.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('182', '黑龙江省', '2010', '10.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('183', '黑龙江省', '2009', '10.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('184', '黑龙江省', '2008', '9.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('185', '黑龙江省', '2007', '9.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('186', '黑龙江省', '2006', '9.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('187', '黑龙江省', '2005', '8.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('188', '黑龙江省', '2004', '8.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('189', '黑龙江省', '2003', '7.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('190', '黑龙江省', '2002', '7.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('191', '黑龙江省', '2001', '7.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('192', '黑龙江省', '2000', '6.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('193', '上海市', '2023', '0.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('194', '上海市', '2022', '0.23', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('195', '上海市', '2021', '0.21', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('196', '上海市', '2020', '0.19', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('197', '上海市', '2019', '0.17', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('198', '上海市', '2018', '0.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('199', '上海市', '2017', '0.13', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('200', '上海市', '2016', '0.11', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('201', '上海市', '2015', '0.09', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('202', '上海市', '2014', '0.07', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('203', '上海市', '2013', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('204', '上海市', '2012', '0.03', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('205', '上海市', '2011', '0.01', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('206', '上海市', '2010', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('207', '上海市', '2009', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('208', '上海市', '2008', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('209', '上海市', '2007', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('210', '上海市', '2006', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('211', '上海市', '2005', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('212', '上海市', '2004', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('213', '上海市', '2003', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('214', '上海市', '2002', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('215', '上海市', '2001', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('216', '上海市', '2000', '0.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('217', '江苏省', '2023', '98.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('218', '江苏省', '2022', '96.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('219', '江苏省', '2021', '94.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('220', '江苏省', '2020', '92.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('221', '江苏省', '2019', '89.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('222', '江苏省', '2018', '87.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('223', '江苏省', '2017', '85.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('224', '江苏省', '2016', '83.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('225', '江苏省', '2015', '80.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('226', '江苏省', '2014', '78.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('227', '江苏省', '2013', '76.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('228', '江苏省', '2012', '74.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('229', '江苏省', '2011', '71.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('230', '江苏省', '2010', '69.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('231', '江苏省', '2009', '67.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('232', '江苏省', '2008', '65.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('233', '江苏省', '2007', '62.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('234', '江苏省', '2006', '60.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('235', '江苏省', '2005', '58.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('236', '江苏省', '2004', '56.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('237', '江苏省', '2003', '53.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('238', '江苏省', '2002', '51.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('239', '江苏省', '2001', '49.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('240', '江苏省', '2000', '47.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('241', '浙江省', '2023', '35.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('242', '浙江省', '2022', '34.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('243', '浙江省', '2021', '33.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('244', '浙江省', '2020', '33.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('245', '浙江省', '2019', '32.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('246', '浙江省', '2018', '31.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('247', '浙江省', '2017', '30.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('248', '浙江省', '2016', '29.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('249', '浙江省', '2015', '29.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('250', '浙江省', '2014', '28.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('251', '浙江省', '2013', '27.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('252', '浙江省', '2012', '26.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('253', '浙江省', '2011', '25.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('254', '浙江省', '2010', '25.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('255', '浙江省', '2009', '24.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('256', '浙江省', '2008', '23.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('257', '浙江省', '2007', '22.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('258', '浙江省', '2006', '21.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('259', '浙江省', '2005', '21.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('260', '浙江省', '2004', '20.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('261', '浙江省', '2003', '19.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('262', '浙江省', '2002', '18.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('263', '浙江省', '2001', '17.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('264', '浙江省', '2000', '17.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('265', '安徽省', '2023', '112.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('266', '安徽省', '2022', '109.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('267', '安徽省', '2021', '107.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('268', '安徽省', '2020', '104.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('269', '安徽省', '2019', '102.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('270', '安徽省', '2018', '99.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('271', '安徽省', '2017', '97.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('272', '安徽省', '2016', '94.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('273', '安徽省', '2015', '92.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('274', '安徽省', '2014', '89.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('275', '安徽省', '2013', '87.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('276', '安徽省', '2012', '84.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('277', '安徽省', '2011', '82.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('278', '安徽省', '2010', '79.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('279', '安徽省', '2009', '77.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('280', '安徽省', '2008', '74.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('281', '安徽省', '2007', '72.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('282', '安徽省', '2006', '69.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('283', '安徽省', '2005', '67.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('284', '安徽省', '2004', '64.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('285', '安徽省', '2003', '62.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('286', '安徽省', '2002', '59.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('287', '安徽省', '2001', '57.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('288', '安徽省', '2000', '54.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('289', '福建省', '2023', '42.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('290', '福建省', '2022', '41.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('291', '福建省', '2021', '40.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('292', '福建省', '2020', '39.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('293', '福建省', '2019', '38.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('294', '福建省', '2018', '37.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('295', '福建省', '2017', '36.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('296', '福建省', '2016', '35.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('297', '福建省', '2015', '34.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('298', '福建省', '2014', '33.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('299', '福建省', '2013', '32.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('300', '福建省', '2012', '31.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('301', '福建省', '2011', '30.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('302', '福建省', '2010', '29.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('303', '福建省', '2009', '28.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('304', '福建省', '2008', '27.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('305', '福建省', '2007', '26.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('306', '福建省', '2006', '26.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('307', '福建省', '2005', '25.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('308', '福建省', '2004', '24.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('309', '福建省', '2003', '23.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('310', '福建省', '2002', '22.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('311', '福建省', '2001', '21.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('312', '福建省', '2000', '20.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('313', '江西省', '2023', '65.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('314', '江西省', '2022', '64.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('315', '江西省', '2021', '62.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('316', '江西省', '2020', '61.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('317', '江西省', '2019', '59.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('318', '江西省', '2018', '58.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('319', '江西省', '2017', '56.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('320', '江西省', '2016', '55.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('321', '江西省', '2015', '53.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('322', '江西省', '2014', '52.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('323', '江西省', '2013', '50.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('324', '江西省', '2012', '49.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('325', '江西省', '2011', '47.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('326', '江西省', '2010', '46.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('327', '江西省', '2009', '44.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('328', '江西省', '2008', '43.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('329', '江西省', '2007', '41.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('330', '江西省', '2006', '40.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('331', '江西省', '2005', '38.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('332', '江西省', '2004', '37.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('333', '江西省', '2003', '35.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('334', '江西省', '2002', '34.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('335', '江西省', '2001', '32.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('336', '江西省', '2000', '31.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('337', '山东省', '2023', '185.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('338', '山东省', '2022', '181.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('339', '山东省', '2021', '177.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('340', '山东省', '2020', '172.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('341', '山东省', '2019', '168.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('342', '山东省', '2018', '164.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('343', '山东省', '2017', '160.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('344', '山东省', '2016', '156.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('345', '山东省', '2015', '151.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('346', '山东省', '2014', '147.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('347', '山东省', '2013', '143.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('348', '山东省', '2012', '139.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('349', '山东省', '2011', '135.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('350', '山东省', '2010', '130.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('351', '山东省', '2009', '126.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('352', '山东省', '2008', '122.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('353', '山东省', '2007', '118.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('354', '山东省', '2006', '114.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('355', '山东省', '2005', '109.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('356', '山东省', '2004', '105.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('357', '山东省', '2003', '101.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('358', '山东省', '2002', '97.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('359', '山东省', '2001', '93.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('360', '山东省', '2000', '88.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('361', '河南省', '2023', '210.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('362', '河南省', '2022', '205.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('363', '河南省', '2021', '201.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('364', '河南省', '2020', '196.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('365', '河南省', '2019', '191.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('366', '河南省', '2018', '187.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('367', '河南省', '2017', '182.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('368', '河南省', '2016', '177.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('369', '河南省', '2015', '172.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('370', '河南省', '2014', '168.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('371', '河南省', '2013', '163.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('372', '河南省', '2012', '158.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('373', '河南省', '2011', '154.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('374', '河南省', '2010', '149.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('375', '河南省', '2009', '144.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('376', '河南省', '2008', '140.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('377', '河南省', '2007', '135.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('378', '河南省', '2006', '130.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('379', '河南省', '2005', '125.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('380', '河南省', '2004', '121.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('381', '河南省', '2003', '116.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('382', '河南省', '2002', '111.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('383', '河南省', '2001', '107.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('384', '河南省', '2000', '102.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('385', '湖北省', '2023', '78.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('386', '湖北省', '2022', '77.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('387', '湖北省', '2021', '75.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('388', '湖北省', '2020', '73.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('389', '湖北省', '2019', '71.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('390', '湖北省', '2018', '69.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('391', '湖北省', '2017', '68.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('392', '湖北省', '2016', '66.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('393', '湖北省', '2015', '64.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('394', '湖北省', '2014', '62.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('395', '湖北省', '2013', '60.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('396', '湖北省', '2012', '59.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('397', '湖北省', '2011', '57.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('398', '湖北省', '2010', '55.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('399', '湖北省', '2009', '53.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('400', '湖北省', '2008', '51.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('401', '湖北省', '2007', '50.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('402', '湖北省', '2006', '48.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('403', '湖北省', '2005', '46.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('404', '湖北省', '2004', '44.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('405', '湖北省', '2003', '42.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('406', '湖北省', '2002', '41.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('407', '湖北省', '2001', '39.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('408', '湖北省', '2000', '37.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('409', '湖南省', '2023', '55.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('410', '湖南省', '2022', '54.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('411', '湖南省', '2021', '53.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('412', '湖南省', '2020', '51.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('413', '湖南省', '2019', '50.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('414', '湖南省', '2018', '49.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('415', '湖南省', '2017', '47.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('416', '湖南省', '2016', '46.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('417', '湖南省', '2015', '45.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('418', '湖南省', '2014', '43.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('419', '湖南省', '2013', '42.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('420', '湖南省', '2012', '41.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('421', '湖南省', '2011', '40.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('422', '湖南省', '2010', '38.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('423', '湖南省', '2009', '37.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('424', '湖南省', '2008', '36.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('425', '湖南省', '2007', '34.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('426', '湖南省', '2006', '33.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('427', '湖南省', '2005', '32.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('428', '湖南省', '2004', '30.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('429', '湖南省', '2003', '29.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('430', '湖南省', '2002', '28.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('431', '湖南省', '2001', '27.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('432', '湖南省', '2000', '25.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('433', '广东省', '2023', '92.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('434', '广东省', '2022', '90.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('435', '广东省', '2021', '88.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('436', '广东省', '2020', '85.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('437', '广东省', '2019', '83.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('438', '广东省', '2018', '81.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('439', '广东省', '2017', '79.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('440', '广东省', '2016', '77.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('441', '广东省', '2015', '75.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('442', '广东省', '2014', '73.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('443', '广东省', '2013', '70.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('444', '广东省', '2012', '68.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('445', '广东省', '2011', '66.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('446', '广东省', '2010', '64.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('447', '广东省', '2009', '62.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('448', '广东省', '2008', '60.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('449', '广东省', '2007', '57.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('450', '广东省', '2006', '55.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('451', '广东省', '2005', '53.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('452', '广东省', '2004', '51.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('453', '广东省', '2003', '49.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('454', '广东省', '2002', '47.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('455', '广东省', '2001', '45.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('456', '广东省', '2000', '42.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('457', '广西壮族自治区', '2023', '68.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('458', '广西壮族自治区', '2022', '66.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('459', '广西壮族自治区', '2021', '65.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('460', '广西壮族自治区', '2020', '63.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('461', '广西壮族自治区', '2019', '61.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('462', '广西壮族自治区', '2018', '60.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('463', '广西壮族自治区', '2017', '58.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('464', '广西壮族自治区', '2016', '57.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('465', '广西壮族自治区', '2015', '55.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('466', '广西壮族自治区', '2014', '53.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('467', '广西壮族自治区', '2013', '52.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('468', '广西壮族自治区', '2012', '50.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('469', '广西壮族自治区', '2011', '49.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('470', '广西壮族自治区', '2010', '47.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('471', '广西壮族自治区', '2009', '45.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('472', '广西壮族自治区', '2008', '44.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('473', '广西壮族自治区', '2007', '42.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('474', '广西壮族自治区', '2006', '41.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('475', '广西壮族自治区', '2005', '39.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('476', '广西壮族自治区', '2004', '37.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('477', '广西壮族自治区', '2003', '36.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('478', '广西壮族自治区', '2002', '34.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('479', '广西壮族自治区', '2001', '33.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('480', '广西壮族自治区', '2000', '31.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('481', '海南省', '2023', '12.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('482', '海南省', '2022', '12.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('483', '海南省', '2021', '11.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('484', '海南省', '2020', '11.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('485', '海南省', '2019', '11.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('486', '海南省', '2018', '10.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('487', '海南省', '2017', '10.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('488', '海南省', '2016', '10.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('489', '海南省', '2015', '10.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('490', '海南省', '2014', '9.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('491', '海南省', '2013', '9.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('492', '海南省', '2012', '9.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('493', '海南省', '2011', '8.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('494', '海南省', '2010', '8.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('495', '海南省', '2009', '8.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('496', '海南省', '2008', '7.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('497', '海南省', '2007', '7.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('498', '海南省', '2006', '7.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('499', '海南省', '2005', '7.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('500', '海南省', '2004', '6.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('501', '海南省', '2003', '6.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('502', '海南省', '2002', '6.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('503', '海南省', '2001', '5.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('504', '海南省', '2000', '5.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('505', '重庆市', '2023', '25.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('506', '重庆市', '2022', '24.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('507', '重庆市', '2021', '24.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('508', '重庆市', '2020', '23.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('509', '重庆市', '2019', '22.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('510', '重庆市', '2018', '22.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('511', '重庆市', '2017', '21.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('512', '重庆市', '2016', '21.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('513', '重庆市', '2015', '20.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('514', '重庆市', '2014', '19.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('515', '重庆市', '2013', '19.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('516', '重庆市', '2012', '18.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('517', '重庆市', '2011', '18.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('518', '重庆市', '2010', '17.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('519', '重庆市', '2009', '16.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('520', '重庆市', '2008', '16.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('521', '重庆市', '2007', '15.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('522', '重庆市', '2006', '15.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('523', '重庆市', '2005', '14.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('524', '重庆市', '2004', '13.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('525', '重庆市', '2003', '13.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('526', '重庆市', '2002', '12.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('527', '重庆市', '2001', '12.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('528', '重庆市', '2000', '11.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('529', '四川省', '2023', '62.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('530', '四川省', '2022', '61.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('531', '四川省', '2021', '59.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('532', '四川省', '2020', '58.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('533', '四川省', '2019', '56.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('534', '四川省', '2018', '55.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('535', '四川省', '2017', '53.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('536', '四川省', '2016', '52.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('537', '四川省', '2015', '50.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('538', '四川省', '2014', '49.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('539', '四川省', '2013', '47.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('540', '四川省', '2012', '46.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('541', '四川省', '2011', '44.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('542', '四川省', '2010', '43.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('543', '四川省', '2009', '41.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('544', '四川省', '2008', '40.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('545', '四川省', '2007', '38.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('546', '四川省', '2006', '37.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('547', '四川省', '2005', '35.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('548', '四川省', '2004', '34.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('549', '四川省', '2003', '32.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('550', '四川省', '2002', '31.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('551', '四川省', '2001', '29.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('552', '四川省', '2000', '28.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('553', '贵州省', '2023', '28.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('554', '贵州省', '2022', '27.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('555', '贵州省', '2021', '26.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('556', '贵州省', '2020', '26.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('557', '贵州省', '2019', '25.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('558', '贵州省', '2018', '24.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('559', '贵州省', '2017', '24.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('560', '贵州省', '2016', '23.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('561', '贵州省', '2015', '22.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('562', '贵州省', '2014', '22.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('563', '贵州省', '2013', '21.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('564', '贵州省', '2012', '21.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('565', '贵州省', '2011', '20.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('566', '贵州省', '2010', '19.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('567', '贵州省', '2009', '19.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('568', '贵州省', '2008', '18.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('569', '贵州省', '2007', '17.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('570', '贵州省', '2006', '17.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('571', '贵州省', '2005', '16.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('572', '贵州省', '2004', '15.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('573', '贵州省', '2003', '15.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('574', '贵州省', '2002', '14.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('575', '贵州省', '2001', '13.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('576', '贵州省', '2000', '13.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('577', '云南省', '2023', '22.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('578', '云南省', '2022', '22.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('579', '云南省', '2021', '21.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('580', '云南省', '2020', '21.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('581', '云南省', '2019', '20.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('582', '云南省', '2018', '20.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('583', '云南省', '2017', '19.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('584', '云南省', '2016', '18.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('585', '云南省', '2015', '18.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('586', '云南省', '2014', '17.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('587', '云南省', '2013', '17.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('588', '云南省', '2012', '16.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('589', '云南省', '2011', '16.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('590', '云南省', '2010', '15.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('591', '云南省', '2009', '15.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('592', '云南省', '2008', '14.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('593', '云南省', '2007', '13.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('594', '云南省', '2006', '13.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('595', '云南省', '2005', '12.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('596', '云南省', '2004', '12.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('597', '云南省', '2003', '11.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('598', '云南省', '2002', '11.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('599', '云南省', '2001', '10.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('600', '云南省', '2000', '10.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('601', '西藏自治区', '2023', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('602', '西藏自治区', '2022', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('603', '西藏自治区', '2021', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('604', '西藏自治区', '2020', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('605', '西藏自治区', '2019', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('606', '西藏自治区', '2018', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('607', '西藏自治区', '2017', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('608', '西藏自治区', '2016', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('609', '西藏自治区', '2015', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('610', '西藏自治区', '2014', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('611', '西藏自治区', '2013', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('612', '西藏自治区', '2012', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('613', '西藏自治区', '2011', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('614', '西藏自治区', '2010', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('615', '西藏自治区', '2009', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('616', '西藏自治区', '2008', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('617', '西藏自治区', '2007', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('618', '西藏自治区', '2006', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('619', '西藏自治区', '2005', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('620', '西藏自治区', '2004', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('621', '西藏自治区', '2003', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('622', '西藏自治区', '2002', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('623', '西藏自治区', '2001', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('624', '西藏自治区', '2000', '0.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('625', '陕西省', '2023', '38.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('626', '陕西省', '2022', '38.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('627', '陕西省', '2021', '37.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('628', '陕西省', '2020', '36.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('629', '陕西省', '2019', '35.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('630', '陕西省', '2018', '34.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('631', '陕西省', '2017', '33.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('632', '陕西省', '2016', '32.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('633', '陕西省', '2015', '31.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('634', '陕西省', '2014', '30.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('635', '陕西省', '2013', '29.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('636', '陕西省', '2012', '29.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('637', '陕西省', '2011', '28.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('638', '陕西省', '2010', '27.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('639', '陕西省', '2009', '26.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('640', '陕西省', '2008', '25.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('641', '陕西省', '2007', '24.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('642', '陕西省', '2006', '23.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('643', '陕西省', '2005', '22.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('644', '陕西省', '2004', '21.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('645', '陕西省', '2003', '20.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('646', '陕西省', '2002', '20.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('647', '陕西省', '2001', '19.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('648', '陕西省', '2000', '18.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('649', '甘肃省', '2023', '18.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('650', '甘肃省', '2022', '17.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('651', '甘肃省', '2021', '17.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('652', '甘肃省', '2020', '16.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('653', '甘肃省', '2019', '16.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('654', '甘肃省', '2018', '16.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('655', '甘肃省', '2017', '15.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('656', '甘肃省', '2016', '15.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('657', '甘肃省', '2015', '14.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('658', '甘肃省', '2014', '14.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('659', '甘肃省', '2013', '13.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('660', '甘肃省', '2012', '13.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('661', '甘肃省', '2011', '12.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('662', '甘肃省', '2010', '12.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('663', '甘肃省', '2009', '11.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('664', '甘肃省', '2008', '11.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('665', '甘肃省', '2007', '11.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('666', '甘肃省', '2006', '10.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('667', '甘肃省', '2005', '10.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('668', '甘肃省', '2004', '9.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('669', '甘肃省', '2003', '9.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('670', '甘肃省', '2002', '8.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('671', '甘肃省', '2001', '8.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('672', '甘肃省', '2000', '7.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('673', '青海省', '2023', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('674', '青海省', '2022', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('675', '青海省', '2021', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('676', '青海省', '2020', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('677', '青海省', '2019', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('678', '青海省', '2018', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('679', '青海省', '2017', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('680', '青海省', '2016', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('681', '青海省', '2015', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('682', '青海省', '2014', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('683', '青海省', '2013', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('684', '青海省', '2012', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('685', '青海省', '2011', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('686', '青海省', '2010', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('687', '青海省', '2009', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('688', '青海省', '2008', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('689', '青海省', '2007', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('690', '青海省', '2006', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('691', '青海省', '2005', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('692', '青海省', '2004', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('693', '青海省', '2003', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('694', '青海省', '2002', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('695', '青海省', '2001', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('696', '青海省', '2000', '0.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('697', '宁夏回族自治区', '2023', '5.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('698', '宁夏回族自治区', '2022', '5.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('699', '宁夏回族自治区', '2021', '5.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('700', '宁夏回族自治区', '2020', '5.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('701', '宁夏回族自治区', '2019', '5.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('702', '宁夏回族自治区', '2018', '5.05', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('703', '宁夏回族自治区', '2017', '4.90', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('704', '宁夏回族自治区', '2016', '4.75', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('705', '宁夏回族自治区', '2015', '4.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('706', '宁夏回族自治区', '2014', '4.45', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('707', '宁夏回族自治区', '2013', '4.30', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('708', '宁夏回族自治区', '2012', '4.15', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('709', '宁夏回族自治区', '2011', '4.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('710', '宁夏回族自治区', '2010', '3.85', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('711', '宁夏回族自治区', '2009', '3.70', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('712', '宁夏回族自治区', '2008', '3.55', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('713', '宁夏回族自治区', '2007', '3.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('714', '宁夏回族自治区', '2006', '3.25', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('715', '宁夏回族自治区', '2005', '3.10', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('716', '宁夏回族自治区', '2004', '2.95', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('717', '宁夏回族自治区', '2003', '2.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('718', '宁夏回族自治区', '2002', '2.65', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('719', '宁夏回族自治区', '2001', '2.50', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('720', '宁夏回族自治区', '2000', '2.35', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('721', '新疆维吾尔自治区', '2023', '8.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('722', '新疆维吾尔自治区', '2022', '8.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('723', '新疆维吾尔自治区', '2021', '8.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('724', '新疆维吾尔自治区', '2020', '7.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('725', '新疆维吾尔自治区', '2019', '7.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('726', '新疆维吾尔自治区', '2018', '7.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('727', '新疆维吾尔自治区', '2017', '7.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('728', '新疆维吾尔自治区', '2016', '7.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('729', '新疆维吾尔自治区', '2015', '6.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('730', '新疆维吾尔自治区', '2014', '6.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('731', '新疆维吾尔自治区', '2013', '6.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('732', '新疆维吾尔自治区', '2012', '6.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('733', '新疆维吾尔自治区', '2011', '6.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('734', '新疆维吾尔自治区', '2010', '5.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('735', '新疆维吾尔自治区', '2009', '5.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('736', '新疆维吾尔自治区', '2008', '5.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('737', '新疆维吾尔自治区', '2007', '5.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('738', '新疆维吾尔自治区', '2006', '5.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('739', '新疆维吾尔自治区', '2005', '4.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('740', '新疆维吾尔自治区', '2004', '4.60', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('741', '新疆维吾尔自治区', '2003', '4.40', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('742', '新疆维吾尔自治区', '2002', '4.20', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('743', '新疆维吾尔自治区', '2001', '4.00', '2025-06-30 19:03:38', '2025-06-30 19:03:38');
INSERT INTO `peanut_planting_area` VALUES ('744', '新疆维吾尔自治区', '2000', '3.80', '2025-06-30 19:03:38', '2025-06-30 19:03:38');

-- ----------------------------
-- Table structure for potato_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `potato_planting_area`;
CREATE TABLE `potato_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID，主键',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) DEFAULT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region_year` (`region`,`year`) COMMENT '地区和年份联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='马铃薯播种面积表';

-- ----------------------------
-- Records of potato_planting_area
-- ----------------------------
INSERT INTO `potato_planting_area` VALUES ('1', '北京市', '2018', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('2', '北京市', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('3', '北京市', '2016', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('4', '北京市', '2015', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('5', '北京市', '2014', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('6', '北京市', '2013', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('7', '北京市', '2012', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('8', '北京市', '2011', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('9', '北京市', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('10', '北京市', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('11', '北京市', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('12', '北京市', '2007', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('13', '天津市', '2022', '0.29', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('14', '天津市', '2021', '0.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('15', '天津市', '2020', '0.34', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('16', '天津市', '2019', '0.29', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('17', '天津市', '2018', '0.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('18', '天津市', '2017', '1.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('19', '天津市', '2016', '1.37', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('20', '河北省', '2023', '155.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('21', '河北省', '2022', '148.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('22', '河北省', '2021', '156.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('23', '河北省', '2020', '154.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('24', '河北省', '2019', '163.13', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('25', '河北省', '2018', '162.83', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('26', '河北省', '2017', '162.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('27', '河北省', '2016', '161.66', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('28', '河北省', '2015', '146.68', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('29', '河北省', '2014', '157.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('30', '河北省', '2013', '156.21', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('31', '河北省', '2012', '141.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('32', '河北省', '2011', '141.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('33', '河北省', '2010', '130.39', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('34', '河北省', '2009', '140.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('35', '河北省', '2008', '123.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('36', '河北省', '2007', '127.66', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('37', '河北省', '2006', '140.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('38', '河北省', '2005', '150.26', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('39', '河北省', '2004', '160.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('40', '河北省', '2003', '184.63', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('41', '河北省', '2002', '181.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('42', '河北省', '2001', '211.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('43', '河北省', '2000', '211.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('44', '山西省', '2023', '153.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('45', '山西省', '2022', '169.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('46', '山西省', '2021', '160.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('47', '山西省', '2020', '162.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('48', '山西省', '2019', '157.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('49', '山西省', '2018', '168.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('50', '山西省', '2017', '163.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('51', '山西省', '2016', '151.02', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('52', '山西省', '2015', '153.63', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('53', '山西省', '2014', '155.77', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('54', '山西省', '2013', '157.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('55', '山西省', '2012', '162.24', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('56', '山西省', '2011', '162.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('57', '山西省', '2010', '164.07', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('58', '山西省', '2009', '146.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('59', '山西省', '2008', '171.37', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('60', '山西省', '2007', '152.21', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('61', '山西省', '2006', '311.95', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('62', '山西省', '2005', '309.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('63', '山西省', '2004', '312.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('64', '山西省', '2003', '313.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('65', '山西省', '2002', '294.78', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('66', '山西省', '2001', '321.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('67', '山西省', '2000', '321.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('68', '内蒙古自治区', '2023', '224.02', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('69', '内蒙古自治区', '2022', '267.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('70', '内蒙古自治区', '2021', '277.42', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('71', '内蒙古自治区', '2020', '297.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('72', '内蒙古自治区', '2019', '350.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('73', '内蒙古自治区', '2018', '432.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('74', '内蒙古自治区', '2017', '449.22', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('75', '内蒙古自治区', '2016', '452.05', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('76', '内蒙古自治区', '2015', '483.24', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('77', '内蒙古自治区', '2014', '568.82', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('78', '内蒙古自治区', '2013', '635.19', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('79', '内蒙古自治区', '2012', '667.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('80', '内蒙古自治区', '2011', '670.39', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('81', '内蒙古自治区', '2010', '652.94', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('82', '内蒙古自治区', '2009', '592.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('83', '内蒙古自治区', '2008', '587.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('84', '内蒙古自治区', '2007', '582.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('85', '内蒙古自治区', '2006', '553.35', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('86', '内蒙古自治区', '2005', '521.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('87', '内蒙古自治区', '2004', '530.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('88', '内蒙古自治区', '2003', '577.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('89', '内蒙古自治区', '2002', '562.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('90', '内蒙古自治区', '2001', '646.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('91', '内蒙古自治区', '2000', '646.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('92', '辽宁省', '2023', '38.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('93', '辽宁省', '2022', '41.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('94', '辽宁省', '2021', '44.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('95', '辽宁省', '2020', '60.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('96', '辽宁省', '2019', '60.21', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('97', '辽宁省', '2018', '63.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('98', '辽宁省', '2017', '56.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('99', '辽宁省', '2016', '45.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('100', '辽宁省', '2015', '48.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('101', '辽宁省', '2014', '45.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('102', '辽宁省', '2013', '46.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('103', '辽宁省', '2012', '49.09', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('104', '辽宁省', '2011', '48.59', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('105', '辽宁省', '2010', '57.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('106', '辽宁省', '2009', '61.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('107', '辽宁省', '2008', '58.12', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('108', '辽宁省', '2007', '63.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('109', '辽宁省', '2006', '88.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('110', '辽宁省', '2005', '86.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('111', '辽宁省', '2004', '92.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('112', '辽宁省', '2003', '94.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('113', '辽宁省', '2002', '106.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('114', '辽宁省', '2001', '105.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('115', '辽宁省', '2000', '105.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('116', '吉林省', '2023', '26.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('117', '吉林省', '2022', '39.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('118', '吉林省', '2021', '41.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('119', '吉林省', '2020', '45.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('120', '吉林省', '2019', '44.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('121', '吉林省', '2018', '60.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('122', '吉林省', '2017', '59.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('123', '吉林省', '2016', '61.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('124', '吉林省', '2015', '60.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('125', '吉林省', '2014', '63.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('126', '吉林省', '2013', '65.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('127', '吉林省', '2012', '72.44', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('128', '吉林省', '2011', '78.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('129', '吉林省', '2010', '97.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('130', '吉林省', '2009', '87.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('131', '吉林省', '2008', '92.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('132', '吉林省', '2007', '133.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('133', '吉林省', '2006', '100.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('134', '吉林省', '2005', '80.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('135', '吉林省', '2004', '82.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('136', '吉林省', '2003', '67.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('137', '吉林省', '2002', '89.67', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('138', '吉林省', '2001', '115.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('139', '吉林省', '2000', '115.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('140', '黑龙江省', '2023', '45.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('141', '黑龙江省', '2022', '65.44', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('142', '黑龙江省', '2021', '69.32', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('143', '黑龙江省', '2020', '114.66', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('144', '黑龙江省', '2019', '157.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('145', '黑龙江省', '2018', '164.12', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('146', '黑龙江省', '2017', '152.48', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('147', '黑龙江省', '2016', '132.83', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('148', '黑龙江省', '2015', '184.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('149', '黑龙江省', '2014', '224.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('150', '黑龙江省', '2013', '251.36', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('151', '黑龙江省', '2012', '263.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('152', '黑龙江省', '2011', '254.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('153', '黑龙江省', '2010', '274.72', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('154', '黑龙江省', '2009', '217.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('155', '黑龙江省', '2008', '155.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('156', '黑龙江省', '2007', '202.75', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('157', '黑龙江省', '2006', '293.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('158', '黑龙江省', '2005', '339.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('159', '黑龙江省', '2004', '433.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('160', '黑龙江省', '2003', '442.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('161', '黑龙江省', '2002', '420.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('162', '黑龙江省', '2001', '389.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('163', '黑龙江省', '2000', '389.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('164', '上海市', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('165', '上海市', '2016', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('166', '上海市', '2015', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('167', '上海市', '2014', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('168', '上海市', '2013', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('169', '上海市', '2012', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('170', '上海市', '2011', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('171', '上海市', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('172', '上海市', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('173', '上海市', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('174', '上海市', '2007', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('175', '江苏省', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('176', '江苏省', '2016', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('177', '江苏省', '2015', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('178', '江苏省', '2014', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('179', '江苏省', '2013', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('180', '江苏省', '2012', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('181', '江苏省', '2011', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('182', '江苏省', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('183', '江苏省', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('184', '江苏省', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('185', '江苏省', '2007', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('186', '浙江省', '2023', '27.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('187', '浙江省', '2022', '27.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('188', '浙江省', '2021', '23.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('189', '浙江省', '2020', '32.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('190', '浙江省', '2019', '34.29', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('191', '浙江省', '2018', '44.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('192', '浙江省', '2017', '41.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('193', '浙江省', '2016', '39.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('194', '浙江省', '2015', '39.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('195', '浙江省', '2014', '40.31', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('196', '浙江省', '2013', '40.47', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('197', '浙江省', '2012', '45.48', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('198', '浙江省', '2011', '47.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('199', '浙江省', '2010', '49.35', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('200', '浙江省', '2009', '46.07', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('201', '浙江省', '2008', '48.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('202', '浙江省', '2002', '63.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('203', '浙江省', '2001', '66.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('204', '浙江省', '2000', '66.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('205', '安徽省', '2023', '4.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('206', '安徽省', '2022', '4.15', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('207', '安徽省', '2021', '4.59', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('208', '安徽省', '2020', '4.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('209', '安徽省', '2019', '4.78', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('210', '安徽省', '2018', '2.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('211', '安徽省', '2017', '6.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('212', '安徽省', '2016', '6.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('213', '安徽省', '2015', '8.47', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('214', '安徽省', '2014', '8.62', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('215', '安徽省', '2013', '15.13', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('216', '安徽省', '2012', '10.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('217', '安徽省', '2011', '8.78', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('218', '安徽省', '2010', '8.15', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('219', '安徽省', '2009', '7.61', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('220', '安徽省', '2008', '6.76', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('221', '安徽省', '2007', '7.05', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('222', '安徽省', '2006', '7.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('223', '安徽省', '2005', '7.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('224', '安徽省', '2004', '9.23', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('225', '安徽省', '2003', '13.13', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('226', '安徽省', '2002', '12.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('227', '安徽省', '2001', '7.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('228', '安徽省', '2000', '7.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('229', '福建省', '2023', '49.24', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('230', '福建省', '2022', '49.34', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('231', '福建省', '2021', '49.96', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('232', '福建省', '2020', '49.23', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('233', '福建省', '2019', '46.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('234', '福建省', '2018', '45.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('235', '福建省', '2017', '45.32', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('236', '福建省', '2016', '46.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('237', '福建省', '2015', '47.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('238', '福建省', '2014', '49.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('239', '福建省', '2013', '51.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('240', '福建省', '2012', '55.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('241', '福建省', '2011', '57.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('242', '福建省', '2010', '58.78', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('243', '福建省', '2009', '55.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('244', '福建省', '2008', '56.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('245', '福建省', '2007', '61.48', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('246', '福建省', '2006', '87.03', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('247', '福建省', '2005', '86.15', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('248', '福建省', '2004', '85.43', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('249', '福建省', '2003', '85.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('250', '福建省', '2002', '86.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('251', '福建省', '2001', '88.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('252', '福建省', '2000', '88.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('253', '江西省', '2023', '26.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('254', '江西省', '2022', '25.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('255', '江西省', '2021', '30.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('256', '江西省', '2020', '37.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('257', '江西省', '2019', '37.42', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('258', '江西省', '2018', '36.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('259', '江西省', '2017', '36.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('260', '江西省', '2016', '31.15', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('261', '江西省', '2015', '24.51', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('262', '江西省', '2014', '25.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('263', '江西省', '2013', '21.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('264', '江西省', '2012', '14.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('265', '江西省', '2011', '15.53', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('266', '江西省', '2010', '15.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('267', '江西省', '2009', '15.95', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('268', '江西省', '2008', '13.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('269', '江西省', '2007', '5.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('270', '江西省', '2006', '4.26', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('271', '江西省', '2005', '5.32', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('272', '山东省', '2018', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('273', '山东省', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('274', '山东省', '2016', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('275', '山东省', '2015', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('276', '山东省', '2014', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('277', '山东省', '2013', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('278', '山东省', '2012', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('279', '山东省', '2011', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('280', '山东省', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('281', '山东省', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('282', '山东省', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('283', '山东省', '2007', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('284', '山东省', '2003', '132.35', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('285', '山东省', '2002', '127.28', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('286', '山东省', '2001', '114.96', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('287', '河南省', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('288', '河南省', '2016', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('289', '河南省', '2015', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('290', '河南省', '2014', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('291', '河南省', '2013', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('292', '河南省', '2012', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('293', '河南省', '2011', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('294', '河南省', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('295', '河南省', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('296', '河南省', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('297', '河南省', '2007', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('298', '湖北省', '2023', '251.68', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('299', '湖北省', '2022', '248.51', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('300', '湖北省', '2021', '242.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('301', '湖北省', '2020', '236.62', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('302', '湖北省', '2019', '217.23', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('303', '湖北省', '2018', '203.75', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('304', '湖北省', '2017', '198.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('305', '湖北省', '2016', '205.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('306', '湖北省', '2015', '198.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('307', '湖北省', '2014', '201.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('308', '湖北省', '2013', '192.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('309', '湖北省', '2012', '195.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('310', '湖北省', '2011', '174.36', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('311', '湖北省', '2010', '145.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('312', '湖北省', '2009', '121.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('313', '湖北省', '2008', '116.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('314', '湖北省', '2007', '123.24', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('315', '湖北省', '2006', '215.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('316', '湖北省', '2005', '210.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('317', '湖北省', '2004', '227.07', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('318', '湖北省', '2003', '233.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('319', '湖北省', '2002', '237.41', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('320', '湖北省', '2001', '231.26', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('321', '湖北省', '2000', '231.26', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('322', '湖南省', '2023', '62.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('323', '湖南省', '2022', '63.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('324', '湖南省', '2021', '57.53', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('325', '湖南省', '2020', '55.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('326', '湖南省', '2019', '69.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('327', '湖南省', '2018', '75.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('328', '湖南省', '2017', '71.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('329', '湖南省', '2016', '93.03', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('330', '湖南省', '2015', '101.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('331', '湖南省', '2014', '91.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('332', '湖南省', '2013', '84.16', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('333', '湖南省', '2012', '87.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('334', '湖南省', '2011', '92.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('335', '湖南省', '2010', '89.25', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('336', '湖南省', '2009', '70.44', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('337', '湖南省', '2008', '68.31', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('338', '湖南省', '2007', '66.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('339', '湖南省', '2006', '111.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('340', '湖南省', '2005', '108.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('341', '湖南省', '2004', '109.46', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('342', '湖南省', '2003', '105.43', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('343', '湖南省', '2002', '98.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('344', '湖南省', '2001', '97.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('345', '湖南省', '2000', '97.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('346', '广东省', '2023', '44.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('347', '广东省', '2022', '46.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('348', '广东省', '2021', '48.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('349', '广东省', '2020', '50.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('350', '广东省', '2019', '50.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('351', '广东省', '2018', '51.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('352', '广东省', '2017', '50.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('353', '广东省', '2016', '49.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('354', '广东省', '2015', '47.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('355', '广东省', '2014', '49.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('356', '广东省', '2013', '51.72', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('357', '广东省', '2012', '42.32', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('358', '广东省', '2011', '46.42', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('359', '广东省', '2010', '38.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('360', '广东省', '2009', '37.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('361', '广东省', '2008', '36.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('362', '广东省', '2007', '34.07', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('363', '广东省', '2006', '44.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('364', '广东省', '2005', '43.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('365', '广东省', '2004', '42.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('366', '广东省', '2003', '43.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('367', '广东省', '2002', '47.23', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('368', '广东省', '2001', '53.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('369', '广东省', '2000', '53.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('370', '广西壮族自治区', '2023', '53.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('371', '广西壮族自治区', '2022', '53.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('372', '广西壮族自治区', '2021', '52.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('373', '广西壮族自治区', '2020', '51.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('374', '广西壮族自治区', '2019', '52.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('375', '广西壮族自治区', '2018', '55.34', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('376', '广西壮族自治区', '2017', '60.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('377', '广西壮族自治区', '2016', '73.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('378', '广西壮族自治区', '2015', '77.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('379', '广西壮族自治区', '2014', '64.72', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('380', '广西壮族自治区', '2013', '44.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('381', '广西壮族自治区', '2012', '53.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('382', '广西壮族自治区', '2011', '30.95', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('383', '广西壮族自治区', '2010', '16.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('384', '广西壮族自治区', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('385', '广西壮族自治区', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('386', '海南省', '2021', '0.05', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('387', '海南省', '2020', '0.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('388', '海南省', '2019', '0.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('389', '海南省', '2018', '0.09', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('390', '海南省', '2017', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('391', '海南省', '2016', '0.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('392', '海南省', '2015', '0.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('393', '海南省', '2014', '0.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('394', '海南省', '2013', '0.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('395', '海南省', '2012', '0.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('396', '海南省', '2011', '0.07', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('397', '海南省', '2010', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('398', '海南省', '2009', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('399', '海南省', '2008', '0.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('400', '海南省', '2006', '3.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('401', '重庆市', '2023', '347.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('402', '重庆市', '2022', '328.38', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('403', '重庆市', '2021', '326.88', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('404', '重庆市', '2020', '329.35', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('405', '重庆市', '2019', '334.24', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('406', '重庆市', '2018', '335.03', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('407', '重庆市', '2017', '334.63', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('408', '重庆市', '2016', '330.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('409', '重庆市', '2015', '330.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('410', '重庆市', '2014', '331.72', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('411', '重庆市', '2013', '330.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('412', '重庆市', '2012', '307.18', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('413', '重庆市', '2011', '303.46', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('414', '重庆市', '2010', '298.75', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('415', '重庆市', '2009', '272.01', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('416', '重庆市', '2008', '273.98', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('417', '重庆市', '2007', '314.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('418', '重庆市', '2006', '319.26', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('419', '重庆市', '2005', '306.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('420', '重庆市', '2004', '289.92', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('421', '重庆市', '2003', '306.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('422', '重庆市', '2002', '302.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('423', '重庆市', '2001', '308.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('424', '重庆市', '2000', '308.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('425', '四川省', '2023', '734.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('426', '四川省', '2022', '688.28', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('427', '四川省', '2021', '683.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('428', '四川省', '2020', '679.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('429', '四川省', '2019', '677.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('430', '四川省', '2018', '684.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('431', '四川省', '2017', '676.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('432', '四川省', '2016', '671.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('433', '四川省', '2015', '654.05', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('434', '四川省', '2014', '634.98', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('435', '四川省', '2013', '600.37', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('436', '四川省', '2012', '550.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('437', '四川省', '2011', '526.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('438', '四川省', '2010', '517.67', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('439', '四川省', '2009', '474.92', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('440', '四川省', '2008', '437.41', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('441', '四川省', '2007', '300.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('442', '四川省', '2006', '367.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('443', '四川省', '2005', '371.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('444', '四川省', '2004', '294.34', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('445', '四川省', '2003', '305.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('446', '四川省', '2002', '309.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('447', '四川省', '2001', '303.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('448', '四川省', '2000', '303.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('449', '贵州省', '2023', '742.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('450', '贵州省', '2022', '758.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('451', '贵州省', '2021', '826.88', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('452', '贵州省', '2020', '782.15', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('453', '贵州省', '2019', '730.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('454', '贵州省', '2018', '699.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('455', '贵州省', '2017', '687.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('456', '贵州省', '2016', '668.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('457', '贵州省', '2015', '680.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('458', '贵州省', '2014', '668.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('459', '贵州省', '2013', '662.89', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('460', '贵州省', '2012', '626.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('461', '贵州省', '2011', '610.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('462', '贵州省', '2010', '603.29', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('463', '贵州省', '2009', '564.98', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('464', '贵州省', '2008', '567.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('465', '贵州省', '2007', '592.83', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('466', '贵州省', '2006', '752.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('467', '贵州省', '2005', '551.41', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('468', '贵州省', '2004', '519.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('469', '贵州省', '2003', '508.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('470', '贵州省', '2002', '494.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('471', '贵州省', '2001', '477.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('472', '贵州省', '2000', '477.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('473', '云南省', '2023', '518.88', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('474', '云南省', '2022', '529.82', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('475', '云南省', '2021', '484.05', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('476', '云南省', '2020', '474.37', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('477', '云南省', '2019', '473.88', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('478', '云南省', '2018', '470.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('479', '云南省', '2017', '470.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('480', '云南省', '2016', '478.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('481', '云南省', '2015', '489.78', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('482', '云南省', '2014', '469.58', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('483', '云南省', '2013', '466.47', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('484', '云南省', '2012', '455.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('485', '云南省', '2011', '448.09', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('486', '云南省', '2010', '456.91', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('487', '云南省', '2009', '432.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('488', '云南省', '2008', '417.13', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('489', '云南省', '2007', '414.67', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('490', '云南省', '2006', '497.79', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('491', '云南省', '2005', '444.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('492', '云南省', '2004', '419.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('493', '云南省', '2003', '348.13', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('494', '云南省', '2002', '378.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('495', '云南省', '2001', '316.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('496', '云南省', '2000', '316.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('497', '西藏自治区', '2023', '1.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('498', '西藏自治区', '2022', '1.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('499', '西藏自治区', '2021', '1.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('500', '西藏自治区', '2020', '1.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('501', '西藏自治区', '2019', '0.94', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('502', '西藏自治区', '2018', '0.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('503', '西藏自治区', '2017', '1.02', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('504', '西藏自治区', '2016', '1.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('505', '西藏自治区', '2015', '1.01', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('506', '西藏自治区', '2014', '0.82', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('507', '西藏自治区', '2013', '0.79', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('508', '西藏自治区', '2012', '0.62', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('509', '西藏自治区', '2011', '0.54', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('510', '西藏自治区', '2010', '0.53', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('511', '西藏自治区', '2009', '0.53', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('512', '西藏自治区', '2008', '0.62', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('513', '西藏自治区', '2007', '0.61', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('514', '西藏自治区', '2006', '0.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('515', '西藏自治区', '2005', '1.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('516', '西藏自治区', '2004', '0.25', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('517', '西藏自治区', '2003', '0.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('518', '陕西省', '2023', '282.81', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('519', '陕西省', '2022', '297.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('520', '陕西省', '2021', '308.79', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('521', '陕西省', '2020', '308.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('522', '陕西省', '2019', '309.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('523', '陕西省', '2018', '310.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('524', '陕西省', '2017', '291.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('525', '陕西省', '2016', '293.19', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('526', '陕西省', '2015', '293.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('527', '陕西省', '2014', '278.91', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('528', '陕西省', '2013', '264.84', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('529', '陕西省', '2012', '279.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('530', '陕西省', '2011', '261.08', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('531', '陕西省', '2010', '258.95', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('532', '陕西省', '2009', '258.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('533', '陕西省', '2008', '257.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('534', '陕西省', '2007', '249.44', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('535', '陕西省', '2006', '239.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('536', '陕西省', '2005', '229.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('537', '陕西省', '2004', '240.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('538', '陕西省', '2003', '262.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('539', '陕西省', '2002', '262.19', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('540', '陕西省', '2001', '304.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('541', '陕西省', '2000', '304.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('542', '甘肃省', '2023', '576.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('543', '甘肃省', '2022', '586.06', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('544', '甘肃省', '2021', '574.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('545', '甘肃省', '2020', '558.72', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('546', '甘肃省', '2019', '570.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('547', '甘肃省', '2018', '565.31', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('548', '甘肃省', '2017', '553.97', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('549', '甘肃省', '2016', '557.39', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('550', '甘肃省', '2015', '583.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('551', '甘肃省', '2014', '609.09', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('552', '甘肃省', '2013', '608.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('553', '甘肃省', '2012', '613.98', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('554', '甘肃省', '2011', '596.77', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('555', '甘肃省', '2010', '606.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('556', '甘肃省', '2009', '594.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('557', '甘肃省', '2008', '591.73', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('558', '甘肃省', '2007', '579.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('559', '甘肃省', '2006', '531.03', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('560', '甘肃省', '2005', '549.14', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('561', '甘肃省', '2004', '496.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('562', '甘肃省', '2003', '484.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('563', '甘肃省', '2002', '483.21', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('564', '甘肃省', '2001', '417.12', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('565', '甘肃省', '2000', '417.12', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('566', '青海省', '2023', '67.85', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('567', '青海省', '2022', '70.49', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('568', '青海省', '2021', '73.48', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('569', '青海省', '2020', '77.10', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('570', '青海省', '2019', '88.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('571', '青海省', '2018', '86.83', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('572', '青海省', '2017', '85.55', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('573', '青海省', '2016', '85.59', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('574', '青海省', '2015', '88.74', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('575', '青海省', '2014', '90.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('576', '青海省', '2013', '80.87', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('577', '青海省', '2012', '85.56', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('578', '青海省', '2011', '84.75', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('579', '青海省', '2010', '85.17', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('580', '青海省', '2009', '71.29', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('581', '青海省', '2008', '52.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('582', '青海省', '2007', '35.53', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('583', '青海省', '2006', '75.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('584', '青海省', '2005', '67.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('585', '青海省', '2004', '65.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('586', '青海省', '2003', '60.70', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('587', '青海省', '2002', '56.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('588', '青海省', '2001', '46.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('589', '青海省', '2000', '46.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('590', '宁夏回族自治区', '2023', '80.68', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('591', '宁夏回族自治区', '2022', '99.99', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('592', '宁夏回族自治区', '2021', '95.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('593', '宁夏回族自治区', '2020', '92.71', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('594', '宁夏回族自治区', '2019', '109.93', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('595', '宁夏回族自治区', '2018', '118.67', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('596', '宁夏回族自治区', '2017', '123.33', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('597', '宁夏回族自治区', '2016', '128.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('598', '宁夏回族自治区', '2015', '137.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('599', '宁夏回族自治区', '2014', '172.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('600', '宁夏回族自治区', '2013', '178.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('601', '宁夏回族自治区', '2012', '191.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('602', '宁夏回族自治区', '2011', '195.60', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('603', '宁夏回族自治区', '2010', '198.00', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('604', '宁夏回族自治区', '2009', '217.37', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('605', '宁夏回族自治区', '2008', '194.50', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('606', '宁夏回族自治区', '2007', '141.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('607', '宁夏回族自治区', '2006', '117.27', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('608', '宁夏回族自治区', '2005', '103.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('609', '宁夏回族自治区', '2004', '87.69', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('610', '宁夏回族自治区', '2003', '75.90', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('611', '宁夏回族自治区', '2002', '81.20', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('612', '宁夏回族自治区', '2001', '76.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('613', '宁夏回族自治区', '2000', '76.40', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('614', '新疆维吾尔自治区', '2023', '18.95', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('615', '新疆维吾尔自治区', '2022', '19.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('616', '新疆维吾尔自治区', '2021', '19.57', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('617', '新疆维吾尔自治区', '2020', '17.16', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('618', '新疆维吾尔自治区', '2019', '15.12', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('619', '新疆维吾尔自治区', '2018', '19.30', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('620', '新疆维吾尔自治区', '2017', '21.86', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('621', '新疆维吾尔自治区', '2016', '21.01', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('622', '新疆维吾尔自治区', '2015', '26.64', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('623', '新疆维吾尔自治区', '2014', '23.80', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('624', '新疆维吾尔自治区', '2013', '22.91', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('625', '新疆维吾尔自治区', '2012', '39.19', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('626', '新疆维吾尔自治区', '2011', '29.42', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('627', '新疆维吾尔自治区', '2010', '21.04', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('628', '新疆维吾尔自治区', '2009', '31.43', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('629', '新疆维吾尔自治区', '2008', '32.03', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('630', '新疆维吾尔自治区', '2007', '22.79', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('631', '新疆维吾尔自治区', '2006', '18.51', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('632', '新疆维吾尔自治区', '2005', '23.11', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('633', '新疆维吾尔自治区', '2004', '22.45', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('634', '新疆维吾尔自治区', '2003', '20.65', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('635', '新疆维吾尔自治区', '2002', '20.77', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('636', '新疆维吾尔自治区', '2001', '22.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');
INSERT INTO `potato_planting_area` VALUES ('637', '新疆维吾尔自治区', '2000', '22.52', '2025-06-30 19:04:21', '2025-06-30 19:04:21');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '农产品唯一ID',
  `name` varchar(50) NOT NULL COMMENT '农产品名称',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='农产品种类表';

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '大豆', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('2', '甘蔗', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('3', '高粱', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('4', '谷子', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('5', '花生', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('6', '马铃薯', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('7', '棉花', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('8', '小麦', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('9', '烟叶', '2025-06-30 17:04:03');
INSERT INTO `products` VALUES ('10', '玉米', '2025-06-30 17:04:03');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sorghum_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `sorghum_planting_area`;
CREATE TABLE `sorghum_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=659 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='高粱播种面积统计表(分省年度数据)';

-- ----------------------------
-- Records of sorghum_planting_area
-- ----------------------------
INSERT INTO `sorghum_planting_area` VALUES ('1', '北京市', '2022', '0.48', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('2', '北京市', '2021', '0.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('3', '北京市', '2020', '0.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('4', '北京市', '2019', '0.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('5', '北京市', '2018', '0.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('6', '北京市', '2017', '0.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('7', '北京市', '2016', '0.19', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('8', '北京市', '2015', '0.21', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('9', '北京市', '2014', '0.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('10', '北京市', '2013', '0.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('11', '北京市', '2012', '0.29', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('12', '北京市', '2011', '0.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('13', '北京市', '2010', '0.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('14', '北京市', '2009', '0.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('15', '北京市', '2008', '0.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('16', '北京市', '2007', '0.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('17', '北京市', '2006', '0.55', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('18', '北京市', '2005', '0.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('19', '北京市', '2004', '0.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('20', '北京市', '2003', '0.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('21', '北京市', '2002', '1.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('22', '北京市', '2001', '1.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('23', '北京市', '2000', '2.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('24', '天津市', '2022', '9.09', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('25', '天津市', '2021', '6.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('26', '天津市', '2020', '7.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('27', '天津市', '2019', '4.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('28', '天津市', '2018', '4.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('29', '天津市', '2017', '2.56', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('30', '天津市', '2016', '1.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('31', '天津市', '2015', '0.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('32', '天津市', '2014', '4.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('33', '天津市', '2013', '4.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('34', '天津市', '2012', '1.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('35', '天津市', '2011', '0.85', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('36', '天津市', '2010', '0.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('37', '天津市', '2009', '0.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('38', '天津市', '2008', '0.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('39', '天津市', '2007', '0.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('40', '天津市', '2006', '1.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('41', '天津市', '2005', '3.84', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('42', '天津市', '2004', '4.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('43', '天津市', '2003', '13.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('44', '天津市', '2002', '14.76', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('45', '天津市', '2001', '15.87', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('46', '天津市', '2000', '10.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('47', '河北省', '2022', '33.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('48', '河北省', '2021', '28.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('49', '河北省', '2020', '20.74', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('50', '河北省', '2019', '10.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('51', '河北省', '2018', '9.78', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('52', '河北省', '2017', '2.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('53', '河北省', '2016', '2.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('54', '河北省', '2015', '12.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('55', '河北省', '2014', '13.72', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('56', '河北省', '2013', '14.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('57', '河北省', '2012', '14.65', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('58', '河北省', '2011', '14.82', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('59', '河北省', '2010', '16.83', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('60', '河北省', '2009', '18.88', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('61', '河北省', '2008', '23.47', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('62', '河北省', '2007', '24.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('63', '河北省', '2006', '28.95', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('64', '河北省', '2005', '30.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('65', '河北省', '2004', '43.52', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('66', '河北省', '2003', '45.58', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('67', '河北省', '2002', '46.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('68', '河北省', '2001', '54.91', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('69', '河北省', '2000', '52.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('70', '山西省', '2022', '103.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('71', '山西省', '2021', '104.76', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('72', '山西省', '2020', '87.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('73', '山西省', '2019', '66.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('74', '山西省', '2018', '32.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('75', '山西省', '2017', '22.48', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('76', '山西省', '2016', '20.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('77', '山西省', '2015', '20.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('78', '山西省', '2014', '27.54', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('79', '山西省', '2013', '26.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('80', '山西省', '2012', '26.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('81', '山西省', '2011', '27.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('82', '山西省', '2010', '32.47', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('83', '山西省', '2009', '26.81', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('84', '山西省', '2008', '32.85', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('85', '山西省', '2007', '35.08', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('86', '山西省', '2006', '31.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('87', '山西省', '2005', '38.55', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('88', '山西省', '2004', '40.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('89', '山西省', '2003', '59.56', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('90', '山西省', '2002', '73.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('91', '山西省', '2001', '63.29', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('92', '山西省', '2000', '68.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('93', '内蒙古自治区', '2022', '122.88', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('94', '内蒙古自治区', '2021', '160.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('95', '内蒙古自治区', '2020', '149.97', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('96', '内蒙古自治区', '2019', '165.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('97', '内蒙古自治区', '2018', '171.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('98', '内蒙古自治区', '2017', '90.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('99', '内蒙古自治区', '2016', '90.66', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('100', '内蒙古自治区', '2015', '81.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('101', '内蒙古自治区', '2014', '89.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('102', '内蒙古自治区', '2013', '104.63', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('103', '内蒙古自治区', '2012', '115.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('104', '内蒙古自治区', '2011', '106.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('105', '内蒙古自治区', '2010', '135.42', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('106', '内蒙古自治区', '2009', '109.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('107', '内蒙古自治区', '2008', '107.63', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('108', '内蒙古自治区', '2007', '73.46', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('109', '内蒙古自治区', '2006', '102.99', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('110', '内蒙古自治区', '2005', '57.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('111', '内蒙古自治区', '2004', '57.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('112', '内蒙古自治区', '2003', '84.42', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('113', '内蒙古自治区', '2002', '109.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('114', '内蒙古自治区', '2001', '68.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('115', '内蒙古自治区', '2000', '108.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('116', '辽宁省', '2022', '41.66', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('117', '辽宁省', '2021', '44.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('118', '辽宁省', '2020', '44.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('119', '辽宁省', '2019', '41.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('120', '辽宁省', '2018', '37.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('121', '辽宁省', '2017', '36.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('122', '辽宁省', '2016', '36.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('123', '辽宁省', '2015', '33.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('124', '辽宁省', '2014', '36.64', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('125', '辽宁省', '2013', '32.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('126', '辽宁省', '2012', '37.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('127', '辽宁省', '2011', '45.39', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('128', '辽宁省', '2010', '57.31', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('129', '辽宁省', '2009', '81.42', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('130', '辽宁省', '2008', '65.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('131', '辽宁省', '2007', '80.76', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('132', '辽宁省', '2006', '95.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('133', '辽宁省', '2005', '112.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('134', '辽宁省', '2004', '117.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('135', '辽宁省', '2003', '127.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('136', '辽宁省', '2002', '178.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('137', '辽宁省', '2001', '186.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('138', '辽宁省', '2000', '188.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('139', '吉林省', '2022', '46.98', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('140', '吉林省', '2021', '73.81', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('141', '吉林省', '2020', '63.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('142', '吉林省', '2019', '80.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('143', '吉林省', '2018', '107.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('144', '吉林省', '2017', '117.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('145', '吉林省', '2016', '105.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('146', '吉林省', '2015', '95.31', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('147', '吉林省', '2014', '118.94', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('148', '吉林省', '2013', '117.78', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('149', '吉林省', '2012', '130.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('150', '吉林省', '2011', '98.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('151', '吉林省', '2010', '99.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('152', '吉林省', '2009', '95.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('153', '吉林省', '2008', '136.39', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('154', '吉林省', '2007', '155.96', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('155', '吉林省', '2006', '257.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('156', '吉林省', '2005', '85.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('157', '吉林省', '2004', '53.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('158', '吉林省', '2003', '95.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('159', '吉林省', '2002', '90.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('160', '吉林省', '2001', '82.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('161', '吉林省', '2000', '121.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('162', '黑龙江省', '2022', '15.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('163', '黑龙江省', '2021', '24.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('164', '黑龙江省', '2020', '23.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('165', '黑龙江省', '2019', '44.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('166', '黑龙江省', '2018', '57.79', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('167', '黑龙江省', '2017', '53.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('168', '黑龙江省', '2016', '45.17', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('169', '黑龙江省', '2015', '26.29', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('170', '黑龙江省', '2014', '34.58', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('171', '黑龙江省', '2013', '25.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('172', '黑龙江省', '2012', '29.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('173', '黑龙江省', '2011', '33.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('174', '黑龙江省', '2010', '40.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('175', '黑龙江省', '2009', '33.82', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('176', '黑龙江省', '2008', '34.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('177', '黑龙江省', '2007', '24.56', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('178', '黑龙江省', '2006', '72.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('179', '黑龙江省', '2005', '71.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('180', '黑龙江省', '2004', '64.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('181', '黑龙江省', '2003', '102.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('182', '黑龙江省', '2002', '124.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('183', '黑龙江省', '2001', '108.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('184', '黑龙江省', '2000', '115.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('185', '上海市', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('186', '上海市', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('187', '上海市', '2015', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('188', '上海市', '2014', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('189', '上海市', '2013', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('190', '上海市', '2012', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('191', '上海市', '2011', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('192', '上海市', '2010', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('193', '上海市', '2009', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('194', '上海市', '2008', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('195', '上海市', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('196', '江苏省', '2022', '1.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('197', '江苏省', '2021', '0.65', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('198', '江苏省', '2020', '0.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('199', '江苏省', '2019', '0.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('200', '江苏省', '2018', '0.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('201', '江苏省', '2017', '0.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('202', '江苏省', '2016', '0.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('203', '江苏省', '2015', '0.21', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('204', '江苏省', '2014', '0.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('205', '江苏省', '2013', '0.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('206', '江苏省', '2012', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('207', '江苏省', '2011', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('208', '江苏省', '2010', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('209', '江苏省', '2009', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('210', '江苏省', '2008', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('211', '江苏省', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('212', '江苏省', '2006', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('213', '江苏省', '2005', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('214', '江苏省', '2004', '0.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('215', '江苏省', '2003', '1.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('216', '江苏省', '2002', '0.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('217', '江苏省', '2001', '0.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('218', '江苏省', '2000', '0.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('219', '浙江省', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('220', '浙江省', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('221', '浙江省', '2015', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('222', '浙江省', '2014', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('223', '浙江省', '2013', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('224', '浙江省', '2012', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('225', '浙江省', '2011', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('226', '浙江省', '2010', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('227', '浙江省', '2009', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('228', '浙江省', '2008', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('229', '浙江省', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('230', '安徽省', '2022', '12.84', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('231', '安徽省', '2021', '6.46', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('232', '安徽省', '2020', '6.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('233', '安徽省', '2019', '5.73', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('234', '安徽省', '2018', '0.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('235', '安徽省', '2017', '0.31', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('236', '安徽省', '2016', '0.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('237', '安徽省', '2015', '0.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('238', '安徽省', '2014', '2.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('239', '安徽省', '2013', '1.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('240', '安徽省', '2012', '1.21', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('241', '安徽省', '2011', '1.17', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('242', '安徽省', '2010', '1.17', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('243', '安徽省', '2009', '1.17', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('244', '安徽省', '2008', '1.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('245', '安徽省', '2007', '1.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('246', '安徽省', '2006', '2.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('247', '安徽省', '2005', '2.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('248', '安徽省', '2004', '3.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('249', '安徽省', '2003', '5.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('250', '安徽省', '2002', '4.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('251', '安徽省', '2001', '4.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('252', '福建省', '2022', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('253', '福建省', '2021', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('254', '福建省', '2020', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('255', '福建省', '2019', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('256', '福建省', '2018', '0.09', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('257', '福建省', '2017', '0.09', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('258', '福建省', '2016', '0.09', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('259', '福建省', '2015', '0.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('260', '福建省', '2014', '0.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('261', '福建省', '2013', '0.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('262', '福建省', '2012', '0.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('263', '福建省', '2011', '0.45', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('264', '福建省', '2010', '0.58', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('265', '福建省', '2009', '0.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('266', '福建省', '2008', '0.98', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('267', '福建省', '2007', '1.14', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('268', '福建省', '2006', '1.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('269', '福建省', '2005', '2.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('270', '福建省', '2004', '2.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('271', '福建省', '2003', '3.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('272', '福建省', '2002', '3.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('273', '福建省', '2001', '4.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('274', '福建省', '2000', '4.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('275', '江西省', '2022', '3.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('276', '江西省', '2021', '3.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('277', '江西省', '2020', '2.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('278', '江西省', '2019', '2.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('279', '江西省', '2018', '2.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('280', '江西省', '2017', '2.48', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('281', '江西省', '2016', '2.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('282', '江西省', '2015', '2.97', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('283', '江西省', '2014', '2.95', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('284', '江西省', '2013', '3.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('285', '江西省', '2012', '2.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('286', '江西省', '2011', '1.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('287', '江西省', '2010', '0.81', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('288', '江西省', '2009', '0.73', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('289', '江西省', '2008', '1.39', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('290', '江西省', '2007', '1.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('291', '江西省', '2006', '1.29', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('292', '江西省', '2005', '1.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('293', '江西省', '2004', '1.19', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('294', '江西省', '2003', '1.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('295', '江西省', '2002', '1.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('296', '江西省', '2001', '1.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('297', '江西省', '2000', '1.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('298', '山东省', '2022', '2.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('299', '山东省', '2021', '2.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('300', '山东省', '2020', '2.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('301', '山东省', '2019', '2.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('302', '山东省', '2018', '3.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('303', '山东省', '2017', '3.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('304', '山东省', '2016', '2.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('305', '山东省', '2015', '2.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('306', '山东省', '2014', '3.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('307', '山东省', '2013', '3.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('308', '山东省', '2012', '3.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('309', '山东省', '2011', '3.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('310', '山东省', '2010', '4.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('311', '山东省', '2009', '5.72', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('312', '山东省', '2008', '6.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('313', '山东省', '2007', '6.63', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('314', '山东省', '2006', '9.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('315', '山东省', '2005', '13.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('316', '山东省', '2004', '15.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('317', '山东省', '2003', '20.87', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('318', '山东省', '2002', '20.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('319', '山东省', '2001', '24.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('320', '山东省', '2000', '28.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('321', '河南省', '2022', '15.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('322', '河南省', '2021', '12.73', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('323', '河南省', '2020', '19.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('324', '河南省', '2019', '20.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('325', '河南省', '2018', '21.34', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('326', '河南省', '2017', '21.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('327', '河南省', '2016', '14.67', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('328', '河南省', '2015', '10.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('329', '河南省', '2014', '5.45', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('330', '河南省', '2013', '2.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('331', '河南省', '2012', '2.42', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('332', '河南省', '2011', '2.99', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('333', '河南省', '2010', '3.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('334', '河南省', '2009', '3.85', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('335', '河南省', '2008', '3.65', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('336', '河南省', '2007', '3.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('337', '河南省', '2006', '3.91', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('338', '河南省', '2005', '6.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('339', '河南省', '2004', '8.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('340', '河南省', '2003', '9.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('341', '河南省', '2002', '9.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('342', '河南省', '2001', '9.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('343', '河南省', '2000', '12.87', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('344', '湖北省', '2022', '9.65', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('345', '湖北省', '2021', '5.99', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('346', '湖北省', '2020', '5.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('347', '湖北省', '2019', '4.31', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('348', '湖北省', '2018', '4.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('349', '湖北省', '2017', '5.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('350', '湖北省', '2016', '5.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('351', '湖北省', '2015', '4.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('352', '湖北省', '2014', '4.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('353', '湖北省', '2013', '4.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('354', '湖北省', '2012', '5.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('355', '湖北省', '2011', '5.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('356', '湖北省', '2010', '4.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('357', '湖北省', '2009', '4.66', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('358', '湖北省', '2008', '3.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('359', '湖北省', '2007', '3.29', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('360', '湖北省', '2006', '3.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('361', '湖北省', '2005', '3.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('362', '湖北省', '2004', '2.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('363', '湖北省', '2003', '4.73', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('364', '湖北省', '2002', '5.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('365', '湖北省', '2001', '4.85', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('366', '湖北省', '2000', '7.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('367', '湖南省', '2022', '9.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('368', '湖南省', '2021', '8.97', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('369', '湖南省', '2020', '8.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('370', '湖南省', '2019', '10.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('371', '湖南省', '2018', '9.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('372', '湖南省', '2017', '6.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('373', '湖南省', '2016', '6.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('374', '湖南省', '2015', '6.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('375', '湖南省', '2014', '6.45', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('376', '湖南省', '2013', '4.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('377', '湖南省', '2012', '2.83', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('378', '湖南省', '2011', '2.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('379', '湖南省', '2010', '2.45', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('380', '湖南省', '2009', '3.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('381', '湖南省', '2008', '3.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('382', '湖南省', '2007', '3.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('383', '湖南省', '2006', '5.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('384', '湖南省', '2005', '11.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('385', '湖南省', '2004', '11.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('386', '湖南省', '2003', '12.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('387', '湖南省', '2002', '12.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('388', '湖南省', '2001', '11.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('389', '湖南省', '2000', '12.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('390', '广东省', '2022', '0.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('391', '广东省', '2021', '0.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('392', '广东省', '2020', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('393', '广东省', '2019', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('394', '广东省', '2018', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('395', '广东省', '2017', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('396', '广东省', '2016', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('397', '广东省', '2015', '0.03', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('398', '广东省', '2014', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('399', '广东省', '2013', '0.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('400', '广东省', '2012', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('401', '广东省', '2011', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('402', '广东省', '2010', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('403', '广东省', '2009', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('404', '广东省', '2008', '0.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('405', '广东省', '2007', '0.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('406', '广东省', '2006', '0.17', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('407', '广东省', '2005', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('408', '广东省', '2004', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('409', '广东省', '2003', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('410', '广东省', '2002', '0.24', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('411', '广东省', '2001', '0.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('412', '广东省', '2000', '0.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('413', '广西壮族自治区', '2022', '3.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('414', '广西壮族自治区', '2021', '3.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('415', '广西壮族自治区', '2020', '3.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('416', '广西壮族自治区', '2019', '5.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('417', '广西壮族自治区', '2018', '5.55', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('418', '广西壮族自治区', '2017', '5.84', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('419', '广西壮族自治区', '2016', '6.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('420', '广西壮族自治区', '2015', '6.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('421', '广西壮族自治区', '2014', '6.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('422', '广西壮族自治区', '2013', '6.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('423', '广西壮族自治区', '2012', '4.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('424', '广西壮族自治区', '2011', '3.38', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('425', '广西壮族自治区', '2010', '3.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('426', '广西壮族自治区', '2009', '3.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('427', '广西壮族自治区', '2008', '2.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('428', '广西壮族自治区', '2007', '2.79', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('429', '广西壮族自治区', '2006', '2.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('430', '广西壮族自治区', '2005', '2.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('431', '广西壮族自治区', '2004', '2.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('432', '广西壮族自治区', '2003', '3.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('433', '广西壮族自治区', '2002', '3.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('434', '广西壮族自治区', '2001', '4.80', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('435', '广西壮族自治区', '2000', '4.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('436', '海南省', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('437', '海南省', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('438', '海南省', '2015', '0.01', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('439', '海南省', '2014', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('440', '海南省', '2013', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('441', '海南省', '2012', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('442', '海南省', '2011', '0.01', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('443', '海南省', '2010', '0.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('444', '海南省', '2009', '0.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('445', '海南省', '2008', '0.08', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('446', '海南省', '2007', '0.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('447', '海南省', '2006', '0.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('448', '海南省', '2004', '0.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('449', '海南省', '2003', '0.01', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('450', '海南省', '2002', '0.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('451', '海南省', '2001', '0.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('452', '海南省', '2000', '0.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('453', '重庆市', '2022', '18.72', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('454', '重庆市', '2021', '16.96', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('455', '重庆市', '2020', '16.46', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('456', '重庆市', '2019', '15.98', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('457', '重庆市', '2018', '16.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('458', '重庆市', '2017', '15.97', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('459', '重庆市', '2016', '15.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('460', '重庆市', '2015', '16.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('461', '重庆市', '2014', '16.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('462', '重庆市', '2013', '15.52', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('463', '重庆市', '2012', '13.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('464', '重庆市', '2011', '12.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('465', '重庆市', '2010', '12.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('466', '重庆市', '2009', '11.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('467', '重庆市', '2008', '9.72', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('468', '重庆市', '2007', '8.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('469', '重庆市', '2006', '8.36', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('470', '重庆市', '2005', '26.78', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('471', '重庆市', '2004', '37.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('472', '重庆市', '2003', '26.97', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('473', '重庆市', '2002', '23.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('474', '重庆市', '2001', '21.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('475', '重庆市', '2000', '22.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('476', '四川省', '2022', '65.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('477', '四川省', '2021', '64.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('478', '四川省', '2020', '54.92', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('479', '四川省', '2019', '50.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('480', '四川省', '2018', '36.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('481', '四川省', '2017', '33.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('482', '四川省', '2016', '30.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('483', '四川省', '2015', '29.95', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('484', '四川省', '2014', '31.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('485', '四川省', '2013', '31.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('486', '四川省', '2012', '31.21', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('487', '四川省', '2011', '30.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('488', '四川省', '2010', '30.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('489', '四川省', '2009', '30.25', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('490', '四川省', '2008', '29.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('491', '四川省', '2007', '32.64', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('492', '四川省', '2006', '36.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('493', '四川省', '2005', '39.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('494', '四川省', '2004', '42.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('495', '四川省', '2003', '46.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('496', '四川省', '2002', '48.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('497', '四川省', '2001', '44.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('498', '四川省', '2000', '42.89', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('499', '贵州省', '2022', '112.59', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('500', '贵州省', '2021', '101.23', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('501', '贵州省', '2020', '83.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('502', '贵州省', '2019', '72.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('503', '贵州省', '2018', '61.48', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('504', '贵州省', '2017', '45.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('505', '贵州省', '2016', '46.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('506', '贵州省', '2015', '42.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('507', '贵州省', '2014', '48.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('508', '贵州省', '2013', '50.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('509', '贵州省', '2012', '41.95', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('510', '贵州省', '2011', '35.57', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('511', '贵州省', '2010', '36.20', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('512', '贵州省', '2009', '27.84', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('513', '贵州省', '2008', '21.79', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('514', '贵州省', '2007', '27.86', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('515', '贵州省', '2006', '30.45', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('516', '贵州省', '2005', '24.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('517', '贵州省', '2004', '21.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('518', '贵州省', '2003', '20.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('519', '贵州省', '2002', '18.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('520', '贵州省', '2001', '18.70', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('521', '贵州省', '2000', '17.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('522', '云南省', '2022', '4.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('523', '云南省', '2021', '4.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('524', '云南省', '2020', '4.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('525', '云南省', '2019', '3.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('526', '云南省', '2018', '3.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('527', '云南省', '2017', '3.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('528', '云南省', '2016', '3.44', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('529', '云南省', '2015', '3.18', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('530', '云南省', '2014', '3.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('531', '云南省', '2013', '2.55', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('532', '云南省', '2012', '2.75', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('533', '云南省', '2011', '2.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('534', '云南省', '2010', '2.75', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('535', '云南省', '2009', '2.32', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('536', '云南省', '2008', '2.34', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('537', '云南省', '2007', '2.64', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('538', '云南省', '2006', '2.06', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('539', '云南省', '2005', '2.61', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('540', '云南省', '2004', '2.56', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('541', '云南省', '2003', '3.02', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('542', '云南省', '2002', '2.09', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('543', '云南省', '2001', '2.71', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('544', '云南省', '2000', '8.30', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('545', '西藏自治区', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('546', '西藏自治区', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('547', '西藏自治区', '2015', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('548', '西藏自治区', '2014', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('549', '西藏自治区', '2013', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('550', '西藏自治区', '2012', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('551', '西藏自治区', '2011', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('552', '西藏自治区', '2010', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('553', '西藏自治区', '2009', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('554', '西藏自治区', '2008', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('555', '西藏自治区', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('556', '陕西省', '2022', '24.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('557', '陕西省', '2021', '22.86', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('558', '陕西省', '2020', '17.98', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('559', '陕西省', '2019', '17.92', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('560', '陕西省', '2018', '17.07', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('561', '陕西省', '2017', '16.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('562', '陕西省', '2016', '16.04', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('563', '陕西省', '2015', '15.63', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('564', '陕西省', '2014', '16.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('565', '陕西省', '2013', '17.65', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('566', '陕西省', '2012', '8.52', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('567', '陕西省', '2011', '9.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('568', '陕西省', '2010', '9.91', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('569', '陕西省', '2009', '9.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('570', '陕西省', '2008', '12.95', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('571', '陕西省', '2007', '11.72', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('572', '陕西省', '2006', '8.26', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('573', '陕西省', '2005', '5.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('574', '陕西省', '2004', '5.10', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('575', '陕西省', '2003', '6.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('576', '陕西省', '2002', '16.60', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('577', '陕西省', '2001', '15.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('578', '陕西省', '2000', '19.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('579', '甘肃省', '2022', '6.76', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('580', '甘肃省', '2021', '7.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('581', '甘肃省', '2020', '6.98', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('582', '甘肃省', '2019', '5.99', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('583', '甘肃省', '2018', '8.16', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('584', '甘肃省', '2017', '14.14', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('585', '甘肃省', '2016', '12.35', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('586', '甘肃省', '2015', '8.42', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('587', '甘肃省', '2014', '9.63', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('588', '甘肃省', '2013', '8.78', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('589', '甘肃省', '2012', '6.41', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('590', '甘肃省', '2011', '8.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('591', '甘肃省', '2010', '9.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('592', '甘肃省', '2009', '12.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('593', '甘肃省', '2008', '14.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('594', '甘肃省', '2007', '15.15', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('595', '甘肃省', '2006', '18.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('596', '甘肃省', '2005', '18.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('597', '甘肃省', '2004', '19.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('598', '甘肃省', '2003', '18.43', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('599', '甘肃省', '2002', '18.81', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('600', '甘肃省', '2001', '18.74', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('601', '甘肃省', '2000', '18.47', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('602', '青海省', '2018', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('603', '青海省', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('604', '青海省', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('605', '青海省', '2015', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('606', '青海省', '2014', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('607', '青海省', '2013', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('608', '青海省', '2012', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('609', '青海省', '2011', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('610', '青海省', '2010', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('611', '青海省', '2009', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('612', '青海省', '2008', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('613', '青海省', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('614', '青海省', '2006', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('615', '宁夏回族自治区', '2022', '0.77', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('616', '宁夏回族自治区', '2021', '0.69', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('617', '宁夏回族自治区', '2018', '3.13', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('618', '宁夏回族自治区', '2017', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('619', '宁夏回族自治区', '2016', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('620', '宁夏回族自治区', '2015', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('621', '宁夏回族自治区', '2014', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('622', '宁夏回族自治区', '2013', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('623', '宁夏回族自治区', '2012', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('624', '宁夏回族自治区', '2011', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('625', '宁夏回族自治区', '2010', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('626', '宁夏回族自治区', '2009', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('627', '宁夏回族自治区', '2008', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('628', '宁夏回族自治区', '2007', '0.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('629', '宁夏回族自治区', '2006', '0.37', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('630', '宁夏回族自治区', '2005', '0.11', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('631', '宁夏回族自治区', '2004', '0.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('632', '宁夏回族自治区', '2003', '0.94', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('633', '宁夏回族自治区', '2002', '0.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('634', '宁夏回族自治区', '2001', '1.50', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('635', '宁夏回族自治区', '2000', '0.90', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('636', '新疆维吾尔自治区', '2022', '10.00', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('637', '新疆维吾尔自治区', '2021', '10.46', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('638', '新疆维吾尔自治区', '2020', '4.27', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('639', '新疆维吾尔自治区', '2019', '8.75', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('640', '新疆维吾尔自治区', '2018', '8.33', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('641', '新疆维吾尔自治区', '2017', '4.94', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('642', '新疆维吾尔自治区', '2016', '7.22', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('643', '新疆维吾尔自治区', '2015', '5.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('644', '新疆维吾尔自治区', '2014', '7.93', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('645', '新疆维吾尔自治区', '2013', '8.31', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('646', '新疆维吾尔自治区', '2012', '7.49', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('647', '新疆维吾尔自治区', '2011', '5.46', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('648', '新疆维吾尔自治区', '2010', '5.12', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('649', '新疆维吾尔自治区', '2009', '5.05', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('650', '新疆维吾尔自治区', '2008', '2.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('651', '新疆维吾尔自治区', '2007', '5.53', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('652', '新疆维吾尔自治区', '2006', '7.56', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('653', '新疆维吾尔自治区', '2005', '9.91', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('654', '新疆维吾尔自治区', '2004', '10.68', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('655', '新疆维吾尔自治区', '2003', '11.40', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('656', '新疆维吾尔自治区', '2002', '16.62', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('657', '新疆维吾尔自治区', '2001', '11.76', '2025-06-30 17:35:54', '2025-06-30 17:35:54');
INSERT INTO `sorghum_planting_area` VALUES ('658', '新疆维吾尔自治区', '2000', '13.28', '2025-06-30 17:35:54', '2025-06-30 17:35:54');

-- ----------------------------
-- Table structure for soybean_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `soybean_planting_area`;
CREATE TABLE `soybean_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='大豆播种面积统计表(分省年度数据)';

-- ----------------------------
-- Records of soybean_planting_area
-- ----------------------------
INSERT INTO `soybean_planting_area` VALUES ('1', '北京市', '2023', '4.26', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('2', '北京市', '2022', '3.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('3', '北京市', '2021', '1.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('4', '北京市', '2020', '1.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('5', '北京市', '2019', '1.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('6', '北京市', '2018', '1.85', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('7', '北京市', '2017', '2.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('8', '北京市', '2016', '1.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('9', '北京市', '2015', '3.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('10', '北京市', '2014', '4.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('11', '北京市', '2013', '4.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('12', '北京市', '2012', '4.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('13', '北京市', '2011', '5.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('14', '北京市', '2010', '6.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('15', '北京市', '2009', '8.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('16', '北京市', '2008', '9.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('17', '北京市', '2007', '8.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('18', '北京市', '2006', '11.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('19', '北京市', '2005', '10.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('20', '北京市', '2004', '13.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('21', '北京市', '2003', '16.44', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('22', '北京市', '2002', '15.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('23', '北京市', '2001', '20.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('24', '北京市', '2000', '22.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('25', '天津市', '2023', '5.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('26', '天津市', '2022', '4.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('27', '天津市', '2021', '2.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('28', '天津市', '2020', '4.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('29', '天津市', '2019', '5.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('30', '天津市', '2018', '6.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('31', '天津市', '2017', '3.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('32', '天津市', '2016', '3.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('33', '天津市', '2015', '4.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('34', '天津市', '2014', '6.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('35', '天津市', '2013', '6.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('36', '天津市', '2012', '10.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('37', '天津市', '2011', '10.84', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('38', '天津市', '2010', '12.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('39', '天津市', '2009', '11.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('40', '天津市', '2008', '8.98', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('41', '天津市', '2007', '8.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('42', '天津市', '2006', '13.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('43', '天津市', '2005', '27.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('44', '天津市', '2004', '29.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('45', '天津市', '2003', '30.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('46', '天津市', '2002', '35.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('47', '天津市', '2001', '45.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('48', '天津市', '2000', '34.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('49', '河北省', '2023', '113.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('50', '河北省', '2022', '98.31', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('51', '河北省', '2021', '66.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('52', '河北省', '2020', '89.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('53', '河北省', '2019', '93.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('54', '河北省', '2018', '87.57', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('55', '河北省', '2017', '70.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('56', '河北省', '2016', '68.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('57', '河北省', '2015', '78.62', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('58', '河北省', '2014', '86.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('59', '河北省', '2013', '92.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('60', '河北省', '2012', '98.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('61', '河北省', '2011', '109.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('62', '河北省', '2010', '124.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('63', '河北省', '2009', '145.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('64', '河北省', '2008', '180.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('65', '河北省', '2007', '180.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('66', '河北省', '2006', '210.93', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('67', '河北省', '2005', '254.85', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('68', '河北省', '2004', '274.29', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('69', '河北省', '2003', '280.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('70', '河北省', '2002', '331.29', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('71', '河北省', '2001', '379.17', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('72', '河北省', '2000', '423.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('73', '山西省', '2023', '117.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('74', '山西省', '2022', '112.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('75', '山西省', '2021', '92.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('76', '山西省', '2020', '119.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('77', '山西省', '2019', '129.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('78', '山西省', '2018', '150.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('79', '山西省', '2017', '130.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('80', '山西省', '2016', '134.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('81', '山西省', '2015', '137.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('82', '山西省', '2014', '149.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('83', '山西省', '2013', '158.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('84', '山西省', '2012', '166.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('85', '山西省', '2011', '169.03', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('86', '山西省', '2010', '172.47', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('87', '山西省', '2009', '178.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('88', '山西省', '2008', '190.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('89', '山西省', '2007', '204.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('90', '山西省', '2006', '221.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('91', '山西省', '2005', '217.93', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('92', '山西省', '2004', '210.91', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('93', '山西省', '2003', '207.26', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('94', '山西省', '2002', '245.56', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('95', '山西省', '2001', '216.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('96', '山西省', '2000', '272.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('97', '内蒙古自治区', '2023', '1235.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('98', '内蒙古自治区', '2022', '1222.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('99', '内蒙古自治区', '2021', '893.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('100', '内蒙古自治区', '2020', '1201.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('101', '内蒙古自治区', '2019', '1189.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('102', '内蒙古自治区', '2018', '1094.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('103', '内蒙古自治区', '2017', '988.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('104', '内蒙古自治区', '2016', '923.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('105', '内蒙古自治区', '2015', '812.85', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('106', '内蒙古自治区', '2014', '744.56', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('107', '内蒙古自治区', '2013', '796.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('108', '内蒙古自治区', '2012', '800.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('109', '内蒙古自治区', '2011', '846.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('110', '内蒙古自治区', '2010', '942.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('111', '内蒙古自治区', '2009', '931.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('112', '内蒙古自治区', '2008', '729.43', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('113', '内蒙古自治区', '2007', '729.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('114', '内蒙古自治区', '2006', '940.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('115', '内蒙古自治区', '2005', '796.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('116', '内蒙古自治区', '2004', '752.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('117', '内蒙古自治区', '2003', '697.29', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('118', '内蒙古自治区', '2002', '596.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('119', '内蒙古自治区', '2001', '755.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('120', '内蒙古自治区', '2000', '793.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('121', '辽宁省', '2023', '122.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('122', '辽宁省', '2022', '115.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('123', '辽宁省', '2021', '103.88', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('124', '辽宁省', '2020', '103.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('125', '辽宁省', '2019', '83.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('126', '辽宁省', '2018', '73.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('127', '辽宁省', '2017', '74.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('128', '辽宁省', '2016', '69.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('129', '辽宁省', '2015', '59.94', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('130', '辽宁省', '2014', '63.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('131', '辽宁省', '2013', '73.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('132', '辽宁省', '2012', '78.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('133', '辽宁省', '2011', '87.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('134', '辽宁省', '2010', '95.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('135', '辽宁省', '2009', '135.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('136', '辽宁省', '2008', '159.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('137', '辽宁省', '2007', '122.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('138', '辽宁省', '2006', '128.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('139', '辽宁省', '2005', '253.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('140', '辽宁省', '2004', '295.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('141', '辽宁省', '2003', '305.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('142', '辽宁省', '2002', '285.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('143', '辽宁省', '2001', '333.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('144', '辽宁省', '2000', '301.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('145', '吉林省', '2023', '328.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('146', '吉林省', '2022', '309.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('147', '吉林省', '2021', '252.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('148', '吉林省', '2020', '321.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('149', '吉林省', '2019', '345.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('150', '吉林省', '2018', '279.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('151', '吉林省', '2017', '220.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('152', '吉林省', '2016', '187.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('153', '吉林省', '2015', '181.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('154', '吉林省', '2014', '242.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('155', '吉林省', '2013', '240.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('156', '吉林省', '2012', '257.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('157', '吉林省', '2011', '328.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('158', '吉林省', '2010', '399.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('159', '吉林省', '2009', '462.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('160', '吉林省', '2008', '461.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('161', '吉林省', '2007', '429.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('162', '吉林省', '2006', '242.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('163', '吉林省', '2005', '504.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('164', '吉林省', '2004', '525.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('165', '吉林省', '2003', '430.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('166', '吉林省', '2002', '415.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('167', '吉林省', '2001', '432.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('168', '吉林省', '2000', '539.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('169', '黑龙江省', '2023', '4886.88', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('170', '黑龙江省', '2022', '4931.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('171', '黑龙江省', '2021', '3887.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('172', '黑龙江省', '2020', '4832.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('173', '黑龙江省', '2019', '4279.47', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('174', '黑龙江省', '2018', '3567.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('175', '黑龙江省', '2017', '3735.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('176', '黑龙江省', '2016', '3223.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('177', '黑龙江省', '2015', '2661.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('178', '黑龙江省', '2014', '2792.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('179', '黑龙江省', '2013', '2637.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('180', '黑龙江省', '2012', '2860.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('181', '黑龙江省', '2011', '3402.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('182', '黑龙江省', '2010', '3727.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('183', '黑龙江省', '2009', '4165.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('184', '黑龙江省', '2008', '4148.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('185', '黑龙江省', '2007', '3978.88', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('186', '黑龙江省', '2006', '4246.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('187', '黑龙江省', '2005', '3548.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('188', '黑龙江省', '2004', '3555.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('189', '黑龙江省', '2003', '3389.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('190', '黑龙江省', '2002', '2930.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('191', '黑龙江省', '2001', '3326.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('192', '黑龙江省', '2000', '2868.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('193', '上海市', '2023', '0.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('194', '上海市', '2022', '0.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('195', '上海市', '2021', '0.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('196', '上海市', '2020', '0.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('197', '上海市', '2019', '0.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('198', '上海市', '2018', '0.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('199', '上海市', '2017', '1.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('200', '上海市', '2016', '1.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('201', '上海市', '2015', '3.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('202', '上海市', '2014', '3.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('203', '上海市', '2013', '4.02', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('204', '上海市', '2012', '3.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('205', '上海市', '2011', '4.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('206', '上海市', '2010', '4.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('207', '上海市', '2009', '5.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('208', '上海市', '2008', '5.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('209', '上海市', '2007', '6.44', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('210', '上海市', '2006', '5.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('211', '上海市', '2005', '5.84', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('212', '上海市', '2004', '5.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('213', '上海市', '2003', '5.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('214', '上海市', '2002', '4.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('215', '上海市', '2001', '4.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('216', '上海市', '2000', '6.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('217', '江苏省', '2023', '225.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('218', '江苏省', '2022', '210.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('219', '江苏省', '2021', '192.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('220', '江苏省', '2020', '196.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('221', '江苏省', '2019', '191.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('222', '江苏省', '2018', '193.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('223', '江苏省', '2017', '194.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('224', '江苏省', '2016', '196.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('225', '江苏省', '2015', '195.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('226', '江苏省', '2014', '201.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('227', '江苏省', '2013', '206.69', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('228', '江苏省', '2012', '216.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('229', '江苏省', '2011', '223.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('230', '江苏省', '2010', '224.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('231', '江苏省', '2009', '230.91', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('232', '江苏省', '2008', '230.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('233', '江苏省', '2007', '220.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('234', '江苏省', '2006', '213.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('235', '江苏省', '2005', '214.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('236', '江苏省', '2004', '216.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('237', '江苏省', '2003', '241.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('238', '江苏省', '2002', '243.44', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('239', '江苏省', '2001', '244.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('240', '江苏省', '2000', '249.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('241', '浙江省', '2023', '81.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('242', '浙江省', '2022', '77.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('243', '浙江省', '2021', '75.95', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('244', '浙江省', '2020', '82.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('245', '浙江省', '2019', '90.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('246', '浙江省', '2018', '85.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('247', '浙江省', '2017', '80.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('248', '浙江省', '2016', '83.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('249', '浙江省', '2015', '86.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('250', '浙江省', '2014', '85.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('251', '浙江省', '2013', '84.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('252', '浙江省', '2012', '85.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('253', '浙江省', '2011', '49.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('254', '浙江省', '2010', '51.32', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('255', '浙江省', '2009', '54.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('256', '浙江省', '2008', '53.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('257', '浙江省', '2007', '50.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('258', '浙江省', '2006', '50.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('259', '浙江省', '2005', '129.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('260', '浙江省', '2004', '116.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('261', '浙江省', '2003', '116.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('262', '浙江省', '2002', '114.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('263', '浙江省', '2001', '122.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('264', '浙江省', '2000', '129.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('265', '安徽省', '2023', '631.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('266', '安徽省', '2022', '610.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('267', '安徽省', '2021', '587.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('268', '安徽省', '2020', '605.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('269', '安徽省', '2019', '636.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('270', '安徽省', '2018', '649.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('271', '安徽省', '2017', '620.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('272', '安徽省', '2016', '599.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('273', '安徽省', '2015', '601.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('274', '安徽省', '2014', '679.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('275', '安徽省', '2013', '687.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('276', '安徽省', '2012', '731.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('277', '安徽省', '2011', '759.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('278', '安徽省', '2010', '834.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('279', '安徽省', '2009', '891.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('280', '安徽省', '2008', '933.44', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('281', '安徽省', '2007', '907.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('282', '安徽省', '2006', '975.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('283', '安徽省', '2005', '917.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('284', '安徽省', '2004', '888.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('285', '安徽省', '2003', '855.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('286', '安徽省', '2002', '747.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('287', '安徽省', '2001', '679.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('288', '安徽省', '2000', '682.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('289', '福建省', '2023', '35.83', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('290', '福建省', '2022', '35.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('291', '福建省', '2021', '34.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('292', '福建省', '2020', '34.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('293', '福建省', '2019', '32.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('294', '福建省', '2018', '31.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('295', '福建省', '2017', '28.98', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('296', '福建省', '2016', '28.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('297', '福建省', '2015', '30.99', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('298', '福建省', '2014', '32.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('299', '福建省', '2013', '35.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('300', '福建省', '2012', '37.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('301', '福建省', '2011', '40.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('302', '福建省', '2010', '42.99', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('303', '福建省', '2009', '45.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('304', '福建省', '2008', '46.84', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('305', '福建省', '2007', '47.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('306', '福建省', '2006', '52.83', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('307', '福建省', '2005', '85.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('308', '福建省', '2004', '88.43', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('309', '福建省', '2003', '90.34', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('310', '福建省', '2002', '93.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('311', '福建省', '2001', '98.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('312', '福建省', '2000', '105.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('313', '江西省', '2023', '112.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('314', '江西省', '2022', '109.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('315', '江西省', '2021', '106.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('316', '江西省', '2020', '113.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('317', '江西省', '2019', '108.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('318', '江西省', '2018', '106.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('319', '江西省', '2017', '102.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('320', '江西省', '2016', '101.91', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('321', '江西省', '2015', '101.97', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('322', '江西省', '2014', '100.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('323', '江西省', '2013', '97.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('324', '江西省', '2012', '96.29', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('325', '江西省', '2011', '94.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('326', '江西省', '2010', '95.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('327', '江西省', '2009', '95.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('328', '江西省', '2008', '97.88', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('329', '江西省', '2007', '98.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('330', '江西省', '2006', '88.83', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('331', '江西省', '2005', '98.91', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('332', '江西省', '2004', '101.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('333', '江西省', '2003', '117.43', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('334', '江西省', '2002', '131.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('335', '江西省', '2001', '146.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('336', '江西省', '2000', '152.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('337', '山东省', '2023', '232.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('338', '山东省', '2022', '214.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('339', '山东省', '2021', '182.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('340', '山东省', '2020', '188.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('341', '山东省', '2019', '183.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('342', '山东省', '2018', '153.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('343', '山东省', '2017', '119.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('344', '山东省', '2016', '124.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('345', '山东省', '2015', '129.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('346', '山东省', '2014', '147.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('347', '山东省', '2013', '144.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('348', '山东省', '2012', '146.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('349', '山东省', '2011', '154.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('350', '山东省', '2010', '156.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('351', '山东省', '2009', '164.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('352', '山东省', '2008', '164.97', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('353', '山东省', '2007', '167.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('354', '山东省', '2006', '182.85', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('355', '山东省', '2005', '238.69', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('356', '山东省', '2004', '241.18', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('357', '山东省', '2003', '285.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('358', '山东省', '2002', '321.97', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('359', '山东省', '2001', '395.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('360', '山东省', '2000', '458.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('361', '河南省', '2023', '380.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('362', '河南省', '2022', '363.56', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('363', '河南省', '2021', '333.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('364', '河南省', '2020', '375.17', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('365', '河南省', '2019', '394.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('366', '河南省', '2018', '385.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('367', '河南省', '2017', '345.17', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('368', '河南省', '2016', '341.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('369', '河南省', '2015', '343.56', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('370', '河南省', '2014', '381.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('371', '河南省', '2013', '424.01', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('372', '河南省', '2012', '448.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('373', '河南省', '2011', '434.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('374', '河南省', '2010', '444.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('375', '河南省', '2009', '462.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('376', '河南省', '2008', '484.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('377', '河南省', '2007', '464.95', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('378', '河南省', '2006', '539.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('379', '河南省', '2005', '533.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('380', '河南省', '2004', '522.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('381', '河南省', '2003', '503.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('382', '河南省', '2002', '528.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('383', '河南省', '2001', '563.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('384', '河南省', '2000', '564.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('385', '湖北省', '2023', '242.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('386', '湖北省', '2022', '229.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('387', '湖北省', '2021', '223.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('388', '湖北省', '2020', '219.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('389', '湖北省', '2019', '211.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('390', '湖北省', '2018', '219.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('391', '湖北省', '2017', '212.34', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('392', '湖北省', '2016', '202.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('393', '湖北省', '2015', '144.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('394', '湖北省', '2014', '136.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('395', '湖北省', '2013', '103.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('396', '湖北省', '2012', '105.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('397', '湖北省', '2011', '108.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('398', '湖北省', '2010', '109.94', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('399', '湖北省', '2009', '111.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('400', '湖北省', '2008', '115.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('401', '湖北省', '2007', '117.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('402', '湖北省', '2006', '118.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('403', '湖北省', '2005', '178.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('404', '湖北省', '2004', '183.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('405', '湖北省', '2003', '194.98', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('406', '湖北省', '2002', '215.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('407', '湖北省', '2001', '218.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('408', '湖北省', '2000', '224.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('409', '湖南省', '2023', '139.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('410', '湖南省', '2022', '132.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('411', '湖南省', '2021', '117.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('412', '湖南省', '2020', '114.66', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('413', '湖南省', '2019', '113.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('414', '湖南省', '2018', '106.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('415', '湖南省', '2017', '99.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('416', '湖南省', '2016', '98.53', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('417', '湖南省', '2015', '96.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('418', '湖南省', '2014', '101.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('419', '湖南省', '2013', '95.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('420', '湖南省', '2012', '94.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('421', '湖南省', '2011', '95.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('422', '湖南省', '2010', '92.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('423', '湖南省', '2009', '91.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('424', '湖南省', '2008', '89.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('425', '湖南省', '2007', '87.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('426', '湖南省', '2006', '73.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('427', '湖南省', '2005', '187.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('428', '湖南省', '2004', '188.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('429', '湖南省', '2003', '198.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('430', '湖南省', '2002', '198.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('431', '湖南省', '2001', '203.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('432', '湖南省', '2000', '205.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('433', '广东省', '2023', '35.86', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('434', '广东省', '2022', '34.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('435', '广东省', '2021', '32.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('436', '广东省', '2020', '32.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('437', '广东省', '2019', '32.57', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('438', '广东省', '2018', '31.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('439', '广东省', '2017', '31.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('440', '广东省', '2016', '32.31', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('441', '广东省', '2015', '34.47', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('442', '广东省', '2014', '36.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('443', '广东省', '2013', '38.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('444', '广东省', '2012', '41.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('445', '广东省', '2011', '42.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('446', '广东省', '2010', '48.44', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('447', '广东省', '2009', '48.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('448', '广东省', '2008', '54.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('449', '广东省', '2007', '57.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('450', '广东省', '2006', '64.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('451', '广东省', '2005', '83.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('452', '广东省', '2004', '80.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('453', '广东省', '2003', '78.80', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('454', '广东省', '2002', '85.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('455', '广东省', '2001', '88.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('456', '广东省', '2000', '96.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('457', '广西壮族自治区', '2023', '110.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('458', '广西壮族自治区', '2022', '108.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('459', '广西壮族自治区', '2021', '101.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('460', '广西壮族自治区', '2020', '96.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('461', '广西壮族自治区', '2019', '93.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('462', '广西壮族自治区', '2018', '97.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('463', '广西壮族自治区', '2017', '94.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('464', '广西壮族自治区', '2016', '91.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('465', '广西壮族自治区', '2015', '90.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('466', '广西壮族自治区', '2014', '94.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('467', '广西壮族自治区', '2013', '92.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('468', '广西壮族自治区', '2012', '90.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('469', '广西壮族自治区', '2011', '108.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('470', '广西壮族自治区', '2010', '106.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('471', '广西壮族自治区', '2009', '99.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('472', '广西壮族自治区', '2008', '88.18', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('473', '广西壮族自治区', '2007', '89.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('474', '广西壮族自治区', '2006', '92.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('475', '广西壮族自治区', '2005', '217.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('476', '广西壮族自治区', '2004', '219.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('477', '广西壮族自治区', '2003', '258.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('478', '广西壮族自治区', '2002', '237.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('479', '广西壮族自治区', '2001', '250.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('480', '广西壮族自治区', '2000', '281.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('481', '海南省', '2023', '1.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('482', '海南省', '2022', '1.57', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('483', '海南省', '2021', '1.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('484', '海南省', '2020', '2.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('485', '海南省', '2019', '1.92', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('486', '海南省', '2018', '2.01', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('487', '海南省', '2017', '2.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('488', '海南省', '2016', '2.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('489', '海南省', '2015', '2.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('490', '海南省', '2014', '3.03', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('491', '海南省', '2013', '3.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('492', '海南省', '2012', '3.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('493', '海南省', '2011', '3.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('494', '海南省', '2010', '3.03', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('495', '海南省', '2009', '3.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('496', '海南省', '2008', '3.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('497', '海南省', '2007', '2.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('498', '海南省', '2006', '2.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('499', '海南省', '2005', '5.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('500', '海南省', '2004', '6.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('501', '海南省', '2003', '7.83', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('502', '海南省', '2002', '8.83', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('503', '海南省', '2001', '8.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('504', '海南省', '2000', '9.51', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('505', '重庆市', '2023', '118.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('506', '重庆市', '2022', '107.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('507', '重庆市', '2021', '99.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('508', '重庆市', '2020', '98.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('509', '重庆市', '2019', '96.92', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('510', '重庆市', '2018', '97.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('511', '重庆市', '2017', '96.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('512', '重庆市', '2016', '95.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('513', '重庆市', '2015', '94.93', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('514', '重庆市', '2014', '94.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('515', '重庆市', '2013', '94.16', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('516', '重庆市', '2012', '93.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('517', '重庆市', '2011', '90.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('518', '重庆市', '2010', '86.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('519', '重庆市', '2009', '82.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('520', '重庆市', '2008', '78.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('521', '重庆市', '2007', '72.15', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('522', '重庆市', '2006', '68.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('523', '重庆市', '2005', '99.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('524', '重庆市', '2004', '95.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('525', '重庆市', '2003', '81.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('526', '重庆市', '2002', '80.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('527', '重庆市', '2001', '78.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('528', '重庆市', '2000', '80.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('529', '四川省', '2023', '554.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('530', '四川省', '2022', '520.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('531', '四川省', '2021', '443.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('532', '四川省', '2020', '432.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('533', '四川省', '2019', '402.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('534', '四川省', '2018', '377.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('535', '四川省', '2017', '369.33', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('536', '四川省', '2016', '350.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('537', '四川省', '2015', '329.32', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('538', '四川省', '2014', '312.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('539', '四川省', '2013', '295.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('540', '四川省', '2012', '285.56', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('541', '四川省', '2011', '276.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('542', '四川省', '2010', '260.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('543', '四川省', '2009', '243.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('544', '四川省', '2008', '229.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('545', '四川省', '2007', '218.68', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('546', '四川省', '2006', '205.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('547', '四川省', '2005', '212.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('548', '四川省', '2004', '200.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('549', '四川省', '2003', '201.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('550', '四川省', '2002', '193.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('551', '四川省', '2001', '187.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('552', '四川省', '2000', '169.63', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('553', '贵州省', '2023', '238.32', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('554', '贵州省', '2022', '231.78', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('555', '贵州省', '2021', '211.71', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('556', '贵州省', '2020', '211.77', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('557', '贵州省', '2019', '191.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('558', '贵州省', '2018', '198.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('559', '贵州省', '2017', '194.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('560', '贵州省', '2016', '209.66', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('561', '贵州省', '2015', '194.85', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('562', '贵州省', '2014', '180.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('563', '贵州省', '2013', '170.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('564', '贵州省', '2012', '170.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('565', '贵州省', '2011', '160.93', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('566', '贵州省', '2010', '155.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('567', '贵州省', '2009', '148.97', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('568', '贵州省', '2008', '136.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('569', '贵州省', '2007', '126.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('570', '贵州省', '2006', '121.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('571', '贵州省', '2005', '130.66', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('572', '贵州省', '2004', '131.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('573', '贵州省', '2003', '128.70', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('574', '贵州省', '2002', '136.37', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('575', '贵州省', '2001', '139.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('576', '贵州省', '2000', '141.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('577', '云南省', '2023', '175.23', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('578', '云南省', '2022', '160.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('579', '云南省', '2021', '149.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('580', '云南省', '2020', '186.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('581', '云南省', '2019', '185.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('582', '云南省', '2018', '176.32', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('583', '云南省', '2017', '173.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('584', '云南省', '2016', '170.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('585', '云南省', '2015', '161.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('586', '云南省', '2014', '159.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('587', '云南省', '2013', '155.32', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('588', '云南省', '2012', '153.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('589', '云南省', '2011', '146.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('590', '云南省', '2010', '145.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('591', '云南省', '2009', '143.69', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('592', '云南省', '2008', '137.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('593', '云南省', '2007', '83.66', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('594', '云南省', '2006', '83.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('595', '云南省', '2005', '123.95', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('596', '云南省', '2004', '149.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('597', '云南省', '2003', '113.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('598', '云南省', '2002', '122.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('599', '云南省', '2001', '126.82', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('600', '云南省', '2000', '52.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('601', '西藏自治区', '2023', '0.01', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('602', '西藏自治区', '2022', '0.02', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('603', '西藏自治区', '2021', '0.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('604', '西藏自治区', '2020', '0.01', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('605', '西藏自治区', '2019', '0.05', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('606', '西藏自治区', '2018', '0.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('607', '西藏自治区', '2017', '0.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('608', '西藏自治区', '2016', '1.91', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('609', '西藏自治区', '2015', '0.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('610', '西藏自治区', '2014', '0.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('611', '西藏自治区', '2013', '0.12', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('612', '西藏自治区', '2012', '0.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('613', '西藏自治区', '2011', '0.17', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('614', '西藏自治区', '2010', '0.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('615', '西藏自治区', '2009', '0.13', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('616', '西藏自治区', '2008', '0.31', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('617', '西藏自治区', '2007', '0.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('618', '西藏自治区', '2006', '1.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('619', '西藏自治区', '2005', '0.54', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('620', '西藏自治区', '2004', '0.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('621', '西藏自治区', '2003', '1.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('622', '西藏自治区', '2002', '1.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('623', '西藏自治区', '2001', '0.67', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('624', '西藏自治区', '2000', '0.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('625', '陕西省', '2023', '177.01', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('626', '陕西省', '2022', '174.28', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('627', '陕西省', '2021', '151.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('628', '陕西省', '2020', '151.34', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('629', '陕西省', '2019', '151.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('630', '陕西省', '2018', '151.61', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('631', '陕西省', '2017', '151.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('632', '陕西省', '2016', '151.18', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('633', '陕西省', '2015', '142.87', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('634', '陕西省', '2014', '143.47', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('635', '陕西省', '2013', '189.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('636', '陕西省', '2012', '198.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('637', '陕西省', '2011', '201.09', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('638', '陕西省', '2010', '201.74', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('639', '陕西省', '2009', '205.26', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('640', '陕西省', '2008', '206.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('641', '陕西省', '2007', '164.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('642', '陕西省', '2006', '182.27', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('643', '陕西省', '2005', '321.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('644', '陕西省', '2004', '308.10', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('645', '陕西省', '2003', '306.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('646', '陕西省', '2002', '224.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('647', '陕西省', '2001', '229.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('648', '陕西省', '2000', '246.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('649', '甘肃省', '2023', '62.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('650', '甘肃省', '2022', '58.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('651', '甘肃省', '2021', '47.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('652', '甘肃省', '2020', '46.95', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('653', '甘肃省', '2019', '41.40', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('654', '甘肃省', '2018', '44.99', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('655', '甘肃省', '2017', '64.42', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('656', '甘肃省', '2016', '64.07', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('657', '甘肃省', '2015', '61.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('658', '甘肃省', '2014', '67.64', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('659', '甘肃省', '2013', '71.76', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('660', '甘肃省', '2012', '74.31', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('661', '甘肃省', '2011', '79.21', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('662', '甘肃省', '2010', '79.11', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('663', '甘肃省', '2009', '82.59', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('664', '甘肃省', '2008', '96.34', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('665', '甘肃省', '2007', '95.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('666', '甘肃省', '2006', '89.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('667', '甘肃省', '2005', '94.17', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('668', '甘肃省', '2004', '86.66', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('669', '甘肃省', '2003', '80.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('670', '甘肃省', '2002', '81.81', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('671', '甘肃省', '2001', '82.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('672', '甘肃省', '2000', '88.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('673', '青海省', '2023', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('674', '青海省', '2022', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('675', '青海省', '2021', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('676', '青海省', '2020', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('677', '青海省', '2019', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('678', '青海省', '2018', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('679', '青海省', '2017', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('680', '青海省', '2016', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('681', '青海省', '2015', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('682', '青海省', '2014', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('683', '青海省', '2013', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('684', '青海省', '2012', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('685', '青海省', '2011', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('686', '青海省', '2010', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('687', '青海省', '2009', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('688', '青海省', '2008', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('689', '青海省', '2007', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('690', '青海省', '2006', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('691', '青海省', '2005', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('692', '青海省', '2004', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('693', '青海省', '2003', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('694', '青海省', '2002', '0.19', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('695', '青海省', '2001', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('696', '青海省', '2000', '0.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('697', '宁夏回族自治区', '2023', '27.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('698', '宁夏回族自治区', '2022', '24.03', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('699', '宁夏回族自治区', '2021', '2.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('700', '宁夏回族自治区', '2020', '3.45', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('701', '宁夏回族自治区', '2019', '4.89', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('702', '宁夏回族自治区', '2018', '6.90', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('703', '宁夏回族自治区', '2017', '8.04', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('704', '宁夏回族自治区', '2016', '8.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('705', '宁夏回族自治区', '2015', '11.25', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('706', '宁夏回族自治区', '2014', '11.36', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('707', '宁夏回族自治区', '2013', '11.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('708', '宁夏回族自治区', '2012', '14.38', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('709', '宁夏回族自治区', '2011', '15.55', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('710', '宁夏回族自治区', '2010', '19.49', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('711', '宁夏回族自治区', '2009', '19.26', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('712', '宁夏回族自治区', '2008', '23.92', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('713', '宁夏回族自治区', '2007', '9.39', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('714', '宁夏回族自治区', '2006', '8.00', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('715', '宁夏回族自治区', '2005', '18.72', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('716', '宁夏回族自治区', '2004', '20.48', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('717', '宁夏回族自治区', '2003', '20.29', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('718', '宁夏回族自治区', '2002', '25.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('719', '宁夏回族自治区', '2001', '26.30', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('720', '宁夏回族自治区', '2000', '43.60', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('721', '新疆维吾尔自治区', '2023', '77.52', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('722', '新疆维吾尔自治区', '2022', '40.08', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('723', '新疆维吾尔自治区', '2021', '18.95', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('724', '新疆维吾尔自治区', '2020', '16.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('725', '新疆维吾尔自治区', '2019', '38.96', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('726', '新疆维吾尔自治区', '2018', '35.41', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('727', '新疆维吾尔自治区', '2017', '29.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('728', '新疆维吾尔自治区', '2016', '29.24', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('729', '新疆维吾尔自治区', '2015', '29.73', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('730', '新疆维吾尔自治区', '2014', '32.46', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('731', '新疆维吾尔自治区', '2013', '36.50', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('732', '新疆维吾尔自治区', '2012', '38.58', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('733', '新疆维吾尔自治区', '2011', '55.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('734', '新疆维吾尔自治区', '2010', '56.79', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('735', '新疆维吾尔自治区', '2009', '70.47', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('736', '新疆维吾尔自治区', '2008', '61.14', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('737', '新疆维吾尔自治区', '2007', '49.20', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('738', '新疆维吾尔自治区', '2006', '70.93', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('739', '新疆维吾尔自治区', '2005', '78.35', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('740', '新疆维吾尔自治区', '2004', '79.65', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('741', '新疆维吾尔自治区', '2003', '68.88', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('742', '新疆维吾尔自治区', '2002', '68.22', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('743', '新疆维吾尔自治区', '2001', '79.06', '2025-06-30 17:04:10', '2025-06-30 17:04:10');
INSERT INTO `soybean_planting_area` VALUES ('744', '新疆维吾尔自治区', '2000', '62.75', '2025-06-30 17:04:10', '2025-06-30 17:04:10');

-- ----------------------------
-- Table structure for sugarcane_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `sugarcane_planting_area`;
CREATE TABLE `sugarcane_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='甘蔗播种面积统计表(分省年度数据)';

-- ----------------------------
-- Records of sugarcane_planting_area
-- ----------------------------
INSERT INTO `sugarcane_planting_area` VALUES ('1', '北京市', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('2', '北京市', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('3', '北京市', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('4', '北京市', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('5', '北京市', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('6', '北京市', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('7', '北京市', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('8', '北京市', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('9', '北京市', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('10', '北京市', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('11', '北京市', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('12', '北京市', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('13', '北京市', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('14', '北京市', '2005', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('15', '北京市', '2004', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('16', '北京市', '2003', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('17', '北京市', '2002', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('18', '北京市', '2001', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('19', '北京市', '2000', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('20', '天津市', '2023', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('21', '天津市', '2022', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('22', '天津市', '2021', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('23', '天津市', '2020', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('24', '天津市', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('25', '天津市', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('26', '天津市', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('27', '天津市', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('28', '天津市', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('29', '天津市', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('30', '天津市', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('31', '天津市', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('32', '天津市', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('33', '天津市', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('34', '天津市', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('35', '天津市', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('36', '天津市', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('37', '天津市', '2005', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('38', '天津市', '2004', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('39', '天津市', '2003', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('40', '天津市', '2002', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('41', '天津市', '2001', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('42', '天津市', '2000', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('43', '河北省', '2023', '0.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('44', '河北省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('45', '河北省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('46', '河北省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('47', '河北省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('48', '河北省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('49', '河北省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('50', '河北省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('51', '河北省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('52', '河北省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('53', '河北省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('54', '河北省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('55', '河北省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('56', '河北省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('57', '山西省', '2021', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('58', '山西省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('59', '山西省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('60', '山西省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('61', '山西省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('62', '山西省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('63', '山西省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('64', '山西省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('65', '山西省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('66', '山西省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('67', '山西省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('68', '山西省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('69', '山西省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('70', '山西省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('71', '内蒙古自治区', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('72', '内蒙古自治区', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('73', '内蒙古自治区', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('74', '内蒙古自治区', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('75', '内蒙古自治区', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('76', '内蒙古自治区', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('77', '内蒙古自治区', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('78', '内蒙古自治区', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('79', '内蒙古自治区', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('80', '内蒙古自治区', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('81', '内蒙古自治区', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('82', '内蒙古自治区', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('83', '内蒙古自治区', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('84', '辽宁省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('85', '辽宁省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('86', '辽宁省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('87', '辽宁省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('88', '辽宁省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('89', '辽宁省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('90', '辽宁省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('91', '辽宁省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('92', '辽宁省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('93', '辽宁省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('94', '辽宁省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('95', '辽宁省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('96', '辽宁省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('97', '吉林省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('98', '吉林省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('99', '吉林省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('100', '吉林省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('101', '吉林省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('102', '吉林省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('103', '吉林省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('104', '吉林省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('105', '吉林省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('106', '吉林省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('107', '吉林省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('108', '吉林省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('109', '吉林省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('110', '黑龙江省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('111', '黑龙江省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('112', '黑龙江省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('113', '黑龙江省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('114', '黑龙江省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('115', '黑龙江省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('116', '黑龙江省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('117', '黑龙江省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('118', '黑龙江省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('119', '黑龙江省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('120', '黑龙江省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('121', '黑龙江省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('122', '黑龙江省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('123', '上海市', '2023', '0.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('124', '上海市', '2022', '0.02', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('125', '上海市', '2021', '0.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('126', '上海市', '2020', '0.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('127', '上海市', '2019', '0.07', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('128', '上海市', '2018', '0.07', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('129', '上海市', '2017', '0.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('130', '上海市', '2016', '0.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('131', '上海市', '2015', '0.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('132', '上海市', '2014', '0.07', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('133', '上海市', '2013', '0.09', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('134', '上海市', '2012', '0.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('135', '上海市', '2011', '0.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('136', '上海市', '2010', '0.31', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('137', '上海市', '2009', '0.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('138', '上海市', '2008', '0.13', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('139', '上海市', '2007', '0.16', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('140', '上海市', '2006', '1.41', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('141', '上海市', '2005', '2.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('142', '上海市', '2004', '2.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('143', '上海市', '2003', '3.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('144', '上海市', '2002', '1.51', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('145', '上海市', '2001', '1.33', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('146', '上海市', '2000', '1.10', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('147', '江苏省', '2023', '0.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('148', '江苏省', '2022', '0.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('149', '江苏省', '2021', '0.72', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('150', '江苏省', '2020', '0.81', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('151', '江苏省', '2019', '0.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('152', '江苏省', '2018', '0.85', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('153', '江苏省', '2017', '0.80', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('154', '江苏省', '2016', '0.80', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('155', '江苏省', '2015', '0.89', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('156', '江苏省', '2014', '1.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('157', '江苏省', '2013', '1.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('158', '江苏省', '2012', '1.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('159', '江苏省', '2011', '1.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('160', '江苏省', '2010', '1.33', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('161', '江苏省', '2009', '1.67', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('162', '江苏省', '2008', '1.41', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('163', '江苏省', '2007', '1.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('164', '江苏省', '2006', '1.39', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('165', '江苏省', '2005', '4.10', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('166', '江苏省', '2004', '4.89', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('167', '江苏省', '2003', '5.98', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('168', '江苏省', '2002', '6.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('169', '江苏省', '2001', '5.75', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('170', '江苏省', '2000', '5.16', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('171', '浙江省', '2023', '5.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('172', '浙江省', '2022', '6.31', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('173', '浙江省', '2021', '6.66', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('174', '浙江省', '2020', '7.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('175', '浙江省', '2019', '6.92', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('176', '浙江省', '2018', '6.15', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('177', '浙江省', '2017', '5.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('178', '浙江省', '2016', '6.27', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('179', '浙江省', '2015', '6.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('180', '浙江省', '2014', '7.24', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('181', '浙江省', '2013', '7.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('182', '浙江省', '2012', '8.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('183', '浙江省', '2011', '9.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('184', '浙江省', '2010', '10.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('185', '浙江省', '2009', '11.58', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('186', '浙江省', '2008', '12.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('187', '浙江省', '2007', '13.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('188', '浙江省', '2006', '9.47', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('189', '浙江省', '2005', '15.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('190', '浙江省', '2004', '18.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('191', '浙江省', '2003', '19.21', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('192', '浙江省', '2002', '18.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('193', '浙江省', '2001', '17.38', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('194', '浙江省', '2000', '16.34', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('195', '安徽省', '2023', '1.26', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('196', '安徽省', '2022', '1.48', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('197', '安徽省', '2021', '1.66', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('198', '安徽省', '2020', '1.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('199', '安徽省', '2019', '1.98', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('200', '安徽省', '2018', '1.74', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('201', '安徽省', '2017', '1.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('202', '安徽省', '2016', '2.89', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('203', '安徽省', '2015', '5.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('204', '安徽省', '2014', '4.98', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('205', '安徽省', '2013', '5.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('206', '安徽省', '2012', '5.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('207', '安徽省', '2011', '5.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('208', '安徽省', '2010', '5.73', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('209', '安徽省', '2009', '5.76', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('210', '安徽省', '2008', '6.79', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('211', '安徽省', '2007', '5.38', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('212', '安徽省', '2006', '5.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('213', '安徽省', '2005', '5.73', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('214', '安徽省', '2004', '6.50', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('215', '安徽省', '2003', '7.76', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('216', '安徽省', '2002', '7.88', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('217', '安徽省', '2001', '8.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('218', '安徽省', '2000', '8.38', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('219', '福建省', '2023', '5.10', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('220', '福建省', '2022', '5.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('221', '福建省', '2021', '5.16', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('222', '福建省', '2020', '4.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('223', '福建省', '2019', '4.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('224', '福建省', '2018', '4.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('225', '福建省', '2017', '4.94', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('226', '福建省', '2016', '5.29', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('227', '福建省', '2015', '5.99', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('228', '福建省', '2014', '7.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('229', '福建省', '2013', '8.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('230', '福建省', '2012', '8.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('231', '福建省', '2011', '8.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('232', '福建省', '2010', '8.91', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('233', '福建省', '2009', '9.51', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('234', '福建省', '2008', '10.18', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('235', '福建省', '2007', '8.89', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('236', '福建省', '2006', '9.38', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('237', '福建省', '2005', '14.93', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('238', '福建省', '2004', '15.89', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('239', '福建省', '2003', '18.25', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('240', '福建省', '2002', '18.46', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('241', '福建省', '2001', '15.47', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('242', '福建省', '2000', '14.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('243', '江西省', '2023', '13.33', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('244', '江西省', '2022', '13.66', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('245', '江西省', '2021', '13.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('246', '江西省', '2020', '13.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('247', '江西省', '2019', '13.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('248', '江西省', '2018', '14.34', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('249', '江西省', '2017', '14.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('250', '江西省', '2016', '14.72', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('251', '江西省', '2015', '14.45', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('252', '江西省', '2014', '14.30', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('253', '江西省', '2013', '14.47', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('254', '江西省', '2012', '13.76', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('255', '江西省', '2011', '14.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('256', '江西省', '2010', '13.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('257', '江西省', '2009', '13.60', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('258', '江西省', '2008', '14.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('259', '江西省', '2007', '15.09', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('260', '江西省', '2006', '11.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('261', '江西省', '2005', '17.69', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('262', '江西省', '2004', '18.58', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('263', '江西省', '2003', '24.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('264', '江西省', '2002', '25.99', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('265', '江西省', '2001', '25.92', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('266', '江西省', '2000', '28.36', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('267', '山东省', '2023', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('268', '山东省', '2022', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('269', '山东省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('270', '山东省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('271', '山东省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('272', '山东省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('273', '山东省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('274', '山东省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('275', '山东省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('276', '山东省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('277', '山东省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('278', '山东省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('279', '山东省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('280', '山东省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('281', '山东省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('282', '河南省', '2023', '1.10', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('283', '河南省', '2022', '1.21', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('284', '河南省', '2021', '1.41', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('285', '河南省', '2020', '1.51', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('286', '河南省', '2019', '1.62', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('287', '河南省', '2018', '2.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('288', '河南省', '2017', '2.31', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('289', '河南省', '2016', '2.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('290', '河南省', '2015', '2.60', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('291', '河南省', '2014', '2.94', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('292', '河南省', '2013', '3.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('293', '河南省', '2012', '3.23', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('294', '河南省', '2011', '3.34', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('295', '河南省', '2010', '3.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('296', '河南省', '2009', '4.51', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('297', '河南省', '2008', '3.26', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('298', '河南省', '2007', '2.93', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('299', '河南省', '2006', '2.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('300', '河南省', '2005', '4.75', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('301', '河南省', '2004', '4.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('302', '河南省', '2003', '4.94', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('303', '河南省', '2002', '5.09', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('304', '河南省', '2001', '4.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('305', '河南省', '2000', '5.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('306', '湖北省', '2023', '6.30', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('307', '湖北省', '2022', '6.27', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('308', '湖北省', '2021', '6.35', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('309', '湖北省', '2020', '6.63', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('310', '湖北省', '2019', '6.48', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('311', '湖北省', '2018', '6.45', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('312', '湖北省', '2017', '6.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('313', '湖北省', '2016', '6.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('314', '湖北省', '2015', '6.30', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('315', '湖北省', '2014', '5.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('316', '湖北省', '2013', '5.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('317', '湖北省', '2012', '6.37', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('318', '湖北省', '2011', '6.60', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('319', '湖北省', '2010', '7.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('320', '湖北省', '2009', '9.36', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('321', '湖北省', '2008', '6.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('322', '湖北省', '2007', '3.48', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('323', '湖北省', '2006', '3.70', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('324', '湖北省', '2005', '9.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('325', '湖北省', '2004', '10.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('326', '湖北省', '2003', '17.24', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('327', '湖北省', '2002', '19.18', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('328', '湖北省', '2001', '18.88', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('329', '湖北省', '2000', '22.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('330', '湖南省', '2023', '7.55', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('331', '湖南省', '2022', '7.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('332', '湖南省', '2021', '7.53', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('333', '湖南省', '2020', '7.59', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('334', '湖南省', '2019', '7.42', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('335', '湖南省', '2018', '7.39', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('336', '湖南省', '2017', '7.23', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('337', '湖南省', '2016', '6.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('338', '湖南省', '2015', '7.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('339', '湖南省', '2014', '7.62', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('340', '湖南省', '2013', '8.22', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('341', '湖南省', '2012', '9.39', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('342', '湖南省', '2011', '10.22', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('343', '湖南省', '2010', '10.99', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('344', '湖南省', '2009', '7.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('345', '湖南省', '2008', '13.36', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('346', '湖南省', '2007', '13.39', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('347', '湖南省', '2006', '11.67', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('348', '湖南省', '2005', '19.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('349', '湖南省', '2004', '21.27', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('350', '湖南省', '2003', '28.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('351', '湖南省', '2002', '32.55', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('352', '湖南省', '2001', '30.14', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('353', '湖南省', '2000', '25.15', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('354', '广东省', '2023', '142.54', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('355', '广东省', '2022', '147.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('356', '广东省', '2021', '150.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('357', '广东省', '2020', '158.92', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('358', '广东省', '2019', '169.68', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('359', '广东省', '2018', '172.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('360', '广东省', '2017', '169.16', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('361', '广东省', '2016', '165.55', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('362', '广东省', '2015', '165.62', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('363', '广东省', '2014', '171.46', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('364', '广东省', '2013', '175.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('365', '广东省', '2012', '166.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('366', '广东省', '2011', '161.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('367', '广东省', '2010', '155.44', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('368', '广东省', '2009', '152.32', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('369', '广东省', '2008', '149.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('370', '广东省', '2007', '147.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('371', '广东省', '2006', '141.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('372', '广东省', '2005', '147.47', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('373', '广东省', '2004', '151.26', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('374', '广东省', '2003', '156.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('375', '广东省', '2002', '171.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('376', '广东省', '2001', '163.54', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('377', '广东省', '2000', '178.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('378', '广西壮族自治区', '2023', '835.09', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('379', '广西壮族自治区', '2022', '847.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('380', '广西壮族自治区', '2021', '857.81', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('381', '广西壮族自治区', '2020', '874.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('382', '广西壮族自治区', '2019', '890.23', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('383', '广西壮族自治区', '2018', '886.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('384', '广西壮族自治区', '2017', '876.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('385', '广西壮族自治区', '2016', '891.14', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('386', '广西壮族自治区', '2015', '918.37', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('387', '广西壮族自治区', '2014', '1026.70', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('388', '广西壮族自治区', '2013', '1075.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('389', '广西壮族自治区', '2012', '1084.85', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('390', '广西壮族自治区', '2011', '1056.67', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('391', '广西壮族自治区', '2010', '1041.82', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('392', '广西壮族自治区', '2009', '1039.63', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('393', '广西壮族自治区', '2008', '1075.98', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('394', '广西壮族自治区', '2007', '950.56', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('395', '广西壮族自治区', '2006', '838.60', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('396', '广西壮族自治区', '2005', '747.60', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('397', '广西壮族自治区', '2004', '723.65', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('398', '广西壮族自治区', '2003', '708.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('399', '广西壮族自治区', '2002', '670.69', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('400', '广西壮族自治区', '2001', '574.61', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('401', '广西壮族自治区', '2000', '508.68', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('402', '海南省', '2023', '13.29', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('403', '海南省', '2022', '13.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('404', '海南省', '2021', '16.76', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('405', '海南省', '2020', '17.93', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('406', '海南省', '2019', '18.45', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('407', '海南省', '2018', '20.77', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('408', '海南省', '2017', '21.23', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('409', '海南省', '2016', '27.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('410', '海南省', '2015', '38.74', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('411', '海南省', '2014', '53.69', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('412', '海南省', '2013', '56.79', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('413', '海南省', '2012', '56.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('414', '海南省', '2011', '55.96', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('415', '海南省', '2010', '55.92', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('416', '海南省', '2009', '70.75', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('417', '海南省', '2008', '75.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('418', '海南省', '2007', '67.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('419', '海南省', '2006', '46.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('420', '海南省', '2005', '60.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('421', '海南省', '2004', '69.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('422', '海南省', '2003', '69.09', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('423', '海南省', '2002', '64.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('424', '海南省', '2001', '60.78', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('425', '海南省', '2000', '61.77', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('426', '重庆市', '2023', '1.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('427', '重庆市', '2022', '1.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('428', '重庆市', '2021', '1.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('429', '重庆市', '2020', '1.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('430', '重庆市', '2019', '1.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('431', '重庆市', '2018', '2.19', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('432', '重庆市', '2017', '2.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('433', '重庆市', '2016', '2.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('434', '重庆市', '2015', '2.21', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('435', '重庆市', '2014', '2.48', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('436', '重庆市', '2013', '2.78', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('437', '重庆市', '2012', '3.21', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('438', '重庆市', '2011', '3.24', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('439', '重庆市', '2010', '3.03', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('440', '重庆市', '2009', '2.99', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('441', '重庆市', '2008', '2.93', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('442', '重庆市', '2007', '2.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('443', '重庆市', '2006', '2.79', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('444', '重庆市', '2005', '2.79', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('445', '重庆市', '2004', '2.80', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('446', '重庆市', '2003', '2.83', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('447', '重庆市', '2002', '2.88', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('448', '重庆市', '2001', '2.48', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('449', '重庆市', '2000', '2.33', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('450', '四川省', '2023', '9.61', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('451', '四川省', '2022', '9.63', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('452', '四川省', '2021', '9.64', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('453', '四川省', '2020', '9.66', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('454', '四川省', '2019', '9.61', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('455', '四川省', '2018', '9.34', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('456', '四川省', '2017', '9.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('457', '四川省', '2016', '9.15', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('458', '四川省', '2015', '9.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('459', '四川省', '2014', '10.20', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('460', '四川省', '2013', '10.59', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('461', '四川省', '2012', '11.32', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('462', '四川省', '2011', '12.99', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('463', '四川省', '2010', '15.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('464', '四川省', '2009', '15.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('465', '四川省', '2008', '18.71', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('466', '四川省', '2007', '20.78', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('467', '四川省', '2006', '21.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('468', '四川省', '2005', '26.74', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('469', '四川省', '2004', '28.78', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('470', '四川省', '2003', '31.87', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('471', '四川省', '2002', '31.86', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('472', '四川省', '2001', '30.63', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('473', '四川省', '2000', '30.62', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('474', '贵州省', '2023', '6.39', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('475', '贵州省', '2022', '7.35', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('476', '贵州省', '2021', '9.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('477', '贵州省', '2020', '10.23', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('478', '贵州省', '2019', '10.58', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('479', '贵州省', '2018', '10.58', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('480', '贵州省', '2017', '8.28', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('481', '贵州省', '2016', '12.13', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('482', '贵州省', '2015', '16.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('483', '贵州省', '2014', '18.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('484', '贵州省', '2013', '19.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('485', '贵州省', '2012', '15.65', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('486', '贵州省', '2011', '9.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('487', '贵州省', '2010', '11.02', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('488', '贵州省', '2009', '13.95', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('489', '贵州省', '2008', '15.81', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('490', '贵州省', '2007', '16.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('491', '贵州省', '2006', '17.94', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('492', '贵州省', '2005', '19.44', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('493', '贵州省', '2004', '18.58', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('494', '贵州省', '2003', '19.14', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('495', '贵州省', '2002', '18.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('496', '贵州省', '2001', '18.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('497', '贵州省', '2000', '17.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('498', '云南省', '2023', '215.13', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('499', '云南省', '2022', '219.11', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('500', '云南省', '2021', '227.84', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('501', '云南省', '2020', '235.66', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('502', '云南省', '2019', '246.12', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('503', '云南省', '2018', '260.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('504', '云南省', '2017', '239.90', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('505', '云南省', '2016', '247.33', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('506', '云南省', '2015', '275.46', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('507', '云南省', '2014', '304.57', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('508', '云南省', '2013', '311.16', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('509', '云南省', '2012', '301.92', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('510', '云南省', '2011', '286.50', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('511', '云南省', '2010', '279.44', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('512', '云南省', '2009', '284.30', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('513', '云南省', '2008', '301.36', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('514', '云南省', '2007', '261.77', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('515', '云南省', '2006', '251.49', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('516', '云南省', '2005', '255.01', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('517', '云南省', '2004', '280.54', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('518', '云南省', '2003', '292.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('519', '云南省', '2002', '297.21', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('520', '云南省', '2001', '269.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('521', '云南省', '2000', '260.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('522', '西藏自治区', '2023', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('523', '西藏自治区', '2022', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('524', '西藏自治区', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('525', '西藏自治区', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('526', '西藏自治区', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('527', '西藏自治区', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('528', '西藏自治区', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('529', '西藏自治区', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('530', '西藏自治区', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('531', '西藏自治区', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('532', '西藏自治区', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('533', '西藏自治区', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('534', '西藏自治区', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('535', '西藏自治区', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('536', '陕西省', '2023', '0.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('537', '陕西省', '2022', '0.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('538', '陕西省', '2021', '0.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('539', '陕西省', '2020', '0.17', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('540', '陕西省', '2019', '0.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('541', '陕西省', '2018', '0.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('542', '陕西省', '2017', '1.38', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('543', '陕西省', '2016', '1.59', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('544', '陕西省', '2015', '0.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('545', '陕西省', '2014', '0.04', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('546', '陕西省', '2013', '0.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('547', '陕西省', '2012', '0.05', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('548', '陕西省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('549', '陕西省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('550', '陕西省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('551', '陕西省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('552', '陕西省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('553', '陕西省', '2006', '1.40', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('554', '陕西省', '2005', '0.06', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('555', '陕西省', '2004', '0.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('556', '陕西省', '2003', '0.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('557', '陕西省', '2002', '0.27', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('558', '陕西省', '2001', '1.46', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('559', '陕西省', '2000', '0.08', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('560', '甘肃省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('561', '甘肃省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('562', '甘肃省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('563', '甘肃省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('564', '甘肃省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('565', '甘肃省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('566', '甘肃省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('567', '甘肃省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('568', '甘肃省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('569', '甘肃省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('570', '甘肃省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('571', '甘肃省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('572', '甘肃省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('573', '青海省', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('574', '青海省', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('575', '青海省', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('576', '青海省', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('577', '青海省', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('578', '青海省', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('579', '青海省', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('580', '青海省', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('581', '青海省', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('582', '青海省', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('583', '青海省', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('584', '青海省', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('585', '青海省', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('586', '宁夏回族自治区', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('587', '宁夏回族自治区', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('588', '宁夏回族自治区', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('589', '宁夏回族自治区', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('590', '宁夏回族自治区', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('591', '宁夏回族自治区', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('592', '宁夏回族自治区', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('593', '宁夏回族自治区', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('594', '宁夏回族自治区', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('595', '宁夏回族自治区', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('596', '宁夏回族自治区', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('597', '宁夏回族自治区', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('598', '宁夏回族自治区', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('599', '新疆维吾尔自治区', '2018', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('600', '新疆维吾尔自治区', '2017', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('601', '新疆维吾尔自治区', '2016', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('602', '新疆维吾尔自治区', '2015', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('603', '新疆维吾尔自治区', '2014', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('604', '新疆维吾尔自治区', '2013', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('605', '新疆维吾尔自治区', '2012', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('606', '新疆维吾尔自治区', '2011', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('607', '新疆维吾尔自治区', '2010', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('608', '新疆维吾尔自治区', '2009', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('609', '新疆维吾尔自治区', '2008', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('610', '新疆维吾尔自治区', '2007', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');
INSERT INTO `sugarcane_planting_area` VALUES ('611', '新疆维吾尔自治区', '2006', '0.00', '2025-06-30 17:18:39', '2025-06-30 17:18:39');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
INSERT INTO `sys_config` VALUES ('7', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-06-30 16:23:12', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-06-30 16:23:12', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-06-30 16:23:12', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-06-30 16:23:12', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2025-06-30 16:23:12', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2025-06-30 16:23:12', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2025-06-30 16:23:12', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2025-06-30 16:23:12', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2025-06-30 16:23:12', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2025-06-30 16:23:12', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2025-06-30 16:23:12', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2025-06-30 16:23:12', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2025-06-30 16:23:12', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2025-06-30 16:23:12', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-06-30 16:23:12', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-06-30 17:47:09');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-06-30 20:15:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2025-06-30 16:23:12', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2025-06-30 16:23:12', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2025-06-30 16:23:12', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2025-06-30 16:23:12', '', null, '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-06-30 16:23:12', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-06-30 16:23:12', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-06-30 16:23:12', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2025-06-30 16:23:12', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2025-06-30 16:23:12', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-06-30 16:23:12', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2025-06-30 16:23:12', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2025-06-30 16:23:12', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2025-06-30 16:23:12', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-06-30 16:23:12', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-06-30 16:23:12', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-06-30 16:23:12', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-06-30 16:23:12', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-06-30 16:23:12', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-06-30 16:23:12', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2025-06-30 16:23:12', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-06-30 16:23:12', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2025-06-30 16:23:12', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-06-30 16:23:12', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-06-30 16:23:12', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-06-30 16:23:12', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-06-30 16:23:12', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-06-30 16:23:12', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2025-06-30 16:23:12', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2025-06-30 16:23:12', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2025-06-30 16:23:12', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2025-06-30 16:23:12', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-06-30 20:15:26', '2025-06-30 16:23:12', 'admin', '2025-06-30 16:23:12', '', '2025-06-30 20:15:26', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-06-30 16:23:12', '2025-06-30 16:23:12', 'admin', '2025-06-30 16:23:12', '', null, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for tobacco_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `tobacco_planting_area`;
CREATE TABLE `tobacco_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID，主键',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region_year` (`region`,`year`) COMMENT '地区和年份联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='烟叶播种面积表';

-- ----------------------------
-- Records of tobacco_planting_area
-- ----------------------------
INSERT INTO `tobacco_planting_area` VALUES ('1', '北京市', '2023', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('2', '北京市', '2022', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('3', '北京市', '2021', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('4', '北京市', '2020', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('5', '北京市', '2019', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('6', '北京市', '2018', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('7', '北京市', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('8', '北京市', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('9', '北京市', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('10', '北京市', '2014', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('11', '北京市', '2013', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('12', '北京市', '2012', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('13', '北京市', '2011', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('14', '北京市', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('15', '北京市', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('16', '北京市', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('17', '北京市', '2007', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('18', '北京市', '2006', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('19', '北京市', '2004', '0.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('20', '北京市', '2003', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('21', '北京市', '2000', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('22', '天津市', '2022', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('23', '天津市', '2021', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('24', '天津市', '2018', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('25', '天津市', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('26', '天津市', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('27', '天津市', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('28', '天津市', '2014', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('29', '天津市', '2013', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('30', '天津市', '2012', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('31', '天津市', '2011', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('32', '天津市', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('33', '天津市', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('34', '天津市', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('35', '天津市', '2007', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('36', '天津市', '2006', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('37', '天津市', '2001', '0.04', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('38', '天津市', '2000', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('39', '河北省', '2023', '1.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('40', '河北省', '2022', '1.26', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('41', '河北省', '2021', '1.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('42', '河北省', '2020', '1.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('43', '河北省', '2019', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('44', '河北省', '2018', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('45', '河北省', '2017', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('46', '河北省', '2016', '1.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('47', '河北省', '2015', '1.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('48', '河北省', '2014', '1.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('49', '河北省', '2013', '2.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('50', '河北省', '2012', '2.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('51', '河北省', '2011', '2.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('52', '河北省', '2010', '2.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('53', '河北省', '2009', '2.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('54', '河北省', '2008', '2.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('55', '河北省', '2007', '1.91', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('56', '河北省', '2006', '1.91', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('57', '河北省', '2005', '3.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('58', '河北省', '2004', '4.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('59', '河北省', '2003', '4.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('60', '河北省', '2002', '4.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('61', '河北省', '2001', '4.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('62', '河北省', '2000', '5.48', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('63', '山西省', '2023', '1.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('64', '山西省', '2022', '1.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('65', '山西省', '2021', '1.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('66', '山西省', '2020', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('67', '山西省', '2019', '1.29', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('68', '山西省', '2018', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('69', '山西省', '2017', '1.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('70', '山西省', '2016', '1.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('71', '山西省', '2015', '1.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('72', '山西省', '2014', '2.44', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('73', '山西省', '2013', '2.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('74', '山西省', '2012', '2.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('75', '山西省', '2011', '2.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('76', '山西省', '2010', '2.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('77', '山西省', '2009', '2.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('78', '山西省', '2008', '2.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('79', '山西省', '2007', '2.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('80', '山西省', '2006', '1.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('81', '山西省', '2005', '2.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('82', '山西省', '2004', '2.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('83', '山西省', '2003', '2.79', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('84', '山西省', '2002', '4.31', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('85', '山西省', '2001', '6.28', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('86', '山西省', '2000', '7.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('87', '内蒙古自治区', '2023', '0.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('88', '内蒙古自治区', '2022', '1.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('89', '内蒙古自治区', '2021', '0.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('90', '内蒙古自治区', '2020', '1.25', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('91', '内蒙古自治区', '2019', '1.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('92', '内蒙古自治区', '2018', '1.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('93', '内蒙古自治区', '2017', '1.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('94', '内蒙古自治区', '2016', '2.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('95', '内蒙古自治区', '2015', '3.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('96', '内蒙古自治区', '2014', '2.96', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('97', '内蒙古自治区', '2013', '3.12', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('98', '内蒙古自治区', '2012', '3.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('99', '内蒙古自治区', '2011', '4.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('100', '内蒙古自治区', '2010', '3.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('101', '内蒙古自治区', '2009', '3.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('102', '内蒙古自治区', '2008', '4.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('103', '内蒙古自治区', '2007', '4.68', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('104', '内蒙古自治区', '2006', '4.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('105', '内蒙古自治区', '2005', '8.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('106', '内蒙古自治区', '2004', '5.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('107', '内蒙古自治区', '2003', '6.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('108', '内蒙古自治区', '2002', '4.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('109', '内蒙古自治区', '2001', '5.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('110', '内蒙古自治区', '2000', '7.89', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('111', '辽宁省', '2023', '4.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('112', '辽宁省', '2022', '3.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('113', '辽宁省', '2021', '4.25', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('114', '辽宁省', '2020', '5.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('115', '辽宁省', '2019', '5.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('116', '辽宁省', '2018', '6.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('117', '辽宁省', '2017', '8.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('118', '辽宁省', '2016', '9.48', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('119', '辽宁省', '2015', '9.81', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('120', '辽宁省', '2014', '11.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('121', '辽宁省', '2013', '11.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('122', '辽宁省', '2012', '11.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('123', '辽宁省', '2011', '10.49', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('124', '辽宁省', '2010', '10.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('125', '辽宁省', '2009', '12.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('126', '辽宁省', '2008', '11.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('127', '辽宁省', '2007', '9.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('128', '辽宁省', '2006', '8.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('129', '辽宁省', '2005', '19.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('130', '辽宁省', '2004', '14.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('131', '辽宁省', '2003', '13.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('132', '辽宁省', '2002', '14.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('133', '辽宁省', '2001', '11.47', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('134', '辽宁省', '2000', '18.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('135', '吉林省', '2023', '7.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('136', '吉林省', '2022', '7.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('137', '吉林省', '2021', '8.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('138', '吉林省', '2020', '8.63', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('139', '吉林省', '2019', '8.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('140', '吉林省', '2018', '9.89', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('141', '吉林省', '2017', '6.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('142', '吉林省', '2016', '7.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('143', '吉林省', '2015', '8.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('144', '吉林省', '2014', '12.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('145', '吉林省', '2013', '14.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('146', '吉林省', '2012', '16.84', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('147', '吉林省', '2011', '15.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('148', '吉林省', '2010', '18.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('149', '吉林省', '2009', '19.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('150', '吉林省', '2008', '19.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('151', '吉林省', '2007', '9.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('152', '吉林省', '2006', '11.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('153', '吉林省', '2005', '22.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('154', '吉林省', '2004', '20.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('155', '吉林省', '2003', '21.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('156', '吉林省', '2002', '21.29', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('157', '吉林省', '2001', '22.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('158', '吉林省', '2000', '26.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('159', '黑龙江省', '2023', '9.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('160', '黑龙江省', '2022', '9.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('161', '黑龙江省', '2021', '9.52', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('162', '黑龙江省', '2020', '10.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('163', '黑龙江省', '2019', '9.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('164', '黑龙江省', '2018', '11.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('165', '黑龙江省', '2017', '14.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('166', '黑龙江省', '2016', '19.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('167', '黑龙江省', '2015', '25.04', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('168', '黑龙江省', '2014', '33.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('169', '黑龙江省', '2013', '35.60', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('170', '黑龙江省', '2012', '37.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('171', '黑龙江省', '2011', '34.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('172', '黑龙江省', '2010', '37.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('173', '黑龙江省', '2009', '37.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('174', '黑龙江省', '2008', '33.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('175', '黑龙江省', '2007', '31.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('176', '黑龙江省', '2006', '19.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('177', '黑龙江省', '2005', '42.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('178', '黑龙江省', '2004', '31.53', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('179', '黑龙江省', '2003', '36.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('180', '黑龙江省', '2002', '44.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('181', '黑龙江省', '2001', '46.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('182', '黑龙江省', '2000', '49.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('183', '上海市', '2018', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('184', '上海市', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('185', '上海市', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('186', '上海市', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('187', '上海市', '2014', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('188', '上海市', '2013', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('189', '上海市', '2012', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('190', '上海市', '2011', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('191', '上海市', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('192', '上海市', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('193', '上海市', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('194', '上海市', '2007', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('195', '上海市', '2006', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('196', '江苏省', '2023', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('197', '江苏省', '2022', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('198', '江苏省', '2021', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('199', '江苏省', '2018', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('200', '江苏省', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('201', '江苏省', '2016', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('202', '江苏省', '2015', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('203', '江苏省', '2014', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('204', '江苏省', '2013', '0.04', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('205', '江苏省', '2012', '0.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('206', '江苏省', '2011', '0.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('207', '江苏省', '2010', '0.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('208', '江苏省', '2009', '0.25', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('209', '江苏省', '2008', '0.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('210', '江苏省', '2007', '0.07', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('211', '江苏省', '2006', '0.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('212', '江苏省', '2005', '0.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('213', '江苏省', '2004', '0.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('214', '江苏省', '2003', '0.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('215', '江苏省', '2002', '0.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('216', '江苏省', '2001', '0.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('217', '浙江省', '2023', '0.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('218', '浙江省', '2022', '0.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('219', '浙江省', '2021', '0.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('220', '浙江省', '2020', '0.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('221', '浙江省', '2019', '0.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('222', '浙江省', '2018', '0.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('223', '浙江省', '2017', '0.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('224', '浙江省', '2016', '0.63', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('225', '浙江省', '2015', '0.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('226', '浙江省', '2014', '0.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('227', '浙江省', '2013', '2.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('228', '浙江省', '2012', '1.07', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('229', '浙江省', '2011', '1.22', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('230', '浙江省', '2010', '1.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('231', '浙江省', '2009', '1.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('232', '浙江省', '2008', '1.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('233', '浙江省', '2007', '1.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('234', '浙江省', '2006', '1.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('235', '浙江省', '2005', '1.75', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('236', '浙江省', '2004', '1.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('237', '浙江省', '2003', '2.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('238', '浙江省', '2002', '2.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('239', '浙江省', '2001', '1.81', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('240', '浙江省', '2000', '1.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('241', '安徽省', '2023', '9.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('242', '安徽省', '2022', '9.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('243', '安徽省', '2021', '8.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('244', '安徽省', '2020', '8.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('245', '安徽省', '2019', '8.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('246', '安徽省', '2018', '8.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('247', '安徽省', '2017', '8.28', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('248', '安徽省', '2016', '8.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('249', '安徽省', '2015', '16.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('250', '安徽省', '2014', '17.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('251', '安徽省', '2013', '16.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('252', '安徽省', '2012', '13.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('253', '安徽省', '2011', '11.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('254', '安徽省', '2010', '10.92', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('255', '安徽省', '2009', '10.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('256', '安徽省', '2008', '9.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('257', '安徽省', '2007', '10.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('258', '安徽省', '2006', '10.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('259', '安徽省', '2005', '10.83', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('260', '安徽省', '2004', '11.96', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('261', '安徽省', '2003', '11.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('262', '安徽省', '2002', '14.68', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('263', '安徽省', '2001', '16.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('264', '安徽省', '2000', '19.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('265', '福建省', '2023', '62.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('266', '福建省', '2022', '57.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('267', '福建省', '2021', '49.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('268', '福建省', '2020', '47.53', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('269', '福建省', '2019', '50.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('270', '福建省', '2018', '48.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('271', '福建省', '2017', '52.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('272', '福建省', '2016', '55.92', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('273', '福建省', '2015', '56.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('274', '福建省', '2014', '61.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('275', '福建省', '2013', '66.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('276', '福建省', '2012', '62.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('277', '福建省', '2011', '61.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('278', '福建省', '2010', '59.86', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('279', '福建省', '2009', '64.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('280', '福建省', '2008', '64.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('281', '福建省', '2007', '61.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('282', '福建省', '2006', '65.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('283', '福建省', '2005', '66.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('284', '福建省', '2004', '62.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('285', '福建省', '2003', '59.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('286', '福建省', '2002', '65.31', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('287', '福建省', '2001', '58.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('288', '福建省', '2000', '55.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('289', '江西省', '2023', '13.71', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('290', '江西省', '2022', '13.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('291', '江西省', '2021', '12.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('292', '江西省', '2020', '13.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('293', '江西省', '2019', '12.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('294', '江西省', '2018', '17.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('295', '江西省', '2017', '25.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('296', '江西省', '2016', '31.26', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('297', '江西省', '2015', '27.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('298', '江西省', '2014', '27.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('299', '江西省', '2013', '23.67', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('300', '江西省', '2012', '23.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('301', '江西省', '2011', '20.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('302', '江西省', '2010', '17.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('303', '江西省', '2009', '18.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('304', '江西省', '2008', '20.52', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('305', '江西省', '2007', '15.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('306', '江西省', '2006', '15.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('307', '江西省', '2005', '11.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('308', '江西省', '2004', '8.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('309', '江西省', '2003', '11.55', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('310', '江西省', '2002', '13.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('311', '江西省', '2001', '14.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('312', '江西省', '2000', '14.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('313', '山东省', '2023', '20.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('314', '山东省', '2022', '19.05', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('315', '山东省', '2021', '17.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('316', '山东省', '2020', '18.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('317', '山东省', '2019', '17.77', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('318', '山东省', '2018', '17.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('319', '山东省', '2017', '21.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('320', '山东省', '2016', '23.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('321', '山东省', '2015', '23.91', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('322', '山东省', '2014', '27.12', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('323', '山东省', '2013', '41.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('324', '山东省', '2012', '38.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('325', '山东省', '2011', '32.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('326', '山东省', '2010', '23.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('327', '山东省', '2009', '44.45', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('328', '山东省', '2008', '39.55', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('329', '山东省', '2007', '33.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('330', '山东省', '2006', '33.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('331', '山东省', '2005', '34.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('332', '山东省', '2004', '42.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('333', '山东省', '2003', '42.91', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('334', '山东省', '2002', '41.77', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('335', '山东省', '2001', '47.31', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('336', '山东省', '2000', '62.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('337', '河南省', '2023', '73.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('338', '河南省', '2022', '75.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('339', '河南省', '2021', '76.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('340', '河南省', '2020', '80.52', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('341', '河南省', '2019', '86.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('342', '河南省', '2018', '94.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('343', '河南省', '2017', '103.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('344', '河南省', '2016', '109.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('345', '河南省', '2015', '114.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('346', '河南省', '2014', '123.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('347', '河南省', '2013', '137.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('348', '河南省', '2012', '125.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('349', '河南省', '2011', '124.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('350', '河南省', '2010', '122.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('351', '河南省', '2009', '127.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('352', '河南省', '2008', '111.89', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('353', '河南省', '2007', '102.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('354', '河南省', '2006', '97.47', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('355', '河南省', '2005', '132.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('356', '河南省', '2004', '131.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('357', '河南省', '2003', '133.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('358', '河南省', '2002', '148.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('359', '河南省', '2001', '174.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('360', '河南省', '2000', '166.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('361', '湖北省', '2023', '41.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('362', '湖北省', '2022', '40.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('363', '湖北省', '2021', '39.05', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('364', '湖北省', '2020', '36.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('365', '湖北省', '2019', '35.72', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('366', '湖北省', '2018', '37.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('367', '湖北省', '2017', '39.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('368', '湖北省', '2016', '44.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('369', '湖北省', '2015', '43.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('370', '湖北省', '2014', '42.75', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('371', '湖北省', '2013', '60.22', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('372', '湖北省', '2012', '68.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('373', '湖北省', '2011', '64.07', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('374', '湖北省', '2010', '59.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('375', '湖北省', '2009', '72.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('376', '湖北省', '2008', '60.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('377', '湖北省', '2007', '42.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('378', '湖北省', '2006', '35.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('379', '湖北省', '2005', '58.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('380', '湖北省', '2004', '55.60', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('381', '湖北省', '2003', '55.05', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('382', '湖北省', '2002', '60.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('383', '湖北省', '2001', '63.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('384', '湖北省', '2000', '74.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('385', '湖南省', '2023', '105.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('386', '湖南省', '2022', '97.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('387', '湖南省', '2021', '87.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('388', '湖南省', '2020', '86.89', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('389', '湖南省', '2019', '83.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('390', '湖南省', '2018', '86.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('391', '湖南省', '2017', '94.84', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('392', '湖南省', '2016', '99.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('393', '湖南省', '2015', '99.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('394', '湖南省', '2014', '99.52', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('395', '湖南省', '2013', '103.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('396', '湖南省', '2012', '114.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('397', '湖南省', '2011', '108.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('398', '湖南省', '2010', '102.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('399', '湖南省', '2009', '72.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('400', '湖南省', '2008', '95.26', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('401', '湖南省', '2007', '88.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('402', '湖南省', '2006', '78.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('403', '湖南省', '2005', '100.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('404', '湖南省', '2004', '88.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('405', '湖南省', '2003', '94.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('406', '湖南省', '2002', '93.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('407', '湖南省', '2001', '85.72', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('408', '湖南省', '2000', '88.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('409', '广东省', '2023', '15.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('410', '广东省', '2022', '15.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('411', '广东省', '2021', '15.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('412', '广东省', '2020', '16.49', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('413', '广东省', '2019', '16.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('414', '广东省', '2018', '17.47', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('415', '广东省', '2017', '17.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('416', '广东省', '2016', '17.81', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('417', '广东省', '2015', '18.28', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('418', '广东省', '2014', '18.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('419', '广东省', '2013', '19.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('420', '广东省', '2012', '20.81', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('421', '广东省', '2011', '21.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('422', '广东省', '2010', '21.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('423', '广东省', '2009', '22.96', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('424', '广东省', '2008', '22.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('425', '广东省', '2007', '19.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('426', '广东省', '2006', '20.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('427', '广东省', '2005', '31.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('428', '广东省', '2004', '31.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('429', '广东省', '2003', '29.91', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('430', '广东省', '2002', '30.85', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('431', '广东省', '2001', '35.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('432', '广东省', '2000', '31.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('433', '广西壮族自治区', '2023', '11.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('434', '广西壮族自治区', '2022', '10.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('435', '广西壮族自治区', '2021', '10.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('436', '广西壮族自治区', '2020', '10.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('437', '广西壮族自治区', '2019', '10.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('438', '广西壮族自治区', '2018', '10.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('439', '广西壮族自治区', '2017', '11.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('440', '广西壮族自治区', '2016', '13.28', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('441', '广西壮族自治区', '2015', '13.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('442', '广西壮族自治区', '2014', '18.60', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('443', '广西壮族自治区', '2013', '19.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('444', '广西壮族自治区', '2012', '17.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('445', '广西壮族自治区', '2011', '15.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('446', '广西壮族自治区', '2010', '14.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('447', '广西壮族自治区', '2009', '19.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('448', '广西壮族自治区', '2008', '16.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('449', '广西壮族自治区', '2007', '13.79', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('450', '广西壮族自治区', '2006', '13.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('451', '广西壮族自治区', '2005', '20.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('452', '广西壮族自治区', '2004', '16.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('453', '广西壮族自治区', '2003', '16.12', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('454', '广西壮族自治区', '2002', '16.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('455', '广西壮族自治区', '2001', '21.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('456', '广西壮族自治区', '2000', '23.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('457', '海南省', '2023', '0.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('458', '海南省', '2022', '0.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('459', '海南省', '2021', '0.22', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('460', '海南省', '2020', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('461', '海南省', '2019', '0.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('462', '海南省', '2018', '0.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('463', '海南省', '2017', '0.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('464', '海南省', '2016', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('465', '海南省', '2015', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('466', '海南省', '2014', '0.22', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('467', '海南省', '2013', '0.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('468', '海南省', '2012', '0.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('469', '海南省', '2011', '0.07', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('470', '海南省', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('471', '海南省', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('472', '海南省', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('473', '海南省', '2007', '0.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('474', '海南省', '2005', '0.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('475', '海南省', '2004', '0.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('476', '海南省', '2003', '0.12', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('477', '海南省', '2002', '0.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('478', '海南省', '2001', '0.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('479', '海南省', '2000', '0.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('480', '重庆市', '2023', '29.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('481', '重庆市', '2022', '28.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('482', '重庆市', '2021', '26.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('483', '重庆市', '2020', '27.36', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('484', '重庆市', '2019', '29.84', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('485', '重庆市', '2018', '32.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('486', '重庆市', '2017', '34.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('487', '重庆市', '2016', '43.45', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('488', '重庆市', '2015', '45.83', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('489', '重庆市', '2014', '45.96', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('490', '重庆市', '2013', '49.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('491', '重庆市', '2012', '49.99', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('492', '重庆市', '2011', '46.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('493', '重庆市', '2010', '42.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('494', '重庆市', '2009', '52.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('495', '重庆市', '2008', '47.75', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('496', '重庆市', '2007', '43.55', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('497', '重庆市', '2006', '48.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('498', '重庆市', '2005', '51.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('499', '重庆市', '2004', '53.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('500', '重庆市', '2003', '57.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('501', '重庆市', '2002', '56.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('502', '重庆市', '2001', '55.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('503', '重庆市', '2000', '70.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('504', '四川省', '2023', '79.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('505', '四川省', '2022', '75.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('506', '四川省', '2021', '72.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('507', '四川省', '2020', '73.56', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('508', '四川省', '2019', '74.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('509', '四川省', '2018', '76.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('510', '四川省', '2017', '86.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('511', '四川省', '2016', '88.68', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('512', '四川省', '2015', '87.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('513', '四川省', '2014', '89.43', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('514', '四川省', '2013', '103.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('515', '四川省', '2012', '104.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('516', '四川省', '2011', '99.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('517', '四川省', '2010', '91.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('518', '四川省', '2009', '104.31', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('519', '四川省', '2008', '93.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('520', '四川省', '2007', '78.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('521', '四川省', '2006', '88.80', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('522', '四川省', '2005', '79.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('523', '四川省', '2004', '66.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('524', '四川省', '2003', '66.64', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('525', '四川省', '2002', '70.05', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('526', '四川省', '2001', '70.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('527', '四川省', '2000', '82.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('528', '贵州省', '2023', '142.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('529', '贵州省', '2022', '131.78', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('530', '贵州省', '2021', '136.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('531', '贵州省', '2020', '133.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('532', '贵州省', '2019', '138.98', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('533', '贵州省', '2018', '145.73', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('534', '贵州省', '2017', '155.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('535', '贵州省', '2016', '167.95', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('536', '贵州省', '2015', '193.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('537', '贵州省', '2014', '228.26', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('538', '贵州省', '2013', '266.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('539', '贵州省', '2012', '248.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('540', '贵州省', '2011', '212.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('541', '贵州省', '2010', '195.71', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('542', '贵州省', '2009', '197.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('543', '贵州省', '2008', '207.68', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('544', '贵州省', '2007', '192.77', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('545', '贵州省', '2006', '193.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('546', '贵州省', '2005', '222.71', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('547', '贵州省', '2004', '206.79', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('548', '贵州省', '2003', '207.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('549', '贵州省', '2002', '217.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('550', '贵州省', '2001', '202.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('551', '贵州省', '2000', '213.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('552', '云南省', '2023', '426.11', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('553', '云南省', '2022', '418.39', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('554', '云南省', '2021', '408.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('555', '云南省', '2020', '408.58', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('556', '云南省', '2019', '409.45', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('557', '云南省', '2018', '412.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('558', '云南省', '2017', '424.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('559', '云南省', '2016', '438.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('560', '云南省', '2015', '437.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('561', '云南省', '2014', '506.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('562', '云南省', '2013', '542.49', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('563', '云南省', '2012', '545.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('564', '云南省', '2011', '495.30', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('565', '云南省', '2010', '438.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('566', '云南省', '2009', '405.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('567', '云南省', '2008', '400.61', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('568', '云南省', '2007', '381.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('569', '云南省', '2006', '388.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('570', '云南省', '2005', '392.62', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('571', '云南省', '2004', '362.96', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('572', '云南省', '2003', '343.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('573', '云南省', '2002', '357.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('574', '云南省', '2001', '335.63', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('575', '云南省', '2000', '339.45', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('576', '西藏自治区', '2023', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('577', '西藏自治区', '2022', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('578', '西藏自治区', '2021', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('579', '西藏自治区', '2020', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('580', '西藏自治区', '2019', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('581', '西藏自治区', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('582', '西藏自治区', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('583', '西藏自治区', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('584', '西藏自治区', '2014', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('585', '西藏自治区', '2013', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('586', '西藏自治区', '2012', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('587', '西藏自治区', '2011', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('588', '西藏自治区', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('589', '西藏自治区', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('590', '西藏自治区', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('591', '西藏自治区', '2007', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('592', '西藏自治区', '2006', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('593', '西藏自治区', '2000', '0.02', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('594', '陕西省', '2023', '24.53', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('595', '陕西省', '2022', '23.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('596', '陕西省', '2021', '22.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('597', '陕西省', '2020', '22.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('598', '陕西省', '2019', '22.40', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('599', '陕西省', '2018', '16.82', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('600', '陕西省', '2017', '17.09', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('601', '陕西省', '2016', '20.54', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('602', '陕西省', '2015', '21.63', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('603', '陕西省', '2014', '23.90', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('604', '陕西省', '2013', '27.76', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('605', '陕西省', '2012', '31.59', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('606', '陕西省', '2011', '29.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('607', '陕西省', '2010', '26.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('608', '陕西省', '2009', '32.69', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('609', '陕西省', '2008', '31.41', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('610', '陕西省', '2007', '30.26', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('611', '陕西省', '2006', '33.34', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('612', '陕西省', '2005', '32.88', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('613', '陕西省', '2004', '30.93', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('614', '陕西省', '2003', '31.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('615', '陕西省', '2002', '32.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('616', '陕西省', '2001', '42.20', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('617', '陕西省', '2000', '52.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('618', '甘肃省', '2023', '1.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('619', '甘肃省', '2022', '1.57', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('620', '甘肃省', '2021', '1.60', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('621', '甘肃省', '2020', '1.63', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('622', '甘肃省', '2019', '1.70', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('623', '甘肃省', '2018', '1.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('624', '甘肃省', '2017', '1.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('625', '甘肃省', '2016', '1.87', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('626', '甘肃省', '2015', '2.25', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('627', '甘肃省', '2014', '1.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('628', '甘肃省', '2013', '2.94', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('629', '甘肃省', '2012', '2.86', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('630', '甘肃省', '2011', '2.74', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('631', '甘肃省', '2010', '3.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('632', '甘肃省', '2009', '3.66', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('633', '甘肃省', '2008', '3.55', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('634', '甘肃省', '2007', '4.50', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('635', '甘肃省', '2006', '15.89', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('636', '甘肃省', '2005', '14.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('637', '甘肃省', '2004', '14.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('638', '甘肃省', '2003', '13.35', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('639', '甘肃省', '2002', '9.42', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('640', '甘肃省', '2001', '14.03', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('641', '甘肃省', '2000', '20.97', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('642', '青海省', '2023', '0.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('643', '青海省', '2022', '0.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('644', '青海省', '2021', '0.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('645', '青海省', '2020', '0.01', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('646', '青海省', '2018', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('647', '青海省', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('648', '青海省', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('649', '青海省', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('650', '青海省', '2014', '0.04', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('651', '青海省', '2013', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('652', '青海省', '2012', '0.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('653', '青海省', '2011', '0.18', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('654', '青海省', '2010', '0.17', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('655', '青海省', '2009', '0.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('656', '青海省', '2008', '0.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('657', '青海省', '2007', '0.16', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('658', '青海省', '2006', '0.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('659', '青海省', '2005', '0.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('660', '青海省', '2004', '0.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('661', '青海省', '2003', '0.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('662', '青海省', '2002', '0.10', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('663', '青海省', '2001', '0.25', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('664', '青海省', '2000', '0.06', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('665', '宁夏回族自治区', '2023', '0.24', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('666', '宁夏回族自治区', '2022', '0.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('667', '宁夏回族自治区', '2021', '0.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('668', '宁夏回族自治区', '2020', '0.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('669', '宁夏回族自治区', '2019', '0.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('670', '宁夏回族自治区', '2018', '0.32', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('671', '宁夏回族自治区', '2017', '0.21', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('672', '宁夏回族自治区', '2016', '0.23', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('673', '宁夏回族自治区', '2015', '0.29', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('674', '宁夏回族自治区', '2014', '0.27', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('675', '宁夏回族自治区', '2013', '0.29', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('676', '宁夏回族自治区', '2012', '0.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('677', '宁夏回族自治区', '2011', '0.33', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('678', '宁夏回族自治区', '2010', '0.38', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('679', '宁夏回族自治区', '2009', '0.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('680', '宁夏回族自治区', '2008', '0.51', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('681', '宁夏回族自治区', '2007', '0.46', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('682', '宁夏回族自治区', '2006', '0.37', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('683', '宁夏回族自治区', '2005', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('684', '宁夏回族自治区', '2004', '0.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('685', '宁夏回族自治区', '2003', '0.12', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('686', '宁夏回族自治区', '2002', '0.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('687', '宁夏回族自治区', '2001', '0.19', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('688', '宁夏回族自治区', '2000', '0.65', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('689', '新疆维吾尔自治区', '2018', '0.08', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('690', '新疆维吾尔自治区', '2017', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('691', '新疆维吾尔自治区', '2016', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('692', '新疆维吾尔自治区', '2015', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('693', '新疆维吾尔自治区', '2014', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('694', '新疆维吾尔自治区', '2013', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('695', '新疆维吾尔自治区', '2012', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('696', '新疆维吾尔自治区', '2011', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('697', '新疆维吾尔自治区', '2010', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('698', '新疆维吾尔自治区', '2009', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('699', '新疆维吾尔自治区', '2008', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('700', '新疆维吾尔自治区', '2007', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('701', '新疆维吾尔自治区', '2006', '0.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('702', '新疆维吾尔自治区', '2005', '1.13', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('703', '新疆维吾尔自治区', '2004', '0.48', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('704', '新疆维吾尔自治区', '2003', '0.48', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('705', '新疆维吾尔自治区', '2002', '1.14', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('706', '新疆维吾尔自治区', '2001', '2.15', '2025-06-30 20:04:01', '2025-06-30 20:04:01');
INSERT INTO `tobacco_planting_area` VALUES ('707', '新疆维吾尔自治区', '2000', '3.00', '2025-06-30 20:04:01', '2025-06-30 20:04:01');

-- ----------------------------
-- Table structure for wheat_planting_area
-- ----------------------------
DROP TABLE IF EXISTS `wheat_planting_area`;
CREATE TABLE `wheat_planting_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID，主键',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int NOT NULL COMMENT '年份',
  `area` decimal(10,2) DEFAULT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region_year` (`region`,`year`) COMMENT '地区和年份联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='小麦播种面积表';

-- ----------------------------
-- Records of wheat_planting_area
-- ----------------------------
INSERT INTO `wheat_planting_area` VALUES ('1', '北京市', '2023', '24.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('2', '北京市', '2022', '18.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('3', '北京市', '2021', '13.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('4', '北京市', '2020', '8.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('5', '北京市', '2019', '8.04', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('6', '北京市', '2018', '9.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('7', '北京市', '2017', '11.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('8', '北京市', '2016', '15.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('9', '北京市', '2015', '20.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('10', '北京市', '2014', '23.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('11', '北京市', '2013', '36.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('12', '北京市', '2012', '52.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('13', '北京市', '2011', '58.14', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('14', '北京市', '2010', '61.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('15', '北京市', '2009', '60.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('16', '北京市', '2008', '63.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('17', '北京市', '2007', '41.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('18', '北京市', '2006', '63.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('19', '北京市', '2005', '53.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('20', '北京市', '2004', '39.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('21', '北京市', '2003', '35.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('22', '北京市', '2002', '47.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('23', '北京市', '2001', '72.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('24', '北京市', '2000', '121.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('25', '天津市', '2023', '122.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('26', '天津市', '2022', '118.77', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('27', '天津市', '2021', '118.51', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('28', '天津市', '2020', '103.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('29', '天津市', '2019', '101.12', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('30', '天津市', '2018', '110.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('31', '天津市', '2017', '108.77', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('32', '天津市', '2016', '107.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('33', '天津市', '2015', '105.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('34', '天津市', '2014', '108.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('35', '天津市', '2013', '107.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('36', '天津市', '2012', '110.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('37', '天津市', '2011', '110.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('38', '天津市', '2010', '109.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('39', '天津市', '2009', '109.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('40', '天津市', '2008', '106.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('41', '天津市', '2007', '104.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('42', '天津市', '2006', '103.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('43', '天津市', '2005', '98.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('44', '天津市', '2004', '78.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('45', '天津市', '2003', '78.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('46', '天津市', '2002', '95.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('47', '天津市', '2001', '106.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('48', '天津市', '2000', '121.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('49', '河北省', '2023', '2247.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('50', '河北省', '2022', '2247.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('51', '河北省', '2021', '2246.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('52', '河北省', '2020', '2216.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('53', '河北省', '2019', '2322.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('54', '河北省', '2018', '2357.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('55', '河北省', '2017', '2373.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('56', '河北省', '2016', '2389.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('57', '河北省', '2015', '2394.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('58', '河北省', '2014', '2403.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('59', '河北省', '2013', '2432.04', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('60', '河北省', '2012', '2457.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('61', '河北省', '2011', '2435.01', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('62', '河北省', '2010', '2451.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('63', '河北省', '2009', '2397.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('64', '河北省', '2008', '2431.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('65', '河北省', '2007', '2420.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('66', '河北省', '2006', '2504.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('67', '河北省', '2005', '2377.14', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('68', '河北省', '2004', '2161.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('69', '河北省', '2003', '2192.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('70', '河北省', '2002', '2449.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('71', '河北省', '2001', '2579.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('72', '河北省', '2000', '2678.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('73', '山西省', '2023', '535.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('74', '山西省', '2022', '535.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('75', '山西省', '2021', '536.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('76', '山西省', '2020', '535.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('77', '山西省', '2019', '546.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('78', '山西省', '2018', '560.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('79', '山西省', '2017', '560.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('80', '山西省', '2016', '564.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('81', '山西省', '2015', '575.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('82', '山西省', '2014', '585.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('83', '山西省', '2013', '598.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('84', '山西省', '2012', '619.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('85', '山西省', '2011', '650.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('86', '山西省', '2010', '678.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('87', '山西省', '2009', '689.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('88', '山西省', '2008', '673.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('89', '山西省', '2007', '699.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('90', '山西省', '2006', '659.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('91', '山西省', '2005', '721.03', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('92', '山西省', '2004', '648.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('93', '山西省', '2003', '720.55', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('94', '山西省', '2002', '798.12', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('95', '山西省', '2001', '820.55', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('96', '山西省', '2000', '893.23', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('97', '内蒙古自治区', '2023', '400.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('98', '内蒙古自治区', '2022', '386.16', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('99', '内蒙古自治区', '2021', '442.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('100', '内蒙古自治区', '2020', '478.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('101', '内蒙古自治区', '2019', '538.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('102', '内蒙古自治区', '2018', '596.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('103', '内蒙古自治区', '2017', '673.94', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('104', '内蒙古自治区', '2016', '658.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('105', '内蒙古自治区', '2015', '617.21', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('106', '内蒙古自治区', '2014', '619.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('107', '内蒙古自治区', '2013', '618.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('108', '内蒙古自治区', '2012', '658.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('109', '内蒙古自治区', '2011', '599.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('110', '内蒙古自治区', '2010', '589.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('111', '内蒙古自治区', '2009', '553.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('112', '内蒙古自治区', '2008', '462.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('113', '内蒙古自治区', '2007', '545.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('114', '内蒙古自治区', '2006', '483.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('115', '内蒙古自治区', '2005', '460.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('116', '内蒙古自治区', '2004', '418.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('117', '内蒙古自治区', '2003', '317.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('118', '内蒙古自治区', '2002', '464.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('119', '内蒙古自治区', '2001', '516.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('120', '内蒙古自治区', '2000', '617.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('121', '辽宁省', '2023', '1.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('122', '辽宁省', '2022', '2.01', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('123', '辽宁省', '2021', '2.74', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('124', '辽宁省', '2020', '3.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('125', '辽宁省', '2019', '2.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('126', '辽宁省', '2018', '2.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('127', '辽宁省', '2017', '3.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('128', '辽宁省', '2016', '2.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('129', '辽宁省', '2015', '2.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('130', '辽宁省', '2014', '3.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('131', '辽宁省', '2013', '3.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('132', '辽宁省', '2012', '4.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('133', '辽宁省', '2011', '4.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('134', '辽宁省', '2010', '5.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('135', '辽宁省', '2009', '7.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('136', '辽宁省', '2008', '8.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('137', '辽宁省', '2007', '11.61', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('138', '辽宁省', '2006', '8.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('139', '辽宁省', '2005', '22.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('140', '辽宁省', '2004', '20.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('141', '辽宁省', '2003', '20.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('142', '辽宁省', '2002', '49.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('143', '辽宁省', '2001', '98.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('144', '辽宁省', '2000', '117.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('145', '吉林省', '2023', '4.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('146', '吉林省', '2022', '5.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('147', '吉林省', '2021', '4.46', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('148', '吉林省', '2020', '4.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('149', '吉林省', '2019', '2.94', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('150', '吉林省', '2018', '1.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('151', '吉林省', '2017', '2.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('152', '吉林省', '2016', '0.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('153', '吉林省', '2015', '0.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('154', '吉林省', '2014', '4.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('155', '吉林省', '2013', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('156', '吉林省', '2012', '4.09', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('157', '吉林省', '2011', '3.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('158', '吉林省', '2010', '4.21', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('159', '吉林省', '2009', '4.63', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('160', '吉林省', '2008', '6.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('161', '吉林省', '2007', '5.61', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('162', '吉林省', '2006', '1.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('163', '吉林省', '2005', '9.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('164', '吉林省', '2004', '11.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('165', '吉林省', '2003', '22.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('166', '吉林省', '2002', '23.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('167', '吉林省', '2001', '53.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('168', '吉林省', '2000', '77.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('169', '黑龙江省', '2023', '19.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('170', '黑龙江省', '2022', '21.43', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('171', '黑龙江省', '2021', '67.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('172', '黑龙江省', '2020', '48.74', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('173', '黑龙江省', '2019', '55.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('174', '黑龙江省', '2018', '109.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('175', '黑龙江省', '2017', '101.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('176', '黑龙江省', '2016', '78.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('177', '黑龙江省', '2015', '70.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('178', '黑龙江省', '2014', '143.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('179', '黑龙江省', '2013', '131.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('180', '黑龙江省', '2012', '208.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('181', '黑龙江省', '2011', '295.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('182', '黑龙江省', '2010', '278.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('183', '黑龙江省', '2009', '291.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('184', '黑龙江省', '2008', '238.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('185', '黑龙江省', '2007', '232.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('186', '黑龙江省', '2006', '243.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('187', '黑龙江省', '2005', '248.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('188', '黑龙江省', '2004', '255.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('189', '黑龙江省', '2003', '229.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('190', '黑龙江省', '2002', '260.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('191', '黑龙江省', '2001', '423.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('192', '黑龙江省', '2000', '590.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('193', '上海市', '2023', '18.72', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('194', '上海市', '2022', '15.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('195', '上海市', '2021', '10.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('196', '上海市', '2020', '7.51', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('197', '上海市', '2019', '9.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('198', '上海市', '2018', '21.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('199', '上海市', '2017', '21.01', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('200', '上海市', '2016', '35.64', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('201', '上海市', '2015', '47.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('202', '上海市', '2014', '46.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('203', '上海市', '2013', '46.55', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('204', '上海市', '2012', '58.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('205', '上海市', '2011', '62.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('206', '上海市', '2010', '52.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('207', '上海市', '2009', '62.48', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('208', '上海市', '2008', '45.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('209', '上海市', '2007', '39.54', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('210', '上海市', '2006', '31.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('211', '上海市', '2005', '29.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('212', '上海市', '2004', '21.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('213', '上海市', '2003', '21.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('214', '上海市', '2002', '31.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('215', '上海市', '2001', '31.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('216', '上海市', '2000', '57.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('217', '江苏省', '2023', '2389.52', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('218', '江苏省', '2022', '2377.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('219', '江苏省', '2021', '2357.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('220', '江苏省', '2020', '2338.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('221', '江苏省', '2019', '2346.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('222', '江苏省', '2018', '2403.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('223', '江苏省', '2017', '2412.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('224', '江苏省', '2016', '2436.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('225', '江苏省', '2015', '2410.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('226', '江苏省', '2014', '2374.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('227', '江苏省', '2013', '2344.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('228', '江苏省', '2012', '2304.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('229', '江苏省', '2011', '2245.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('230', '江苏省', '2010', '2200.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('231', '江苏省', '2009', '2145.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('232', '江苏省', '2008', '2116.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('233', '江苏省', '2007', '2039.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('234', '江苏省', '2006', '1912.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('235', '江苏省', '2005', '1684.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('236', '江苏省', '2004', '1601.17', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('237', '江苏省', '2003', '1620.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('238', '江苏省', '2002', '1715.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('239', '江苏省', '2001', '1712.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('240', '江苏省', '2000', '1954.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('241', '浙江省', '2023', '152.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('242', '浙江省', '2022', '130.64', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('243', '浙江省', '2021', '114.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('244', '浙江省', '2020', '93.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('245', '浙江省', '2019', '82.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('246', '浙江省', '2018', '85.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('247', '浙江省', '2017', '103.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('248', '浙江省', '2016', '85.32', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('249', '浙江省', '2015', '98.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('250', '浙江省', '2014', '89.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('251', '浙江省', '2013', '81.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('252', '浙江省', '2012', '79.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('253', '浙江省', '2011', '76.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('254', '浙江省', '2010', '69.09', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('255', '浙江省', '2009', '62.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('256', '浙江省', '2008', '55.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('257', '浙江省', '2007', '49.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('258', '浙江省', '2006', '45.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('259', '浙江省', '2005', '67.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('260', '浙江省', '2004', '59.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('261', '浙江省', '2003', '71.48', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('262', '浙江省', '2002', '94.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('263', '浙江省', '2001', '121.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('264', '浙江省', '2000', '177.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('265', '安徽省', '2023', '2862.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('266', '安徽省', '2022', '2849.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('267', '安徽省', '2021', '2846.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('268', '安徽省', '2020', '2825.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('269', '安徽省', '2019', '2835.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('270', '安徽省', '2018', '2875.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('271', '安徽省', '2017', '2822.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('272', '安徽省', '2016', '2887.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('273', '安徽省', '2015', '2857.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('274', '安徽省', '2014', '2802.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('275', '安徽省', '2013', '2801.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('276', '安徽省', '2012', '2733.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('277', '安徽省', '2011', '2681.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('278', '安徽省', '2010', '2619.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('279', '安徽省', '2009', '2605.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('280', '安徽省', '2008', '2484.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('281', '安徽省', '2007', '2447.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('282', '安徽省', '2006', '2307.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('283', '安徽省', '2005', '2108.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('284', '安徽省', '2004', '2059.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('285', '安徽省', '2003', '2012.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('286', '安徽省', '2002', '2056.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('287', '安徽省', '2001', '1961.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('288', '安徽省', '2000', '2126.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('289', '福建省', '2023', '0.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('290', '福建省', '2022', '0.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('291', '福建省', '2021', '0.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('292', '福建省', '2020', '0.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('293', '福建省', '2019', '0.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('294', '福建省', '2018', '0.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('295', '福建省', '2017', '0.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('296', '福建省', '2016', '0.21', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('297', '福建省', '2015', '0.28', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('298', '福建省', '2014', '0.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('299', '福建省', '2013', '0.48', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('300', '福建省', '2012', '0.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('301', '福建省', '2011', '0.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('302', '福建省', '2010', '1.46', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('303', '福建省', '2009', '1.94', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('304', '福建省', '2008', '2.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('305', '福建省', '2007', '3.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('306', '福建省', '2006', '4.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('307', '福建省', '2005', '5.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('308', '福建省', '2004', '6.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('309', '福建省', '2003', '8.77', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('310', '福建省', '2002', '23.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('311', '福建省', '2001', '30.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('312', '福建省', '2000', '38.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('313', '江西省', '2023', '11.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('314', '江西省', '2022', '12.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('315', '江西省', '2021', '13.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('316', '江西省', '2020', '14.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('317', '江西省', '2019', '14.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('318', '江西省', '2018', '14.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('319', '江西省', '2017', '14.51', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('320', '江西省', '2016', '14.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('321', '江西省', '2015', '12.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('322', '江西省', '2014', '12.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('323', '江西省', '2013', '12.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('324', '江西省', '2012', '12.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('325', '江西省', '2011', '11.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('326', '江西省', '2010', '10.77', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('327', '江西省', '2009', '10.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('328', '江西省', '2008', '10.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('329', '江西省', '2007', '10.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('330', '江西省', '2006', '11.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('331', '江西省', '2005', '15.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('332', '江西省', '2004', '19.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('333', '江西省', '2003', '20.61', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('334', '江西省', '2002', '28.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('335', '江西省', '2001', '38.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('336', '江西省', '2000', '51.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('337', '山东省', '2023', '4008.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('338', '山东省', '2022', '4003.55', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('339', '山东省', '2021', '3994.03', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('340', '山东省', '2020', '3934.43', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('341', '山东省', '2019', '4001.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('342', '山东省', '2018', '4058.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('343', '山东省', '2017', '4083.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('344', '山东省', '2016', '4068.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('345', '山东省', '2015', '4034.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('346', '山东省', '2014', '3924.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('347', '山东省', '2013', '3831.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('348', '山东省', '2012', '3759.26', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('349', '山东省', '2011', '3703.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('350', '山东省', '2010', '3648.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('351', '山东省', '2009', '3609.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('352', '山东省', '2008', '3567.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('353', '山东省', '2007', '3540.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('354', '山东省', '2006', '3556.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('355', '山东省', '2005', '3278.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('356', '山东省', '2004', '2968.23', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('357', '山东省', '2003', '3105.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('358', '山东省', '2002', '3397.48', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('359', '山东省', '2001', '3545.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('360', '山东省', '2000', '3748.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('361', '河南省', '2023', '5686.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('362', '河南省', '2022', '5682.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('363', '河南省', '2021', '5690.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('364', '河南省', '2020', '5673.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('365', '河南省', '2019', '5706.65', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('366', '河南省', '2018', '5739.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('367', '河南省', '2017', '5714.64', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('368', '河南省', '2016', '5704.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('369', '河南省', '2015', '5623.14', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('370', '河南省', '2014', '5581.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('371', '河南省', '2013', '5517.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('372', '河南省', '2012', '5468.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('373', '河南省', '2011', '5430.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('374', '河南省', '2010', '5364.56', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('375', '河南省', '2009', '5326.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('376', '河南省', '2008', '5301.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('377', '河南省', '2007', '5234.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('378', '河南省', '2006', '5208.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('379', '河南省', '2005', '4962.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('380', '河南省', '2004', '4856.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('381', '河南省', '2003', '4804.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('382', '河南省', '2002', '4855.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('383', '河南省', '2001', '4801.57', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('384', '河南省', '2000', '4922.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('385', '湖北省', '2023', '1038.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('386', '湖北省', '2022', '1031.26', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('387', '湖北省', '2021', '1052.06', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('388', '湖北省', '2020', '1031.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('389', '湖北省', '2019', '1017.74', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('390', '湖北省', '2018', '1104.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('391', '湖北省', '2017', '1153.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('392', '湖北省', '2016', '1140.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('393', '湖北省', '2015', '1122.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('394', '湖北省', '2014', '1099.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('395', '湖北省', '2013', '1117.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('396', '湖北省', '2012', '1084.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('397', '湖北省', '2011', '1028.32', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('398', '湖北省', '2010', '1011.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('399', '湖北省', '2009', '1001.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('400', '湖北省', '2008', '1006.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('401', '湖北省', '2007', '1099.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('402', '湖北省', '2006', '1016.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('403', '湖北省', '2005', '716.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('404', '湖北省', '2004', '602.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('405', '湖北省', '2003', '603.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('406', '湖北省', '2002', '700.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('407', '湖北省', '2001', '735.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('408', '湖北省', '2000', '845.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('409', '湖南省', '2023', '22.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('410', '湖南省', '2022', '22.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('411', '湖南省', '2021', '23.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('412', '湖南省', '2020', '23.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('413', '湖南省', '2019', '22.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('414', '湖南省', '2018', '23.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('415', '湖南省', '2017', '28.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('416', '湖南省', '2016', '22.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('417', '湖南省', '2015', '34.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('418', '湖南省', '2014', '34.88', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('419', '湖南省', '2013', '36.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('420', '湖南省', '2012', '38.89', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('421', '湖南省', '2011', '43.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('422', '湖南省', '2010', '41.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('423', '湖南省', '2009', '29.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('424', '湖南省', '2008', '14.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('425', '湖南省', '2007', '13.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('426', '湖南省', '2006', '13.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('427', '湖南省', '2005', '65.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('428', '湖南省', '2004', '76.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('429', '湖南省', '2003', '86.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('430', '湖南省', '2002', '99.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('431', '湖南省', '2001', '110.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('432', '湖南省', '2000', '118.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('433', '广东省', '2023', '0.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('434', '广东省', '2022', '0.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('435', '广东省', '2021', '0.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('436', '广东省', '2020', '0.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('437', '广东省', '2019', '0.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('438', '广东省', '2018', '0.42', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('439', '广东省', '2017', '0.46', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('440', '广东省', '2016', '0.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('441', '广东省', '2015', '0.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('442', '广东省', '2014', '0.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('443', '广东省', '2013', '0.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('444', '广东省', '2012', '0.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('445', '广东省', '2011', '0.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('446', '广东省', '2010', '0.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('447', '广东省', '2009', '0.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('448', '广东省', '2008', '0.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('449', '广东省', '2007', '1.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('450', '广东省', '2006', '1.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('451', '广东省', '2005', '6.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('452', '广东省', '2004', '6.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('453', '广东省', '2003', '5.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('454', '广东省', '2002', '10.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('455', '广东省', '2001', '11.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('456', '广东省', '2000', '13.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('457', '广西壮族自治区', '2023', '4.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('458', '广西壮族自治区', '2022', '4.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('459', '广西壮族自治区', '2021', '3.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('460', '广西壮族自治区', '2020', '3.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('461', '广西壮族自治区', '2019', '3.03', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('462', '广西壮族自治区', '2018', '3.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('463', '广西壮族自治区', '2017', '3.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('464', '广西壮族自治区', '2016', '3.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('465', '广西壮族自治区', '2015', '2.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('466', '广西壮族自治区', '2014', '0.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('467', '广西壮族自治区', '2013', '1.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('468', '广西壮族自治区', '2012', '0.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('469', '广西壮族自治区', '2011', '1.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('470', '广西壮族自治区', '2010', '3.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('471', '广西壮族自治区', '2009', '3.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('472', '广西壮族自治区', '2008', '3.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('473', '广西壮族自治区', '2007', '3.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('474', '广西壮族自治区', '2006', '3.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('475', '广西壮族自治区', '2005', '10.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('476', '广西壮族自治区', '2004', '11.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('477', '广西壮族自治区', '2003', '12.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('478', '广西壮族自治区', '2002', '12.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('479', '广西壮族自治区', '2001', '14.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('480', '广西壮族自治区', '2000', '19.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('481', '海南省', '2017', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('482', '海南省', '2016', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('483', '海南省', '2015', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('484', '海南省', '2014', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('485', '海南省', '2013', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('486', '海南省', '2012', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('487', '海南省', '2011', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('488', '海南省', '2010', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('489', '海南省', '2009', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('490', '海南省', '2008', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('491', '海南省', '2007', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('492', '海南省', '2006', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('493', '海南省', '2005', '0.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('494', '重庆市', '2023', '18.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('495', '重庆市', '2022', '18.85', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('496', '重庆市', '2021', '18.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('497', '重庆市', '2020', '18.52', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('498', '重庆市', '2019', '21.03', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('499', '重庆市', '2018', '24.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('500', '重庆市', '2017', '30.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('501', '重庆市', '2016', '34.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('502', '重庆市', '2015', '41.11', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('503', '重庆市', '2014', '51.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('504', '重庆市', '2013', '64.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('505', '重庆市', '2012', '78.84', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('506', '重庆市', '2011', '90.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('507', '重庆市', '2010', '104.48', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('508', '重庆市', '2009', '125.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('509', '重庆市', '2008', '154.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('510', '重庆市', '2007', '178.28', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('511', '重庆市', '2006', '164.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('512', '重庆市', '2005', '279.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('513', '重庆市', '2004', '280.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('514', '重庆市', '2003', '322.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('515', '重庆市', '2002', '388.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('516', '重庆市', '2001', '422.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('517', '重庆市', '2000', '466.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('518', '四川省', '2023', '593.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('519', '四川省', '2022', '588.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('520', '四川省', '2021', '582.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('521', '四川省', '2020', '596.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('522', '四川省', '2019', '611.14', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('523', '四川省', '2018', '635.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('524', '四川省', '2017', '652.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('525', '四川省', '2016', '684.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('526', '四川省', '2015', '746.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('527', '四川省', '2014', '814.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('528', '四川省', '2013', '878.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('529', '四川省', '2012', '934.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('530', '四川省', '2011', '998.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('531', '四川省', '2010', '1051.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('532', '四川省', '2009', '1111.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('533', '四川省', '2008', '1172.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('534', '四川省', '2007', '1257.08', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('535', '四川省', '2006', '1287.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('536', '四川省', '2005', '1262.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('537', '四川省', '2004', '1255.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('538', '四川省', '2003', '1318.67', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('539', '四川省', '2002', '1456.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('540', '四川省', '2001', '1498.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('541', '四川省', '2000', '1604.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('542', '贵州省', '2023', '110.51', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('543', '贵州省', '2022', '114.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('544', '贵州省', '2021', '135.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('545', '贵州省', '2020', '138.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('546', '贵州省', '2019', '137.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('547', '贵州省', '2018', '141.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('548', '贵州省', '2017', '155.97', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('549', '贵州省', '2016', '169.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('550', '贵州省', '2015', '180.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('551', '贵州省', '2014', '189.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('552', '贵州省', '2013', '196.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('553', '贵州省', '2012', '209.72', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('554', '贵州省', '2011', '215.54', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('555', '贵州省', '2010', '226.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('556', '贵州省', '2009', '236.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('557', '贵州省', '2008', '244.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('558', '贵州省', '2007', '234.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('559', '贵州省', '2006', '243.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('560', '贵州省', '2005', '410.63', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('561', '贵州省', '2004', '429.17', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('562', '贵州省', '2003', '474.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('563', '贵州省', '2002', '498.43', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('564', '贵州省', '2001', '520.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('565', '贵州省', '2000', '567.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('566', '云南省', '2023', '257.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('567', '云南省', '2022', '266.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('568', '云南省', '2021', '291.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('569', '云南省', '2020', '320.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('570', '云南省', '2019', '328.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('571', '云南省', '2018', '339.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('572', '云南省', '2017', '343.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('573', '云南省', '2016', '344.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('574', '云南省', '2015', '356.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('575', '云南省', '2014', '369.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('576', '云南省', '2013', '391.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('577', '云南省', '2012', '403.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('578', '云南省', '2011', '417.31', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('579', '云南省', '2010', '416.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('580', '云南省', '2009', '423.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('581', '云南省', '2008', '420.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('582', '云南省', '2007', '422.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('583', '云南省', '2006', '437.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('584', '云南省', '2005', '532.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('585', '云南省', '2004', '543.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('586', '云南省', '2003', '567.40', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('587', '云南省', '2002', '604.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('588', '云南省', '2001', '640.71', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('589', '云南省', '2000', '645.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('590', '西藏自治区', '2023', '32.96', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('591', '西藏自治区', '2022', '32.62', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('592', '西藏自治区', '2021', '32.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('593', '西藏自治区', '2020', '29.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('594', '西藏自治区', '2019', '32.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('595', '西藏自治区', '2018', '31.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('596', '西藏自治区', '2017', '39.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('597', '西藏自治区', '2016', '42.61', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('598', '西藏自治区', '2015', '36.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('599', '西藏自治区', '2014', '36.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('600', '西藏自治区', '2013', '37.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('601', '西藏自治区', '2012', '37.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('602', '西藏自治区', '2011', '37.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('603', '西藏自治区', '2010', '37.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('604', '西藏自治区', '2009', '36.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('605', '西藏自治区', '2008', '37.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('606', '西藏自治区', '2007', '40.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('607', '西藏自治区', '2006', '41.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('608', '西藏自治区', '2005', '42.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('609', '西藏自治区', '2004', '40.64', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('610', '西藏自治区', '2003', '42.21', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('611', '西藏自治区', '2002', '44.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('612', '西藏自治区', '2001', '46.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('613', '西藏自治区', '2000', '51.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('614', '陕西省', '2023', '941.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('615', '陕西省', '2022', '958.01', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('616', '陕西省', '2021', '955.07', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('617', '陕西省', '2020', '964.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('618', '陕西省', '2019', '965.93', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('619', '陕西省', '2018', '967.31', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('620', '陕西省', '2017', '963.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('621', '陕西省', '2016', '980.78', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('622', '陕西省', '2015', '1002.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('623', '陕西省', '2014', '1000.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('624', '陕西省', '2013', '1021.66', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('625', '陕西省', '2012', '1078.72', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('626', '陕西省', '2011', '1089.23', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('627', '陕西省', '2010', '1119.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('628', '陕西省', '2009', '1119.18', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('629', '陕西省', '2008', '1117.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('630', '陕西省', '2007', '1133.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('631', '陕西省', '2006', '1159.26', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('632', '陕西省', '2005', '1211.53', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('633', '陕西省', '2004', '1152.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('634', '陕西省', '2003', '1233.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('635', '陕西省', '2002', '1356.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('636', '陕西省', '2001', '1424.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('637', '陕西省', '2000', '1537.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('638', '甘肃省', '2023', '740.15', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('639', '甘肃省', '2022', '739.49', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('640', '甘肃省', '2021', '711.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('641', '甘肃省', '2020', '708.72', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('642', '甘肃省', '2019', '739.94', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('643', '甘肃省', '2018', '775.56', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('644', '甘肃省', '2017', '766.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('645', '甘肃省', '2016', '774.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('646', '甘肃省', '2015', '806.39', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('647', '甘肃省', '2014', '802.76', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('648', '甘肃省', '2013', '820.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('649', '甘肃省', '2012', '842.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('650', '甘肃省', '2011', '868.56', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('651', '甘肃省', '2010', '885.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('652', '甘肃省', '2009', '968.52', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('653', '甘肃省', '2008', '906.44', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('654', '甘肃省', '2007', '983.71', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('655', '甘肃省', '2006', '958.54', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('656', '甘肃省', '2005', '1000.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('657', '甘肃省', '2004', '933.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('658', '甘肃省', '2003', '961.34', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('659', '甘肃省', '2002', '1080.04', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('660', '甘肃省', '2001', '1123.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('661', '甘肃省', '2000', '1192.19', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('662', '青海省', '2023', '101.04', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('663', '青海省', '2022', '101.26', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('664', '青海省', '2021', '98.82', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('665', '青海省', '2020', '94.79', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('666', '青海省', '2019', '102.41', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('667', '青海省', '2018', '111.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('668', '青海省', '2017', '82.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('669', '青海省', '2016', '84.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('670', '青海省', '2015', '82.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('671', '青海省', '2014', '80.23', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('672', '青海省', '2013', '84.69', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('673', '青海省', '2012', '86.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('674', '青海省', '2011', '90.91', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('675', '青海省', '2010', '95.99', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('676', '青海省', '2009', '95.68', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('677', '青海省', '2008', '98.38', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('678', '青海省', '2007', '99.58', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('679', '青海省', '2006', '151.75', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('680', '青海省', '2005', '96.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('681', '青海省', '2004', '102.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('682', '青海省', '2003', '107.00', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('683', '青海省', '2002', '142.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('684', '青海省', '2001', '156.20', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('685', '青海省', '2000', '165.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('686', '宁夏回族自治区', '2023', '68.90', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('687', '宁夏回族自治区', '2022', '81.36', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('688', '宁夏回族自治区', '2021', '67.04', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('689', '宁夏回族自治区', '2020', '92.92', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('690', '宁夏回族自治区', '2019', '107.77', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('691', '宁夏回族自治区', '2018', '128.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('692', '宁夏回族自治区', '2017', '123.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('693', '宁夏回族自治区', '2016', '117.33', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('694', '宁夏回族自治区', '2015', '122.45', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('695', '宁夏回族自治区', '2014', '127.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('696', '宁夏回族自治区', '2013', '148.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('697', '宁夏回族自治区', '2012', '178.98', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('698', '宁夏回族自治区', '2011', '202.10', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('699', '宁夏回族自治区', '2010', '211.37', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('700', '宁夏回族自治区', '2009', '218.46', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('701', '宁夏回族自治区', '2008', '204.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('702', '宁夏回族自治区', '2007', '233.73', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('703', '宁夏回族自治区', '2006', '250.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('704', '宁夏回族自治区', '2005', '276.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('705', '宁夏回族自治区', '2004', '279.03', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('706', '宁夏回族自治区', '2003', '319.28', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('707', '宁夏回族自治区', '2002', '370.80', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('708', '宁夏回族自治区', '2001', '299.30', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('709', '宁夏回族自治区', '2000', '292.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('710', '新疆维吾尔自治区', '2023', '1209.22', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('711', '新疆维吾尔自治区', '2022', '1153.60', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('712', '新疆维吾尔自治区', '2021', '1135.25', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('713', '新疆维吾尔自治区', '2020', '1069.02', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('714', '新疆维吾尔自治区', '2019', '1061.59', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('715', '新疆维吾尔自治区', '2018', '1031.47', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('716', '新疆维吾尔自治区', '2017', '1126.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('717', '新疆维吾尔自治区', '2016', '1215.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('718', '新疆维吾尔自治区', '2015', '1158.05', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('719', '新疆维吾尔自治区', '2014', '1110.81', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('720', '新疆维吾尔自治区', '2013', '1075.09', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('721', '新疆维吾尔自治区', '2012', '1043.87', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('722', '新疆维吾尔自治区', '2011', '1052.86', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('723', '新疆维吾尔自治区', '2010', '1090.70', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('724', '新疆维吾尔自治区', '2009', '1115.29', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('725', '新疆维吾尔自治区', '2008', '746.13', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('726', '新疆维吾尔自治区', '2007', '633.95', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('727', '新疆维吾尔自治区', '2006', '737.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('728', '新疆维吾尔自治区', '2005', '737.24', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('729', '新疆维吾尔自治区', '2004', '686.35', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('730', '新疆维吾尔自治区', '2003', '661.50', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('731', '新疆维吾尔自治区', '2002', '749.74', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('732', '新疆维吾尔自治区', '2001', '744.27', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
INSERT INTO `wheat_planting_area` VALUES ('733', '新疆维吾尔自治区', '2000', '838.83', '2025-06-30 19:55:59', '2025-06-30 19:55:59');
