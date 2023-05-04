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