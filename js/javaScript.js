function comprobarObligatorio(valor){
  var ok=false;
  if(valor!=""){
    ok=true;
  }
  return ok;
}

function comprobarCadena(cadena, minimo, maximo){
var ok=true;
var longitud=cadena.length;
if(longitud<minimo||longitud>maximo)
  ok=false;
return ok;
}

function mostrarError(elementoError){
  elementoError.style.display="block";

}

function ocultarError(elementoError){
  elementoError.style.display="none";

}

function validarEmail(email){
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))*@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}


function comprobarNumero(numero, minimo, maximo){
  var ok=false;
  if(numero>=minimo&&numero<=maximo){
    ok=true;
  }
  return ok;
}


function comprobarCheckBox(elementoCheckBox){
  var ok=false;
  if(elementoCheckBox.checked){
    ok=true;
  }
  return ok;
}
