


ALTER TABLE `isu` ADD `image_hash` VARCHAR(32) NOT NULL DEFAULT "";
UPDATE `isu` SET `image_hash`=MD5(`image`);
