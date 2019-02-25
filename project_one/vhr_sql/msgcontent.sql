USE vhr;

CREATE TABLE `msgcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (14,'2222222222','11111111111111111','2018-02-02 20:46:19');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (15,'22222222','3333333333333333333333','2018-02-02 21:45:57');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (16,'通知标题1','通知内容1','2018-02-03 11:41:39');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (17,'通知标题2','通知内容2','2018-02-03 11:52:37');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (18,'通知标题3','通知内容3','2018-02-03 12:19:41');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (19,'研讨会','明天上午9点开始会议，请大家准时到场。','2018-12-19 14:34:09');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (20,'开会','明天上午9点开始会议，请大家准时到场。','2018-12-19 14:40:13');
insert into `vhr`.`msgcontent`(`id`,`title`,`message`,`createDate`) values (21,'1','0','2018-12-20 11:19:55');
