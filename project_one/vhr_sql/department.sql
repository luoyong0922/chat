USE vhr;

CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '部门名称',
  `parentId` int(11) DEFAULT NULL,
  `depPath` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `isParent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;


insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (1,'股东会',-1,'.1',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (4,'董事会',1,'.1.4',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (5,'总办',4,'.1.4.5',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (8,'财务部',5,'.1.4.5.8',1,0);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (78,'市场部',5,'.1.4.5.78',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (81,'华北市场部',78,'.1.4.5.78.81',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (82,'华南市场部',78,'.1.4.5.78.82',1,0);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (85,'石家庄市场部',81,'.1.4.5.78.81.85',1,0);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (86,'西北市场部',78,'.1.4.5.78.86',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (87,'西安市场',86,'.1.4.5.78.86.87',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (89,'莲湖区市场',87,'.1.4.5.78.86.87.89',1,0);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (91,'技术部',5,'.1.4.5.91',1,1);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (92,'运维部',5,'.1.4.5.92',1,0);
insert into `vhr`.`department`(`id`,`name`,`parentId`,`depPath`,`enabled`,`isParent`) values (93,'开发部',91,'.1.4.5.91.93',1,0);
