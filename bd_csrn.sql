-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bd_csrn
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_csrn
-- -----------------------------------------------------
-- DROP DATABASE bd_csrn;
CREATE DATABASE IF NOT EXISTS `bd_csrn` DEFAULT CHARACTER SET latin1 ;
USE `bd_csrn` ;


DROP TABLE IF EXISTS tbl_utilisateur;
DROP TABLE IF EXISTS tbl_journeesstage;
-- -----------------------------------------------------
-- Table `bd_csrn`.`utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_csrn`.`tbl_utilisateur` (	
  `id_utilisateur` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `codeIndividu` VARCHAR(8) UNIQUE,
  `prenom` VARCHAR(255) NOT NULL,
  `nom` VARCHAR(255) NOT NULL,
  `mdp` VARCHAR(512) NOT NULL,
  `idRole` INT(3) NOT NULL,
  `email` VARCHAR(255) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- -----------------------------------------------------
-- Table `bd_csrn`.`journeesstage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_csrn`.`tbl_journeesstage` (
  `idStage` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `fk_utilisateur` INT NOT NULL REFERENCES `tbl_utilisateur`.`id_utilisateur`,
  `journee` DATE NOT NULL,
  `temps` VARCHAR(127)) -- Sera inscrit en string JSON
  
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- -----------------------------------------------------
-- Table `bd_csrn`.`role`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `bd_csrn`.`tbl_role` (
--  `idRole` INT(11) NOT NULL,
-- `nomRole` VARCHAR(45) NULL DEFAULT NULL,
--   PRIMARY KEY (`idRole`))
-- ENGINE = MyISAM
-- DEFAULT CHARACTER SET = latin1;


-- INSERT INTO () VALUES ();

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
