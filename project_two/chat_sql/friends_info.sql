USE chat;

CREATE TABLE `friends_info` (
  `fid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qno` bigint(20) DEFAULT NULL,
  `fno` bigint(20) DEFAULT NULL,
  `sid` bigint(20) DEFAULT '1',
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT '1',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (1,2,3,1,'2019-01-10 10:03:11','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (2,2,4,2,'2019-01-09 16:03:02','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (3,2,5,4,'2019-01-09 16:03:17','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (4,2,6,1,'2019-01-09 16:03:25','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (5,2,7,1,'2019-01-09 16:03:33','0');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (6,2,8,2,'2019-01-09 16:03:44','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (7,3,2,1,'2019-01-09 16:26:00','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (9,3,5,5,'2019-01-10 09:59:18','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (10,1,2,1,'2019-01-11 17:59:41','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (11,2,1,1,'2019-01-11 18:01:57','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (12,4,2,5,'2019-01-14 12:01:24','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (13,1,3,1,'2019-01-14 15:51:18','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (14,8,2,1,'2019-01-14 18:35:31','1');
insert into `chat`.`friends_info`(`fid`,`qno`,`fno`,`sid`,`add_time`,`attach`) values (15,6,2,1,'2019-01-16 10:46:54','1');
