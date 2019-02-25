USE chat;

CREATE TABLE `login_info` (
  `lid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lip` varchar(20) DEFAULT NULL,
  `lport` int(11) DEFAULT NULL,
  `qno` bigint(20) DEFAULT NULL,
  `login_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


