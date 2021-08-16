


ALTER TABLE `isu` ADD `image_hash` VARCHAR(32) NOT NULL DEFAULT "";
UPDATE `isu` SET `image_hash`=MD5(`image`);

UPDATE `isu_condition` SET `condition_level` = "i" WHERE condition="is_dirty=false,is_overweight=false,is_broken=false";
UPDATE `isu_condition` SET `condition_level` = "c" WHERE condition="is_dirty=true,is_overweight=true,is_broken=true";
