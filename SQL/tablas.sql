DROP DATABASE IF EXISTS FULLSTACK;
CREATE DATABASE IF NOT EXISTS FULLSTACK DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

/* usamos la base de datos*/

USE FULLSTACK;

/* Creamos primero los tipos de usuario*/
DROP TABLE IF EXISTS TIPOS_USUARIO;
CREATE TABLE IF NOT EXISTS TIPOS_USUARIO(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    funciones VARCHAR(300) NOT NULL
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS USUARIOS;
CREATE TABLE IF NOT EXISTS usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    dni VARCHAR(10) UNIQUE,
    apellidos VARCHAR(255) NOT NULL,
    usuario VARCHAR(20) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    foto VARCHAR(255) default 'Este usuario no ha introducido foto',
    direccion VARCHAR(255) NOT NULL,
    telefono int(9) NOT NULL,
    tipo_usuario int NOT NULL,
    activo  tinyint default 0,
    CONSTRAINT fk_tipo_usuario
    FOREIGN KEY (tipo_usuario) REFERENCES tipos_usuario (id) ON UPDATE CASCADE
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS ASIGNATURAS;
CREATE TABLE IF NOT EXISTS ASIGNATURAS(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    id_profesor1 int,
    id_profesor2 int,
    CONSTRAINT fk_profesor1 FOREIGN KEY (profesor1) REFERENCES USUARIOS (id) ON UPDATE CASCADE,
    CONSTRAINT fk_profesor2 FOREIGN KEY (profesor2) REFERENCES USUARIOS (id) ON UPDATE CASCADE
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS CURSOS;
CREATE TABLE IF NOT EXISTS CURSOS(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    id_a1 int,
    id_a2 int,
    id_a3 int,
    id_a4 int,
    id_a5 int,    
    id_a6 int,
    id_a7 int,
    id_a8 int

) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';


DROP TABLE IF EXISTS NOTAS;
CREATE TABLE IF NOT EXISTS NOTAS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT,
    id_asignatura INT,
    id_curso INT,
    nota INT DEFAULT 0,
    CONSTRAINT fk_usuarios FOREIGN KEY (id_alumno) 
    REFERENCES USUARIOS(id) ON UPDATE CASCADE,
    CONSTRAINT fk_asignaturas FOREIGN KEY(id_asignatura)
    REFERENCES ASIGNATURAS(id) ON UPDATE CASCADE,
    CONSTRAINT fk_curso FOREIGN KEY(id_curso)
    REFERENCES CURSOS(id) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/* AHORA VAMOS A REALIZAR LAS INSERCCIONES DE TIPOS DE USUARIOS Y USUARIOS*/
INSERT INTO TIPOS_USUARIO(nombre,funciones) VALUES
("alumnado","este susodicho especimen denominado como alumno, suele tener la intención de aprobar el curso haciendo el mínimo posible."),
("profesorado","este susodicho especimen denominado como profesor, suele tener la intención de suspender a todo el curso haciendo lo máximo posible por ello");

INSERT INTO USUARIOS(dni,nombre,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
("José","25448855-F","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1);

INSERT INTO USUARIOS(dni,nombre,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
("Adrián","2538445-S","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
("Bruno","1238445-T","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
("Ana","Gonzalez Pérez","7538445-S","pegope","1234","Calle de la Inquisición",697123963,1,1);

INSERT INTO USUARIOS(dni,nombre,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
("María Cristina","1222445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,0),
("Miguel","1226445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
("Juan Carlos","1826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
("Victoría","1826945-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,0);

INSERT INTO USUARIOS(dni,nombre,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
("Cristían","2826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
("Jorge","4826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,2,1);


/* INSERT CURSOS */

INSERT INTO  CURSOS(nombre,id_a1,id_a2,id_a3,id_a4,id_a5,id_a6,id_a7,id_a8,) VALUES
