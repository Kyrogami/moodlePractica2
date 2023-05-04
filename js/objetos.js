// creo objeto usuario
class usuario {
    constructor(id, nombre,apellidos,usuario,contraseña,foto,direccion,telefono,tipo_usuario,activo) {
      this.id = id;
      this.nombre = nombre;
      this.apellidos = apellidos;
      this.usuario = usuario;
      this.contraseña = contraseña;
      this.foto = foto;
      this.direccion = direccion;
      this.telefono = telefono;
      this.tipo_usuario = tipo_usuario;
      this.activo = activo;
    }
  }

//creo unos objetos usuarios de alumnos 
let alumnoAdrian = new usuario(1, "Adrián", "Sánchez", "adri", "1234", "foto1.jpg", "Calle Alicante, Nº1", "677222555", "alumno", true);
let alumnoJose = new usuario(2, "Jose", "González", "JoseGonz", "1234", "foto2.jpg", "Calle Cavanilles 456", "555-5678", "alumno", true);
let alumnoPedro = new usuario(3, "Pedro", "Rodríguez", "peporro", "1234", "foto3.jpg", "Calle Espeñetas 789", "555-9012", "alumno", true);

//creo mi array 
let usuariosArray =[];

//introducimos al array
usuariosArray.push(alumnoAdrian);
usuariosArray.push(alumnoJose);
usuariosArray.push(alumnoPedro);

//voy a crear un bucle para un array
//creo un bucle; creo mi variable contador = 0; establezco condición 
for (let contador = 0; contador < usuariosArray.length;  contador++){
console.log("ID: " + usuariosArray[contador].id);
console.log("Nombre: " + usuariosArray[contador].nombre);
console.log("Apellidos: " + usuariosArray[contador].apellidos);
console.log("Usuario: " + usuariosArray[contador].usuario);
console.log("Contraseña: " + usuariosArray[contador].contraseña);
console.log("Foto: " + usuariosArray[contador].foto);
console.log("Dirección: " + usuariosArray[contador].direccion);
console.log("Teléfono: " + usuariosArray[contador].telefono);
console.log("Tipo de usuario: " + usuariosArray[contador].tipo_usuario);
console.log("Activo: " + usuariosArray[contador].activo);
}

//muestro por pantalla datos.
console.log(usuariosArray);

//Vamos a crear infoAlumno pasandole (alumno) como una variable para renombrar
class infoalumno {
    constructor(alumno)  {
      this.nombreCompleto = alumno.nombre + " " + alumno.apellidos;
      this.direccion = alumno.direccion;
      this.telefono = alumno.telefono;
      this.activo = alumno.activo;
    }
  }

  //creamos instancia de la clase infoalumno -> le pasamos como argumento alumnoAdrian
let informacionAlumnoAdrian = new infoalumno(alumnoAdrian);

//Mostramos la información por pantalla.
console.log(informacionAlumnoAdrian.nombreCompleto);
console.log(informacionAlumnoAdrian.direccion);
console.log(informacionAlumnoAdrian.telefono);
console.log(informacionAlumnoAdrian.activo);


  class cursos {
    constructor(id, nombre,id_a1,id_a2,id_a3,id_a4,id_a5,id_a6,id_a7,id_a8,id_a9,id_a10) {
      this.id = id;
      this.nombre = nombre;
      this.id_a1 = id_a1;
      this.id_a2 = id_a2;
      this.id_a3 = id_a3;
      this.id_a4 = id_a4;
      this.id_a5 = id_a5;
      this.id_a6 = id_a6;
      this.id_a7 = id_a7;
      this.id_a8 = id_a8;
      this.id_a9 = id_a9;
      this.id_a10 = id_a10;

    }
  }

  class notas {
    constructor(id, id_alumno,id_asignatura,id_curso,nota,) {
      this.id = id;
      this.id_alumno = id_alumno;
      this.id_asignatura = id_asignatura;
      this.id_curso = id_curso;
      this.nota = nota;

    }
  }

  class asignaturas {
    constructor(id, nombre,id_profesor1,id_profesor2) {
      this.id = id;
      this.nombre = nombre;
      this.id_profesor1 = id_profesor1;
      this.id_profesor2 = id_profesor2;
    }
  }

