-- Active: 1698285654541@@127.0.0.1@3306@siniestros
CREATE DATABASE siniestros;

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE 'secure_file_priv';


use siniestros;
DROP TABLE Accidentes;
CREATE TABLE Accidentes (
    Id VARCHAR(10) PRIMARY KEY,
    Fecha DATE,
    Año INTEGER,
    Mes INTEGER,
    Día INTEGER,
    `Día semana` VARCHAR(20),
    `Hora completa` TIME,
    Hora FLOAT,
    `Num víctimas` INTEGER,
    Participantes INTEGER,
    Rol VARCHAR(50),
    Acusado VARCHAR(50),
    Victima VARCHAR(50),
    Sexo VARCHAR(15),
    Edad INTEGER,
    `Rango etario` VARCHAR(20),
    `Fecha fallecimiento` DATE,
    `Lugar del hecho` VARCHAR(100),
    `Tipo de calle` VARCHAR(50),
    Calle VARCHAR(50),
    Cruce VARCHAR(100),
    `Dirección normalizada` VARCHAR(100),
    Comuna VARCHAR(20),
    `Xy (caba)` VARCHAR(50),
    `Pos x` DOUBLE PRECISION,
    `Pos y` DOUBLE PRECISION
);




LOAD DATA local INFILE 'C:/Users/maria/Desktop/PI_DA/PI_DA_2/Datasets/clean/siniestos_limpio_2.csv' INTO TABLE Accidentes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

SELECT * from accidentes;
