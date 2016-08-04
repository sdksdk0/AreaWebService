/*
SQLyog v10.2 
MySQL - 5.1.33-community : Database - webservice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webservice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webservice`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `AREAID` varchar(128) NOT NULL,
  `AREACODE` varchar(128) DEFAULT NULL,
  `AREANAME` varchar(128) NOT NULL,
  `AREALEVEL` char(1) NOT NULL,
  `AREAFULLNAME` varchar(200) DEFAULT NULL,
  `PARENTID` varchar(128) NOT NULL,
  `SHORTNAME` varchar(300) DEFAULT NULL,
  `ISLOCK` varchar(1) NOT NULL DEFAULT '0',
  `ISMANAGER` varchar(1) NOT NULL DEFAULT '0',
  `ISCENTER` varchar(1) DEFAULT '0',
  `xsite` varchar(10) DEFAULT NULL,
  `ysite` varchar(10) DEFAULT NULL,
  `ugcode` varchar(32) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area` */

insert  into `area`(`AREAID`,`AREACODE`,`AREANAME`,`AREALEVEL`,`AREAFULLNAME`,`PARENTID`,`SHORTNAME`,`ISLOCK`,`ISMANAGER`,`ISCENTER`,`xsite`,`ysite`,`ugcode`,`orderid`) values ('0',NULL,'区域根目录','0',NULL,'-1',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.',NULL,'荥阳市','1',NULL,'0',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.1.',NULL,'崔庙镇','2',NULL,'1.',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.1.16.',NULL,'崔庙镇崔庙村','3',NULL,'1.1.','cmzcmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.17.',NULL,'崔庙镇盆窑村','3',NULL,'1.1.','cmzpyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.18.',NULL,'崔庙镇项沟村','3',NULL,'1.1.','cmzxgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.19.',NULL,'崔庙镇索坡村','3',NULL,'1.1.','cmzspc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.20.',NULL,'崔庙镇竹园村','3',NULL,'1.1.','cmzzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.21.',NULL,'崔庙镇翟沟村','3',NULL,'1.1.','cmzzgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.22.',NULL,'崔庙镇老庄村','3',NULL,'1.1.','cmzlzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.23.',NULL,'崔庙镇石井村','3',NULL,'1.1.','cmzsjc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.24.',NULL,'崔庙镇车厂村','3',NULL,'1.1.','cmzccc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.25.',NULL,'崔庙镇石坡村','3',NULL,'1.1.','cmzshpc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.26.',NULL,'崔庙镇王宗店村','3',NULL,'1.1.','cmzwzdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.27.',NULL,'崔庙镇白赵村','3',NULL,'1.1.','cmzbzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.28.',NULL,'崔庙镇栗树沟村','3',NULL,'1.1.','cmzlsgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.29.',NULL,'崔庙镇马寨村','3',NULL,'1.1.','cmzmzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.30.',NULL,'崔庙镇丁沟村','3',NULL,'1.1.','cmzdgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.31.',NULL,'崔庙镇邵寨村','3',NULL,'1.1.','cmzszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.32.',NULL,'崔庙镇寺沟村','3',NULL,'1.1.','cmzsgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.33.',NULL,'崔庙镇界沟村','3',NULL,'1.1.','cmzjgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.34.',NULL,'崔庙镇郑岗村','3',NULL,'1.1.','cmzzhgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.35.',NULL,'崔庙镇王泉村','3',NULL,'1.1.','cmzwqc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.36.',NULL,'崔庙镇卢庄村','3',NULL,'1.1.','cmzlzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.1.37.',NULL,'崔庙镇郑庄村','3',NULL,'1.1.','cmzzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.',NULL,'汜水镇','2',NULL,'1.','ssz','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.1.',NULL,'汜水镇寥峪村','3',NULL,'1.10.','sszlyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.10.',NULL,'汜水镇清静沟村','3',NULL,'1.10.','sszqjgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.11.',NULL,'汜水镇汜水村','3',NULL,'1.10.','sszssc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.12.',NULL,'汜水镇滹沱村','3',NULL,'1.10.','sszhtc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.13.',NULL,'汜水镇南屯村','3',NULL,'1.10.','sszntc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.14.',NULL,'汜水镇赵村','3',NULL,'1.10.','sszzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.2.',NULL,'汜水镇十里村','3',NULL,'1.10.','sszslc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.3.',NULL,'汜水镇虎牢关村','3',NULL,'1.10.','sszhlgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.4.',NULL,'汜水镇东河南村','3',NULL,'1.10.','sszdhnc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.5.',NULL,'汜水镇老君堂村','3',NULL,'1.10.','sszljtc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.6.',NULL,'汜水镇口子村','3',NULL,'1.10.','sszkzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.7.',NULL,'汜水镇新沟村','3',NULL,'1.10.','sszxgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.8.',NULL,'汜水镇周沟村','3',NULL,'1.10.','sszzgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.10.9.',NULL,'汜水镇西邢村','3',NULL,'1.10.','sszxxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.',NULL,'高山镇','2',NULL,'1.','gsz','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.1.',NULL,'高山镇许村','3',NULL,'1.11.','gszxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.10.',NULL,'高山镇乔沟村','3',NULL,'1.11.','gszqgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.11.',NULL,'高山镇杨桥村','3',NULL,'1.11.','gszyqc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.12.',NULL,'高山镇余顶村','3',NULL,'1.11.','gszydc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.13.',NULL,'高山镇妥要村','3',NULL,'1.11.','gsztyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.14.',NULL,'高山镇苌岗村','3',NULL,'1.11.','gszcgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.15.',NULL,'高山镇冢岗村','3',NULL,'1.11.','gszzgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.16.',NULL,'高山镇苗顶村','3',NULL,'1.11.','gszmdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.17.',NULL,'高山镇石洞村','3',NULL,'1.11.','gszsdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.18.',NULL,'高山镇高山村','3',NULL,'1.11.','gszgsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.19.',NULL,'高山镇竹川村','3',NULL,'1.11.','gszzcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.2.',NULL,'高山镇潘窑村','3',NULL,'1.11.','gszpyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.3.',NULL,'高山镇穆沟村','3',NULL,'1.11.','gszmugc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.4.',NULL,'高山镇白水村','3',NULL,'1.11.','gszbsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.5.',NULL,'高山镇冯沟村','3',NULL,'1.11.','gszfgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.6.',NULL,'高山镇吴沟村','3',NULL,'1.11.','gszwgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.7.',NULL,'高山镇庙沟村','3',NULL,'1.11.','gszmgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.8.',NULL,'高山镇纸坊村','3',NULL,'1.11.','gszzfc','0','1',NULL,NULL,NULL,NULL,NULL),('1.11.9.',NULL,'高山镇竹园村','3',NULL,'1.11.','gszzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.',NULL,'城关乡','2',NULL,'1.','cgx','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.1.',NULL,'城关乡石板沟村','3',NULL,'1.12.','cgxsbgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.10.',NULL,'城关乡汪沟村','3',NULL,'1.12.','cgxwgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.11.',NULL,'城关乡北周村','3',NULL,'1.12.','cgxbzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.12.',NULL,'城关乡张楼村','3',NULL,'1.12.','cgxzlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.13.',NULL,'城关乡阴赵寨村','3',NULL,'1.12.','cgxyzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.14.',NULL,'城关乡南周村','3',NULL,'1.12.','cgxnzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.15.',NULL,'城关乡柿园村','3',NULL,'1.12.','cgxsyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.16.',NULL,'城关乡桃李村','3',NULL,'1.12.','cgxtlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.17.',NULL,'城关乡竹叶河村','3',NULL,'1.12.','cgxzyhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.18.',NULL,'城关乡西史村','3',NULL,'1.12.','cgxxsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.19.',NULL,'城关乡小王村','3',NULL,'1.12.','cgxxwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.2.',NULL,'城关乡大庙村','3',NULL,'1.12.','cgxdmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.20.',NULL,'城关乡皋砦村','3',NULL,'1.12.','cgxgzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.21.',NULL,'城关乡三十里铺村','3',NULL,'1.12.','cgxsslpc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.22.',NULL,'城关乡高袁寨村','3',NULL,'1.12.','cgxgyzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.23.',NULL,'城关乡宫寨村','3',NULL,'1.12.','cgxgzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.24.',NULL,'城关乡付河村','3',NULL,'1.12.','cgxfhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.25.',NULL,'城关乡王庄村','3',NULL,'1.12.','cgxwzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.26.',NULL,'城关乡龙泉寺村','3',NULL,'1.12.','cgxlqsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.27.',NULL,'城关乡安庄村','3',NULL,'1.12.','cgxazc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.28.',NULL,'城关乡瓦窑坡村','3',NULL,'1.12.','cgxwypc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.29.',NULL,'城关乡上集村','3',NULL,'1.12.','cgxsjc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.3.',NULL,'城关乡雷垌村','3',NULL,'1.12.','cgxldc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.4.',NULL,'城关乡杨垌村','3',NULL,'1.12.','cgxydc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.5.',NULL,'城关乡洪界村','3',NULL,'1.12.','cgxhjc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.6.',NULL,'城关乡五龙寨村','3',NULL,'1.12.','cgxwlzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.7.',NULL,'城关乡东史村','3',NULL,'1.12.','cgxdsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.8.',NULL,'城关乡大王村','3',NULL,'1.12.','cgxdwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.12.9.',NULL,'城关乡李克寨村','3',NULL,'1.12.','cgxlkzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.',NULL,'刘河镇','2',NULL,'1.','lhz','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.1.',NULL,'刘河镇刘河村','3',NULL,'1.13.','lhzlhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.10.',NULL,'刘河镇陈家岗村','3',NULL,'1.13.','lhzcjgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.11.',NULL,'刘河镇分水岭村','3',NULL,'1.13.','lhzfslc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.12.',NULL,'刘河镇石庄村','3',NULL,'1.13.','lhzszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.13.',NULL,'刘河镇申庄村','3',NULL,'1.13.','lhzszhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.14.',NULL,'刘河镇任洼村','3',NULL,'1.13.','lhzrwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.15.',NULL,'刘河镇王河村','3',NULL,'1.13.','lhzwhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.2.',NULL,'刘河镇花河村','3',NULL,'1.13.','lhzhhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.3.',NULL,'刘河镇窝张村','3',NULL,'1.13.','lhzwzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.4.',NULL,'刘河镇架子沟村','3',NULL,'1.13.','lhzjzgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.5.',NULL,'刘河镇官顶村','3',NULL,'1.13.','lhzgdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.6.',NULL,'刘河镇小寨村','3',NULL,'1.13.','lhzxzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.7.',NULL,'刘河镇庵上村','3',NULL,'1.13.','lhzasc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.8.',NULL,'刘河镇反坡村','3',NULL,'1.13.','lhzfpc','0','1',NULL,NULL,NULL,NULL,NULL),('1.13.9.',NULL,'刘河镇徐沟村','3',NULL,'1.13.','lhzxgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.',NULL,'环翠峪','2',NULL,'1.','hcy','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.1.',NULL,'环翠峪司庄村','3',NULL,'1.14.','hcyszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.2.',NULL,'环翠峪村','3',NULL,'1.14.','hcyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.3.',NULL,'环翠峪陈庄村','3',NULL,'1.14.','hcyczc','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.4.',NULL,'环翠峪东沟村','3',NULL,'1.14.','hcydgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.14.5.',NULL,'环翠峪二郎庙村','3',NULL,'1.14.','hcyelmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.',NULL,'贾峪镇','2',NULL,'1.','jyz','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.1.',NULL,'贾峪镇贾峪村','3',NULL,'1.15.','jyzjyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.10.',NULL,'贾峪镇周垌村','3',NULL,'1.15.','jyzzdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.11.',NULL,'贾峪镇邢村','3',NULL,'1.15.','jyzxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.12.',NULL,'贾峪镇南王村','3',NULL,'1.15.','jyznwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.13.',NULL,'贾峪镇石碑沟村','3',NULL,'1.15.','jyzsbgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.14.',NULL,'贾峪镇大堰村','3',NULL,'1.15.','jyzdyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.15.',NULL,'贾峪镇梁沟村','3',NULL,'1.15.','jyzlgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.16.',NULL,'贾峪镇朱顶村','3',NULL,'1.15.','jyzzhdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.17.',NULL,'贾峪镇楚村','3',NULL,'1.15.','jyzcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.18.',NULL,'贾峪镇楼李村','3',NULL,'1.15.','jyzllc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.19.',NULL,'贾峪镇高河村','3',NULL,'1.15.','jyzghc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.2.',NULL,'贾峪镇上湾村','3',NULL,'1.15.','jyzswc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.20.',NULL,'贾峪镇洞林寺村','3',NULL,'1.15.','jyzdlsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.21.',NULL,'贾峪镇鹿村','3',NULL,'1.15.','jyzlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.22.',NULL,'贾峪镇郭岗村','3',NULL,'1.15.','jyzggc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.23.',NULL,'贾峪镇北沟村','3',NULL,'1.15.','jyzbgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.24.',NULL,'贾峪镇岵山村','3',NULL,'1.15.','jyzhsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.25.',NULL,'贾峪镇塔山村','3',NULL,'1.15.','jyztsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.26.',NULL,'贾峪镇槐林村','3',NULL,'1.15.','jyzhlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.3.',NULL,'贾峪镇老邢村','3',NULL,'1.15.','jyzlxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.4.',NULL,'贾峪镇李家台村','3',NULL,'1.15.','jyzljtc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.5.',NULL,'贾峪镇石硼村','3',NULL,'1.15.','jyzspc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.6.',NULL,'贾峪镇龙卧洼村','3',NULL,'1.15.','jyzlwwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.7.',NULL,'贾峪镇双楼郭村','3',NULL,'1.15.','jyzslgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.8.',NULL,'贾峪镇马沟村','3',NULL,'1.15.','jyzmgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.15.9.',NULL,'贾峪镇祖始村','3',NULL,'1.15.','jyzzsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.16.',NULL,'4','2',NULL,'1.',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.17.',NULL,'荥阳','2',NULL,'1.',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.18.',NULL,'贾峪2','2',NULL,'1.',NULL,'0','1',NULL,NULL,NULL,NULL,NULL),('1.2.',NULL,'豫龙镇','2',NULL,'1.','ylz','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.10.',NULL,'豫龙镇廿铺村','3',NULL,'1.2.','ylzepc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.11.',NULL,'豫龙镇西张寨村','3',NULL,'1.2.','ylzxzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.13.',NULL,'豫龙镇翟砦村','3',NULL,'1.2.','ylzzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.14.',NULL,'豫龙镇碾徐村','3',NULL,'1.2.','ylznxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.16.',NULL,'豫龙镇王寨村','3',NULL,'1.2.','ylzwzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.17.',NULL,'豫龙镇赵家垌村','3',NULL,'1.2.','ylzzjdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.18.',NULL,'豫龙镇瓦屋孙村','3',NULL,'1.2.','ylzwwsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.19.',NULL,'豫龙镇蒋寨村','3',NULL,'1.2.','ylzjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.20.',NULL,'豫龙镇京襄城村','3',NULL,'1.2.','ylzjxcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.21.',NULL,'豫龙镇赵家庄村','3',NULL,'1.2.','ylzzjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.22.',NULL,'豫龙镇茹寨村','3',NULL,'1.2.','ylzrzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.23.',NULL,'豫龙镇樊寨村','3',NULL,'1.2.','ylzfzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.24.',NULL,'豫龙镇楚寨村','3',NULL,'1.2.','ylzczc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.25.',NULL,'豫龙镇南张寨村','3',NULL,'1.2.','ylznzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.26.',NULL,'豫龙镇郝寨村','3',NULL,'1.2.','ylzhzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.27.',NULL,'豫龙镇兴国寺村','3',NULL,'1.2.','ylzxgsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.28.',NULL,'豫龙镇石柱岗村','3',NULL,'1.2.','ylzszgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.29.',NULL,'豫龙镇陈庄村','3',NULL,'1.2.','ylzczhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.30.',NULL,'豫龙镇关帝庙村','3',NULL,'1.2.','ylzgdmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.31.',NULL,'豫龙镇毛寨村','3',NULL,'1.2.','ylzmzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.32.',NULL,'豫龙镇寨杨村','3',NULL,'1.2.','ylzzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.33.',NULL,'豫龙镇晏曲村','3',NULL,'1.2.','ylzyqc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.34.',NULL,'豫龙镇焦寨村','3',NULL,'1.2.','ylzjzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.35.',NULL,'豫龙镇刘村','3',NULL,'1.2.','ylzlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.36.',NULL,'豫龙镇黑张村','3',NULL,'1.2.','ylzhzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.37.',NULL,'豫龙镇罗垌村','3',NULL,'1.2.','ylzldc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.8.',NULL,'豫龙镇柿园村','3',NULL,'1.2.','ylzsyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.2.9.',NULL,'豫龙镇槐西村','3',NULL,'1.2.','ylzhxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.',NULL,'索河','2',NULL,'1.','sh','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.1.',NULL,'索河杨五楼村','3',NULL,'1.3.','shywlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.2.',NULL,'索河槐树洼村','3',NULL,'1.3.','shhswc','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.3.',NULL,'索河城关村','3',NULL,'1.3.','shcgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.4.',NULL,'索河惠厂村','3',NULL,'1.3.','shhcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.3.5.',NULL,'索河楚楼村','3',NULL,'1.3.','shclc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.',NULL,'京城','2',NULL,'1.','jc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.1.',NULL,'京城堡王村','3',NULL,'1.4.','jcbwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.2.',NULL,'京城康砦村','3',NULL,'1.4.','jckzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.3.',NULL,'京城石砦村','3',NULL,'1.4.','jcszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.4.',NULL,'京城吉家砦村','3',NULL,'1.4.','jcjjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.5.',NULL,'京城曹李村','3',NULL,'1.4.','jcclc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.6.',NULL,'京城平庄村','3',NULL,'1.4.','jcpzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.7.',NULL,'京城冯砦村','3',NULL,'1.4.','jcfzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.4.8.',NULL,'京城狼窝刘村','3',NULL,'1.4.','jclwlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.',NULL,'乔楼镇','2',NULL,'1.','qlz','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.1.',NULL,'乔楼镇东郭村','3',NULL,'1.5.','qlzdgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.10.',NULL,'乔楼镇李沟村','3',NULL,'1.5.','qlzlgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.11.',NULL,'乔楼镇付河村','3',NULL,'1.5.','qlzfhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.12.',NULL,'乔楼镇狮村','3',NULL,'1.5.','qlzsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.13.',NULL,'乔楼镇聂楼村','3',NULL,'1.5.','qlznlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.14.',NULL,'乔楼镇冢子岗村','3',NULL,'1.5.','qlzzzgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.15.',NULL,'乔楼镇张王庄村','3',NULL,'1.5.','qlzzwzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.16.',NULL,'乔楼镇蔡寨村','3',NULL,'1.5.','qlzczc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.17.',NULL,'乔楼镇韩村','3',NULL,'1.5.','qlzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.18.',NULL,'乔楼镇楚堂村','3',NULL,'1.5.','qlzctc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.2.',NULL,'乔楼镇孙砦村','3',NULL,'1.5.','qlzszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.3.',NULL,'乔楼镇沈洼村','3',NULL,'1.5.','qlzswc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.4.',NULL,'乔楼镇七里村','3',NULL,'1.5.','qlzqlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.5.',NULL,'乔楼镇陈寨村','3',NULL,'1.5.','qlzczhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.6.',NULL,'乔楼镇任庄村','3',NULL,'1.5.','qlzrzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.7.',NULL,'乔楼镇陈沟村','3',NULL,'1.5.','qlzcgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.8.',NULL,'乔楼镇辛岗村','3',NULL,'1.5.','qlzxgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.5.9.',NULL,'乔楼镇张村庙','3',NULL,'1.5.','qlzzcm','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.',NULL,'广武镇','2',NULL,'1.','gwz','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.1.',NULL,'广武镇插闫村','3',NULL,'1.6.','gwzcyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.10.',NULL,'广武镇霸王城村','3',NULL,'1.6.','gwzbwcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.11.',NULL,'广武镇汉王城村','3',NULL,'1.6.','gwzhwcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.12.',NULL,'广武镇白寨村','3',NULL,'1.6.','gwzbzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.13.',NULL,'广武镇胡村','3',NULL,'1.6.','gwzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.14.',NULL,'广武镇三官村','3',NULL,'1.6.','gwzsgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.15.',NULL,'广武镇樊河村','3',NULL,'1.6.','gwzfhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.16.',NULL,'广武镇张庄村','3',NULL,'1.6.','gwzzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.17.',NULL,'广武镇孙寨村','3',NULL,'1.6.','gwzszc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.18.',NULL,'广武镇陈沟村','3',NULL,'1.6.','gwzcgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.19.',NULL,'广武镇丁洼村','3',NULL,'1.6.','gwzdwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.2.',NULL,'广武镇桃花峪村','3',NULL,'1.6.','gwzthyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.20.',NULL,'广武镇冯庄村','3',NULL,'1.6.','gwzfzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.21.',NULL,'广武镇黑李村','3',NULL,'1.6.','gwzhlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.22.',NULL,'广武镇大师姑村','3',NULL,'1.6.','gwzdsgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.23.',NULL,'广武镇王沟村','3',NULL,'1.6.','gwzwgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.24.',NULL,'广武镇丁楼村','3',NULL,'1.6.','gwzdlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.25.',NULL,'广武镇苏寨村','3',NULL,'1.6.','gwzszhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.26.',NULL,'广武镇闫村','3',NULL,'1.6.','gwzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.27.',NULL,'广武镇桃园村','3',NULL,'1.6.','gwztyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.28.',NULL,'广武镇任河村','3',NULL,'1.6.','gwzrhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.29.',NULL,'广武镇中任村','3',NULL,'1.6.','gwzzrc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.3.',NULL,'广武镇唐垌村','3',NULL,'1.6.','gwztdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.30.',NULL,'广武镇北任村','3',NULL,'1.6.','gwzbrc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.31.',NULL,'广武镇军张村','3',NULL,'1.6.','gwzjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.32.',NULL,'广武镇寨峪村','3',NULL,'1.6.','gwzzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.33.',NULL,'广武镇车大沟村','3',NULL,'1.6.','gwzcdgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.34.',NULL,'广武镇董庄村','3',NULL,'1.6.','gwzdzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.35.',NULL,'广武镇后王村','3',NULL,'1.6.','gwzhwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.36.',NULL,'广武镇张河村','3',NULL,'1.6.','gwzzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.37.',NULL,'广武镇陈垌村','3',NULL,'1.6.','gwzcdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.38.',NULL,'广武镇王顶村','3',NULL,'1.6.','gwzwdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.39.',NULL,'广武镇张垌村','3',NULL,'1.6.','gwzzdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.4.',NULL,'广武镇西苏村','3',NULL,'1.6.','gwzxsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.40.',NULL,'广武镇广武村','3',NULL,'1.6.','gwzgwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.41.',NULL,'广武镇东魏营村','3',NULL,'1.6.','gwzdwyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.42.',NULL,'广武镇西魏营村','3',NULL,'1.6.','gwzxwyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.43.',NULL,'广武镇丹阳村','3',NULL,'1.6.','gwzdyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.5.',NULL,'广武镇东苏村','3',NULL,'1.6.','gwzdsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.6.',NULL,'广武镇南董村','3',NULL,'1.6.','gwzndc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.7.',NULL,'广武镇车庄村','3',NULL,'1.6.','gwzczc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.8.',NULL,'广武镇倪店村','3',NULL,'1.6.','gwznidc','0','1',NULL,NULL,NULL,NULL,NULL),('1.6.9.',NULL,'广武镇水泉村','3',NULL,'1.6.','gwzsqc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.',NULL,'高村乡','2',NULL,'1.','gcx','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.1.',NULL,'高村乡官庄村','3',NULL,'1.7.','gcxgzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.10.',NULL,'高村乡张常村','3',NULL,'1.7.','gcxzcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.11.',NULL,'高村乡高村寺村','3',NULL,'1.7.','gcxgcsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.12.',NULL,'高村乡张村','3',NULL,'1.7.','gcxzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.13.',NULL,'高村乡马寨村','3',NULL,'1.7.','gcxmzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.14.',NULL,'高村乡油坊村','3',NULL,'1.7.','gcxyfc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.15.',NULL,'高村乡荆寨村','3',NULL,'1.7.','gcxjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.16.',NULL,'高村乡杜常村','3',NULL,'1.7.','gcxdcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.17.',NULL,'高村乡穆寨村','3',NULL,'1.7.','gcxmzhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.18.',NULL,'高村乡刘铺头村','3',NULL,'1.7.','gcxlptc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.19.',NULL,'高村乡宋村','3',NULL,'1.7.','gcxsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.2.',NULL,'高村乡吴村','3',NULL,'1.7.','gcxwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.20.',NULL,'高村乡陈铺头村','3',NULL,'1.7.','gcxcptc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.21.',NULL,'高村乡牛口峪村','3',NULL,'1.7.','gcxnkyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.22.',NULL,'高村乡邙山村','3',NULL,'1.7.','gcxmsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.23.',NULL,'高村乡枣树沟村','3',NULL,'1.7.','gcxzsgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.24.',NULL,'高村乡秦铺头村','3',NULL,'1.7.','gcxqptc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.25.',NULL,'高村乡安仁寨村','3',NULL,'1.7.','gcxarzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.26.',NULL,'高村乡周寨村','3',NULL,'1.7.','gcxzzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.27.',NULL,'高村乡高村','3',NULL,'1.7.','gcxgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.28.',NULL,'高村乡官峪村','3',NULL,'1.7.','gcxgyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.29.',NULL,'高村乡刘沟村','3',NULL,'1.7.','gcxlgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.3.',NULL,'高村乡前卷子村','3',NULL,'1.7.','gcxqjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.30.',NULL,'高村乡李山村','3',NULL,'1.7.','gcxlsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.4.',NULL,'高村乡后卷子村','3',NULL,'1.7.','gcxhjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.5.',NULL,'高村乡司马村','3',NULL,'1.7.','gcxsmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.6.',NULL,'高村乡真村','3',NULL,'1.7.','gcxzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.7.',NULL,'高村乡马沟村','3',NULL,'1.7.','gcxmgc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.8.',NULL,'高村乡韩常村','3',NULL,'1.7.','gcxhcc','0','1',NULL,NULL,NULL,NULL,NULL),('1.7.9.',NULL,'高村乡史坊村','3',NULL,'1.7.','gcxsfc','0','1',NULL,NULL,NULL,NULL,NULL),('1.8.',NULL,'金寨乡','2',NULL,'1.','jzx','0','1',NULL,NULL,NULL,NULL,NULL),('1.8.1.',NULL,'金寨乡金寨村','3',NULL,'1.8.','jzxjzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.8.2.',NULL,'金寨乡楚楼村','3',NULL,'1.8.','jzxclc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.',NULL,'王村镇','2',NULL,'1.','wcz','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.1.',NULL,'王村镇王村','3',NULL,'1.9.','wczwc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.10.',NULL,'王村镇前新庄村','3',NULL,'1.9.','wczqxzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.11.',NULL,'王村镇丁村','3',NULL,'1.9.','wczdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.12.',NULL,'王村镇段坊村','3',NULL,'1.9.','wczdfc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.13.',NULL,'王村镇仁里村','3',NULL,'1.9.','wczrlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.14.',NULL,'王村镇前白杨村','3',NULL,'1.9.','wczqbyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.15.',NULL,'王村镇洼子村','3',NULL,'1.9.','wczwzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.16.',NULL,'王村镇梁庄村','3',NULL,'1.9.','wczlzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.17.',NULL,'王村镇许庄村','3',NULL,'1.9.','wczxzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.18.',NULL,'王村镇韩村','3',NULL,'1.9.','wczhc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.19.',NULL,'王村镇草庙村','3',NULL,'1.9.','wczcmc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.2.',NULL,'王村镇房罗村','3',NULL,'1.9.','wczflc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.20.',NULL,'王村镇薛村','3',NULL,'1.9.','wczxc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.21.',NULL,'王村镇司村','3',NULL,'1.9.','wczsc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.22.',NULL,'王村镇后白杨村','3',NULL,'1.9.','wczhbyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.23.',NULL,'王村镇西大村','3',NULL,'1.9.','wczxidc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.24.',NULL,'王村镇后殿村','3',NULL,'1.9.','wczhdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.25.',NULL,'王村镇竹园村','3',NULL,'1.9.','wczzyc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.3.',NULL,'王村镇木楼村','3',NULL,'1.9.','wczmlc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.4.',NULL,'王村镇柏垛村','3',NULL,'1.9.','wczbdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.5.',NULL,'王村镇小村','3',NULL,'1.9.','wczxiaoc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.6.',NULL,'王村镇后新庄村','3',NULL,'1.9.','wczhxzc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.7.',NULL,'王村镇蒋头村','3',NULL,'1.9.','wczjtc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.8.',NULL,'王村镇新店村','3',NULL,'1.9.','wczxdc','0','1',NULL,NULL,NULL,NULL,NULL),('1.9.9.',NULL,'王村镇留村','3',NULL,'1.9.','wczlc','0','1',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
