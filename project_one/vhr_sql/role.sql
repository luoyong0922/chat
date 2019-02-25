USE vhr;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nameZh` varchar(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (1,'ROLE_manager','部门经理');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (2,'ROLE_personnel','人事专员');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (3,'ROLE_recruiter','招聘主管');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (4,'ROLE_train','培训主管');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (5,'ROLE_performance','薪酬绩效主管');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (6,'ROLE_admin','系统管理员');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (13,'ROLE_user','普通用户');
insert into `vhr`.`role`(`id`,`name`,`nameZh`) values (14,'ROLE_test1','测试角色1');
