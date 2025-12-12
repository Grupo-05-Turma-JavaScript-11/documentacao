-- MySQL Script - Alibabah Delivery Backend
-- Gerado e formatado para uso no projeto integrador
-- Modelo: db_alibabah

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,
NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema: db_alibabah
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_alibabah` DEFAULT CHARACTER SET utf8;
USE `db_alibabah`;

-- -----------------------------------------------------
-- Tabela: tb_usuarios
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela: tb_categorias
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_categorias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela: tb_menu
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_menu` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `calorias` INT NOT NULL,

  `usuario_id` BIGINT NOT NULL,
  `categoria_id` BIGINT NOT NULL,

  PRIMARY KEY (`id`),

  INDEX `fk_menu_usuario_idx` (`usuario_id` ASC),
  INDEX `fk_menu_categoria_idx` (`categoria_id` ASC),

  CONSTRAINT `fk_menu_usuario`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `db_alibabah`.`tb_usuarios` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT `fk_menu_categoria`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `db_alibabah`.`tb_categorias` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Restaurar configurações
-- -----------------------------------------------------
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
