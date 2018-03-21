CREATE TABLE `sp_douban_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT '' COMMENT '标题',
  `subtitle` varchar(20) DEFAULT '' COMMENT '副标题',
  `other` varchar(20) DEFAULT '' COMMENT '其他',
  `desc` varchar(30) DEFAULT '' COMMENT '简述',
  `year` int(10) unsigned DEFAULT '0' COMMENT '年份',
  `area` varchar(20) DEFAULT '' COMMENT '地区',
  `tag` varchar(20) DEFAULT '' COMMENT '标签',
  `star` int(10) unsigned DEFAULT '0' COMMENT 'star',
  `comment` int(10) unsigned DEFAULT '0' COMMENT '评分',
  `quote` varchar(30) DEFAULT '' COMMENT '引用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='豆瓣电影Top250';
