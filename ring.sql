SET NAMES UTF8;
DROP DATABASE IF EXISTS ring;
CREATE DATABASE ring CHARSET=UTF8;
USE ring;


/****首页商品****/
CREATE TABLE ring(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  seq_recommended TINYINT
);


/****首页商品index.html****/
INSERT INTO ring VALUES
(NULL, '星辰系列', '星之守护者  66刻面 40分 I色', 'img/ringlist/1469436495 (1).jpg', 15100,1),
(NULL, 'Favor系列', '倾慕 简款 15分 F-G色', 'img/ringlist/1492754353.jpg', 7140,3),
(NULL, 'Always love 系列', '缘分 15分 I-J色', 'img/ringlist/1516690592.jpg', 6200,4),
(NULL, 'Happiness 系列', '守护 对戒 5分 I-J色', 'img/ringlist/1515060926.jpg', 6130,5),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536226738 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980306.jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540981356.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1516690592 (1).jpg', 8000,6),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1492754353 (1).jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1469436318.jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515140454.jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515132207.jpg', 8000,3),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540974544 (1).jpg', 8000,0),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536226862.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536225426.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536225426 (1).jpg', 8000,0),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536220045.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536219053.jpg', 8000,0),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1529564744.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540981356.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536217645.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536225426 (1).jpg', 8000,0),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536220045.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536219053.jpg', 8000,0),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1529564744.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540981356.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1515133695 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818.jpg', 8000,0),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536225426 (1).jpg', 8000,0),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536220045.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1536219053.jpg', 8000,0),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1529564744.jpg', 8000,0),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929.jpg', 8000,1),
(NULL, 'Favor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540981356.jpg', 8000,1),
(NULL, 'Happiness 系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1540980929 (1).jpg', 8000,1),
(NULL, '【发现6】Splendor系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1493015903.jpg', 8000,1),
(NULL, '星辰系列', '光芒 奢华款 车花 30分 H色', 'img/ringlist/1509692818 (1).jpg', 8000,1);



/**详情页**/
CREATE TABLE ring_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,             
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
  a VARCHAR(64),       #销售分类  
  c VARCHAR(64),       #商品名称 :
  d VARCHAR(64),       #商品编号 :
  e VARCHAR(64),       #款号
  f VARCHAR(64),       #材质 :
  g VARCHAR(64),       #主石材质 :
  h VARCHAR(64),       #主石形状  
  i VARCHAR(64),       #主石色泽 :
  j VARCHAR(64),       #石重 :
  k VARCHAR(64),       #颜色 :
  l VARCHAR(64),       #净度 :
  m VARCHAR(64),       #切工 :  
  n VARCHAR(64),       #抛光 :
  o VARCHAR(64),       #荧光 :
  p VARCHAR(64)        #台面 :
);

INSERT INTO ring_pic VALUES
(NULL, 1, 'img/shopping/sm/95d92c3c-896d-45e5-8e82-a9b1e38b3be6.jpg','img/shopping/md/95d92c3c-896d-45e5-8e82-a9b1e38b3be6.jpg','img/shopping/lg/95d92c3c-896d-45e5-8e82-a9b1e38b3be6.jpg',"对戒","笃定 对戒","GW10262","男:ZJ1053/女:ZJ1054","男:白18K金/女:白18K金","男:钻石/女:钻石","男:方形/女:方形","男:白色/女:白色","男:6分/女:5分","男:I-J/女:I-J","男:SI/女:SI","男:-/女:-","男:-/女:-","男:-/女:-","男:-/女:-"), /*衬衫-蓝色*/

(NULL, 1, 'img/shopping/sm/b2a3da06-24de-42a0-ac6b-58bddd47738a.jpg','img/shopping/md/b2a3da06-24de-42a0-ac6b-58bddd47738a.jpg','img/shopping/lg/b2a3da06-24de-42a0-ac6b-58bddd47738a.jpg',"对戒","笃定 对戒","GW10262","男:ZJ1053/女:ZJ1054","男:白18K金/女:白18K金","男:钻石/女:钻石","男:方形/女:方形","男:白色/女:白色","男:6分/女:5分","男:I-J/女:I-J","男:SI/女:SI","男:-/女:-","男:-/女:-","男:-/女:-","男:-/女:-"), /*衬衫-蓝色*/

