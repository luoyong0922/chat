USE vhr;

CREATE TABLE `politicsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


insert into `vhr`.`politicsstatus`(`id`,`name`) values (1,'中共党员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (2,'中共预备党员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (3,'共青团员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (4,'民革党员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (5,'民盟盟员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (6,'民建会员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (7,'民进会员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (8,'农工党党员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (9,'致公党党员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (10,'九三学社社员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (11,'台盟盟员');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (12,'无党派民主人士');
insert into `vhr`.`politicsstatus`(`id`,`name`) values (13,'普通公民');
