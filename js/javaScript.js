
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
function seleccionarAddon(seleccionado, divIconoAddon, imgIconoAddon, addonID, nombre, divNombreAddon){
  var elementosAddon = document.querySelectorAll("div.hoverAddon");
  for(i=0; i<elementosAddon.length; i++){
    elementosAddon[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  //Añado campo oculto con el id del addon seleccionado
  console.log(addonID);

  //campoOcultoID = document.getElementById(divNombreAddon).querySelector("span");
  //campoOcultoID.innerText=addonID;
  console.log(nombre);
  //Cambio el titulo para que tenga el nombre del addon elegido.
  document.getElementById(divNombreAddon).innerText=nombre;
  divIconoAddon.src=imgIconoAddon;
    //Añado un campo oculto descendiente del elemento divNombreAddon
    var elemento = document.createElement('p');
    elemento.textContent = addonID;
    elemento.setAttribute('class', 'oculto');
    document.getElementById(divNombreAddon).appendChild(elemento);
}


function seleccionarAsesino(seleccionado, killerID, poderDiv, addon1Div){
  var buildAsesino = document.getElementById("buildAsesino");
  buildAsesino.style.display = "inline";
  var buildSuperviviente = document.getElementById("buildSuperviviente");
  buildSuperviviente.style.display = "none";
  var elementosAsesinos = document.querySelectorAll("div.hover-div");
  //alert(killerID);
  for(i=0; i<elementosAsesinos.length; i++){
    elementosAsesinos[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  //Limpio la lista de addons disponibles en los modeales de elegir addon!
  document.getElementById("bodyAddon1").innerHTML="";
  document.getElementById("bodyAddon2").innerHTML="";
  //Limpio los addons que habia elegidos al cambiar
  document.getElementById("seleccionAddon1").innerText="Addon 1";
  document.getElementById("seleccionAddon2").innerText="Addon 2";
  //Eliminos las imagenes
  document.getElementById("iconoPowerAddon1").src="images/powerIcon.png";
  document.getElementById("iconoPowerAddon2").src="images/powerIcon.png";

  //Abro un modal con los perks que hay en la BBDD
  
  //El poder no se puede elegir. Muestro el poder en el div coreespondiente
 
  conexion1=new XMLHttpRequest();
  conexion1.onreadystatechange = procesarDatosAsesino;
  conexion1.open('GET','getPower.php?id='+killerID, true);
  conexion1.send();

  //Los addons del poder si pueden elegirse asi que sebo traer todos los que tengan el killerID que me han pasado
  conexion2=new XMLHttpRequest();
  conexion2.onreadystatechange = procesarDatosAddon;
  conexion2.open('GET','getAddons.php?id='+ killerID, true);
  conexion2.send();
  //Tambien debo recuperar los perks

  conexion3=new XMLHttpRequest();
  conexion3.onreadystatechange = procesarDatosPerks;
  conexion3.open('GET','getKillersPerks.php', true);
  conexion3.send();
}

function procesarDatosPerks() {
    if(conexion3.readyState ==4){
      var datos=conexion3.responseText;
      perksArray = JSON.parse(datos);
      //Pendiente de refactorizar!
      var perk1Div = document.getElementById("bodyPerk1");
      var perk2Div = document.getElementById("bodyPerk2");
      var perk3Div = document.getElementById("bodyPerk3");
      var perk4Div = document.getElementById("bodyPerk4");
      //Para que no se añadan dos veces los perks
      perk1Div.innerHTML=""; 
      perk2Div.innerHTML=""; 
      perk3Div.innerHTML=""; 
      perk4Div.innerHTML=""; 
      for(i=0; i <perksArray.length; i++){
        var logo=perksArray[i].logo;
        var id=perksArray[i].id;
        var perkName= perksArray[i].killerName;
        perk1Div.innerHTML += 
        "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk1,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk1\")'>"+
        "<p>"+perksArray[i].killerName+"<p>"+
       "<img title='" +perksArray[i].killerName+"' src='"+perksArray[i].logo+"' width='100' alt=''>"+
       "</div>";
       perk2Div.innerHTML += 
       "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk2,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk2\")'>"+
       "<p>"+perksArray[i].killerName+"<p>"+
      "<img title='" +perksArray[i].killerName+"' src='"+perksArray[i].logo+"' width='100' alt=''>"+
      "</div>";
      perk3Div.innerHTML += 
      "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk3,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk3\")'>"+
      "<p>"+perksArray[i].killerName+"<p>"+
     "<img title='" +perksArray[i].killerName+"' src='"+perksArray[i].logo+"' width='100' alt=''>"+
     "</div>";
     perk4Div.innerHTML += 
     "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk4,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk4\")'>"+
     "<p>"+perksArray[i].killerName+"<p>"+
    "<img title='" +perksArray[i].killerName+"' src='"+perksArray[i].logo+"' width='100' alt=''>"+
    "</div>";

      }
    }
}

function procesarDatosAddon(){
  var addon1Div = document.getElementById("bodyAddon1");

  var addon2Div = document.getElementById("bodyAddon2");
  var divIcono2 = document.getElementById("iconoPowerAddon2");


  if(conexion2.readyState == 4){
      var datos=conexion2.responseText;
      addonArray = JSON.parse(datos);
      var AddonJsON = JSON.stringify(addonArray);
      for(i=0; i <addonArray.length; i++){
        var logo=addonArray[i].logo;
        var id=addonArray[i].id;
        var addonName= addonArray[i].killerName;
        addon1Div.innerHTML +=
        "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPowerAddon1,\""+logo+"\",\""+id+"\",\""+addonName+"\",\"seleccionAddon1\")'>"+
        "<p>"+addonArray[i].killerName+"<p>"+
       "<img title='" +addonArray[i].killerName+"' src='"+addonArray[i].logo+"' width='100' alt=''>"+
       "</div>";
       addon2Div.innerHTML +=
       "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPowerAddon2,\""+logo+"\",\""+id+"\",\""+addonName+"\",\"seleccionAddon2\")'>"+
       "<p>"+addonArray[i].killerName+"<p>"+
      "<img title='" +addonArray[i].killerName+"' src='"+addonArray[i].logo+"' width='100' alt=''>"+
      "</div>";
      }
  }
}

function procesarDatosAsesino(){
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

function mostrarAddons(){
 // alert(addonArray.length);
}

function mostrarCreacionAsesinos(imagenAsesino, imagenSuperviviente){
  document.getElementById("asesino").style.display="inline";
  document.getElementById("superviviente").style.display="none";
  imagenSuperviviente.src="images/iconoSuperviviente.png";
  imagenAsesino.src="images/iconoAsesinoGlow.png";


}

function mostrarCreacionSupervivientes(imagenSuperviviente, imagenAsesino){
  document.getElementById("asesino").style.display="none";
  document.getElementById("buildAsesino").style.display="none";
  document.getElementById("superviviente").style.display="inline";
  imagenSuperviviente.src="images/iconoSupervivienteGlow.png";
  imagenAsesino.src="images/iconoAsesino.png";
}

function seleccionarSuperviviente(seleccionado, survivorID,){
  var buildSuperviviente = document.getElementById("buildSuperviviente");
  buildSuperviviente.style.display = "inline";
  var elementosSupervivientes = document.querySelectorAll("div.hover-div");
  //alert(killerID);
  for(i=0; i<elementosSupervivientes.length; i++){
    elementosSupervivientes[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  //Limpio la lista de addons disponibles en los modeales de elegir addon!
  document.getElementById("bodySupervivienteAddon1").innerHTML="";
  document.getElementById("bodySupervivienteAddon2").innerHTML="";
  //Limpio los addons que habia elegidos al cambiar
  document.getElementById("seleccionSupervivienteAddon1").innerText="Addon 1";
  document.getElementById("seleccionSupervivienteAddon2").innerText="Addon 2";
  //Eliminos las imagenes
  document.getElementById("iconoObjetoAddon1").src="images/powerIcon.png";
  document.getElementById("iconoObjetoAddon2").src="images/powerIcon.png";

  //Abro un modal con los perks que hay en la BBDD
  
  //El poder no se puede elegir. Muestro el poder en el div coreespondiente
 
  conexion1=new XMLHttpRequest();
  conexion1.onreadystatechange = procesarDatosAsesino;
  conexion1.open('GET','getPower.php?id='+killerID, true);
  conexion1.send();
}
