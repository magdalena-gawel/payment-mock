CREATE DATABASE IF NOT EXISTS `paymockdb`;
USE `paymockdb`;

DROP TABLE IF EXISTS `mocked_response`;
CREATE TABLE `mocked_response` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(256) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `mocked_response` VALUES (1,'fds','hfsdkfj');
