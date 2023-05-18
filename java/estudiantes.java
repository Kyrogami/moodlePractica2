package zEscuela;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class estudiantes {

    public static void main(String[] args) {
        // Código de prueba o lógica adicional aquí

        // creo mi objeto alumno jose
        Alumno maricris = new Alumno("MaryCris");
        Alumno juan = new Alumno("Juanka");
        Alumno miguel = new Alumno("Miguel");
        Alumno jorge = new Alumno("jorge");
        // borro mi objeto jose al llamar al método borrarAlumno
        jorge.borrarAlumno();
        juan.borrarAlumno();
    }

    static class Alumno {
        // atributos usuarios
        private String nombre;
        private String dni;
        private String apellidos;
        private String usuario;
        private String password;
        private String foto;
        private String direccion;
        private int telefono;
        private String tipo_usuario;
        private int activo;

        // constructor
        public Alumno(String nombre) {
            this.nombre = nombre;
        }

     // método borrar alumno
        public void borrarAlumno() {
            Connection conexion = null;
            try {
                conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/fullstack", "workbench", "1234");
                
             // Eliminar registros relacionados en la tabla "notas caso especial JORGE NUNCA DEBIO SER USUARIO sino ALUMNO Y PROFESOR AAAAAAAAAAAAAAAAAAAAAAAhhhhhhh"
                PreparedStatement ps1 = conexion.prepareStatement(""
                		+ "DELETE "
                		+ "FROM notas "
                		+ "WHERE id_curso IN "
                			+ "(SELECT id "
                			+ "FROM cursos "
                			+ "WHERE id_a1 IN "
                				+ "(SELECT id "
                				+ "FROM asignaturas "
                				+ "WHERE id_profesor1 IN "
                				+ "(SELECT id FROM usuarios WHERE nombre = ?)))");
                ps1.setString(1, nombre);
                int filasAfectadasNotas = ps1.executeUpdate();
                System.out.println("Registros eliminados en la tabla 'notas': " + filasAfectadasNotas);

                // Eliminar registros relacionados en la tabla "cursos COMO ES USUARIO TIENE ASIGNADO CURSOSSSSSSSSSSSSSSS AAAAAAAAAAAAAAH"
                PreparedStatement ps2 = conexion.prepareStatement(""
                		+ "DELETE FROM cursos WHERE id_a1 IN (SELECT id FROM asignaturas WHERE id_profesor1 IN (SELECT id FROM usuarios WHERE nombre = ?))");
                ps2.setString(1, nombre);
                int filasAfectadasCursos = ps2.executeUpdate();
                System.out.println("Registros eliminados en la tabla 'cursos': " + filasAfectadasCursos);
                
                // Eliminar registros relacionados en la tabla "asignaturas Y CLARO TB TIENE ASIGNATURAS ASJDASJDAJSJDASJDA"
                PreparedStatement ps3 = conexion.prepareStatement("DELETE FROM asignaturas WHERE id_profesor1 IN (SELECT id FROM usuarios WHERE nombre = ?)");
                ps3.setString(1, nombre);
                int filasAfectadasAsignaturas = ps3.executeUpdate();
                System.out.println("Registros eliminados en la tabla 'asignaturas': " + filasAfectadasAsignaturas);
                
                // Eliminar el registro del alumno en la tabla "usuarios"
                PreparedStatement ps4 = conexion.prepareStatement("DELETE FROM usuarios WHERE nombre = ?");
                ps4.setString(1, nombre);
                int filasAfectadasUsuarios = ps4.executeUpdate();
                
                //COMPROBAMOS ERRORES para saber si alumno es borrado y un mensaje en casod e que no
                if (filasAfectadasUsuarios > 0) {
                    System.out.println("El alumno ha sido borrado correctamente.");
                } else {
                    System.out.println("No se encontró ningún alumno con el nombre '" + nombre + "'.");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (conexion != null) {
                    try {
                        conexion.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        
        // método EDITAR alumno
        public void editarAlumno() {
        	 Connection conexion = null;
             try {
                 conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/fullstack", "workbench", "1234");
                 
         		String consulta = "UPDATE USUARIOS SET nombre = ? WHERE id = ?";
    			PreparedStatement ps3 = conexion.prepareStatement(consulta);
    			ps3.setString(1, "Nuevo nombre");
    			ps3.setInt(1, 2); // Suponiendo que el id del usuario a actualizar es 1
    			//COMPROBAMOS ERRORES para saber si alumno es borrado y un mensaje en casod e que no
    		            	
             } catch (SQLException e) {
                 e.printStackTrace();
             } finally {
                 if (conexion != null) {
                     try {
                         conexion.close();
                     } catch (SQLException e) {
                         e.printStackTrace();
                     }
                 }
             }
         }
         
    			
    }
}
        

