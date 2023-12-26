/*
 Navicat MySQL Data Transfer

 Source Server         : usst
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : spboot03966stglxt

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 26/12/2023 21:26:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin', '2023-12-10 15:28:28');

-- ----------------------------
-- Table structure for caipinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `caipinfenlei`;
CREATE TABLE `caipinfenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caipinfenlei
-- ----------------------------
INSERT INTO `caipinfenlei` VALUES (1, '干锅', '2023-12-10 15:34:07');
INSERT INTO `caipinfenlei` VALUES (2, '爆炒', '2023-12-10 15:34:14');
INSERT INTO `caipinfenlei` VALUES (3, '水饺', '2023-12-10 15:34:45');
INSERT INTO `caipinfenlei` VALUES (4, '红烧', '2023-12-10 15:34:54');
INSERT INTO `caipinfenlei` VALUES (5, '港式早茶', '2023-12-10 15:35:54');

-- ----------------------------
-- Table structure for caipinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `caipinxinxi`;
CREATE TABLE `caipinxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `caipinbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品名称',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品图片',
  `pingfen` decimal(18, 2) NOT NULL COMMENT '评分',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `zhekoujia` int NOT NULL COMMENT '折扣价',
  `xiaoliang` int NOT NULL COMMENT '销量',
  `kucun` int NOT NULL COMMENT '库存',
  `caipinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品详情',
  `faburen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '发布人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `caipinxinxi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caipinxinxi
-- ----------------------------
INSERT INTO `caipinxinxi` VALUES (1, '11071535222066', '地锅鸡', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 5.00, 88.00, 68, 9, 21, '', '100', '2023-12-10 15:40:55');
INSERT INTO `caipinxinxi` VALUES (2, '11071541181393', '辣椒炒肉', 2, 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', 3.26, 68.00, 48, 1, 29, '', '100', '2023-12-10 15:42:41');
INSERT INTO `caipinxinxi` VALUES (3, '11071542421902', '红烧肉', 4, 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', 5.00, 48.00, 38, 25, 15, '', '100', '2023-12-10 15:44:18');
INSERT INTO `caipinxinxi` VALUES (4, '11071544541478', '山东水饺', 3, 'upload/20201107/c4f799b5-a44a-4789-b693-d3a1224746bc.png', 0.00, 68.00, 58, 0, 40, '', '110', '2023-12-10 15:46:13');
INSERT INTO `caipinxinxi` VALUES (5, '11071546158588', '松鼠鱼', 4, 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', 0.00, 58.00, 48, 2, 28, '', '110', '2023-12-10 15:47:31');
INSERT INTO `caipinxinxi` VALUES (6, '11071547321605', '金沙红米肠', 5, 'upload/20201107/e4394d15-35d3-4395-8f72-9e10ea1ea60f.png', 0.00, 78.00, 68, 0, 50, '', '110', '2023-12-10 15:49:30');

-- ----------------------------
-- Table structure for dianjia
-- ----------------------------
DROP TABLE IF EXISTS `dianjia`;
CREATE TABLE `dianjia`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `zhanghao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `dianjiamingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '店家名称',
  `shoujihaoma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机号码',
  `dizhi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `youxiang` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianjia
-- ----------------------------
INSERT INTO `dianjia` VALUES (1, '100', '100', '美食湘菜', '13526478977', 'xx市xx街道', '98745564@qq.com', '2023-12-10 15:30:32');
INSERT INTO `dianjia` VALUES (2, '110', '110', '粤菜', '12345678234', 'xx市xx街道', '98745564@qq.com', '2023-12-10 15:33:38');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dingdanbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18, 2) NOT NULL COMMENT '订单金额',
  `yongcanren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用餐人',
  `lianxidianhua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系电话',
  `yongcanshijian` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用餐时间',
  `zhuangtai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `beizhu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '备注',
  `dianjia` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '店家',
  `xiadanren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '下单人',
  `iszf` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '否' COMMENT '是否支付',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES (5, '11071706412048', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071546158588</td>\r\n                                            <td>白切鸭</td>\r\n                                            <td>\r\n                                                白切</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>240.00</td>\r\n                                            <td>5</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 240.00, 'XXX', '13987456217', '2020-11-07 17:06:43', '未交付', 'XXXX', '110', '001', '是', '2020-11-07 17:06:47');
INSERT INTO `dingdan` VALUES (8, '11071742059881', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>干锅虾</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>68.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 68.00, 'XXX', '13987456217', '2020-11-07 17:42:11', '未交付', 'ZXXXX', '100', '001', '是', '2020-11-07 17:42:14');
INSERT INTO `dingdan` VALUES (9, '11071749271286', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071541181393</td>\r\n                                            <td>爆炒肥肠</td>\r\n                                            <td>\r\n                                                爆炒</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>48.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 48.00, 'XXX', '13987456217', '2020-11-07 17:49:32', '已交付', 'XXXXX', '100', '001', '是', '2020-11-07 17:49:35');
INSERT INTO `dingdan` VALUES (14, '12171040182107', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>38.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 38.00, '', '15538550516', '2023-12-17 10:40:25', '已交付', '', '100', '2135052414', '是', '2023-12-17 10:40:28');
INSERT INTO `dingdan` VALUES (15, '12171635299170', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>地锅鸡</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>68.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 68.00, '', '15538550516', '2023-12-17 16:35:44', '未交付', '', '100', '2135052414', '是', '2023-12-17 16:36:00');
INSERT INTO `dingdan` VALUES (16, '12221332348729', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>地锅鸡</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>68.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 68.00, '', '15538550516', '2023-12-22 13:32:39', '未交付', '不要辣', '100', '2135052414', '是', '2023-12-22 13:32:51');

-- ----------------------------
-- Table structure for dingdan_dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dingdan_dingdanxinxi`;
CREATE TABLE `dingdan_dingdanxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dingdanid` int UNSIGNED NOT NULL,
  `caipinxinxiid` int UNSIGNED NOT NULL COMMENT '菜品信息ID',
  `caipinbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品名称',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品图片',
  `zhekoujia` int NOT NULL COMMENT '折扣价',
  `xiaoji` decimal(18, 2) NOT NULL COMMENT '小计',
  `goumaishuliang` int NOT NULL COMMENT '购买数量',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dingdan_dingdanxinxi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dingdan_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdan_dingdanxinxi` VALUES (1, 6, 5, '11071546158588', '白切鸭', 3, 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', 48, 96.00, 2, '2020-11-07 17:10:34');
INSERT INTO `dingdan_dingdanxinxi` VALUES (2, 6, 5, '11071546158588', '白切鸭', 3, 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', 48, 96.00, 2, '2020-11-07 17:10:34');
INSERT INTO `dingdan_dingdanxinxi` VALUES (4, 7, 3, '11071542421902', '红烧肉', 4, 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', 38, 760.00, 20, '2020-11-07 17:21:53');
INSERT INTO `dingdan_dingdanxinxi` VALUES (5, 8, 1, '11071535222066', '干锅虾', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 68.00, 1, '2020-11-07 17:42:14');
INSERT INTO `dingdan_dingdanxinxi` VALUES (6, 9, 2, '11071541181393', '爆炒肥肠', 2, 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', 48, 48.00, 1, '2020-11-07 17:49:35');
INSERT INTO `dingdan_dingdanxinxi` VALUES (7, 10, 3, '11071542421902', '红烧肉', 4, 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', 38, 76.00, 2, '2020-11-09 15:53:26');
INSERT INTO `dingdan_dingdanxinxi` VALUES (8, 10, 1, '11071535222066', '干锅虾', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 136.00, 2, '2020-11-09 15:53:26');
INSERT INTO `dingdan_dingdanxinxi` VALUES (10, 11, 1, '11071535222066', '干锅虾', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 136.00, 2, '2020-11-09 16:16:53');
INSERT INTO `dingdan_dingdanxinxi` VALUES (11, 12, 3, '11071542421902', '红烧肉', 4, 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', 38, 76.00, 2, '2020-11-09 16:26:40');
INSERT INTO `dingdan_dingdanxinxi` VALUES (12, 13, 1, '11071535222066', '干锅虾', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 136.00, 2, '2020-11-09 16:41:06');
INSERT INTO `dingdan_dingdanxinxi` VALUES (13, 14, 3, '11071542421902', '红烧肉', 4, 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', 38, 38.00, 1, '2023-12-17 10:40:28');
INSERT INTO `dingdan_dingdanxinxi` VALUES (14, 15, 1, '11071535222066', '地锅鸡', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 68.00, 1, '2023-12-17 16:36:00');
INSERT INTO `dingdan_dingdanxinxi` VALUES (15, 16, 1, '11071535222066', '地锅鸡', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 68, 68.00, 1, '2023-12-22 13:32:51');

-- ----------------------------
-- Table structure for gouwuche
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `caipinxinxiid` int UNSIGNED NOT NULL COMMENT '菜品信息id',
  `caipinbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品名称',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品图片',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `faburen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '发布人',
  `zhekoujia` int NOT NULL COMMENT '折扣价',
  `goumaishuliang` int NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18, 2) NOT NULL COMMENT '小计',
  `beizhu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '备注',
  `goumairen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '购买人',
  `issh` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '否' COMMENT '是否审核',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gouwuche_caipinxinxiid_index`(`caipinxinxiid` ASC) USING BTREE,
  INDEX `gouwuche_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES (12, 2, '11071541181393', '爆炒肥肠', 2, 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', 68.00, '100', 48, 1, 48.00, '信息', '100', '否', '2020-11-09 10:08:04');
INSERT INTO `gouwuche` VALUES (19, 1, '11071535222066', '干锅虾', 1, 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', 88.00, '100', 68, 1, 68.00, '', '100', '否', '2020-11-09 16:18:12');

-- ----------------------------
-- Table structure for jiaofu
-- ----------------------------
DROP TABLE IF EXISTS `jiaofu`;
CREATE TABLE `jiaofu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dingdanid` int UNSIGNED NOT NULL COMMENT '订单id',
  `dingdanbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18, 2) NOT NULL COMMENT '订单金额',
  `xiadanren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '下单人',
  `beizhu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '备注',
  `jiaofuren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '交付人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jiaofu_dingdanid_index`(`dingdanid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaofu
-- ----------------------------
INSERT INTO `jiaofu` VALUES (1, 2, '11071700301353', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>38.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 38.00, '001', '可以了', '100', '2020-11-07 17:20:34');
INSERT INTO `jiaofu` VALUES (3, 9, '11071749271286', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071541181393</td>\r\n                                            <td>爆炒肥肠</td>\r\n                                            <td>\r\n                                                爆炒</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>48.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 48.00, '001', '第三方', '100', '2020-11-09 10:13:02');
INSERT INTO `jiaofu` VALUES (4, 10, '11091553218211', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>干锅虾</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>136.00</td>\r\n                                            <td>2</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                            <tbody><tr><td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>76.00</td>\r\n                                            <td>2</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 212.00, '001', 'ok', '100', '2020-11-09 15:58:01');
INSERT INTO `jiaofu` VALUES (8, 14, '12171040182107', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>38.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', 38.00, '2135052414', '', '100', '2023-12-17 10:42:41');

-- ----------------------------
-- Table structure for jiaofu_dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jiaofu_dingdanxinxi`;
CREATE TABLE `jiaofu_dingdanxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `jiaofuid` int UNSIGNED NOT NULL,
  `caipinxinxiid` int UNSIGNED NOT NULL COMMENT '菜品信息ID',
  `caipinbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品名称',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜品图片',
  `zhekoujia` int NOT NULL COMMENT '折扣价',
  `xiaoji` decimal(18, 2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jiaofu_dingdanxinxi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaofu_dingdanxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES (1, '1', 'upload/20201107/420d8efe-5bf8-4f0c-8d2b-179f7fcc9902.png', '#', '2020-11-07 15:31:13');
INSERT INTO `lunbotu` VALUES (2, '2', 'upload/20201107/11b39015-9f0d-4f12-ae4c-69494add8fad.png', '#', '2020-11-07 15:31:42');
INSERT INTO `lunbotu` VALUES (3, '3', 'upload/20201107/3c8b4539-78ea-4222-971d-273c612a261e.png', '#', '2020-11-07 15:32:09');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `biao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '表',
  `biaoid` int NOT NULL COMMENT '表id',
  `qitaid` int NOT NULL COMMENT '其它id',
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `pingfen` decimal(18, 2) NOT NULL COMMENT '评分',
  `pinglunneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES (52, 'caipinxinxi', 1, 10, '干锅虾', 5.00, '挺不错的', '001', '2020-11-09 15:59:54');
INSERT INTO `pinglun` VALUES (53, 'caipinxinxi', 3, 10, '红烧肉', 5.00, '美味', '001', '2020-11-09 16:00:14');

-- ----------------------------
-- Table structure for shoucangjilu
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `xwid` int UNSIGNED NOT NULL,
  `biao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ziduan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES (1, '001', 3, 'caipinxinxi', '红烧肉', 'http://localhost:8081/caipinxinxidetail.do?id=3', 'caipinmingcheng', '2020-11-07 16:01:22');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '性别',
  `nianling` int NOT NULL COMMENT '年龄',
  `shouji` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机',
  `shenfenzheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (1, '001', '001', '婷婷', '女', 25, '12365478998', '657894587965478547', 'upload/1012161739579153.png', '2020-11-07 15:29:17');
INSERT INTO `xuesheng` VALUES (2, '002', '002', '美美', '女', 20, '12365478998', '452478965874578965', 'upload/20201109/911a8d36-09cc-4099-9396-d75319bda47d.png', '2020-11-09 16:13:54');
INSERT INTO `xuesheng` VALUES (5, '2135052414', '283571', '李', '男', 21, '15538550516', '410303200201011039', '', '2023-12-15 10:55:34');

-- ----------------------------
-- Table structure for zaixiantousu
-- ----------------------------
DROP TABLE IF EXISTS `zaixiantousu`;
CREATE TABLE `zaixiantousu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `dianhua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `tousudianjia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '投诉店家',
  `tousuneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '投诉内容',
  `huifuneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '回复内容',
  `tousuren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '投诉人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zaixiantousu
-- ----------------------------
INSERT INTO `zaixiantousu` VALUES (1, '美美', '15555555555', '粤菜', 'sdgfdh', '哈哈', '001', '2020-11-07 17:18:34');
INSERT INTO `zaixiantousu` VALUES (2, '美美', '15555555555', '粤菜', '不好吃', '为什么', '001', '2020-11-09 10:14:41');
INSERT INTO `zaixiantousu` VALUES (7, '李', '15538550516', '粤菜', '难吃', '', '2135052414', '2023-12-22 13:30:43');

SET FOREIGN_KEY_CHECKS = 1;
