-- MySQL Workbench Synchronization
-- Generated: 2022-11-14 18:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: aaron

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `ucm`.`actores` 
CHANGE COLUMN `id` `id` BIGINT(20) NOT NULL ,
ADD PRIMARY KEY (`id`),
ADD INDEX `fk_actores_personajes1_idx` (`id_personaje` ASC) VISIBLE;
;

ALTER TABLE `ucm`.`cast_film` 
ADD INDEX `fk_cast_film_films_idx` (`id_film` ASC) VISIBLE,
ADD INDEX `fk_cast_film_actores1_idx` (`id_actor` ASC) VISIBLE;
;

ALTER TABLE `ucm`.`comic` 
ADD INDEX `fk_comic_personajes1_idx` (`id_personaje` ASC) VISIBLE;
;

ALTER TABLE `ucm`.`films` 
CHANGE COLUMN `id` `id` BIGINT(20) NOT NULL ,
ADD PRIMARY KEY (`id`);
;

ALTER TABLE `ucm`.`personajes` 
CHANGE COLUMN `id` `id` BIGINT(20) NOT NULL ,
ADD PRIMARY KEY (`id`);
;

ALTER TABLE `ucm`.`actores` 
ADD CONSTRAINT `fk_actores_personajes1`
  FOREIGN KEY (`id_personaje`)
  REFERENCES `ucm`.`personajes` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `ucm`.`cast_film` 
ADD CONSTRAINT `fk_cast_film_films`
  FOREIGN KEY (`id_film`)
  REFERENCES `ucm`.`films` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cast_film_actores1`
  FOREIGN KEY (`id_actor`)
  REFERENCES `ucm`.`actores` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `ucm`.`comic` 
ADD CONSTRAINT `fk_comic_personajes1`
  FOREIGN KEY (`id_personaje`)
  REFERENCES `ucm`.`personajes` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
