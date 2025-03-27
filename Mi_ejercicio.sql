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


-------------------------------------

CREATE TABLE tabla_1 (a INTEGER, b CHAR(10));

USE tabla_1;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE tabla_1 RENAME TO tabla_2;

ALTER TABLE tabla_2
MODIFY COLUMN a TINYINT NOT NULL;

SELECT *
FROM tabla_2;

ALTER TABLE tabla_2
MODIFY COLUMN b CHAR(20);

ALTER TABLE tabla_2
RENAME COLUMN b TO c;

ALTER TABLE tabla_2
ADD COLUMN d TIMESTAMP; 

ALTER TABLE tabla_2
DROP COLUMN c;

SELECT *
FROM tabla_2;


CREATE TABLE IF NOT EXISTS tabla_3 AS
SELECT *
FROM tabla_2;


DROP TABLE IF EXISTS tabla_2;

ALTER TABLE tabla_3 RENAME TO tabla_1;

-----------------------------------------


USE tienda;

CREATE TABLE IF NOT EXISTS customers_mod 
SELECT * 
FROM customers;

SELECT *
FROM customers_mod;

INSERT INTO customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit) VALUES
(343, 'Adalab', 'Rodríguez', 'Julia', 672986373, 'calle falsa, 123', 'puerta 42', 'Madrid', 'España', 28000, 'España', 15, 2000000);

INSERT INTO customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit) VALUES
(344, 'La Pegatina After', 'Santiago', 'Maricarmen', '000000000', 'travesia del rave', NULL, 'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453);

INSERT INTO customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit) VALUES
('501', 'Adalab', 'García', '', '000000000', 'travesia del rave', NULL, 'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453), 
('502','La Pegatina 1', 'Santiago', '', '000000000', 'travesia del rave', NULL, 'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453), 
('503','La Pegatina 2', 'Santiago', '', '000000000', 'travesia del rave', NULL, 'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453), 
('504','Adalab', 'Sadoc', 'Monica', '22222222', 'calle prueba 2', NULL, 'Madrid', NULL, 28903, 'España', 14, 45673453), 
('505','Adalab', 'García', 'Teresa', '111111111', 'calle prueba, 1', NULL, 'A Coruña', NULL, 15002, 'España', 12, 45673453);




