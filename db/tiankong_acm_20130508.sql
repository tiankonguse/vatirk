SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `tiankong_acm` DEFAULT CHARACTER SET utf8 ;
USE `tiankong_acm` ;

-- -----------------------------------------------------
-- Table `tiankong_acm`.`contest`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NOT NULL ,
  `link` VARCHAR(2048) NOT NULL ,
  `start_time` BIGINT NOT NULL ,
  `oj` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
  `state` INT NULL DEFAULT 0 ,
  `duration` BIGINT NULL DEFAULT 18000 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `realname` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`contest_user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest_user` (
  `contest_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  PRIMARY KEY (`contest_id`, `user_id`) ,
  INDEX `fk_contest_user_contest_idx` (`contest_id` ASC) ,
  INDEX `fk_contest_user_user1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_contest_user_contest`
    FOREIGN KEY (`contest_id` )
    REFERENCES `tiankong_acm`.`contest` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contest_user_user1`
    FOREIGN KEY (`user_id` )
    REFERENCES `tiankong_acm`.`user` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`summary`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`summary` (
  `id` INT NOT NULL ,
  `contest_id` INT NOT NULL ,
  `user_id` INT NOT NULL ,
  `experience` LONGTEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_summary_contest1_idx` (`contest_id` ASC) ,
  INDEX `fk_summary_user1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_summary_contest1`
    FOREIGN KEY (`contest_id` )
    REFERENCES `tiankong_acm`.`contest` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_summary_user1`
    FOREIGN KEY (`user_id` )
    REFERENCES `tiankong_acm`.`user` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`problem`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`problem` (
  `id` INT NOT NULL ,
  `problem_name` VARCHAR(255) NOT NULL ,
  `number` INT NOT NULL ,
  `AC` INT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`problem_summary`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`problem_summary` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `summary_id` INT NOT NULL ,
  `problem_id` INT NOT NULL ,
  `gain` LONGTEXT NULL ,
  `say` LONGTEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_problem_summary_summary1_idx` (`summary_id` ASC) ,
  INDEX `fk_problem_summary_problem1_idx` (`problem_id` ASC) ,
  CONSTRAINT `fk_problem_summary_summary1`
    FOREIGN KEY (`summary_id` )
    REFERENCES `tiankong_acm`.`summary` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_problem_summary_problem1`
    FOREIGN KEY (`problem_id` )
    REFERENCES `tiankong_acm`.`problem` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`contest_problem`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest_problem` (
  `contest_id` INT NOT NULL ,
  `problem_id` INT NOT NULL ,
  PRIMARY KEY (`contest_id`, `problem_id`) ,
  INDEX `fk_contest_problem_contest1_idx` (`contest_id` ASC) ,
  INDEX `fk_contest_problem_problem1_idx` (`problem_id` ASC) ,
  CONSTRAINT `fk_contest_problem_contest1`
    FOREIGN KEY (`contest_id` )
    REFERENCES `tiankong_acm`.`contest` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contest_problem_problem1`
    FOREIGN KEY (`problem_id` )
    REFERENCES `tiankong_acm`.`problem` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiankong_acm`.`contest_update_time`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `tiankong_acm`.`contest_update_time` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `link` VARCHAR(45) NOT NULL ,
  `state` INT NOT NULL ,
  `time` BIGINT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
