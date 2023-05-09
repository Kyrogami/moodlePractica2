package test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Driver;
public class consultasSql {
	public static void main(String[] args) {
		Statement instruccion = null;
		ResultSet resultados = null;
		Connection conexion = null;
		
		try {
			/*
			subprotocolo: mysql
			host: localhost
			puerto: 3306
			base de datos: world
			usuario: workbench
			contraseña: ninguna
			*/
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/fullstack", "workbench", "1234");
			// muestra información del tipo de sistema de base de datos (MySQL)
			System.out.println("Base de datos: " +
			conexion.getMetaData().getDatabaseProductName());
		
			conexion.setAutoCommit(true);
			
			System.out.println("Versión: " + conexion.getMetaData().getDatabaseProductVersion());
			// muestra información del diver MySQL (MySQL Connector/J)
			System.out.println("Driver: " + conexion.getMetaData().getDriverName());
			// muestra información de la versión del driver MySQL (mysql-connector-java-8.0.18)
			System.out.println("Versión del driver: " + conexion.getMetaData().getDriverVersion());
			
			instruccion = conexion.createStatement();
			PreparedStatement query = conexion.prepareStatement (""
					+ "SELECT CURSOS.nombre AS 'Curso-2023',ASIGNATURAS.nombre AS Asignaturas, NOTAS.nota \r\n"
					+ "FROM ASIGNATURAS,NOTAS,CURSOS\r\n"
					+ "WHERE notas.id_asignatura = asignaturas.id AND CURSOS.id=NOTAS.id_curso\r\n"
					+ "GROUP BY ASIGNATURAS.nombre");
			

			// MI FUNCIÓN PARA INSERT
			PreparedStatement ps1 = conexion.prepareStatement ("INSERT INTO USUARIOS (dni,nombre, apellidos, usuario, contraseña, direccion, telefono, tipo_usuario, activo) VALUES (?,?,?,?,?,?,?,?,?)");
			ps1.setString(1, "24846655-V");
			ps1.setString(2, "Mariano");
			ps1.setString(3, "Rajoy Pérez");
			ps1.setString(4, "M.Rajoy");
			ps1.setString(5, "1234");
			ps1.setString(6, "Calle de la ultraderecha");
			ps1.setString(7, "697123963");
			ps1.setString(8, "1");
			ps1.setString(9, "1");
			
			PreparedStatement query1 = conexion.prepareStatement ("Select USUARIOS.nombre as nombre from  usuarios;");
			// Aquí existe m.rajoy
			
			query.execute();
			
			// MI FUNCIÓN PARA BORRAR
			PreparedStatement ps2 = conexion.prepareStatement("DELETE FROM USUARIOS WHERE nombre = ?");
			ps2.setString(1, "Jose");
			
			instruccion = conexion.createStatement();

			PreparedStatement borrarUser = conexion.prepareStatement ("SELECT USUARIOS.nombre FROM USUARIOS");
			
			//MI FUNCÓN UPDATE

			String consulta = "UPDATE USUARIOS SET nombre = ?, apellidos = ?, direccion = ? WHERE id = ?";
			PreparedStatement ps3 = conexion.prepareStatement(consulta);
			ps3.setString(1, "Nuevo nombre");
			ps3.setString(2, "Nuevos apellidos");
			ps3.setString(3, "Nueva dirección");
			ps3.setInt(4, 2); // Suponiendo que el id del usuario a actualizar es 1
			

			// Ejecutar la consulta de actualización
			int filasAfectadas = ps3.executeUpdate();

			// Verificar el resultado
			if (filasAfectadas > 0) {
			    System.out.println("Actualización exitosa");
			} else {
			    System.out.println("No se encontró el usuario a actualizar");
			}

			// Cerrar la conexión y liberar los recursos
			query.execute();
			ps1.execute();
			ps2.execute();
			ps3.execute();


			query.execute();
			//todo funciona hasta aquí vamos a hacer insert
			
			boolean funciona = query.execute();
			
			if(funciona) {
				ResultSet loteResultados = query. getResultSet();
				while (loteResultados.next()) {
					System.out.printf("\n%s \n%s\n%s\n", loteResultados.getString("ASIGNATURAS"),loteResultados.getString("Asignaturas"),loteResultados.getString("nota"));
										
				}
			}
			else
				System.out.println("La consulta no ha devuelto resultados");
						
			funciona = query1.execute();
			
			
			if(funciona) {
				ResultSet loteResultados = query1. getResultSet();
				System.out.printf("Consulta con Jose (Hay que volver a insertarlo) alumnos\n");
				while (loteResultados.next()) {
					System.out.printf("\n %s", loteResultados.getString("nombre"));
				}
			}
			else
				System.out.println("La consulta no ha devuelto resultados :(");
		
		
			//borrado jose
			funciona = borrarUser.execute();
			if(funciona) {
				ResultSet loteResultados = borrarUser.getResultSet();
				System.out.printf(" \nconsulta sin jose \n");
				while (loteResultados.next()) {
					System.out.printf("%s", loteResultados.getString("nombre"));
				}
			}
			else
				System.out.println("La consulta no ha devuelto resultados :(");
			
		
		}
		catch (SQLException e) {
			e.printStackTrace();
			}
		 finally {
			 //System.out.println("ERROR -1996 No Liberamos ");
			 try {
			 // libera los resultados
			 if (resultados != null) {
			 resultados.close();
			 }
			 // libera la instrucción
			 if (instruccion != null) {
			 instruccion.close();
			 }
			 // libera la conexión
			 if (conexion != null) {
			 conexion.close();
			 }
			
			 } catch (Exception e) {
				 e.printStackTrace();
				 }
		 }
	}
}