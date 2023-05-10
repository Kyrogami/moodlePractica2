DROP DATABASE IF EXISTS FULLSTACK;

CREATE DATABASE IF NOT EXISTS FULLSTACK DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


/* usamos la base de datos*/

USE FULLSTACK;

/* Creamos primero los tipos de usuario*/
DROP TABLE IF EXISTS TIPOS_USUARIO;
CREATE TABLE IF NOT EXISTS TIPOS_USUARIO(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    funciones VARCHAR(300) NOT NULL
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

/* creamos usuarios*/
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
    FOREIGN KEY (tipo_usuario) REFERENCES tipos_usuario (id) 
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

/*creamos asignaturas*/

DROP TABLE IF EXISTS ASIGNATURAS;
CREATE TABLE IF NOT EXISTS ASIGNATURAS(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    id_profesor1 int,
    id_profesor2 int,
    FOREIGN KEY (id_profesor1) REFERENCES USUARIOS (id),
    FOREIGN KEY (id_profesor2) REFERENCES USUARIOS (id) 
) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

/* creamos cursos*/
    DROP TABLE IF EXISTS CURSOS;
    CREATE TABLE IF NOT EXISTS CURSOS(
        id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
        nombre VARCHAR(255) NOT NULL,
        id_a1 int DEFAULT 0,
        id_a2 int  DEFAULT 0,
        id_a3 int  DEFAULT 0,
        id_a4 int  DEFAULT 0,
        id_a5 int  DEFAULT 0,    
        id_a6 int  DEFAULT 0,
        id_a7 int  DEFAULT 0,
        id_a8 int  DEFAULT 0,
        FOREIGN KEY (id_a1) REFERENCES ASIGNATURAS (id),
        FOREIGN KEY (id_a2) REFERENCES ASIGNATURAS (id),
        FOREIGN KEY (id_a3) REFERENCES ASIGNATURAS (id),
        FOREIGN KEY (id_a4) REFERENCES ASIGNATURAS (id),
        FOREIGN KEY (id_a5) REFERENCES ASIGNATURAS (id), 
        FOREIGN KEY (id_a6) REFERENCES ASIGNATURAS (id), 
        FOREIGN KEY (id_a7) REFERENCES ASIGNATURAS (id),
        FOREIGN KEY (id_a8) REFERENCES ASIGNATURAS (id)
    ) ENGINE=InnoDB Character set 'utf8' default COLLATE 'utf8_general_ci';

    /* TABLA NOTAS */
    DROP TABLE IF EXISTS NOTAS;
    CREATE TABLE IF NOT EXISTS NOTAS (
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_alumno INT,
        id_asignatura INT,
        id_curso INT,
        nota INT DEFAULT 0,
        FOREIGN KEY (id_alumno) REFERENCES USUARIOS(id),
        FOREIGN KEY(id_asignatura) REFERENCES ASIGNATURAS(id),
        FOREIGN KEY(id_curso) REFERENCES CURSOS(id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/* AHORA VAMOS A REALIZAR LAS INSERCCIONES DE TIPOS DE USUARIOS Y USUARIOS*/

DELETE FROM USUARIOS;

    INSERT INTO TIPOS_USUARIO(nombre,funciones) VALUES
    ("alumnado","este susodicho especimen denominado como alumno, suele tener la intención de aprobar el curso haciendo el mínimo posible."),
    ("profesorado","este susodicho especimen denominado como profesor, suele tener la intención de suspender a todo el curso haciendo lo máximo posible por ello");

    INSERT INTO USUARIOS(nombre,dni,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
    ("Jose","25448855-F","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1);

    INSERT INTO USUARIOS(nombre,dni,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
    ("Adrián","2538445-S","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Bruno","1238445-T","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Ana","7538445-S","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1);

    INSERT INTO USUARIOS(nombre,dni,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
    ("MaryCris","1222445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,0),
    ("Miguel","1226445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Juanka","1826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Victoría","1826945-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,0);
    INSERT INTO USUARIOS(nombre,dni,apellidos,usuario,contraseña,direccion,telefono,tipo_usuario,activo) VALUES
    ("Cristían","2824445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Suplentin","2826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,1,1),
    ("Jorge","4826445-D","Gonzalez Pérez","pegope","1234","Calle de la Inquisición",697123963,2,1);

/* comprobación  SI NECESITAS BORRAR DELETE FROM USUARIOS*/

DELETE FROM ASIGNATURAS;

/* INSERT ASIGNATURAS Y CURSOS PARA BORRAR -> DELETE FROM ASIGNATURAS; */

INSERT INTO ASIGNATURAS(nombre,id_profesor1,id_profesor2) VALUES
("CSS",11,10),
("PHP",11,10),
("JAVA",11,10),
("JS",11,10),
("HTML5",11,10),
("TYPESCRIPT",11,10);
INSERT INTO ASIGNATURAS(nombre,id_profesor2) VALUES
("PYTHON",10),
("SQL-SERVER",10);
INSERT INTO ASIGNATURAS(nombre,id_profesor2) VALUES
("INGLÉS TÉCNICO",10),
("EMPLEABILIDAD",10);

/* consulta asignaturas */

SELECT * FROM CURSOS;

INSERT INTO  CURSOS(nombre,id_a1,id_a2,id_a3,id_a4,id_a5,id_a6,id_a7,id_a8) VALUES
("FULL-STACK",1,2,3,4,5,6,9,10);
INSERT INTO  CURSOS(nombre,id_a1,id_a2,id_a3) VALUES
("PROGRAMACIÓN BACK-END",3,7,8);

/* CONSULTA ASIGNATURAS */

DELETE FROM NOTAS;

/* INSERT NOTAS */ 

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(1,1,1,10),
(1,2,1,10),
(1,3,1,10),
(1,4,1,10),
(1,5,1,10),
(1,6,1,10),
(1,7,1,10),
(1,8,1,10);

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(2,1,1,10),
(2,2,1,10),
(2,3,1,10),
(2,4,1,10),
(2,5,1,10),
(2,6,1,10),
(2,7,1,10),
(2,8,1,10);


INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(3,1,1,7),
(3,2,1,7),
(3,3,1,7),
(3,4,1,7),
(3,5,1,7),
(3,6,1,7),
(3,7,1,7),
(3,8,1,7);

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(4,1,1,6),
(4,2,1,6),
(4,3,1,6),
(4,4,1,6),
(4,5,1,6),
(4,6,1,6),
(4,7,1,6),
(4,8,1,6);

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(6,1,1,9),
(6,2,1,9),
(6,3,1,9),
(6,4,1,9),
(6,5,1,9),
(6,6,1,9),
(6,7,1,9),
(6,8,1,9);

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(7,1,1,9),
(7,2,1,9),
(7,3,1,9),
(7,4,1,9),
(7,5,1,9),
(7,6,1,9),
(7,7,1,9),
(7,8,1,9);

INSERT INTO NOTAS(id_alumno,id_asignatura,id_curso,nota) VALUES
(9,1,1,8),
(9,2,1,8),
(9,3,1,8),
(9,4,1,8),
(9,5,1,8),
(9,6,1,8),
(9,7,1,8),
(9,8,1,8);

/* TODOS LOS INSERT */

SELECT * FROM USUARIOS;
SELECT * FROM ASIGNATURAS;
SELECT * FROM NOTAS;
SELECT * FROM CURSOS;
SELECT * FROM TIPOS_USUARIO;

/* todas las estructuras de las tablas */

DESCRIBE usuarios;
DESCRIBE ASIGNATURAS;
DESCRIBE NOTAS;
DESCRIBE CURSOS;
DESCRIBE TIPOS_USUARIO;


/* BÁSICA */

SELECT CURSOS.nombre
FROM CURSOS;

/* CONSULTA QUE MUESTRA nombre de curso y nombre de asignaturas */

SELECT CURSOS.nombre AS 'Curso 2023',CURSOS.id_a1,ASIGNATURAS.nombre 'Asignaturas'
FROM CURSOS, ASIGNATURAS, USUARIOS
WHERE ASIGNATURAS.id = CURSOS.id AND CURSOS.nombre LIKE 'FUL%';


SELECT COUNT(Cursos.nombre)
FROM CURSOS;

SELECT COUNT(ASIGNATURAS.nombre)
FROM ASIGNATURAS;

/* CONSULTA ASIG NOMBRES Y NOTAS */

SELECT ASIGNATURAS.nombre, NOTAS.nota
FROM ASIGNATURAS,NOTAS
WHERE notas.id_asignatura = asignaturas.id
GROUP BY ASIGNATURAS.nombre;


/* CONSULTA CURSOS NOMBRE ASIGNATURA NOMBRE y NOTAS.nota*/

DROP VIEW IF EXISTS View01infoAlumno;
CREATE VIEW IF NOT EXISTS View01infoAlumno AS
SELECT CURSOS.nombre AS 'Curso-2023',ASIGNATURAS.nombre AS Asignaturas, NOTAS.nota 
FROM ASIGNATURAS,NOTAS,CURSOS
WHERE notas.id_asignatura = asignaturas.id AND CURSOS.id=NOTAS.id_curso
GROUP BY ASIGNATURAS.nombre
;

/* consulta básica */
SELECT usuarios.nombre as Alumno
FROM USUARIOS;

/* consulta info alumno */
DROP VIEW IF EXISTS View02PongoNotas;

CREATE VIEW IF NOT EXISTS View02PongoNotas AS
SELECT USUARIOS.nombre as Alumno,ASIGNATURAS.nombre AS Asignaturas,NOTAS.nota
FROM USUARIOS,ASIGNATURAS,CURSOS,NOTAS
WHERE notas.id_asignatura = asignaturas.id AND CURSOS.id=NOTAS.id_curso
GROUP BY ASIGNATURAS.nombre;

    select * from View01infoAlumno;

    select * from View01infoAlumno;

/* AHORA TENGO MI DELETE FUNCIONAL


select count(usuarios.nombre)
from usuarios;

DELETE FROM NOTAS WHERE id_alumno = (SELECT Usuarios.id FROM USUARIOS WHERE nombre LIKE 'Jose');
*/



