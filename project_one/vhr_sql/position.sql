USE vhr;

CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '职位',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (29,'技术总监','2018-01-11 21:13:42',1);
insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (30,'运营总监','2018-01-11 21:13:48',1);
insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (31,'市场总监','2018-01-11 21:13:56',1);
insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (32,'总经理','2018-01-11 21:35:07',1);
insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (33,'研发工程师','2018-01-14 16:07:11',1);
insert into `vhr`.`position`(`id`,`name`,`createDate`,`enabled`) values (34,'运维工程师','2018-01-14 16:11:41',1);
