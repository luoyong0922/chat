USE vhr;

CREATE TABLE `sysmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '消息id',
  `type` int(11) DEFAULT '0' COMMENT '0表示群发消息',
  `hrid` int(11) DEFAULT NULL COMMENT '这条消息是给谁的',
  `state` int(11) DEFAULT '0' COMMENT '0 未读 1 已读',
  PRIMARY KEY (`id`),
  KEY `hrid` (`hrid`),
  KEY `sysmsg_ibfk_1` (`mid`),
  CONSTRAINT `sysmsg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `msgcontent` (`id`),
  CONSTRAINT `sysmsg_ibfk_2` FOREIGN KEY (`hrid`) REFERENCES `hr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;


insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (57,14,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (58,14,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (59,14,0,10,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (60,14,0,11,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (61,14,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (62,15,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (63,15,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (64,15,0,10,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (65,15,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (66,15,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (67,16,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (68,16,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (69,16,0,10,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (70,16,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (71,16,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (72,17,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (73,17,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (74,17,0,10,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (75,17,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (76,17,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (77,18,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (78,18,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (79,18,0,10,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (80,18,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (81,18,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (82,19,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (83,19,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (84,19,0,10,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (85,19,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (86,19,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (87,20,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (88,20,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (89,20,0,10,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (90,20,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (91,20,0,12,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (92,21,0,3,1);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (93,21,0,5,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (94,21,0,10,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (95,21,0,11,0);
insert into `vhr`.`sysmsg`(`id`,`mid`,`type`,`hrid`,`state`) values (96,21,0,12,1);
