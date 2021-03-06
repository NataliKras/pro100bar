-- MySQL Script generated by MySQL Workbench
-- Tue Nov  5 20:27:42 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ingridients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingridients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User-group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User-group` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `User-group_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_User-group1_idx` (`User-group_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_User-group1`
    FOREIGN KEY (`User-group_id`)
    REFERENCES `mydb`.`User-group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`coctails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`coctails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_coctails_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_coctails_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`consist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`consist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ingridients_id` INT NOT NULL,
  `coctails_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_consist_ingridients_idx` (`ingridients_id` ASC) VISIBLE,
  INDEX `fk_consist_coctails1_idx` (`coctails_id` ASC) VISIBLE,
  CONSTRAINT `fk_consist_ingridients`
    FOREIGN KEY (`ingridients_id`)
    REFERENCES `mydb`.`ingridients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_consist_coctails1`
    FOREIGN KEY (`coctails_id`)
    REFERENCES `mydb`.`coctails` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
