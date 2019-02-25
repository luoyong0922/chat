USE chat;

CREATE TABLE `subgroup` (
  `sid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qno` bigint(20) DEFAULT NULL,
  `sname` varchar(15) DEFAULT '我的好友',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (1,null,'我的好友','2019-01-08 00:00:00',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (2,null,'小学同学','2019-01-01 00:00:00',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (3,null,'初中同学','2019-01-09 16:01:21',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (4,null,'闺蜜','2019-01-09 16:01:31',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (5,null,'大学室友','2019-01-09 16:01:56',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (6,null,'家人','2019-01-09 16:02:05',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (7,null,'兄弟','2019-01-09 16:02:15',null);
insert into `chat`.`subgroup`(`sid`,`qno`,`sname`,`create_time`,`attach`) values (8,null,'姐妹','2019-01-09 16:02:24',null);
