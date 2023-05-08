// intento para el array en typescript
let alumno = new Object();

interface alumno  { 
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
  
  let alumnoAdrian: alumno = {
    name: "Adrián",
    apellidos: "Sánchez Martínez",
    usuario: "adri",
    contraseña: "1234",
    foto: "foto1.png",
    direccion: "Calle Alicante, Nº1",
    telefono: [677225159],
    tipo_usuario: "alumnos",
    activo: true
  }
  
  let alumnoJose: alumno = {
    name: "Jose",
    apellidos: "González García",
    usuario: "JoseGonz",
    contraseña: "1234",
    foto: "foto2.png",
    direccion: "Calle Cavanilles 456",
    telefono: [5555678],
    tipo_usuario: "alumnos",
    activo: true
  }
  
  let alumnoJuan: alumno = {
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
  