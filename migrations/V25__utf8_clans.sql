ALTER TABLE `clan` 
CHARACTER SET = utf8;

ALTER TABLE `clan`
MODIFY `name`  VARCHAR(40) CHARACTER SET utf8 NOT NULL;

ALTER TABLE `clan`
MODIFY `tag` VARCHAR(3) CHARACTER SET utf8 NOT NULL;

ALTER TABLE `clan`
MODIFY `description` TEXT CHARACTER SET utf8;

ALTER TABLE `clan_membership` 
CHARACTER SET = utf8;
