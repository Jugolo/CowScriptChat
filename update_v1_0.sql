ALTER TABLE `%prefix%chat_user` ADD ip VARCHAR(255) AFTER avatar;
ALTER TABLE `%prefix%chat_name` ADD `members` int(11) NOT NULL AFTER `title`;

CREATE TABLE IF NOT EXISTS `%prefix%chat_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `%prefix%chat_updater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dir` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `last_check` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `repo` varchar(255) NOT NULL,
  PRIMARY KEY(`id`)
  ) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `%prefix%chat_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `errno` int(11) NOT NULL,
  `errstr` varchar(255) NOT NULL,
  `errfile` varchar(255) NOT NULL,
  `errline` int(11) NOT NULL,
  `seen` int(1) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=MyISAM;
