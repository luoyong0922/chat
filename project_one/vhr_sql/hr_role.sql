USE vhr;

CREATE TABLE `hr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hrid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `hr_role_ibfk_1` (`hrid`),
  CONSTRAINT `hr_role_ibfk_1` FOREIGN KEY (`hrid`) REFERENCES `hr` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hr_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;


insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (1,3,6);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (9,5,1);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (10,5,4);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (35,12,4);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (36,12,3);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (37,12,2);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (43,11,3);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (44,11,2);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (45,11,4);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (46,11,5);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (48,10,3);
insert into `vhr`.`hr_role`(`id`,`hrid`,`rid`) values (49,10,4);
