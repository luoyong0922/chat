USE chat;

CREATE TABLE `chat_info` (
  `cid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_qno` bigint(20) DEFAULT NULL,
  `receive_qno` bigint(20) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `send_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `isread` tinyint(1) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (1,2,3,'Hello','2019-01-10 13:54:09',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (2,3,2,'Hello','2019-01-10 13:54:23',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (3,2,3,'最近在忙啥？','2019-01-10 13:54:49',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (4,3,2,'在忙着想你呀！','2019-01-10 13:55:09',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (5,2,3,'我也是耶','2019-01-10 14:48:32',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (6,2,6,'Hello','2019-01-11 17:54:36',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (7,2,6,'Good Afternoon','2019-01-11 17:55:51',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (8,2,1,'Hi','2019-01-11 18:02:24',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (9,1,2,'Hi','2019-01-11 18:02:36',0,1,null);
insert into `chat`.`chat_info`(`cid`,`send_qno`,`receive_qno`,`message`,`send_time`,`isread`,`status`,`attach`) values (10,2,1,'How are you?','2019-01-11 18:36:16',0,1,null);
