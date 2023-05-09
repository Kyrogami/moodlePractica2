					PreparedStatement query = conexion.prepareStatement ("Select cursos.asignatura  as asignatura, usuarios.nombre as nombre,notas.nota as nota,asignaturas.profesor as profesor "
							+ "from  asignaturas,cursos,notas,usuarios "
							+ "where notas.id_alumno = usuarios.id AND "
							+ "notas.id_asignatura = cursos.id_asignatura AND "
							+ "notas.id_curso = asignaturas.id_profesor;");
					