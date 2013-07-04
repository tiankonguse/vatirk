SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `tiankong_acm`.`contest` DROP COLUMN `duration` , ADD COLUMN `duration` BIGINT(20) NULL DEFAULT 18000  AFTER `state` ;

ALTER TABLE `tiankong_acm`.`contest_update_time` CHANGE COLUMN `link` `link` VARCHAR(45) NOT NULL  ;

CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest_update_problem` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `contest_id` INT(11) NOT NULL ,
  `time` BIGINT(20) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_contest_update_problem_contest1_idx` (`contest_id` ASC) ,
  CONSTRAINT `fk_contest_update_problem_contest1`
    FOREIGN KEY (`contest_id` )
    REFERENCES `tiankong_acm`.`contest` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest_oj_problem` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `oj` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
