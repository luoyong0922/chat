USE vhr;

CREATE TABLE `menu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `rid` (`rid`),
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;


insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (161,7,3);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (162,7,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (163,9,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (164,10,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (165,11,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (166,12,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (167,13,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (168,14,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (169,15,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (170,16,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (171,17,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (172,18,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (173,19,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (174,20,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (175,21,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (176,22,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (177,23,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (178,25,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (179,26,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (180,27,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (181,28,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (182,24,6);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (247,7,4);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (248,8,4);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (249,11,4);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (250,7,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (251,8,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (252,9,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (253,10,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (254,12,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (255,13,2);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (256,7,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (257,8,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (258,9,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (259,10,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (260,11,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (261,12,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (262,13,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (263,14,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (264,15,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (265,16,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (266,17,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (267,18,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (268,19,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (269,20,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (270,21,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (271,22,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (272,23,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (273,24,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (274,25,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (275,26,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (276,27,1);
insert into `vhr`.`menu_role`(`id`,`mid`,`rid`) values (277,28,1);
