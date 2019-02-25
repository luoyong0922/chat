USE vhr;

CREATE TABLE `chatmsg` (
  `cId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sendId` bigint(20) DEFAULT NULL,
  `receivId` bigint(20) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `sendTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `isread` tinyint(1) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `attach` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;


insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (1,3,10,'我们哭了','2018-12-24 18:05:25',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (2,10,3,'我们笑着','2018-12-24 18:05:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (3,10,3,'我们抬头望天空','2018-12-24 18:06:13',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (4,3,10,'星星还亮着几颗','2018-12-24 18:07:22',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (5,3,10,'我们唱着','2018-12-24 18:07:26',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (6,10,3,'时间的歌','2018-12-24 18:07:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (7,3,10,'才懂得相互拥抱','2018-12-24 18:07:39',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (8,10,3,'到底是为了什么','2018-12-24 18:07:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (9,10,3,'因为我刚好遇见你','2018-12-24 18:07:48',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (10,3,10,'留下足迹才美丽','2018-12-24 18:07:53',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (11,3,10,'风吹花落泪如雨','2018-12-24 18:08:00',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (12,10,3,'因为不想分离','2018-12-24 18:08:04',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (13,10,3,'因为刚好遇见你','2018-12-24 18:08:09',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (14,3,10,'留下十年的期许','2018-12-24 18:08:14',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (15,3,10,'如果再相遇','2018-12-24 18:08:20',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (16,10,3,'我想我会记得你','2018-12-24 18:08:24',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (17,3,10,'我们哭了

我们笑着

我们抬头望天空

星星还亮着几颗

我们唱着

时间的歌

才懂得相互拥抱

到底是为了什么

因为我刚好遇见你

留下足迹才美丽

风吹花落泪如雨

因为不想分离

因为刚好遇见你

留下十年的期许

如果再相遇

我想我会记得你

因为刚好遇见你

留下足迹才美丽

风吹花落泪如雨','2018-12-24 18:08:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (20,5,3,'登鹳雀楼','2018-12-25 13:42:51',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (21,5,3,'白日依山尽','2018-12-25 13:43:38',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (22,3,5,'黄河入海流','2018-12-25 13:50:20',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (23,3,5,'欲穷千里目','2018-12-25 16:09:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (24,5,3,'更上一层楼','2018-12-25 16:10:16',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (25,3,5,'静夜思','2018-12-25 16:22:53',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (26,5,3,'床前明月光','2018-12-25 16:23:18',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (27,3,5,'疑是地上霜','2018-12-25 16:33:05',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (28,5,3,'举头望明月','2018-12-25 16:33:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (29,3,5,'低头思故乡','2018-12-25 16:34:56',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (30,5,3,'望庐山瀑布','2018-12-25 16:36:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (31,3,5,'日照香炉生紫烟','2018-12-25 16:38:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (32,5,3,'遥看瀑布挂前川','2018-12-25 16:39:09',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (33,3,5,'飞流直下三千尺','2018-12-25 16:39:56',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (34,3,5,'疑是银河落九天','2018-12-25 16:47:51',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (35,5,3,'赠汪伦','2018-12-25 16:49:17',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (36,3,5,'李白乘舟将欲行','2018-12-25 16:50:18',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (37,5,3,'忽闻岸上踏歌声','2018-12-25 16:51:12',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (38,3,5,'桃花潭水深千尺','2018-12-25 16:52:25',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (39,5,3,'不及汪伦送我情','2018-12-25 16:52:46',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (40,3,5,'独坐敬亭山','2018-12-25 17:08:40',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (41,5,3,'众鸟高飞尽','2018-12-25 17:09:11',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (42,3,5,'孤云独去闲','2018-12-25 17:11:01',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (43,5,3,'相看两不厌','2018-12-25 17:11:41',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (44,3,5,'只有敬亭山','2018-12-25 17:13:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (45,5,3,'[译文]群鸟高飞，绝尽踪影，一片孤云独自悠闲地飘浮而去我伫立在山顶，注视着敬亭山，敬亭山也看着我，彼此久看不厌。','2018-12-25 17:14:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (46,3,5,'前二句“众鸟高飞尽，孤云独去闲”，看似写眼前之景，其实，把孤独之感写尽了','2018-12-25 17:15:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (47,5,3,'。“尽”“闲”两个字，把读者引入一个“静”的境界：仿佛是在一群山鸟的喧闹声消除之后格外感到清静；在翻滚的厚云消失之后感到特别的清幽平静。因此，这两句是写“动”见“静”，以“动”衬“静”。这种“静”，正烘托出诗人心灵的孤独和寂寞。','2018-12-25 17:16:47',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (48,5,3,'诗的下半运用拟人手法写诗人对敬亭山的喜爱','2018-12-25 17:27:35',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (49,3,5,'　“静”是全诗的血脉。这首平淡恬静的诗之所以如此动人，就在于诗人的思想感情与自然景物的高度融合而创造出来的“寂静”的境界，无怪乎沈德潜在《唐诗别裁》中要夸这首诗是“传‘独坐’之神”了。','2018-12-25 17:29:29',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (50,5,3,'望天门山','2018-12-25 17:30:21',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (51,3,5,'天门中断楚江开','2018-12-25 17:32:31',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (52,5,3,'碧水东流至此回','2018-12-25 17:33:47',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (53,3,5,'两岸青山相对出','2018-12-25 17:43:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (54,5,3,'孤帆一片日边来','2018-12-25 17:44:45',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (55,3,5,'天门山，就是安徽当涂县的东梁山（古代又称博望山）与和县的西梁山的合称。两山夹江对峙，象一座天设的门户，形势非常险要，“天门”即由此得名。诗题中的“望”字，说明诗中所描绘的是远望所见天门山壮美景色。历来的许多注本由于没有弄清“望”的立脚点，所以往往把诗意理解错了。','2018-12-25 17:45:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (56,3,11,'江雪','2018-12-25 17:51:39',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (57,11,3,'千山鸟飞绝','2018-12-25 17:52:20',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (58,3,11,'万径人踪灭','2018-12-25 18:01:01',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (59,11,3,'孤舟蓑笠翁','2018-12-25 18:01:28',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (60,3,11,'独钓寒江雪','2018-12-25 18:01:45',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (61,5,3,'仰天大笑出门去，我辈岂是蓬蒿人。','2018-12-25 18:03:48',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (64,3,5,'危楼高百尺，手可摘星辰。不敢高声语，恐惊天上人。','2018-12-26 11:09:10',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (65,5,3,'长风破浪会有时，直挂云帆济沧海。','2018-12-26 11:10:13',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (66,3,5,'君不见高堂明镜悲白发，朝如青丝暮成雪。','2018-12-26 11:13:41',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (67,5,3,'今人不见古时月，今月曾经照古人。','2018-12-26 11:15:28',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (68,5,3,'大鹏一日同风起，扶摇直上九万里。','2018-12-26 11:19:32',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (69,3,5,'早知如此绊人心，何如当初莫相识。','2018-12-26 11:20:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (70,3,5,'不恨落花有意，恨流水如丝难剪。','2018-12-26 13:42:32',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (71,3,5,'世间行乐亦如此，古来万事东流水。','2018-12-26 13:54:13',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (72,5,3,'关山月','2018-12-26 13:55:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (73,3,5,'明月出天山，苍茫云海间。','2018-12-26 14:06:47',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (74,5,3,'长风几万里，吹度玉门关。','2018-12-26 14:07:38',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (75,3,5,'汉下白登道，胡窥青海湾。','2018-12-26 14:08:49',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (76,5,3,'由来征战地，不见有人还。','2018-12-26 14:09:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (77,3,5,'戍客望边邑，思归多苦颜。','2018-12-26 14:24:58',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (78,5,3,'高楼当此夜，叹息未应闲。','2018-12-26 14:25:32',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (79,3,5,'送孟浩然之广陵','2018-12-26 14:32:04',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (80,3,5,'故人西辞黄鹤楼','2018-12-26 14:36:36',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (81,5,3,'烟花三月下扬州','2018-12-26 14:37:08',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (82,3,5,'孤帆远影碧空尽','2018-12-26 14:39:50',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (83,5,3,'唯见长江天际流','2018-12-26 14:40:31',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (84,3,5,'登金陵凤凰台','2018-12-26 14:50:06',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (85,5,3,'凤凰台上凤凰游','2018-12-26 14:50:35',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (86,3,5,'凤去台空江自流','2018-12-26 16:42:13',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (87,3,5,'吴宫花草埋幽径','2018-12-26 16:49:46',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (88,3,5,'晋代衣冠成古丘','2018-12-26 16:56:31',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (89,5,3,'三山半落青天外','2018-12-26 16:57:19',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (90,5,3,'二水中分白鹭洲','2018-12-26 16:57:49',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (91,3,5,'总为浮云能蔽日','2018-12-26 17:04:32',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (92,5,3,'长安不见使人愁','2018-12-26 17:05:11',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (93,3,5,'李白（701年－762年），字太白，号青莲居士，又号“谪仙人”，是唐代伟大的浪漫主义诗人，被后人誉为“诗仙”，与杜甫并称为“李杜”，为了与另两位诗人李商隐与杜牧即“小李杜”区别，杜甫与李白又合称“大李杜”。其人爽朗大方，爱饮酒作诗，喜交友。','2018-12-26 17:07:36',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (94,5,3,'宣州谢朓楼饯别校书叔云','2018-12-26 17:09:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (95,3,5,'弃我去者，昨日之日不可留','2018-12-26 17:11:35',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (96,5,3,'乱我心者，今日之日多烦忧','2018-12-26 17:12:19',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (97,3,5,'长风万里送秋雁，对此可以酣高楼','2018-12-26 17:15:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (98,5,3,'蓬莱文章建安骨，中间小谢又清发','2018-12-26 17:15:57',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (99,3,5,'俱怀逸兴壮思飞，欲上青天揽明月','2018-12-26 17:17:41',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (100,5,3,'抽刀断水水更流，举杯销愁愁更愁','2018-12-26 17:18:06',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (101,5,3,'人生在世不称意，明朝散发弄扁舟','2018-12-26 17:22:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (102,3,5,'短歌行','2018-12-26 17:29:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (103,5,3,'白日何短短','2018-12-26 17:32:39',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (104,3,5,'百年苦易满','2018-12-26 17:40:31',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (105,5,3,'苍穹浩茫茫','2018-12-26 17:48:27',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (106,3,5,'万劫太极长','2018-12-26 17:48:57',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (107,3,5,'麻姑垂两鬓','2018-12-26 17:54:25',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (108,5,3,'一半已成霜','2018-12-26 17:55:03',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (109,3,5,'天公见玉女','2018-12-26 17:58:21',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (110,5,3,'大笑亿千场','2018-12-26 17:58:42',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (111,3,5,'吾欲揽六龙','2018-12-26 17:59:10',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (112,3,5,'回车挂扶桑','2018-12-26 17:59:15',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (113,5,3,'北斗酌美酒','2018-12-26 17:59:24',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (114,5,3,'劝龙各一觞','2018-12-26 17:59:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (115,3,5,'富贵非所愿','2018-12-26 17:59:45',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (116,3,5,'与人驻颜光','2018-12-26 17:59:50',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (117,3,5,'峨眉山月歌','2018-12-27 09:23:20',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (118,5,3,'峨眉山月半轮秋','2018-12-27 09:23:52',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (119,3,5,'影入平羌江水流','2018-12-27 09:24:08',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (120,5,3,'夜发清溪向三峡','2018-12-27 09:24:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (121,3,5,'思君不见下渝州','2018-12-27 09:24:38',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (122,3,12,'咏柳','2018-12-27 09:39:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (123,12,3,'乱条犹未变初黄','2018-12-27 09:41:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (124,3,12,'倚得东风势便狂','2018-12-27 09:43:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (125,12,3,'解把飞花蒙日月','2018-12-27 09:45:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (126,3,12,'不知天地有清霜','2018-12-27 09:56:57',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (127,12,3,'城南','2018-12-27 09:57:37',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (128,3,12,'雨过横塘水满堤','2018-12-27 10:00:03',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (129,12,3,'乱山高下路东西','2018-12-27 10:02:33',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (130,3,12,'一番桃李花开尽','2018-12-27 10:14:13',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (131,12,3,'惟有青青草色齐','2018-12-27 10:19:05',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (132,3,12,'赏南枝','2018-12-27 10:25:41',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (133,3,12,'暮冬天地闭','2018-12-27 10:27:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (134,3,12,'正柔木冻折','2018-12-27 10:34:45',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (135,3,12,'瑞雪飘飞','2018-12-27 10:35:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (136,12,3,'对景见南山？','2018-12-27 10:42:14',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (137,3,12,'岭梅露、几点清雅容姿','2018-12-27 10:43:04',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (138,12,3,'丹染萼、玉缀枝','2018-12-27 10:44:02',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (139,12,3,'又岂是、一阳有私','2018-12-27 10:49:49',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (140,3,12,'大抵是、化工独许','2018-12-27 10:51:01',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (141,12,3,'使占却先时','2018-12-27 10:52:17',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (142,12,3,'霜威莫苦凌持','2018-12-27 10:58:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (143,3,12,'此花根性','2018-12-27 11:03:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (144,3,12,'想群卉争知','2018-12-27 11:04:24',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (145,12,3,'贵用在和羹','2018-12-27 11:08:41',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (146,12,3,'三春里、不管绿是红非','2018-12-27 11:10:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (147,3,12,'攀赏处、宜酒卮','2018-12-27 11:12:27',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (148,12,3,'醉捻嗅、幽香更奇','2018-12-27 11:13:11',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (149,3,12,'倚阑干、仗何人去','2018-12-27 11:14:40',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (150,3,12,'嘱羌管休吹','2018-12-27 11:15:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (151,12,3,'桃花源','2018-12-27 11:29:46',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (152,12,3,'来时秋不见桃花','2018-12-27 11:34:22',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (153,3,12,'空树寒泉泻石涯','2018-12-27 11:34:47',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (154,12,3,'争得时人见鸾凤','2018-12-27 11:35:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (155,12,3,'不教身去忆烟霞','2018-12-27 12:13:00',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (156,3,12,'题宝月大师法喜堂','2018-12-27 12:13:35',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (157,12,3,'谁能怀抱信分明','2018-12-27 12:13:47',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (158,3,12,'扰扰相欺是世情','2018-12-27 12:16:42',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (159,12,3,'只有陋儒夸势利','2018-12-27 12:17:23',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (160,3,12,'几曾高位功名','2018-12-27 12:19:25',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (161,3,12,'欲将志义朝千载','2018-12-27 12:24:03',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (162,3,12,'只合溪山过一生','2018-12-27 13:36:35',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (163,12,3,'君向此堂应笑我','2018-12-27 13:37:05',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (164,3,12,'病身南北正营营','2018-12-27 13:37:26',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (165,11,3,'零陵早春','2018-12-27 13:48:44',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (166,3,11,'问春从此去','2018-12-27 13:49:03',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (167,11,3,'几日到秦原','2018-12-27 13:49:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (168,3,11,'凭寄还乡梦','2018-12-27 13:50:06',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (169,11,3,'殷勤入故园','2018-12-27 13:50:26',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (170,11,3,'芙蓉亭','2018-12-27 14:17:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (171,3,11,'新亭俯朱槛','2018-12-27 14:18:30',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (172,3,11,'嘉木开芙蓉','2018-12-27 14:19:27',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (173,11,3,'清香晨风远','2018-12-27 14:20:21',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (174,11,3,'溽彩寒露浓','2018-12-27 14:20:37',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (175,11,3,'潇洒出人世','2018-12-27 14:29:26',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (176,11,3,'低昂多异容','2018-12-27 14:29:52',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (177,11,3,'尝闻色空喻','2018-12-27 14:33:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (178,11,3,'造物谁为工','2018-12-27 14:33:27',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (179,11,3,'留连秋月晏','2018-12-27 14:33:48',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (180,11,3,'迢递来山钟','2018-12-27 14:40:19',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (181,3,11,'杨尚书寄郴笔知是小生本样令更商榷使尽其功辄献长句','2018-12-27 14:40:50',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (182,11,3,'截玉铦锥作妙形','2018-12-27 14:41:07',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (183,11,3,'贮云含雾到南溟','2018-12-27 14:43:28',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (184,11,3,'尚书旧用裁天诏','2018-12-27 14:49:45',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (185,11,3,'内史新将写道经','2018-12-27 14:53:00',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (186,11,3,'曲艺岂能裨损益','2018-12-27 14:54:39',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (187,11,3,'微辞只欲播芳馨','2018-12-27 14:54:54',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (188,11,3,'桂阳卿月光辉遍','2018-12-27 15:03:57',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (189,11,3,'毫末应传顾兔灵','2018-12-27 15:04:17',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (190,3,5,'杂曲歌辞 古朗月行','2018-12-27 15:10:34',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (191,5,3,'小时不识月，呼作白玉盘。','2018-12-27 15:11:04',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (192,3,5,'又疑瑶台镜，飞在白云端。','2018-12-27 15:11:14',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (193,5,3,'仙人垂两足，桂树作团团。','2018-12-27 15:11:24',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (194,3,5,'白兔捣药成，问言与谁餐。','2018-12-27 15:11:36',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (195,5,3,'蟾蜍蚀圆影，大明夜已残。','2018-12-27 15:11:49',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (196,3,5,'羿昔落九乌，天人清且安。','2018-12-27 15:11:55',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (197,5,3,'阴精此沦惑，去去不足观。','2018-12-27 15:12:05',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (198,3,5,'忧来其如何，悽怆摧心肝。','2018-12-27 15:12:15',0,1,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (201,3,10,'刚好遇见你','2019-01-02 16:22:33',0,0,null);
insert into `vhr`.`chatmsg`(`cId`,`sendId`,`receivId`,`message`,`sendTime`,`isread`,`status`,`attach`) values (202,5,10,'你好','2019-01-15 15:44:46',0,1,null);
