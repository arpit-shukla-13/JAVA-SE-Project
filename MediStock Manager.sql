/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - MediStock Manager
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`MediStock Manager` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `MediStock Manager`;

/*Table structure for table `invoice_detail` */

DROP TABLE IF EXISTS `invoice_detail`;

CREATE TABLE `invoice_detail` (
  `date` date DEFAULT NULL,
  `cus_name` varchar(40) DEFAULT NULL,
  `cus_mob` varchar(20) DEFAULT NULL,
  `item_name` varchar(40) DEFAULT NULL,
  `row_no` varchar(40) DEFAULT NULL,
  `item_price` decimal(7,2) DEFAULT NULL,
  `invc` int(20) DEFAULT NULL,
  `quant` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoice_detail` */

insert  into `invoice_detail`(`date`,`cus_name`,`cus_mob`,`item_name`,`row_no`,`item_price`,`invc`,`quant`) values ('2015-10-31','bnm','456677','combiflaim','a03','15.00',0,1),('2015-10-31','bnm','456677','paracetamol','a02','30.00',0,2),('2015-10-31','mnb','3456677','sumo cold','a04','20.00',0,1),('2015-10-31','mnb','3456677','combiflaim','a03','15.00',0,1),('2015-10-31','ggh','434556667','combiflaim','a03','15.00',0,1),('2015-10-31','da','345666','combiflaim','a03','15.00',1,1),('2015-10-31','da','345666','paracetamol','a02','30.00',1,2),('2015-10-31','sd','45457','paracetamol','a02','30.00',2,1),('2015-10-31','dfg','2345','combiflaim','a03','15.00',3,1),('2015-10-31','dfg','2345','sumo cold','a04','20.00',3,1),('2015-10-31','aa','1234567890','sumo cold','a04','20.00',4,5);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(40) NOT NULL,
  `pswd` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`pswd`) values ('abcd','1234');

/*Table structure for table `perchase_item` */

DROP TABLE IF EXISTS `perchase_item`;

CREATE TABLE `perchase_item` (
  `row_no` varchar(40) DEFAULT NULL,
  `item_name` varchar(40) DEFAULT NULL,
  `item_price` decimal(7,2) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `mfd_date` date DEFAULT NULL,
  `r_lev` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `perchase_item` */

insert  into `perchase_item`(`row_no`,`item_name`,`item_price`,`quantity`,`exp_date`,`mfd_date`,`r_lev`) values ('a01','crocin','10.00',20,'2015-06-03','2014-10-05',5),('a03','combiflaim','15.00',24,'2016-07-04','2015-09-04',5),('a04','sumo cold','20.00',22,'2016-03-06','2015-09-04',5),('a02','paracetamol','30.00',32,'2016-05-05','2015-03-05',5),('A06','disprin','10.00',47,'2016-03-03','2015-08-04',5);

/*Table structure for table `sale_item` */

DROP TABLE IF EXISTS `sale_item`;

CREATE TABLE `sale_item` (
  `row_no` varchar(40) NOT NULL,
  `item_name` varchar(40) DEFAULT NULL,
  `item_price` decimal(7,2) DEFAULT NULL,
  `quant_out` decimal(10,0) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `mfd_date` date DEFAULT NULL,
  `cus_name` varchar(40) DEFAULT NULL,
  `cus_mob` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sale_item` */

insert  into `sale_item`(`row_no`,`item_name`,`item_price`,`quant_out`,`exp_date`,`mfd_date`,`cus_name`,`cus_mob`,`date`) values ('A05','sumo cold','15.00','5','2015-10-04','2015-02-02','yhjjj','6567388940',NULL),('a04','sumo cold','20.00','10','2016-03-06','2015-09-04','fhjk','344565678',NULL),('a03','combiflaim','15.00','6','2016-07-04','2015-09-04','dghju','236576879',NULL),('a01','crocin','10.00','5','2016-06-03','2015-10-05','sss','45456767',NULL),('a03','combiflaim','15.00','5','2016-07-04','2015-09-04','sss','45456767',NULL),('a03','combiflaim','15.00','6','2016-07-04','2015-09-04','fghhjh','5676788789',NULL),('a03','combiflaim','15.00','6','2016-07-04','2015-09-04','fggh','4567898754',NULL),('a03','combiflaim','15.00','7','2016-07-04','2015-09-04','dfgh','35676879',NULL),('a03','combiflaim','15.00','6','2016-07-04','2015-09-04','gfhhjj','4356788990','2015-10-30'),('a04','sumo cold','20.00','9','2016-03-06','2015-09-04','ghjjkkk','43546767889','2015-10-30'),('a04','sumo cold','20.00','8','2016-03-06','2015-09-04','ghjjkkk','43546767889','2015-10-30'),('a01','crocin','10.00','8','2016-06-03','2015-10-05','fghh','4566778789','2015-10-30'),('a01','crocin','10.00','7','2016-06-03','2015-10-05','fghh','4566778789','2015-10-30'),('a01','crocin','10.00','2','2016-06-03','2015-10-05','fdsagb','3235786678','2015-10-30'),('a04','sumo cold','20.00','6','2016-03-06','2015-09-04','adff','435465677','2015-10-30'),('a01','crocin','10.00','3','2016-06-03','2015-10-05','ghh','45587878899','2015-10-31'),('a03','combiflaim','15.00','2','2016-07-04','2015-09-04','rtyuu','35456677','2015-10-31'),('a02','paracetamol','30.00','3','2016-05-05','2015-03-05','df','4567788','2015-10-31'),('a04','sumo cold','20.00','2','2016-03-06','2015-09-04','bhjkk','345567788','2015-10-31'),('a04','sumo cold','20.00','2','2016-03-06','2015-09-04','dfgh','3467687','2015-10-31'),('A06','disprin','10.00','3','2016-03-03','2015-08-04','cghjj','45667889','2015-10-31'),('a02','paracetamol','30.00','1','2016-05-05','2015-03-05','cghjj','45667889','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','mjkk','45678','2015-10-31'),('a02','paracetamol','30.00','1','2016-05-05','2015-03-05','mjkk','45678','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','bnm','456677','2015-10-31'),('a02','paracetamol','30.00','2','2016-05-05','2015-03-05','bnm','456677','2015-10-31'),('a04','sumo cold','20.00','1','2016-03-06','2015-09-04','mnb','3456677','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','mnb','3456677','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','ggh','434556667','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','da','345666','2015-10-31'),('a02','paracetamol','30.00','2','2016-05-05','2015-03-05','da','345666','2015-10-31'),('a02','paracetamol','30.00','1','2016-05-05','2015-03-05','sd','45457','2015-10-31'),('a03','combiflaim','15.00','1','2016-07-04','2015-09-04','dfg','2345','2015-10-31'),('a04','sumo cold','20.00','1','2016-03-06','2015-09-04','dfg','2345','2015-10-31'),('a04','sumo cold','20.00','5','2016-03-06','2015-09-04','aa','1234567890','2015-10-31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