(NULL, 1, 'img/shopping/sm/ce5c8bcf-46f3-4c29-9e6f-d5b207279e44.jpg','img/shopping/md/ce5c8bcf-46f3-4c29-9e6f-d5b207279e44.jpg','img/shopping/lg/ce5c8bcf-46f3-4c29-9e6f-d5b207279e44.jpg',"对戒","笃定 对戒","GW10262","男:ZJ1053/女:ZJ1054","男:白18K金/女:白18K金","男:钻石/女:钻石","男:方形/女:方形","男:白色/女:白色","男:6分/女:5分","男:I-J/女:I-J","男:SI/女:SI","男:-/女:-","男:-/女:-","男:-/女:-","男:-/女:-"), /*衬衫-蓝色*/

(NULL, 2, 'img/shopping/sm/98935269-e55f-4c4e-8e55-3dbf06917ee6.jpg','img/shopping/md/98935269-e55f-4c4e-8e55-3dbf06917ee6.jpg','img/shopping/lg/98935269-e55f-4c4e-8e55-3dbf06917ee6.jpg',"套链","其他","GW10429","BZ1112","白18K金","红宝石","椭圆形","红色","4分","-","-","-","-","白色","圆形"), /*衬衫-蓝色*/
(NULL, 2, 'img/shopping/sm/3b6a82af-2a84-4032-bbae-4a0804e2a1ec.jpg','img/shopping/md/3b6a82af-2a84-4032-bbae-4a0804e2a1ec.jpg','img/shopping/lg/3b6a82af-2a84-4032-bbae-4a0804e2a1ec.jpg',"套链","其他","GW10429","BZ1112","白18K金","红宝石","椭圆形","红色","4分","-","-","-","-","白色","圆形"), 

(NULL, 2, 'img/shopping/sm/0dbce5b9-b70a-48ab-af5d-bf3819546ca7.jpg','img/shopping/md/0dbce5b9-b70a-48ab-af5d-bf3819546ca7.jpg','img/shopping/lg/0dbce5b9-b70a-48ab-af5d-bf3819546ca7.jpg',"套链","其他","GW10429","BZ1112","白18K金","红宝石","椭圆形","红色","4分","-","-","-","-","白色","圆形");/*衬衫-蓝色*/


/****首页商品详情页details.html****/
CREATE TABLE details(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  spec VARCHAR(64)           #规格/颜色
);

INSERT INTO details VALUES
(NULL,1,'imprinting A系列 热恋 白18k 对戒 ',5580,'30分 A色'),
(NULL,1,'imprinting B系列 热恋 白18k 对戒  ',6660,'30分 B色'),
(NULL,1,'imprinting C系列 热恋 白18k 对戒 ',5580,'30分 C色'),
(NULL,1,'imprinting D系列 热恋 白18k 对戒  ',6660,'30分 D色'),
(NULL,1,'imprinting E系列 热恋 白18k 对戒 ',5580,'30分 E色'),
(NULL,1,'imprinting F系列 热恋 白18k 对戒  ',6660,'30分 F色'),
(NULL,1,'imprinting G系列 热恋 白18k 对戒 ',5580,'30分 G色'),
(NULL,1,'imprinting H系列 热恋 白18k 对戒 ',6660,'30分 H色'),
(NULL,1,'imprinting I系列 热恋 白18k 对戒 ',5580,'30分 I色'),
(NULL,1,'imprinting J系列 热恋 白18k 对戒  ',6660,'30分 J色'),
(NULL,1,'imprinting K系列 热恋 白18k 对戒 ',5580,'30分 K色'),
(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 L色'),

(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 M色'),	
(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 N色'),
(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 O色'),
(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 P色'),
(NULL,1,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 Q色'),
(NULL,2,'imprinting H系列 热恋 白18k 对戒 ',6660,'30分 A色'),
(NULL,2,'imprinting I系列 热恋 白18k 对戒 ',5580,'30分 B色'),
(NULL,2,'imprinting J系列 热恋 白18k 对戒  ',6660,'30分 C色'),
(NULL,2,'imprinting K系列 热恋 白18k 对戒 ',5580,'30分 D色'),
(NULL,2,'imprinting L系列 热恋 白18k 对戒  ',6660,'30分 E色');




/**用户信息**/
CREATE TABLE xz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**用户信息**/
INSERT INTO xz_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567','丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', '秦小雅', '0');

