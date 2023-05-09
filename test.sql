	PreparedStatement ps2 = conexion.prepareStatement ("INSERT INTO CURSOS (nombre) VALUES (?)");
			ps2.setString(1, "FullStack");
			
			PreparedStatement ps3 = conexion.prepareStatement ("INSERT INTO ASIGNATURAS (nombre, id_profesor1) VALUES (?)");
			ps3.setString(1, "Jorge");
			ps3.setString(1, "10");
			
			PreparedStatement ps4 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps4.setString(1, "1");
			ps4.setString(2, "2");
			ps4.setString(3, "1");
			ps4.setString(4, "7");
			
			PreparedStatement ps5 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps5.setString(1, "1");
			ps5.setString(2, "3");
			ps5.setString(3, "1");
			ps5.setString(4, "7");
			
			PreparedStatement ps6 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "3");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps7 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "4");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps8 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "5");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps9 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "6");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps10 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "7");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps11 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps6.setString(1, "1");
			ps6.setString(2, "8");
			ps6.setString(3, "1");
			ps6.setString(4, "7");
			
			PreparedStatement ps12 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps12.setString(1, "2");
			ps12.setString(2, "5");
			ps12.setString(3, "2");
			ps12.setString(4, "8");
			
			PreparedStatement ps13 = conexion.prepareStatement ("INSERT INTO NOTAS (id_alumno,id_asignatura,id_curso,nota) VALUES (?,?,?,?)");
			ps13.setString(1, "2");
			ps13.setString(2, "6");
			ps13.setString(3, "2");
			ps13.setString(4, "6");
			
			ps1.execute();
			ps2.execute();
			ps3.execute();
			ps4.execute();
			ps5.execute();
			ps6.execute();
			ps7.execute();
			ps8.execute();
			ps9.execute();
			ps10.execute();
			ps11.execute();
			ps12.execute();
			ps13.execute();