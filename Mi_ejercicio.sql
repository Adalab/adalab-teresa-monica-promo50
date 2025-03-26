CREATE SCHEMA IF NOT EXISTS mi_ejercicio;

USE mi_ejercicio;

CREATE TABLE IF NOT EXISTS empleadas (
	id_empleada INT NOT NULL,
    salario FLOAT DEFAULT NULL,
    nombre VARCHAR(50) DEFAULT NULL,
    apellido VARCHAR(50) DEFAULT 'sin especificar',
    país VARCHAR(25) DEFAULT NULL,
    PRIMARY KEY (id_empleada)
);
    
CREATE TABLE empleadas_en_proyectos (
	id_empleada INT NOT NULL,
    id_proyecto INT NOT NULL,
    CONSTRAINT fk_empleadas
    FOREIGN KEY (id_empleada)
    REFERENCES empleadas (id_empleada)
    ON DELETE CASCADE 
);
DROP TABLE empleadas_en_proyectos;
 
CREATE TABLE personas (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT,
    ciudad varchar(255) DEFAULT 'Madrid'
);
    
 CREATE TABLE personas_2 AS 
	SELECT *
    FROM personas;
    
CREATE TABLE personas (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT,
    ciudad varchar(255) DEFAULT 'Madrid'
    CONSTRAINT edad CHECK (edad > 16)
);


