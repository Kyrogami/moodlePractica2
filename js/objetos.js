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
  // Creo una funcion
    toArray(){return Object.values(this)}
  }

//creo unos objetos usuarios de alumnos 
let alumnoAdrian = new usuario(1, "Adrián", "Sánchez", "adri", "1234", "foto1.jpg", "Calle Alicante, Nº1", "677222555", "alumno", true);
let alumnoJose = new usuario(2, "Jose", "González", "JoseGonz", "1234", "foto2.jpg", "Calle Cavanilles 456", "555-5678", "alumno", true);
let alumnoPedro = new usuario(3, "Pedro", "Rodríguez", "peporro", "1234", "foto3.jpg", "Calle Espeñetas 789", "555-9012", "alumno", true);


const mysql = require('mysql2');


//Creo mi función crea usuarios que recibe como parametro de entrada el construcor usuario
function crearUsuario(usuario) {
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'usuario',
    password: 'contraseña',
    database: 'basededatos'
  });

  connection.query(
    'INSERT INTO usuarios (id, nombre, apellidos, usuario, contraseña, foto, direccion, telefono, tipo_usuario, activo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    usuario.toArray(),
    (error, results) => {
      if (error) throw error;
      console.log('Usuario creado');
    }
  );

  connection.end();
}

//creo mi array 
let usuariosArray =[];

//introducimos al array la función con los valores agregando la funcion to array 
//el cual devuelve los valores del constuctor
usuariosArray.push(alumnoAdrian.toArray());
usuariosArray.push(alumnoJose.toArray());
usuariosArray.push(alumnoPedro.toArray());

// Convertimos los objetos usuario a JSON
let alumnoAdrianJSON = JSON.stringify(alumnoAdrian);
let alumnoJoseJson = JSON.stringify(alumnoJose);
let alumnoPedroJson = JSON.stringify(alumnoPedro);


// Imprimimos el array
console.log(usuariosArray);

//realizo un bucle más sencillo aprovechandome de la funcion to array
for (let contador = 0; contador < usuariosArray.length; contador++) {
  console.log(usuariosArray[contador]);
}

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


  /* Vamos a powershell 

Hay que tener instalado node primero
1. -> npm install -g typescript // npm install --save-dev typescript //Instalamos
2. -> npm init //iniciamos.
3. -> tsc -v // comprobar version.

Ya  tenemos listo typeScript
*/ 