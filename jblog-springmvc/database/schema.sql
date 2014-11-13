CREATE TABLE user (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `is_deleted` enum('true','false') NOT NULL DEFAULT 'false',
  `is_locked` enum('true','false') NOT NULL DEFAULT 'false',
  `username` varchar(128) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` smallint(5) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY (email)
) ENGINE=MyISAM AUTO_INCREMENT=1440 DEFAULT CHARSET=latin1