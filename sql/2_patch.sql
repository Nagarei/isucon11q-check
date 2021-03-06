


ALTER TABLE `isu` ADD `image_hash` VARCHAR(32) NOT NULL DEFAULT "";
UPDATE `isu` SET `image_hash`=MD5(`image`);


ALTER TABLE `isu_condition` DROP id;
ALTER TABLE `isu_condition` DROP created_at;
ALTER TABLE `isu_condition` ADD `condition_level` VARCHAR(1) NOT NULL DEFAULT "w";
UPDATE `isu_condition` SET `condition_level` = "i" WHERE `condition`="is_dirty=false,is_overweight=false,is_broken=false";
UPDATE `isu_condition` SET `condition_level` = "c" WHERE `condition`="is_dirty=true,is_overweight=true,is_broken=true";
