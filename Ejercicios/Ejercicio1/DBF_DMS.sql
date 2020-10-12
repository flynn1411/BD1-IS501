
DROP DATABASE IF EXISTS UnahDB;

CREATE DATABASE UnahDB CHARACTER SET utf8;

USE UnahDB;

CREATE TABLE Estudiante(
    id_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    var_nombre VARCHAR(25) NOT NULL,
    var_numCuenta VARCHAR(11) NOT NULL,
    tin_edad TINYINT NOT NULL,
);


CREATE TABLE Asignatura(
    int_id INT AUTO_INCREMENT PRIMARY KEY,
    var_nombre VARCHAR (25),
    var_departamento VARCHAR(30),
);

CREATE TABLE Maestro(
    num_id INT AUTO_INCREMENT PRIMARY KEY,
    tex_nombre VARCHAR(25) NOT NULL,
    tex_departamento VARCHAR(25) NOT NULL
);

CREATE TABLE Matricula(
    int_id_Estudiante INT FOREIGN KEY Estudiante.int_id;
    int_id_Asigantura INT FOREIGN KEY Asignatura.int_id;
);

CREATE TABLE Chamba(
    int_id_Maestro INT FOREIGN KEY Maestro.int_id;
    int_id_Asigantura INT FOREIGN KEY Asignatura.int_id;
);
/*
ALTER TABLE Matricula
ADD CONSTRAINT Matricula_EST_FK
    FOREIGN KEY (int_id_Estudiante) REFERENCES Estudiante (id),
ADD CONSTRAINT Matricula_ASI_FK
    FOREIGN KEY (int_id_Asignatura) REFERENCES Asignatura (id);
*/
INSERT INTO Estudiante(var_nombre,var_numCuenta,tin_edad) VALUES
    ("Fernando","20171030809",20),
    ("Josue","20171034157",21),
    ("Ana","20171001620",21),
    ("Gabriel","18471000809",70),
    ("Moises","20171001679",20),
    ("Leo","202110031716",20),
    ("Juan Carlos","20171001679",26)
;

INSERT INTO Asignatura(var_nombre, var_departamento)VALUES
    ("Base de datos","Sitemas"),
    ("Sistemas Operativos II", "Sistemas")
    ("Sistemas de Info", "Sistemas"),
    ("Introducción a la IS", "Sistemas"),
    ("Ecuaciones Diferenciales","Matemática")

;

INSERT INTO Maestro(tex_nombre,text_departamento) VALUES
    ("Inestroza Papi","Sistemas"),
    ("El tio mendoza", "Sistemas"),
    ("El dejatareas Rommel","Sistemas"),
    ("Jaleas de Fresa","Sistemas"),
    ("Don Axel", "Matematicas")
;

INSERT INTO Chamba() VALUES
    (5,5),
    (1,1),
    (1,2),
    (2,2),
    (2,3),
    (3,3),
    (3,4),
    (4,4)
;

INSERT INTO Matricula() VALUES
    (2,1),
    (2,3),
    (2,5),
    (1,1),
    (1,4),
    (4,1),
    (4,2),
    (3,1),
    (3,3),
    (3,4),
    (3,5)
;