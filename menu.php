<head>
        <!-- meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="js/javaScript.js"></script>
        <!-- Bootstrap y CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
    
        <link href="css/all.css" rel="stylesheet"> <!--  Para los iconos de fontawesome -->
    
        <link rel="shortcut icon" href="images/ico.ico" type="image/x-icon" />
    
    
        <title>Proyecto</title>
  <script>   

  function comprobarObligatorioInline(elemento, elementoError){
      var valor=elemento.value;
      var ok=comprobarObligatorio(valor);
        if(!ok){
          mostrarError(elementoError);
        }
      else {
          ocultarError(elementoError);
          }
          return ok;
      }

      function comprobarCadenaInline(elemento, elementoError, min, max){
      var cadena= elemento.value;
      var ok=comprobarCadena(cadena, min, max);
      //Este paso es para evitar que si está sin valores salte el error. SI es obligatorio lo controlo con otra funcion
      if(cadena.length==0)
        ok=true;
      if(!ok){
            mostrarError(elementoError);
      }
      else {
          ocultarError(elementoError);
      }
      return ok;
    }

  function validarEmailInline(elemento, elementoError, min, max){
    var email=elemento.value;
    var ok=false;
    if(email.length==0){
      ok=false;
      return ok;
    }
    // if(!ok){
    //   ok=comprobarCadena(email, min, max);
    // }
    // if(!ok){
    //   mostrarError(elementoError);
    // }
    else{
      ok=validarEmail(email);
      if(!ok){
        mostrarError(elementoError);
      }
      else{
        ocultarError(elementoError);
      }
    }
    return ok;
  }

  </script>
    <div class="container-fluid">
      <header>
        <div class="row">
          <div class="col-12">
            <nav class="navbar navbar-expand-lg">
              <a class="navbar-brand" href="index.php">  <img src="images/logoDBDMETA.png" width="250" alt=""></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu">
                <span class="fas fa-bars"></span>
              </button>
            <div class="navbar-collapse collapse" id="menu">
              <div class="col-sm-10">
                <ul class="navbar-nav justify-content-center">
                  <li class="nav-item">
                    <a class="nav-link active" href="crearGuia.php"><img src="images/iconoGuiaCirculo.png" width="40" alt="">&nbsp;&nbsp;Crear guía</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="guias.php"><img src="images/iconoGuiasCirculo.png" width="40" alt="">&nbsp;&nbsp;Guías</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> <img src="images/iconoKillerpng" width="40" alt="">&nbsp;&nbsp;Asesinos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> <img src="images/iconoSurvivor.png" width="40" alt="">&nbsp;&nbsp;Supervivientes</a>
                  </li>
                  </ul>
                </div>
  
                <div class="col-sm-2">
                  <ul class="navbar-nav justify-content-center">
                  <li class="nav-item">
                    <?php
                        if(isset($nombre)){
                            echo "<a class='nav-link' href='logout.php'> <img src='images/iconoLogOut.png' width='35' alt=''>&nbsp;&nbsp;&nbsp;$nombre</a>";
                        }
                        else {
                            echo "<a class='nav-link' href='#'   data-toggle='modal' data-target='#acceder'> <img src='images/iconoLogin.png' width='35' alt=''>&nbsp;&nbsp;&nbsp;Login</a>";
                        }
                    ?>
                  </li>
                </ul>
                </div>
            </div>
        </nav>
    </div>
        </div>
      </header>
    </div>
      <main>
        <div class="container"> 
       

        </div>
        </div>
      </main>
  </div>

  <div class="modal fade" id="acceder" tabindex="-1" role="dialog"
  aria-labelledby="ModalAcceso" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content modalBackgroundTransparente">
      <ul class="nav nav-tabs" id="tabContent">
        <li class="active tab-acceso">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#acceso" data-toggle="tab">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <li class="tab-registro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#registro" data-toggle="tab">Registro</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      </ul>

      <div class="tab-content">
        <div class="tab-pane active" id="acceso">
          <form class="form" id="formularioAcceso" action="acceder.php"
            onsubmit="return validarAcceso()" method="post">
            <div class="modal-body">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-at"></i></span>
                    </div><input type="text"
                  class="form-control" id="emailAcceso" name="emailAcceso" placeholder="Email"
                  onblur="validarEmailInline(this,errorEmailValido, 1, 30),
                  comprobarCadenaInline(this, errorEmailAccesoObligatorio, 0,20)">
                </div>
                <p class="error alert alert-danger"
                  id="errorEmailAccesoObligatorio">El email
                  es obligatorio</p>
                <p class="error alert alert-danger"
                  id="errorEmailValido">El email no es válido</p>

            
              <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-unlock-alt"></i>
                    </i></span>
                  </div> <input
                  type="password" class="form-control" id="passwordAcceso"
                  name="passwordAcceso" placeholder="Contraseña"
                  onblur="comprobarObligatorioInline(this,errorPasswordAccesoObligatorio), 
                  comprobarCadenaInline(this, errorPasswordAccesoLongitud, 1, 30)">
                </div>
                <p class="error alert alert-danger"
                  id="errorPasswordAccesoObligatorio">La contraseña es
                  obligatoria</p>
                <p class="error alert alert-danger"
                  id="errorPasswordAccesoLongitud">La contraseña debe tener entre 4 y 150 caracteres</p>
              
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary"
                data-dismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-danger">Login</button>
            </div>
          </form>
        </div>

        <div class="tab-pane" id="registro">
          <form class="form" id="formularioRegistro"
            action="registrarUsuario.php" onsubmit="return validarRegistro()"
            method="post">
            <div class="modal-body">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div><input
                  type="text" class="form-control" id="usuarioRegistro"
                  name="usuarioRegistro" placeholder="Usuario" onblur="comprobarObligatorioInline(this,errorUsuarioRegistroObligatorio)
                  , comprobarCadenaInline(this,errorUsuarioRegistroLongitud,1,30)"
                  )>
                </div>
                <p class="error alert alert-danger"
                  id="errorUsuarioRegistroObligatorio">El nombre de usuario
                  es obligatorio</p>
                <p class="error alert alert-danger"
                  id="errorUsuarioRegistroLongitud">El nombre de usuario no
                  debe exceder de los 30 caracteres</p>

             
              <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                  </div> <input type="text"
                  class="form-control" id="emailRegistro" name="emailRegistro" placeholder="Email"
                  onblur="validarEmailInline(this,errorEmailRegistroNoValido, 1, 150),
                  comprobarCadenaInline(this, errorEmailRegistroObligatorio, 0,150)">
                </div>
                <p class="error alert alert-danger"
                  id="errorEmailRegistroObligatorio">El email
                  es obligatorio</p>
                <p class="error alert alert-danger"
                  id="errorEmailRegistroNoValido">El email no es un email
                  válido</p>
              
              <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-unlock-alt"></i>
                    </i></span>
                  </div><input
                  type="password" class="form-control" id="passwordRegistro"
                  name="passwordRegistro" placeholder="Contraseña"
                  onblur="comprobarObligatorioInline(this,errorPasswordRegistroObligatorio), 
                  comprobarCadenaInline(this, errorPasswordRegistroLongitud, 1, 30)">
                </div>
                <p class="error alert alert-danger"
                  id="errorPasswordRegistroObligatorio">La contraseña es
                  obligatoria</p>
                <p class="error alert alert-danger"
                  id="errorPasswordRegistroLongitud">El password no debe
                  exceder de los 50 caracteres</p>
             
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary"
                data-dismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-danger">Registrarse</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
  </div>

  </head>