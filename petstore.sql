/*
MySQL Data Transfer
Source Host: localhost
Source Database: petstore
Target Host: localhost
Target Database: petstore
Date: 2019/11/10 11:16:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `accountId` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `langPreference` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`accountId`),
  UNIQUE KEY `uk_account` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uName` varchar(10) CHARACTER SET gb2312 NOT NULL DEFAULT '',
  `pwd` varchar(255) DEFAULT NULL,
  `bDate` varchar(20) DEFAULT NULL,
  `telNum` varchar(255) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`uName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `account` VALUES ('1', '李太白', '123456', '太白', '李', '123@163.com', null, null, null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('BIRDS', '鸟类', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', '猫', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', '狗', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', '鱼', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', '爬行类', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');
INSERT INTO `inventory` VALUES ('EST-1', '10000');
INSERT INTO `inventory` VALUES ('EST-10', '10000');
INSERT INTO `inventory` VALUES ('EST-11', '10000');
INSERT INTO `inventory` VALUES ('EST-12', '10000');
INSERT INTO `inventory` VALUES ('EST-13', '10000');
INSERT INTO `inventory` VALUES ('EST-14', '10000');
INSERT INTO `inventory` VALUES ('EST-15', '10000');
INSERT INTO `inventory` VALUES ('EST-16', '10000');
INSERT INTO `inventory` VALUES ('EST-17', '10000');
INSERT INTO `inventory` VALUES ('EST-18', '10000');
INSERT INTO `inventory` VALUES ('EST-19', '10000');
INSERT INTO `inventory` VALUES ('EST-2', '10000');
INSERT INTO `inventory` VALUES ('EST-20', '10000');
INSERT INTO `inventory` VALUES ('EST-21', '10000');
INSERT INTO `inventory` VALUES ('EST-22', '10000');
INSERT INTO `inventory` VALUES ('EST-23', '10000');
INSERT INTO `inventory` VALUES ('EST-24', '10000');
INSERT INTO `inventory` VALUES ('EST-25', '10000');
INSERT INTO `inventory` VALUES ('EST-26', '10000');
INSERT INTO `inventory` VALUES ('EST-27', '10000');
INSERT INTO `inventory` VALUES ('EST-28', '10000');
INSERT INTO `inventory` VALUES ('EST-3', '10000');
INSERT INTO `inventory` VALUES ('EST-4', '10000');
INSERT INTO `inventory` VALUES ('EST-5', '10000');
INSERT INTO `inventory` VALUES ('EST-6', '10000');
INSERT INTO `inventory` VALUES ('EST-7', '10000');
INSERT INTO `inventory` VALUES ('EST-8', '10000');
INSERT INTO `inventory` VALUES ('EST-9', '10000');
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', '1', 'P', '大 天使鱼', null, null, null, null);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', '1', 'P', '带斑点成年雌性 斑点狗', null, null, null, null);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', '1', 'P', '无毒 响尾蛇', null, null, null, null);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', '1', 'P', '无响声 响尾蛇', null, null, null, null);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', '1', 'P', '大型成年 鬣蜥', null, null, null, null);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', '1', 'P', '无尾 马恩岛猫', null, null, null, null);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', '1', 'P', '有尾 马恩岛猫', null, null, null, null);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', '1', 'P', '成年雌性 波斯猫', null, null, null, null);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', '1', 'P', '成年雄性 波斯猫', null, null, null, null);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', '1', 'P', '成年雄性 亚马逊鹦鹉', null, null, null, null);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', '1', 'P', '成年雄性 燕雀', null, null, null, null);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', '1', 'P', '小 天使鱼', null, null, null, null);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', '1', 'P', '成年雄性 金鱼', null, null, null, null);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', '1', 'P', '成年雌性 金鱼', null, null, null, null);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', '1', 'P', '成年雄性 拉布拉多猎犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', '1', 'P', '成年雌性 拉布拉多猎犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', '1', 'P', '成年雄性 拉布拉多猎犬 ', null, null, null, null);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', '1', 'P', '成年雌性 拉布拉多猎犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', '1', 'P', '成年雄性 吉娃娃犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', '1', 'P', '成年雌性 吉娃娃犬 ', null, null, null, null);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', '1', 'P', '成年雌性 金毛猎犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', '1', 'P', '无牙齿 虎鲨 ', null, null, null, null);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', '1', 'P', '斑点 锦鲤 ', null, null, null, null);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', '1', 'P', '无斑点 锦鲤', null, null, null, null);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', '1', 'P', '成年雄性 牛头犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', '1', 'P', '小母狗 牛头犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', '1', 'P', '小公狗 狮子犬', null, null, null, null);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', '1', 'P', '无斑点雄性小狗 斑点狗', null, null, null, null);
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', '亚马逊鹦鹉', '<image src=\"../images/bird2.gif\">75 岁以上高龄的好伙伴');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', '燕雀', '<image src=\"../images/bird1.gif\">非常好的减压宠物');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', '锦鲤', '<image src=\"../images/fish3.gif\">来自日本的淡水鱼');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', '金鱼', '<image src=\"../images/fish2.gif\">来自中国的淡水鱼');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', '天使鱼', '<image src=\"../images/fish1.gif\">来自澳大利亚的海水鱼');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', '虎鲨', '<image src=\"../images/fish4.gif\">来自澳大利亚的海水鱼');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', '波斯猫', '<image src=\"../images/cat1.gif\">友好的家居猫, 像公主一样高贵');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', '马恩岛猫', '<image src=\"../images/cat2.gif\">灭鼠能手');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', '牛头犬', '<image src=\"../images/dog2.gif\">来自英格兰的友好的狗');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', '吉娃娃犬', '<image src=\"../images/dog4.gif\">很好的陪伴狗');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', '斑点狗', '<image src=\"../images/dog5.gif\">来自消防队的大狗');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', '狮子犬', '<image src=\"../images/dog6.gif\">来自法国的可爱的狗');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', '金毛猎犬', '<image src=\"../images/dog1.gif\">大家庭的狗');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', '拉布拉多猎犬', '<image src=\"../images/dog5.gif\">大猎狗');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', '鬣蜥', '<image src=\"../images/lizard1.gif\">友好的绿色朋友');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', '响尾蛇', '<image src=\"../images/snake1.gif\">兼当看门狗');
INSERT INTO `supplier` VALUES ('1', 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES ('2', 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
INSERT INTO `user` VALUES ('4433', '3333', '1999-11-11', '1234', '222');
INSERT INTO `user` VALUES ('6677', '1234', '1991-11-11', '2345', '222');
INSERT INTO `user` VALUES ('wanghai', '123', '2002-03-08', '13912345678', '上海静安');
INSERT INTO `user` VALUES ('很好', '111', '1999-1-1', '111', '111');
INSERT INTO `user` VALUES ('丽丽', '2222', '2011-11-11', '4567', '222');
INSERT INTO `user` VALUES ('我问问', '1234', '1988-1-1', '13912347890', '北京');
INSERT INTO `user` VALUES ('应用', '33', '2001-11-11', '5678', '222');
