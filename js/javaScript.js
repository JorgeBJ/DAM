
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

function seleccionarObjeto(seleccionado, divIcono, imgIcono, itemID, nombre, divNombre, itemType){
  var elementosAddon = document.querySelectorAll("div.hoverAddon");
  for(i=0; i<elementosAddon.length; i++){
    elementosAddon[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  //Añado campo oculto con el id del addon seleccionado
  console.log(itemID);

  //campoOcultoID = document.getElementById(divNombreAddon).querySelector("span");
  //campoOcultoID.innerText=addonID;
  console.log(nombre);
  //Cambio el titulo para que tenga el nombre del addon elegido.
  document.getElementById(divNombre).innerText=nombre;
  divIcono.src=imgIcono;
    //Añado un campo oculto descendiente del elemento divNombreAddon
    var elemento = document.createElement('input');
    elemento.textContent = itemID;
    elemento.setAttribute('class', 'oculto');
    elemento.setAttribute('name',"itemID");
    elemento.setAttribute("value", itemID);
    document.getElementById(divNombre).appendChild(elemento);
    var elemento2 = document.createElement('input');
    elemento2.setAttribute('class', 'oculto');
    elemento2.setAttribute('name', "itemType");
    elemento2.setAttribute("value", itemType);
    document.getElementById(divNombre).appendChild(elemento2);
    //Al seleccionar objeto tengo que recuperar de la BBDD los addons que hay para ese tipo de objeto para que sean seleccionables en el modal correspondiente.
    conexion1=new XMLHttpRequest();
  conexion1.onreadystatechange = recuperarItemAddons;
  conexion1.open('GET','getItemAddons.php?id='+itemType, true);
  conexion1.send();
}

function recuperarItemAddons() {
  if(conexion1.readyState ==4){
    var datos=conexion1.responseText;
    addonsArray = JSON.parse(datos);
    console.log(addonsArray.length);
    //Pendiente de refactorizar!
    var addon1Div = document.getElementById("bodySurvivorObjetoAddon1");
    var addon2Div = document.getElementById("bodySurvivorObjetoAddon2");
    //Para que no se añadan dos veces los perks
    addon1Div.innerHTML=""; 
    addon2Div.innerHTML=""; 
    for(i=0; i <addonsArray.length; i++){
      var logo=addonsArray[i].logo;
      var id=addonsArray[i].id;
      var itemAddonName= addonsArray[i].itemAddonName;
      addon1Div.innerHTML += 
      "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoObjetoAddon1,\""+logo+"\",\""+id+"\",\""+itemAddonName+"\",\"seleccionObjetoAddon1\")'>"+
      "<p>"+addonsArray[i].itemAddonName+"<p>"+
     "<img title='" +addonsArray[i].itemAddonName+"' src='"+addonsArray[i].logo+"' width='100' alt=''>"+
     "</div>";
     addon2Div.innerHTML += 
     "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoObjetoAddon2,\""+logo+"\",\""+id+"\",\""+itemAddonName+"\",\"seleccionObjetoAddon2\")'>"+
     "<p>"+addonsArray[i].itemAddonName+"<p>"+
    "<img title='" +addonsArray[i].itemAddonName+"' src='"+addonsArray[i].logo+"' width='100' alt=''>"+
    "</div>";
    }
  }
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
  document.getElementById("buildSuperviviente").style.display="none";
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

function seleccionarSuperviviente(seleccionado, survivorID){
  var buildSuperviviente = document.getElementById("buildSuperviviente");
  buildSuperviviente.style.display = "inline";
  var buildAsesino= document.getElementById("buildAsesino");
  var elementosSupervivientes = document.querySelectorAll("div.hover-div");
  //alert(killerID);
  for(i=0; i<elementosSupervivientes.length; i++){
    elementosSupervivientes[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
    //Añado un campo oculto con el id del superviviente al formulario
    var elemento = document.createElement('input');
    elemento.textContent = killerID;
    elemento.setAttribute('class', 'oculto');
    elemento.setAttribute('name', "survivorID");
    elemento.setAttribute("value", survivorID);
    document.getElementById("formularioBuildSuperviviente").appendChild(elemento);



  //Limpio la lista de addons disponibles en los modeales de elegir addon!
  document.getElementById("seleccionObjetoAddon1").innerHTML="Addon 1";
  document.getElementById("seleccionObjetoAddon2").innerHTML="Addon 2";
  //Limpio los addons que habia elegidos al cambiar
 // document.getElementById("seleccionSupervivienteAddon1").innerText="Addon 1";
  //document.getElementById("seleccionSupervivienteAddon2").innerText="Addon 2";
  //Eliminos las imagenes
  //document.getElementById("iconoObjetoAddon1").src="images/powerIcon.png";
  //document.getElementById("iconoObjetoAddon2").src="images/powerIcon.png";

  //Abro un modal con los perks que hay en la BBDD
  
  //Recupero la lista de obejtos de la BBDD y los añado al modal correspondiente

  conexion2=new XMLHttpRequest();
  conexion2.onreadystatechange = procesarDatosObjetos;
  conexion2.open('GET','getItems.php', true);
  conexion2.send();

  //Los addons del poder si pueden elegirse asi que sebo traer todos los que tengan el killerID que me han pasado
  
 
  conexion1=new XMLHttpRequest();
  conexion1.onreadystatechange = procesarDatosSupervivente;
  conexion1.open('GET','getSurvivorsPerks.php?id='+survivorID, true);
  conexion1.send();
}

function procesarDatosObjetos(){
  if(conexion2.readyState == 4)
  {
    var datos=conexion2.responseText;
    var itemsArray = JSON.parse(datos);
    var itemsDiv = document.getElementById("bodySurvivorObjeto");
    //lo reinicio para que no se añadan cada vez que se pulsa
    itemsDiv.innerHTML="";
    for(i=0; i <itemsArray.length; i++){
      var logo=itemsArray[i].logo;
      var id=itemsArray[i].id;
      var itemName= itemsArray[i].itemName;
      var itemType = itemsArray[i].itemType;
      itemsDiv.innerHTML += 
      "<div class='col-4 hoverAddon' onclick='seleccionarObjeto(this,iconoObjeto,\""+logo+"\",\""+id+"\",\""+itemName+"\",\"seleccionObjeto\",\""+itemType+"\")'>"+
      "<p>"+itemsArray[i].itemName+"<p>"+
     "<img title='" +itemsArray[i].itemName+"' src='"+ itemsArray[i].logo+"' width='100' alt=''>"+
     "</div>";
    }
}
}

function procesarDatosSupervivente(){
  var objetos = document.getElementById("objeto");
  if(conexion1.readyState == 4)
  {
    var datos=conexion1.responseText;
    var perksArray = JSON.parse(datos);
         //Pendiente de refactorizar!
         var perk1Div = document.getElementById("bodySurvivorPerk1");
         var perk2Div = document.getElementById("bodySurvivorPerk2");
         var perk3Div = document.getElementById("bodySurvivorPerk3");
         var perk4Div = document.getElementById("bodySurvivorPerk4");
         //Para que no se añadan dos veces los perks
         perk1Div.innerHTML=""; 
         perk2Div.innerHTML=""; 
         perk3Div.innerHTML=""; 
         perk4Div.innerHTML=""; 
         for(i=0; i <perksArray.length; i++){
           var logo=perksArray[i].photo;
           var id=perksArray[i].id;
           var perkName= perksArray[i].perk_name;
           perk1Div.innerHTML += 
           "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoSupervivientePerk1,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionSupervivientePerk1\")'>"+
           "<p>"+perksArray[i].perk_name+"<p>"+
          "<img title='" +perksArray[i].perk_name+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
          "</div>";
          perk2Div.innerHTML += 
          "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoSupervivientePerk2,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionSupervivientePerk2\")'>"+
          "<p>"+perksArray[i].perk_name+"<p>"+
         "<img title='" +perksArray[i].perk_name+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
         "</div>";
         perk3Div.innerHTML += 
         "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoSupervivientePerk3,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionSupervivientePerk3\")'>"+
         "<p>"+perksArray[i].perk_name+"<p>"+
        "<img title='" +perksArray[i].perk_name+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
        "</div>";
        perk4Div.innerHTML += 
        "<div class='col-4 hoverAddon' onclick='seleccionarAddon(this,iconoSupervivientePerk4,\""+logo+"\",\""+id+"\",\""+perkName+"\",\"seleccionSupervivientePerk4\")'>"+
        "<p>"+perksArray[i].perk_name+"<p>"+
       "<img title='" +perksArray[i].perk_name+"' src='"+perksArray[i].photo+"' width='100' alt=''>"+
       "</div>";
   
         }

       }
       
  {
    
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

////RECUPERACION BUILD ASESINOS////
function recuperarGuiasAsesino(seleccionado, killerID){

  var elementosAsesinos = document.querySelectorAll("div.hover-div");
  for(i=0; i<elementosAsesinos.length; i++){
    elementosAsesinos[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  var tabla = document.getElementById("bodyAsesino");
  //Para repintar la tabla cada vez que se recuperen nuevos 
  tabla.innerText="";
  console.log("Se recuperan las guias para el asesino con ID: " + killerID);
  document.getElementById("ocultoAsesino").display="inline";  
    
  conexion2=new XMLHttpRequest();
  conexion2.onreadystatechange = setTimeout(recuperarAddonsKillersBuilds, 100);
  conexion2.open('GET','getAddonsKillersBuilds.php?id='+ killerID, true);
  conexion2.send();

  conexion=new XMLHttpRequest();
  conexion2.onreadystatechange = setTimeout(recuperarPerksKillersBuilds, 100);

  conexion.open('GET','getKillersBuilds.php?id='+ killerID, true);
  conexion.send();
}

function recuperarAddonsKillersBuilds(){
  if(conexion2.readyState == 4)
  {
    var datos=conexion2.responseText;
    var buildsArray = JSON.parse(datos);
    console.log(buildsArray)
    //La tabla la tengo llenar con los datos que he recuperado
         var tabla = document.getElementById("bodyAsesino");
         //Para repintar la tabla cada vez que se recuperen nuevos 
        //tabla.innerText="";
        var nombreBuild = buildsArray[0][0];
        var fila   = tabla.insertRow(-1);
        var celda  = fila.insertCell(0);
        celda.innerText=buildsArray[0].build_name;
         for(i=0; i <buildsArray.length;i++ ){
            if(nombreBuild==buildsArray[i].build_name){
              console.log("Creo una celda de la tabla con los datos de " + nombreBuild)
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i].logo   + "' width='50' alt=''>";
            }
            else {
              nombreBuild=buildsArray[i][0];
              var fila   = tabla.insertRow(-1);
              var celda  = fila.insertCell(0);
              celda.innerText=buildsArray[i].build_name;
              //Tengo que añadirlo por que si no falta la ultima celda de cada build menos de la primera
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i].logo   + "' width='50' alt=''>";
            }
          }
  }      
}

function recuperarPerksKillersBuilds(){
  if(conexion.readyState == 4)
  {
    var datos=conexion.responseText;
    var buildsArray = JSON.parse(datos);
    console.log(buildsArray)
    //La tabla la tengo llenar con los datos que he recuperado
        var filas = document.getElementById("tablaKillers").rows;
        //En la cada fila tengo que añadir los 4 perks que tiene cada build
        for(j=1; j<filas.length;j++)
         for(i=0; i <4;i++ ){
              var celda  = filas[j].insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i].logo   + "' width='50' alt=''>";
            }
           
   }
}


function recuperarPerksKillersBuilds_OLD(){
  if(conexion.readyState == 4)
  {
    var datos=conexion.responseText;
    var buildsArray = JSON.parse(datos);
    console.log(buildsArray)
    //La tabla la tengo llenar con los datos que he recuperado
        var filas = document.getElementById("tablaKillers").rows;
        var nombreBuild = buildsArray[0][0];
        //En la primera fila tengo que añadir los 4 perkls que tiene cada build
         for(i=0; i <buildsArray.length;i++ ){
            if(nombreBuild==buildsArray[i].build_name){
              console.log("Creo una celda de la tabla con los datos de " + nombreBuild)
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i].logo   + "' width='50' alt=''>";
            }
            else {
              nombreBuild=buildsArray[i][0];
              var fila   = tabla.insertRow(-1);
              var celda  = fila.insertCell(0);
              celda.innerText=buildsArray[i].build_name;
              //Tengo que añadirlo por que si no falta la ultima celda de cada build menos de la primera
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i].logo   + "' width='50' alt=''>";
            }
          }

        //  var fila   = tabla.insertRow(0);
          // Inserta una celda en la fila, en el índice 0
         // var celda  = fila.insertCell(0);
         // celda.innerHTML =  "<img id='imagenBuild' title='' src='"+     + "' width='50' alt=''>";
  }      
}

//recuperacion builds superviventes//

function recuperarGuiasSuperviviente(seleccionado, supervivienteID){
  
  var elementosAsesinos = document.querySelectorAll("div.hover-div");
  for(i=0; i<elementosAsesinos.length; i++){
    elementosAsesinos[i].classList.remove("seleccionado");
  }
  seleccionado.classList.add("seleccionado");
  var tabla = document.getElementById("bodySupervivientes");
  //Para repintar la tabla cada vez que se recuperen nuevos 
  tabla.innerText="";
  console.log("Se recuperan las guias para el superviviente con ID: " + supervivienteID);
  document.getElementById("ocultoSuperviviente").display="inline";  
  
  conexion3=new XMLHttpRequest();
  conexion3.onreadystatechange = setTimeout(recuperarItemSupervivienteBuilds, 100);
  conexion3.open('GET','getItemSupervivientesBuilds.php?id='+ supervivienteID, true);
  conexion3.send();
 
  conexion2=new XMLHttpRequest();
  conexion2.onreadystatechange = setTimeout(recuperarAddonsSupervivienteBuilds, 100);
  conexion2.open('GET','getAddonsSupervivientesBuilds.php?id='+ supervivienteID, true);
  conexion2.send();

  conexion=new XMLHttpRequest();
  conexion.onreadystatechange = setTimeout(recuperarPerksSupervivienteBuilds, 100);

  conexion.open('GET','getPerksSupervivientesBuilds.php?id='+ supervivienteID, true);
  conexion.send(); 
}

function recuperarItemSupervivienteBuilds(){
  if(conexion3.readyState == 4)
  {
    var datos=conexion3.responseText;
    var buildsArray = JSON.parse(datos);
    console.log(buildsArray)
    //La tabla la tengo llenar con los datos que he recuperado
         var tabla = document.getElementById("bodySupervivientes");
         //Para repintar la tabla cada vez que se recuperen nuevos 
        //tabla.innerText="";
        var nombreBuild = buildsArray[0].survivorBuildName;
        console.log(nombreBuild);
        var fila   = tabla.insertRow(0);
        var celda  = fila.insertCell(0);
        celda.innerText=buildsArray[0].survivorBuildName;
         for(i=0; i <buildsArray.length;i++ ){
            if(nombreBuild==buildsArray[i].survivorBuildName){
              console.log("Creo una celda de la tabla con los datos de " + nombreBuild)
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i+j*2-2].logo   + "' width='50' alt=''>";
            }
            else {
              nombreBuild=buildsArray[i][0];
              var fila   = tabla.insertRow(-1);
              var celda  = fila.insertCell(0);
              celda.innerText=buildsArray[i].survivorBuildName;
              //Tengo que añadirlo por que si no falta la ultima celda de cada build menos de la primera
              var celda  = fila.insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i+j*2-2].logo   + "' width='50' alt=''>";
            }
          }
  }      
}

function recuperarAddonsSupervivienteBuilds(){
  if(conexion2.readyState == 4)
  {
    var datos=conexion2.responseText;
    var buildsArray = JSON.parse(datos);
    console.log("AddonsArray:");
    console.log(buildsArray)
    //La tabla la tengo llenar con los datos que he recuperado
        var filas = document.getElementById("tablaSurvivors").rows;
        //En la cada fila tengo que añadir los 2 addons que tiene cada build
        for(j=1; j<filas.length;j++)
         for(i=0; i <2;i++ ){
              var celda  = filas[j].insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i+j*2-2].logo   + "' width='50' alt=''>"; 
            }
           
   }
}

function recuperarPerksSupervivienteBuilds(){
  if(conexion.readyState == 4)
  {
    var datos=conexion.responseText;
    var buildsArray = JSON.parse(datos);
    console.log(buildsArray.length);
    console.log(buildsArray);
    //La tabla la tengo llenar con los datos que he recuperado
        var filas = document.getElementById("tablaSurvivors").rows;
        //En la cada fila tengo que añadir los 4 perks que tiene cada build
        for(j=1; j<filas.length;j++)
         for(i=0; i <4;i++ ){
              var celda  = filas[j].insertCell(-1); //-1 la inserta al final
              celda.innerHTML =  "<img id='imagenBuild' title='' src='"+  buildsArray[i+j*2-2].photo   + "' width='50' alt=''>";
            }
           
   }
}



function comprobarBuildSuperviviente(){
  var itemID;
  var addon1ID;
  var addon2ID;
  var perk1ID;
  var perk2ID;
  var perk3ID;
  var perk4ID;
  var nombre;
  var texto;
  var mensajeError="";
  var mensajeOK="Build superviviente correcta";
  var todoOK= true;
  //comprobar nombre build
  nombre=document.getElementById("nombreBuildSuperviviente").value;
  if(nombre==""){
    todoOK=false;
    mensajeError+="Es necesario darle un nombre a la build\n";
  }
  //comprobacion perks
  perk1= document.getElementById("seleccionSupervivientePerk1");
  perk1ID=perk1.getElementsByClassName("oculto");
  perk2= document.getElementById("seleccionSupervivientePerk2");
  perk2ID=perk2.getElementsByClassName("oculto");
  perk3= document.getElementById("seleccionSupervivientePerk3");
  perk3ID=perk3.getElementsByClassName("oculto");
  perk4= document.getElementById("seleccionSupervivientePerk4");
  perk4ID=perk4.getElementsByClassName("oculto");
  console.log(perk1ID);
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
  addon1= document.getElementById("seleccionObjetoAddon1");
  addon1ID=addon1.getElementsByClassName("oculto");
  addon2= document.getElementById("seleccionObjetoAddon2");
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
console.log("comprobar build superviviente: " + todoOK);
if(!todoOK)
  console.log(mensajeError);
return todoOK;
}
