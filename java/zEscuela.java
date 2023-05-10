

public package zEscuela;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class estudiantes {

    public static void main(String[] args) {
        // Código de prueba o lógica adicional aquí

        // creo mi objeto alumno jose
        Alumno jose = new Alumno("Jose", "74523366-V", "Gonzalez Pérez", "jose123", "1234", "foto.png", 693775914, "alumno", 1);
        Alumno jorge = new Alumno("Jorge", "74523366-V", "Gonzalez Pérez", "pegope", "1234", "foto.png", 693775914, "alumno", 1);
        // borro mi objeto jose al llamar al método borrarAlumno
        jorge.borrarAlumno();
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
        public Alumno(String nombre, String dni, String apellidos, String usuario, String password, String foto, int telefono, String tipo_usuario, int activo) {
            this.nombre = nombre;
            this.dni = dni;
            this.apellidos = apellidos;
            this.usuario = usuario;
            this.password = password;
            this.foto = foto;
            this.telefono = telefono;
            this.tipo_usuario = tipo_usuario;
            this.activo = activo;
        }

        // método borrar alumno
        public void borrarAlumno() {
            Connection conexion = null;
            try {
                conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/fullstack", "workbench", "1234");
                
                // Eliminar registros relacionados en la tabla "notas SINO NO VA"
                PreparedStatement ps1 = conexion.prepareStatement("DELETE FROM notas WHERE id_alumno IN (SELECT id FROM usuarios WHERE nombre = ?)");
                ps1.setString(1, nombre);
                int filasAfectadas = ps1.executeUpdate();
                System.out.println("Registros eliminados en la tabla 'notas': " + filasAfectadas);
                
                // Eliminar el registro del alumno en la tabla "usuarios"
                PreparedStatement ps2 = conexion.prepareStatement("DELETE FROM usuarios WHERE nombre = ?");
                ps2.setString(1, nombre);
                filasAfectadas = ps2.executeUpdate();
                if (filasAfectadas > 0) {
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
    }
} {
    
}
