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
    id_profesor2 int
 
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

