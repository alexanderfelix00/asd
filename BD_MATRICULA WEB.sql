CREATE DATABASE BDMATRICULA;
USE BDMATRICULA;

CREATE TABLE SEDE(
IDSEDE INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
NOMBRE VARCHAR(30) NOT NULL
);

CREATE TABLE TURNO(
IDTURNO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
NOMBRE VARCHAR(20) NOT NULL,
HORA_INICIO VARCHAR(20) NOT NULL,
HORA_FINAL VARCHAR(20) NOT NULL
);

CREATE TABLE CICLO(
IDCICLO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
NOMBRE VARCHAR(30) NOT NULL,
PRECIO DECIMAL(10,2) NOT NULL
);

CREATE TABLE ESTUDIANTE(
IDEST INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
DNI CHAR(8) NOT NULL,
NOMBRES VARCHAR(30) NOT NULL,
APELLIDOS VARCHAR(30) NOT NULL,
CORREO VARCHAR(40) NOT NULL,
TELEFONO CHAR(9) NOT NULL,
ESTADO VARCHAR(20) NOT NULL
);

CREATE TABLE MATRICULA(
IDMATRICULA INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
IDSEDE INT NOT NULL,
IDTURNO INT NOT NULL,
IDCICLO INT NOT NULL,
IDEST INT NOT NULL,
FECHA_REGISTRO DATE NOT NULL,
FECHA_EXPIRACION DATE NOT NULL,
ESTADO VARCHAR(20) NOT NULL,

FOREIGN KEY(IDSEDE) REFERENCES SEDE(IDSEDE),
FOREIGN KEY(IDTURNO) REFERENCES TURNO(IDTURNO),
FOREIGN KEY(IDCICLO) REFERENCES CICLO(IDCICLO),
FOREIGN KEY(IDEST) REFERENCES ESTUDIANTE(IDEST)
);

CREATE TABLE ADMINISTRADOR(
IDADMIN INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
NOMRBRES VARCHAR(30) NOT NULL,
APELLIDOS VARCHAR(30) NOT NULL,
DNI CHAR(8) NOT NULL,
CORREO VARCHAR(40) NOT NULL,
USUARIO CHAR(8) NOT NULL,
CLAVE VARCHAR(20) NOT NULL,
ESTADO VARCHAR(20) NOT NULL,

UNIQUE(USUARIO)
);

-- INSERT INTO ---------------------

INSERT INTO SEDE VALUES (null,'SAN JUAN DE LURIGANCHO');
INSERT INTO SEDE VALUES (null,'ATE');
INSERT INTO SEDE VALUES (null,'BREÑA');
INSERT INTO SEDE VALUES (null,'COLONIAL');
INSERT INTO SEDE VALUES (null,'PUENTE PIEDRA');
SELECT * FROM SEDE;

INSERT INTO CICLO VALUES (null,'VERANITO',440);
INSERT INTO CICLO VALUES (null,'ANUAL',450);
INSERT INTO CICLO VALUES (null,'ANUAL INTENSIVO',440);
INSERT INTO CICLO VALUES (null,'SEMESTRAL',290);
INSERT INTO CICLO VALUES (null,'SEMESTRAL INTENSIVO',300);
INSERT INTO CICLO VALUES (null,'REPASO',250);
SELECT * FROM CICLO;

INSERT INTO TURNO VALUES (null,'MAÑANA','8:00','1:00');
INSERT INTO TURNO VALUES (null,'TARDE','2:00','7:00');
INSERT INTO TURNO VALUES (null,'NOCHE','7:00','11:00');
SELECT * FROM TURNO;

INSERT INTO ADMINISTRADOR VALUES (null,'CHICLAYO','TERNERO','7485432','chiclayo@gmail.com','AD1974TE','chiasno','ACTIVO');
SELECT * FROM ADMINISTRADOR;

SELECT * FROM ESTUDIANTE;
SELECT * FROM MATRICULA;