DROP DATABASE IF EXISTS  MisMascotas;
CREATE DATABASE MisMascotas;
USE MisMascotas;
#----------------------------     TABLAS        ------------------------------#
DROP TABLE IF EXISTS persona;
CREATE TABLE persona(
nit INT PRIMARY KEY NOT NULL UNIQUE,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(50),
telefono VARCHAR(20) NOT NULL);

DROP TABLE IF EXISTS mascota;
CREATE TABLE  mascota(
id_mascota INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
nombre VARCHAR (20),
nacimiento DATE NOT NULL,
registro_clinica DATE,
dueño INT NOT NULL REFERENCES persona(nit)); 

DROP TABLE IF EXISTS tratamiento;
CREATE TABLE tratamiento(
id_tratamiento INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
descripcion_tratamiento VARCHAR(200),
mascota INT REFERENCES mascota(id_mascota),
precio FLOAT NOT NULL 
 );
 
DROP TABLE IF EXISTS cita;
CREATE TABLE cita (
id_cita int AUTO_INCREMENT PRIMARY KEY, 
fecha_inicial DATETIME ,
descripcion_cita VARCHAR(100),
tratamiento INT REFERENCES tratamiento(id_tratamiento),
dueño INT REFERENCES persona(nit),
se_presento BOOL NOT NULL,
proxima_cita DATETIME NOT NULL
);
#----------------------------     TABLAS        ------------------------------#


