
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

/* $(function () {
  $('[data-toggle="tooltip"]').tooltip()
  }) */

function seleccionarAsesino(seleccionado, killerID, poderDiv){
  var buildAsesino = document.getElementById("buildAsesino");
  buildAsesino.style.display = "inline";
  var elementosAsesinos = document.querySelectorAll("div.hover-div");
  //alert(killerID);
  for(i=0; i<elementosAsesinos.length; i++){
    elementosAsesinos[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  //Abro un modal con los perks que hay en la BBDD
  
  //El poder no se puede elegir. Muestro el poder en el div coreespondiente
 
  conexion1=new XMLHttpRequest();
  conexion1.onreadystatechange = procesarDatos;
  conexion1.open('GET','getPower.php?id='+killerID, true);
  conexion1.send();

  //Los addons del poder si pueden elegirse
  
}

function procesarDatos(){
  var resultados = document.getElementById("power");
  if(conexion1.readyState == 4)
  {
    var datos=conexion1.responseText;
    var obj = JSON.parse(datos);
    powerDesc=obj.powerDesc;
    powerName=obj.name;
    resultados.innerHTML = 
    "<div class='row'>"+
    "<h3>"+obj.name+"<h3>"+
   "</div>"+
   "<div class='row'>"+
   "<img class='poder' src='"+obj.powerLogo+"' width='150' alt='' onclick='mostrarPowerDesc()' data-toggle='modal' data-target='#powerDesc'>"+
   "</div>"+
   "</div>";
  } 
  else 
  {
    resultados.innerHTML = "Cargando...";
  }
}

function mostrarPowerDesc(){
  parrafoPoder=document.getElementById("descripcionPoder");
  parrafoPoder.innerHTML = powerDesc;
  nombrePoder=document.getElementById("nombrePoder");
  nombrePoder.innerHTML = powerName;
  
}

function mostrarListaPerks(elemento){
  alert("Mostrar la lista de perks al hacer click");
}
