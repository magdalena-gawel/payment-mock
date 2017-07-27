CREATE DATABASE IF NOT EXISTS `paymockdb`;
USE `paymockdb`;

DROP TABLE IF EXISTS `mocked_response`;
CREATE TABLE `mocked_response` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(256) DEFAULT NULL,
  `content` JSON DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
