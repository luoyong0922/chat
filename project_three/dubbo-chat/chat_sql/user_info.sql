USE chat;

CREATE TABLE `user_info` (
  `qno` bigint(20) unsigned NOT NULL,
  `password` varchar(255) DEFAULT '1024:9daefa056fbe5fc90344201771e2d223a4694ae69cf403ba:b471024e513f359a21f8bd6133f017949de6f59deaf5e46f',
  `nick_name` varchar(15) DEFAULT NULL,
  `head_portrait` varchar(30) DEFAULT NULL,
  `sex` varchar(4) DEFAULT '男',
  `birthday` date DEFAULT NULL,
  `blood_type` varchar(4) DEFAULT NULL,
  `education` varchar(8) DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'offline',
  `regist_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (1,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','Jack',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (2,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','Charly',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (3,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (4,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','Jack',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西新余','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (5,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy1',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (6,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy2',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (7,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy3',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (8,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy4',null,'女','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (9,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (10,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (11,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (12,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (13,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (14,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (15,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (16,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (17,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (19,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (20,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (21,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (22,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (23,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (24,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (25,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (26,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (27,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (28,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','roy',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (29,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','nial',null,'男',null,null,null,null,null,'offline','2019-01-09 11:10:51',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (30,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','Lily',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西赣州','offline','2019-01-07 00:00:00',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (34,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm',null,null,'男',null,null,null,null,null,'offline','2019-01-10 10:32:57',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (36,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm',null,null,'男',null,null,null,null,null,'offline','2019-01-10 10:33:44',null);
insert into `chat`.`user_info`(`qno`,`password`,`nick_name`,`head_portrait`,`sex`,`birthday`,`blood_type`,`education`,`phone_num`,`address`,`status`,`regist_time`,`attach`) values (37,'$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm','Jime',null,'男','2018-07-17 00:00:00','O','本科','15579857204','江西新余','offline','2019-01-07 00:00:00',null);