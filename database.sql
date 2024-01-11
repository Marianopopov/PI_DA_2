-- Active: 1698285654541@@127.0.0.1@3306@siniestros
CREATE DATABASE siniestros;

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE 'secure_file_priv';


use siniestros;
DROP TABLE homicidios;
CREATE TABLE Homicidios (
    Id VARCHAR(10) PRIMARY KEY,
    Fecha DATE,
    Año INT,
    Mes INT,
    Día INT,
    Día_semana VARCHAR(10),
    Hora_completa TIME,
    Hora INT,
    Num_víctimas INT,
    Participantes VARCHAR(50),
    Rol VARCHAR(20),
    Acusado VARCHAR(50),
    Victima VARCHAR(50),
    Sexo VARCHAR(10),
    Edad INT,
    Rango_etario VARCHAR(20),
    Fecha_fallecimiento DATE,
    Lugar_del_hecho VARCHAR(100),
    Tipo_de_calle VARCHAR(20),
    Calle VARCHAR(50),
    Cruce VARCHAR(50),
    Dirección_normalizada VARCHAR(100),
    Comuna INT, 
    Xy_caba VARCHAR(50),
    Coordenada_x FLOAT,
    Coordenada_y FLOAT,
    Pos_x FLOAT,
    Pos_y FLOAT,
    `Semestre con anio` VARCHAR(10)
);



LOAD DATA local INFILE 'C:/Users/maria/Desktop/PI_DA/PI_DA_2/Datasets/clean/siniestos_limpio.csv' INTO TABLE Homicidios
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

SELECT * from homicidios;



