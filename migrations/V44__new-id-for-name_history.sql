ALTER TABLE `name_history`
	ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`);
