
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
    var elemento = document.createElement('input');
    elemento.textContent = addonID;
    elemento.setAttribute('class', 'oculto');
    elemento.setAttribute('name',divNombreAddon+"Name");
    elemento.setAttribute("value", addonID);
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
  //Añado un campo oculto con el id del asesino al formulario
  var elemento = document.createElement('input');
  elemento.textContent = killerID;
  elemento.setAttribute('class', 'oculto');
  elemento.setAttribute('name', "killerId");
  elemento.setAttribute("value", killerID);
  document.getElementById("formularioBuildAsesino").appendChild(elemento);

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
  var buildAsesino= document.getElementById("buildAsesino");
  buildSuperviviente.style.display = "none";
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
  conexion1.onreadystatechange = procesarDatosSuperviventes;
  conexion1.open('GET','getSurvivorsPerks.php?id='+survivorrID, true);
  conexion1.send();
}


function procesarDatosSupervivente(){
  var resultados = document.getElementById("power");
  if(conexion1.readyState == 4)
  {
    var datos=conexion1.responseText;
    var obj = JSON.parse(datos);
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
           var perkName= perksArray[i].survivorPerkName;
           perk1Div.innerHTML += 
           "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk1,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk1\")'>"+
           "<p>"+perksArray[i].survivorPerkName+"<p>"+
          "<img title='" +perksArray[i].survivorPerkName+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
          "</div>";
          perk2Div.innerHTML += 
          "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk2,\""+photo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk2\")'>"+
          "<p>"+perksArray[i].survivorPerkName+"<p>"+
         "<img title='" +perksArray[i].survivorPerkName+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
         "</div>";
         perk3Div.innerHTML += 
         "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk3,\""+photo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk3\")'>"+
         "<p>"+perksArray[i].survivorPerkName+"<p>"+
        "<img title='" +perksArray[i].survivorPerkName+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
        "</div>";
        perk4Div.innerHTML += 
        "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoPerk4,\""+photo+"\",\""+id+"\",\""+perkName+"\",\"seleccionPerk4\")'>"+
        "<p>"+perksArray[i].survivorPerkName+"<p>"+
       "<img title='" +perksArray[i].survivorPerkName+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
       "</div>";
   
         }
       }
       else 
  {
    resultados.innerHTML = "Cargando...";
  } 
  
}

function comprobarBuildAsesino(){
  var addon1ID;
  var addon2ID;
  var perk1ID;
  var perk2ID;
  var perk3ID;
  var perk4ID;
  var nombre;
  var mensajeError="";
  var mensajeOK="";
  var todoOK= true;
  //comprobar nombre build
  nombre=document.getElementById("nombreBuildAsesino").value;
  if(nombre==""){
    todoOK=false;
    mensajeError+="Es necesario darle un nombre a la build\n";
  }
  //comprobacion perks
  perk1= document.getElementById("seleccionPerk1");
  perk1ID=perk1.getElementsByClassName("oculto");
  perk2= document.getElementById("seleccionPerk2");
  perk2ID=perk2.getElementsByClassName("oculto");
  perk3= document.getElementById("seleccionPerk3");
  perk3ID=perk3.getElementsByClassName("oculto");
  perk4= document.getElementById("seleccionPerk4");
  perk4ID=perk4.getElementsByClassName("oculto");
  if(perk1ID[0]!=null){
    perk1ID=perk1ID[0].innerText;
    mensajeOK +="perkID1 = " + perk1ID + "\n";
  }
  else{
    mensajeError+= "No se ha seleccionado perk1\n";
    todoOK=false;
  }
  if(perk2ID[0]!=null){
    perk2ID=perk2ID[0].innerText;
    mensajeOK +="perkID2 = " + perk2ID + "\n";
  }
  else{
    mensajeError+= "No se ha seleccionado perk2\n";
    todoOK=false;
  }
  if(perk4ID[0]!=null){
    perk3ID=perk3ID[0].innerText;
    mensajeOK +="perkID3 = " + perk3ID + "\n";
  }
  else{
    mensajeError+= "No se ha seleccionado perk3\n";
    todoOK=false;
  }
  if(perk4ID[0]!=null){
    perk4ID=perk4ID[0].innerText;
    mensajeOK +="perkID4 = " + perk4ID + "\n";
  }
  else{
    mensajeError+= "No se ha seleccionado perk4\n";
  }
  if(todoOK){
     //Comprobar que todos los perks son diferentes
    if(perk1ID==perk2ID||perk1ID==perk3ID||perk1ID==perk4ID||perk2ID==perk3ID||perk2ID==perk4ID||perk3ID==perk4ID){
      todoOK=false;
      mensajeError="Los perks no pueden estar repetidos."
      console.log(mensajeError);
    }
  } 
  //COMPROBACION ADDONS
  addon1= document.getElementById("seleccionAddon1");
  addon1ID=addon1.getElementsByClassName("oculto");
  addon2= document.getElementById("seleccionAddon2");
  addon2ID=addon2.getElementsByClassName("oculto");
  if(addon1ID[0]!=null){
    addon1ID=addon1ID[0].innerText;
    mensajeOK +="Addon1ID = " + addon1ID + "\n";
    console.log(addon1ID);
  }
  else{
    mensajeError+= "No se ha seleccionado addon 1\n";
    todoOK=false;
  }
  if(addon2ID[0]!=null){
    addon2ID=addon2ID[0].innerText;
    mensajeOK +="Addon2ID = " + addon2ID + "\n";
    console.log(addon2ID);
  }
  else{
    mensajeError+= "No se ha seleccionado addon 2\n";
    todoOK=false;
  }  
  if(todoOK){
     //Comprobar que  los addons son diferentes
   if(addon1ID==addon2ID){
      todoOK=false;
      mensajeError +="Los addons no pueden estar repetidos."
      console.log(mensajeError);
    }
  } 
console.log("comprobar build Asesino: " + todoOK);
if(!todoOK)
  console.log(mensajeError);
return todoOK;
}

/////////////////////VISUALIZACION GUIAS/////////////////////////

function mostrarGuiasAsesinos(imagenAsesino, imagenSuperviviente){
  document.getElementById("ocultoAsesino").style.display="inline";
  document.getElementById("asesino").style.display="inline";
  document.getElementById("ocultoSuperviviente").style.display="none";
  document.getElementById("superviviente").style.display="none";
  imagenSuperviviente.src="images/iconoSuperviviente.png";
  imagenAsesino.src="images/iconoAsesinoGlow.png";
}

function mostrarGuiasSupervivientes(imagenSuperviviente, imagenAsesino){
  document.getElementById("ocultoAsesino").style.display="none";
  document.getElementById("asesino").style.display="none";
  document.getElementById("superviviente").style.display="inline";
  document.getElementById("ocultoSuperviviente").style.display="inline";
  imagenSuperviviente.src="images/iconoSupervivienteGlow.png";
  imagenAsesino.src="images/iconoAsesino.png";
}


function recuperarGuiasAsesino(elemento, killerID){
  console.log("Se recuperan las guias para el asesino con ID: " + killerID);
  document.getElementById("ocultoAsesino").display="inline";

}