-- Script for mysql

CREATE DATABASE `dms`

CREATE TABLE `dms`.USERS(USER_ID INTEGER PRIMARY KEY, ENABLED INTEGER, USERNAME VARCHAR(100), PASSWORD VARCHAR(100));

CREATE TABLE `dms`.USER_ROLES(USER_ROLE_ID INTEGER PRIMARY KEY, USER_ID INTEGER, AUTHORITY VARCHAR(100));

insert into `dms`.users(user_id, ENABLED, USERNAME, PASSWORD) values(1,1,'a','a');
insert into `dms`.users(user_id, ENABLED, USERNAME, PASSWORD) values(2,1,'b','b');

insert into user_roles(USER_ROLE_ID, USER_ID,AUTHORITY) VALUES(1,1,'ROLE_USER');
insert into user_roles(USER_ROLE_ID, USER_ID,AUTHORITY) VALUES(2,2,'ROLE_ADMIN');

DROP TABLE IF EXISTS `dms`.`users`;
CREATE TABLE  `dms`.`users` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ENABLED` int(11) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `dms`.`user_roles`;
CREATE TABLE  `dms`.`user_roles` (
  `USER_ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AUTHORITY` varchar(100) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`USER_ROLE_ID`),
  KEY `FKC6C79929F82A0489` (`USER_ID`),
  CONSTRAINT `FKC6C79929F82A0489` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `dms`.`metadata`;
CREATE TABLE  `dms`.`metadata` (
  `METADATA_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMMENTS` longtext,
  `CREATED_USER` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `DOCUMENT_FILE_NAME` longtext,
  `SIZE` bigint(20) DEFAULT NULL,
  `DOCUMENT_TYPE` varchar(200) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `OWNER` varchar(100) NOT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `UPDATED_USER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`METADATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


