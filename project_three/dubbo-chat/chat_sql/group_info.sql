USE chat;

CREATE TABLE `group_info` (
  `gid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(20) DEFAULT NULL,
  `gintroduce` varchar(200) DEFAULT NULL,
  `creat_qno` bigint(20) DEFAULT NULL,
  `creat_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


