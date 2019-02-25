USE chat;

CREATE TABLE `user_group` (
  `ugid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qno` bigint(20) DEFAULT NULL,
  `gno` bigint(20) DEFAULT NULL,
  `duty` varchar(10) DEFAULT '成员',
  `join_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ugid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


