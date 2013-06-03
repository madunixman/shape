CREATE TABLE `User` (
`ID_User` VARCHAR NOT NULL ,
`name` VARCHAR DEFAULT NULL ,
`password` VARCHAR(256) DEFAULT NULL ,
`surname` VARCHAR(256) DEFAULT NULL ,
`created` DATETIME DEFAULT NULL ,
`updated` DATETIME DEFAULT NULL ,
PRIMARY KEY (`ID_User`)
) COMMENT 'Tabella utente';

CREATE TABLE `Usergroup` (
`ID_Usergroup` VARCHAR NOT NULL ,
`description` VARCHAR(256) DEFAULT NULL ,
`created` DATETIME DEFAULT NULL ,
`updated` DATETIME DEFAULT NULL ,
PRIMARY KEY (`ID_Usergroup`)
);

CREATE TABLE `Role` (
`ID_Role` VARCHAR NOT NULL ,
`description` VARCHAR DEFAULT NULL ,
`created` DATETIME DEFAULT NULL ,
`updated` DATETIME DEFAULT NULL ,
PRIMARY KEY (`ID_Role`)
);

CREATE TABLE `Policy` (
`ID_Policy` VARCHAR NOT NULL ,
`description` VARCHAR(256) DEFAULT NULL ,
`created` DATETIME DEFAULT NULL ,
`updated` DATETIME DEFAULT NULL ,
`ID_Resource` VARCHAR NOT NULL ,
`ID_Role` VARCHAR NOT NULL ,
`perms` CHAR DEFAULT NULL ,
PRIMARY KEY (`ID_Policy`)
);

CREATE TABLE `Account` (
`ID_Account` VARCHAR NOT NULL ,
`ID_User` VARCHAR NOT NULL ,
`ID_Usergroup` VARCHAR NOT NULL ,
`ID_Role` VARCHAR NOT NULL ,
`created` DATETIME DEFAULT NULL ,
`updated` DATETIME DEFAULT NULL ,
`active` INTEGER DEFAULT NULL ,
PRIMARY KEY (`ID_Account`)
) COMMENT 'relate ';

CREATE TABLE `Resource` (
`created` DATE DEFAULT NULL ,
`updated` DATE DEFAULT NULL ,
`description` VARCHAR DEFAULT NULL ,
`internal` INTEGER DEFAULT NULL ,
`externaltable` VARCHAR DEFAULT NULL ,
`data` BLOB DEFAULT NULL ,
`type` VARCHAR DEFAULT NULL ,
`ID_Resource` VARCHAR NOT NULL ,
PRIMARY KEY (`ID_Resource`)
);

CREATE TABLE `ResExternalX` (
`id` INTEGER AUTO_INCREMENT DEFAULT NULL ,
PRIMARY KEY (`id`)
);

ALTER TABLE `Policy` ADD FOREIGN KEY (ID_Resource) REFERENCES `Resource` (`ID_Resource`);
ALTER TABLE `Policy` ADD FOREIGN KEY (ID_Role) REFERENCES `Role` (`ID_Role`);
ALTER TABLE `Account` ADD FOREIGN KEY (ID_User) REFERENCES `User` (`ID_User`);
ALTER TABLE `Account` ADD FOREIGN KEY (ID_Usergroup) REFERENCES `Usergroup` (`ID_Usergroup`);
ALTER TABLE `Account` ADD FOREIGN KEY (ID_Role) REFERENCES `Role` (`ID_Role`);