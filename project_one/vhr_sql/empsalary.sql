USE vhr;

CREATE TABLE `empsalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eid` (`eid`),
  KEY `empsalary_ibfk_2` (`sid`),
  CONSTRAINT `empsalary_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`),
  CONSTRAINT `empsalary_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `salary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (6,4,10);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (7,3,9);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (8,1,10);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (10,5,9);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (11,6,13);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (12,7,13);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (13,2,13);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (14,8,10);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (15,9,10);
insert into `vhr`.`empsalary`(`id`,`eid`,`sid`) values (16,10,13);
