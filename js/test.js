// intento para el array en typescript
var alumno = new Object();
var alumnoAdrian = {
    name: "Adrián",
    apellidos: "Sánchez Martínez",
    usuario: "adri",
    contraseña: "1234",
    foto: "foto1.png",
    direccion: "Calle Alicante, Nº1",
    telefono: [677225159],
    tipo_usuario: "alumnos",
    activo: true
};
var alumnoJose = {
    name: "Jose",
    apellidos: "González García",
    usuario: "JoseGonz",
    contraseña: "1234",
    foto: "foto2.png",
    direccion: "Calle Cavanilles 456",
    telefono: [5555678],
    tipo_usuario: "alumnos",
    activo: true
};
var alumnoJuan = {
    name: "Juan",
    apellidos: "Pérez Fernández",
    usuario: "juanpf",
    contraseña: "1234",
    foto: "foto3.png",
    direccion: "Calle Espeñetas 789",
    telefono: [5559012],
    tipo_usuario: "alumnos",
    activo: true
};
/*
EJEMPLO ARRAY
{
"arrayname":[{
"nombrecolor":"rojo",
"+datos":"datos",
"+datos":"datos"
"
},
"nombrecolor":"rojo",
"+datos":"datos",
"+datos":"datos"
"},
"nombrecolor":"rojo",
"+datos":"datos",
"+datos":"datos"
"}
}
}

// PRIMER INTENTO Y PLANTILLA PARA DATOS //
{
"usuariosArray":[
  {
    "nombre":"",
    "apellidos":"",
    "usuario":"",
    "contraseña":"",
    "foto":"",
    "direccion":"",
    "telefono":"",
    "tipo_usuario":"",
    "activo":""
]
  }
}

//////// DATOS PARA TYPESCRIPT FUNCIONA ///////////
const usuariosArray = [
  {
    "nombre":"Adrian",
    "apellidos":"Sánchez",
    "usuario": "adri",
    "contraseña": 1234,
    "foto": "foto1.jpg",
    "direccion": "Calle Alicante, Nº1",
    "telefono": 677222555,
    "tipo_usuario": "alumno",
    "activo": true
  },
  {
    "nombre": "Jose",
    "apellidos": "Sanchez",
    "usuario": "schema",
    "contraseña": 1234,
    "foto": "foto2.jpg",
    "direccion": "Calle Cavanilles, Nº1",
    "telefono": 617252555,
    "tipo_usuario": "alumno",
    "activo": true
  }
];

//AHORA VAMOS A HACER CONSTRUCTOR//

interface Usuario  {
  name: string;
  apellidos: string;
  usuario: string;
  contraseña: string;
  foto: string;
  direccion: string;
  telefono: number[];
  tipo_usuario: string;
  activo: boolean;
}

let alumnoAdrian: Usuario = {
  name: "Adrián",
  apellidos: "Sánchez Martínez",
  usuario: "adri",
  contraseña: "1234",
  foto: "foto1.png",
  direccion: "Calle Alicante, Nº1",
  telefono: [677225159],
  tipo_usuario: "alumnos",
  activo: true
};

let alumnoJose: Usuario = {
  name: "Jose",
  apellidos: "González García",
  usuario: "JoseGonz",
  contraseña: "1234",
  foto: "foto2.png",
  direccion: "Calle Cavanilles 456",
  telefono: [5555678],
  tipo_usuario: "alumnos",
  activo: true
};

let alumnoJuan: Usuario = {
  name: "Juan",
  apellidos: "Pérez Fernández",
  usuario: "juanpf",
  contraseña: "1234",
  foto: "foto3.png",
  direccion: "Calle Espeñetas 789",
  telefono: [5559012],
  tipo_usuario: "alumnos",
  activo: true
}
};
*/








"Adrián", "Sánchez", "adri", "1234", "foto1.jpg", "Calle Alicante, Nº1", "677222555", "alumno", true

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














