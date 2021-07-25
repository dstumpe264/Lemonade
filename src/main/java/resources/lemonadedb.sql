-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema lemonadedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `lemonadedb` ;

-- -----------------------------------------------------
-- Schema lemonadedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lemonadedb` DEFAULT CHARACTER SET utf8 ;
USE `lemonadedb` ;

-- -----------------------------------------------------
-- Table `lemonadedb`.`owner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lemonadedb`.`owner` ;

CREATE TABLE IF NOT EXISTS `lemonadedb`.`owner` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `profit` DECIMAL NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lemonadedb`.`lemonade_stand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lemonadedb`.`lemonade_stand` ;

CREATE TABLE IF NOT EXISTS `lemonadedb`.`lemonade_stand` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `owner_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `cash` DECIMAL NULL,
  PRIMARY KEY (`id`),
  INDEX `owner_stand_fk_idx` (`owner_id` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  CONSTRAINT `owner_stand_fk`
    FOREIGN KEY (`owner_id`)
    REFERENCES `lemonadedb`.`owner` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lemonadedb`.`ingredient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lemonadedb`.`ingredient` ;

CREATE TABLE IF NOT EXISTS `lemonadedb`.`ingredient` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '	',
  `name` VARCHAR(45) NULL,
  `qty` INT NULL,
  `stand_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ingredient_stand_idx` (`stand_id` ASC),
  CONSTRAINT `fk_ingredient_stand`
    FOREIGN KEY (`stand_id`)
    REFERENCES `lemonadedb`.`lemonade_stand` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lemonadedb`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lemonadedb`.`product` ;

CREATE TABLE IF NOT EXISTS `lemonadedb`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `price` DECIMAL NULL,
  `sold` INT NULL,
  `qty` INT NULL,
  `stand_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_stand_idx` (`stand_id` ASC),
  CONSTRAINT `fk_product_stand`
    FOREIGN KEY (`stand_id`)
    REFERENCES `lemonadedb`.`lemonade_stand` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lemonadedb`.`equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lemonadedb`.`equipment` ;

CREATE TABLE IF NOT EXISTS `lemonadedb`.`equipment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `cost` DECIMAL NULL,
  `overhead` DECIMAL NULL,
  `stand_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_equipment_stand_idx` (`stand_id` ASC),
  CONSTRAINT `fk_equipment_stand`
    FOREIGN KEY (`stand_id`)
    REFERENCES `lemonadedb`.`lemonade_stand` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO stumpy;
 DROP USER stumpy;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'stumpy' IDENTIFIED BY 'stumpy';

GRANT SELECT ON TABLE `lemonadedb`.* TO 'stumpy';
GRANT SELECT, INSERT, TRIGGER ON TABLE `lemonadedb`.* TO 'stumpy';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `lemonadedb`.* TO 'stumpy';
GRANT ALL ON `lemonadedb`.* TO 'stumpy';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `lemonadedb`.`owner`
-- -----------------------------------------------------
START TRANSACTION;
USE `lemonadedb`;
INSERT INTO `lemonadedb`.`owner` (`id`, `user_name`, `first_name`, `last_name`, `password`, `profit`) VALUES (1, 'stumpy', 'david', 'stumpe', 'stumpy', 0);
INSERT INTO `lemonadedb`.`owner` (`id`, `user_name`, `first_name`, `last_name`, `password`, `profit`) VALUES (2, 'blake', 'blake', 'stickle', 'stickle', 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lemonadedb`.`lemonade_stand`
-- -----------------------------------------------------
START TRANSACTION;
USE `lemonadedb`;
INSERT INTO `lemonadedb`.`lemonade_stand` (`id`, `owner_id`, `name`, `cash`) VALUES (1, 1, NULL, NULL);
INSERT INTO `lemonadedb`.`lemonade_stand` (`id`, `owner_id`, `name`, `cash`) VALUES (2, 2, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lemonadedb`.`ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `lemonadedb`;
INSERT INTO `lemonadedb`.`ingredient` (`id`, `name`, `qty`, `stand_id`) VALUES (1, 'lemon', 4, 1);
INSERT INTO `lemonadedb`.`ingredient` (`id`, `name`, `qty`, `stand_id`) VALUES (2, 'sugar', 4, 1);
INSERT INTO `lemonadedb`.`ingredient` (`id`, `name`, `qty`, `stand_id`) VALUES (3, 'water', 4, 1);
INSERT INTO `lemonadedb`.`ingredient` (`id`, `name`, `qty`, `stand_id`) VALUES (4, 'lemon', 10, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lemonadedb`.`product`
-- -----------------------------------------------------
START TRANSACTION;
USE `lemonadedb`;
INSERT INTO `lemonadedb`.`product` (`id`, `name`, `price`, `sold`, `qty`, `stand_id`) VALUES (1, 'lemonade', 1, 0, 5, 1);

COMMIT;
