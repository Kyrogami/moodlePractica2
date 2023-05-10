function huella(consumo,kms){
    let valor;
    valor=(consumo*(kms/100))*0,02;
    return valor;
}

function consumo (consumo,kms){
    let valor=0;
    valor(consumo*(km/100));
    return valor;
}

function cambiotextos(valor){
    let cambiado;

    cambiado=valor.replaceAll('a','4');
    cambiado=valor.replaceAll('e','3');
    cambiado=valor.replaceAll('i','1');
    cambiado=valor.replaceAll('o','0');
    cambiado=valor.replaceAll('u','5');
    return cambiado;

}


function texto