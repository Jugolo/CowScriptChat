CREATE TABLE IF NOT EXISTS `%prefix%chat_updater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dir` varchar(255) NOT NULL,
  `last_check` int(11) NOT NULL,
  PRIMARY KEY(`id`)
  ) ENGINE=MyISAM;
