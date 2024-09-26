CREATE SCHEMA IF NOT EXISTS `escolar` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `escolar` ;

-- -----------------------------------------------------
-- Table `escolar`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`aluno` (
  `nr_matr` INT NOT NULL AUTO_INCREMENT,
  `nome_al` VARCHAR(45) NULL,
  `cpf_al` VARCHAR(12) NULL,
  `fone_al` VARCHAR(11) NULL,
  `endereco` VARCHAR(45) NULL,
  PRIMARY KEY (`nr_matr`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolar`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`professor` (
  `cpf_pr` VARCHAR(12) NOT NULL,
  `nome_pr` VARCHAR(45) NOT NULL,
  `fone` VARCHAR(11) NULL,
  `endereco` VARCHAR(45) NULL,
  PRIMARY KEY (`cpf_pr`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolar`.`matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`matricula` (
  `cod_matr` INT NOT NULL,
  `nr_matr` INT NOT NULL,
  `cod_curso` VARCHAR(5) NULL,
  `cod_disc` VARCHAR(5) NULL,
  `freq` INT,
  `nota` INT,
  PRIMARY KEY (`cod_matr`))
  ENGINE = InnoDB;
  


-- -----------------------------------------------------
-- Table `escolar`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`disciplina` (
  `cod_disc` VARCHAR(5) NOT NULL,
  `nome_disc` VARCHAR(45) NULL,
  `horario` VARCHAR(10) NULL,
  `cpf_pr` VARCHAR(12) NULL,
   PRIMARY KEY (`cod_disc`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolar`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`curso` (
  `cod_curso` VARCHAR(5) NOT NULL,
  `nome_curso` VARCHAR(45) NULL,
  `turno_Curso` VARCHAR(3) NULL,
  PRIMARY KEY (`cod_curso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolar`.`grade_cur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolar`.`grade_cur` (
  `reg_cur` INT NOT NULL,
  `cod_curso` VARCHAR(5) NOT NULL,
  `cod_disc` VARCHAR(5) NULL,
  `periodo` INT NOT NULL,
  PRIMARY KEY (`reg_cur`))
ENGINE = InnoDB;

USE `escolar` ;
-- -----------------------------------------------------
--  routine1
-- -----------------------------------------------------
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (1,'alexandre','1111111111','2345234554','Rua de casa 1');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (2,'Igor','2222222222','123465437','Casa das ruas 2');
INSERT INTO aluno (`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (3,'victor','3333333333','0987765433','Predio de casa 3');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (4,'andre','1111111112','2345234554','Rua de casa 1');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (5,'bruno','2222222223','123465437','Casa das ruas 2');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (6,'fabio','1111111115','2345234554','Rua de casa 1');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (7,'Irener','2222222225','123465437','Casa das ruas 2');
INSERT INTO aluno (`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (8,'maria','3333333335','0987765433','Predio de casa 3');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (9,'ana','1111111116','2345234554','Rua de casa 1');
INSERT INTO aluno(`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (10,'bruna','2222222226','123465437','Casa das ruas 2');
INSERT INTO aluno (`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (11,'larissa','3333333336','0987765433','Predio de casa 3');
INSERT INTO aluno (`nr_matr`,`nome_al`,`cpf_al`,`fone_al`,`endereco`) VALUES (12,'carlos','3333333334','0987765433','Predio de casa 3');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EC_M','E.Computação','MAT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EC_N','E. Computação','NOT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EE_M','E. Elétrica','MAT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EE_N','E. Elétrica','NOT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EM_M','E.Mecanica','MAT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EM_N','E. Mecanica','NOT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EP_M','E. Produção','MAT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('EP_N','E. Produção','NOT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('CC_M','Ciencias da Computação','MAT');
INSERT INTO curso(`cod_curso`,`nome_curso`,`turno_Curso`) VALUES ('CC_N','Ciencias da Computação','NOT');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('COM01','Compiladores','Ter_M','222222222');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('DES01','Desenho Técnico','Qua_M','333333333');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('FIS01','Fisica Geral 1','Qui_M','444444444');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('MAT01','Matematica','Seg_M','1111111111');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('QUI01','Química Geral','Sex_M','555555555');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('FIS02','Fisica Geral 2','Ter_N','666666666');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('DES02','Desenho Superficial','Qui_M','777777777');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('FIS04','Fisica Geral 4','Qui_M','888888888');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('MAT02','Cálculo 2','Seg_M','999999999');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('QUI02','Química Geral 2','Sex_N','101010101');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('COM02','Compiladores 2','Ter_M','232323232');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('DES03','Desenho Industrial','Qua_N','123456789');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('FIS03','Fisica Geral 3','Qui_N','444444444');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('MAT03','Geometria Analitica','Seg_N','1111111111');
INSERT INTO disciplina(`cod_disc`,`nome_disc`,`horario`,`cpf_pr`) VALUES ('ALP01','Linguagem de Programaçao','Sex_N','555555555');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('111111111','Alexandre','1234-09857','Rua de casa 1');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('222222222','Anderson','0987876523','Predio das casa 2');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('3333333333','Leticia','2093485744','Edificio de casas 3');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('444444444','Maurinho','654782922','Rua da av 5');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('555555555','Marcelo V','6582944','Casa longe 6');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('666666666','Adriano F','1234-09857','Rua de casa 1');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('777777777','Isac L','0987876523','Predio das casa 2');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('888888888','Adriana','2093485744','Edificio de casas 3');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('999999999','Camila G','654782922','Rua da av 5');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('101010101','Picasso G','6582944','Casa longe 6');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('232323232','Leiviana','654782922','Rua da av 5');
INSERT INTO professor(`cpf_pr`,`nome_pr`,`fone`,`endereco`) VALUES ('123456789','Maxwella','6582944','Casa longe 6');
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(1,1,'EC_M','COM01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(2,1,'EC_M','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(3,1,'EC_M','FIS01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(4,1,'EC_M','QUI01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(5,2,'EC_N','COM01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(6,2,'EC_N','DES01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(7,2,'EC_N','FIS01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(8,2,'EC_N','QUI01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(9,3,'EE_M','COM01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(10,3,'EE_M','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(11,3,'EE_M','FIS01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(12,3,'EE_M','DES02',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(13,4,'EE_N','COM02',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(14,4,'EE_N','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(15,4,'EE_N','FIS01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(16,4,'EE_N','ALP01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(17,5,'EM_M','DES03',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(18,5,'EM_M','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(19,5,'EM_M','COM01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(20,5,'EM_M','ALP01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(21,6,'EM_N','MAT03',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(22,6,'EM_N','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(23,6,'EM_N','MAT01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(24,6,'EM_N','ALP01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(25,7,'EP_M','COM02',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(26,7,'EP_M','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(27,7,'EP_M','MAT01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(28,7,'EP_M','FIS03',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(29,8,'EP_N','COM01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(30,8,'EP_N','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(31,8,'EP_N','MAT01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(32,8,'EP_N','ALP01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(33,9,'CC_M','MAT03',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(34,9,'CC_M','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(35,9,'CC_M','MAT01',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(36,9,'CC_M','FIS03',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(37,10,'CC_N','COM01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(38,10,'CC_N','DES01',50,70);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(39,10,'CC_N','FIS03',50,50);
INSERT INTO matricula(`cod_matr`,`nr_matr`,`cod_curso`,`cod_disc`,`freq`,`nota`) VALUES(40,10,'CC_N','MAT03',50,70);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(1,'CC_N','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(2,'CC_N','DES01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(3,'CC_N','FIS01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(4,'CC_N','MAT01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(5,'EC_M','QUI01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(6,'EC_M','FIS02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(7,'EC_M','DES02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(8,'EC_M','FIS04',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(9,'EE_M','DES02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(10,'EE_M','MAT02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(11,'EE_M','QUI02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(12,'EE_M','COM02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(13,'EE_N','DES03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(14,'EE_N','FIS03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(15,'EE_N','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(16,'EE_N','ALP01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(17,'EM_M','DES01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(18,'EM_M','FIS01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(19,'EM_M','MAT01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(20,'EM_M','QUI01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(21,'EM_N','FIS02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(22,'EM_N','DES02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(23,'EM_N','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(24,'EM_N','MAT02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(25,'CC_M','FIS04',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(26,'CC_M','QUI02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(27,'CC_M','COM02',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(28,'CC_M','DES03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(29,'EP_M','FIS03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(30,'EP_M','QUI01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(31,'EP_M','ALP01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(32,'EP_M','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(33,'EP_N','FIS01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(34,'EP_N','QUI01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(35,'EP_N','DES01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(36,'EP_N','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(37,'EC_N','FIS01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(38,'EC_N','ALP01',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(39,'EC_N','MAT03',1);
INSERT INTO grade_cur(`reg_cur`,`cod_curso`,`cod_disc`,`periodo`)VALUES(40,'EC_N','DES01',1);
