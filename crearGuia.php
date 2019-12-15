<?php
session_start();
require("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<script>
var powerDesc="";
var powerName="";
var addonArray= new Array();
var killerID;
var survivorID;
</script>
  
<?php
	include 'menu.php';
?>  
  <body>
  <div class="container-fluid">
        <div class="row">
          <div class="col-12 text-center">
            <br>
          </div>
        </div>
        <div class="row tipoGuia">
          <div class="col-1">
            <h3>Asesino<h3>
            <img id="imagenAsesino" title='Crear Guia Asesino' src='images\iconoAsesino.png' width='200' alt='' onclick='mostrarCreacionAsesinos(this, imagenSuperviviente)'>  
          </div>
          <div class="w-50 d-xl-none"></div>
          <div class="col-1">
            <h3>Superviviente<h3>
            <img id="imagenSuperviviente" title='Crear Guia Superviviente' src='images\iconoSuperviviente.png' width='200' alt='' onclick='mostrarCreacionSupervivientes(this,imagenAsesino)'>  
          </div>
        </div>
        <div class="row">
          <div id="asesino" class="col-3 text-center">
            <?php
              $conn = create_con();
              
              $query = "select name, photo , id from killers order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $killer_name, $photo , $killerID);

                while (mysqli_stmt_fetch($stmt)) {
                  echo  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='seleccionarAsesino(this, $killerID , power)'>
                    <img title='".$killer_name."' src='$photo' width='100' alt=''>
                  </div>";
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            kill_con($conn);
            ?>
          </div>
            <div class="col-9" id="buildAsesino">
              <form class="form" id="formularioBuildAsesino" action="create_killer_build.php" onsubmit="return comprobarBuildAsesino()" method="post">
              <div class="row">
                <br><br>
                <div class="col-8 offset-sm-2">
                <div class="form-group">
                <label for="nombreBuildAsesino" >Nombre de la build</label>
                  <input type="text" class="form-control" id="nombreBuildAsesino" name="nombreBuildAsesino">
                </div>  
              </div>    
              </div>
              <div class="row">
                <div class="col-3 offset-sm-2" id="power">
                  <div class="row"> 
                     <h3>Poder<h3>
                  </div>
                  <div class="row">
                     <img class="poder" src="images/powerIcon.png" width="150" alt="">
                  </div>
                </div>
                <div class="col-3 text-center" id="powerAddon1" data-toggle='modal' data-target='#modalAddon1'>
                  <div class="row">
                    <h3 id="seleccionAddon1">Addon 1</h3>
                  </div>
                  <div class="row">
                   <img class="poder" src="images/powerIcon.png" width="150" alt="IconoAddon" id="iconoPowerAddon1">
                  </div>
                </div>
                <div class="col-3  text-center" id="powerAddon2" data-toggle='modal' data-target='#modalAddon2'>
                  <div class="row">
                    <h3 id="seleccionAddon2">Addon2<h3>
                  </div>
                  <div class="row">
                   <img class="poder" src="images/powerIcon.png" width="150" alt="IconoAddon" id="iconoPowerAddon2">
                  </div>
                </div>
              </div>
              
              <div class="row">
              <br><br>
              </div>
              <div class="row">
                <div class="col-2 text-center offset-sm-1" id="perk1"  data-toggle='modal' data-target='#modalPerk1'> 
                  <div class="row">
                      <h3 id="seleccionPerk1">Perk 1</h3>
                  </div>
                  <div class="row">
                   <br>
                  </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoPerk1">
                  </div>
                 </div>
                <div class="col-2 text-center  offset-sm-1" id="perk2" data-toggle='modal' data-target='#modalPerk2'>
                  <div class="row">
                    <h3 id="seleccionPerk2">Perk 2</h3>
                  </div>
                  <div class="row">
                   <br>
                  </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoPerk2">
                  </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perk3" data-toggle='modal' data-target='#modalPerk3'>
                <div class="row">
                    <h3 id="seleccionPerk3">Perk 3</h3>
                </div>
                <div class="row">
                  <br>
                </div>
                <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoPerk3">
                </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perk4" data-toggle='modal' data-target='#modalPerk4'>
                <div class="row">
                    <h3 id="seleccionPerk4">Perk 4</h3>
                  </div>
                  <div class="row">
                  <br>
                </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoPerk4">
                  </div>
                </div>
              </div>
              <div class="row botonCrearAsesino">
              <div class="col-6 offset-sm-3">
               <button type="submit" class="btn btn-danger btn-lg btn-block botonCrearAsesino" onclick="">Crear Build</button>
              </div> 
              </div>  
            </form>
          </div>
          
          <div id="superviviente" class="col-3 text-center">
            <?php
              $conn = create_con();
              
              $query = "select name, photo , id from survivors order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $survivorName, $photo , $survivorID);

                while (mysqli_stmt_fetch($stmt)) {
                  echo  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='seleccionarSuperviviente(this, $survivorID)'>
                    <img title='".$survivorName."' src='$photo' width='100' alt=''>
                  </div>";
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            
            
            kill_con($conn);
            ?>
          </div>

          <div class="col-8" id="buildSuperviviente">
          <form class="form" id="formularioBuildSuperviviente" action="create_survivor_build.php" onsubmit="return comprobarBuildSuperviviente()" method="post">
          <div class="row">
                <br><br>
                <div class="col-8 offset-sm-2">
                <div class="form-group">
                <label for="nombreBuildSuperviviente" >Nombre de la build</label>
                  <input type="text" class="form-control" id="nombreBuildSuperviviente" name="nombreBuildSuperviviente">
                </div>  
              </div>    
              </div>
              <div class="row">
                <div class="col-3 offset-sm-2" id="objeto" data-toggle='modal' data-target='#modalObjeto'>
                  <div class="row"> 
                     <h3 id="seleccionObjeto">Objeto<h3>
                  </div>
                  <div class="row">
                     <img class="objeto" src="images/powerIcon.png" width="150" alt="" id="iconoObjeto">
                  </div>
                </div>
                <div class="col-3 text-center" id="objetoAddon1" data-toggle='modal' data-target='#modalObjetoAddon1'>
                  <div class="row">
                    <h3 id="seleccionObjetoAddon1">Objeto Addon 1<span>ID</span></h3>
                  </div>
                  <div class="row">
                   <img class="objeto" src="images/powerIcon.png" width="150" alt="IconoAddon" id="iconoObjetoAddon1">
                  </div>
                </div>
                <div class="col-3  text-center" id="objetoAddon2" data-toggle='modal' data-target='#modalObjetoAddon2'>
                  <div class="row">
                    <h3 id="seleccionObjetoAddon2">Objeto Addon2 <span>ID</span><h3>
                  </div>
                  <div class="row">
                   <img class="objeto" src="images/powerIcon.png" width="150" alt="IconoAddon" id="iconoObjetoAddon2">
                  </div>
                </div>
              </div>
              
              <div class="row">
              <br><br>
              </div>
              <div class="row">
                <div class="col-2 text-center offset-sm-1" id="supervivientePerk1"  data-toggle='modal' data-target='#modalSurvivorPerk1'> 
                  <div class="row">
                      <h3 id="seleccionSupervivientePerk1">Perk 1</h3>
                  </div>
                  <div class="row">
                   <br>
                  </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoSupervivientePerk1">
                  </div>
                 </div>
                <div class="col-2 text-center  offset-sm-1" id="supervivientePerk2" data-toggle='modal' data-target='#modalSurvivorPerk2'>
                  <div class="row">
                    <h3 id="seleccionSupervivientePerk2">Perk 2</h3>
                  </div>
                  <div class="row">
                   <br>
                  </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoSupervivientePerk2">
                  </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="supervivientePerk3" data-toggle='modal' data-target='#modalSurvivorPerk3'>
                <div class="row">
                    <h3 id="seleccionSupervivientePerk3">Perk 3</h3>
                </div>
                <div class="row">
                  <br>
                </div>
                <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoSupervivientePerk3">
                </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perkSuperviviente4" data-toggle='modal' data-target='#modalSurvivorPerk4'>
                <div class="row">
                    <h3 id="seleccionSupervivientePerk4">Perk 4</h3>
                  </div>
                  <div class="row">
                  <br>
                </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoSupervivientePerk4">
                  </div>
                </div>
              </div>
              <div class="row botonCrearAsesino">
              <div class="col-6 offset-sm-3">
               <button type="submit" class="btn btn-danger btn-lg btn-block botonCrearAsesino" onclick="">Crear Build</button>
              </div> 
              </div>  
            </form>
          </div>
        </div>
        
  </div>        

    <!-- Modal power desc-->
  <div class="modal fade" id="powerDesc" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3 id="nombrePoder"><h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p id="descripcionPoder">
          </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>    

   <!-- Modal Addon1-->
   <div class="modal fade" id="modalAddon1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Addon<h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodyAddon1">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>    

       <!-- Modal Addon2-->
    <div class="modal fade" id="modalAddon2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Addon2<h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <div class="row" id="bodyAddon2">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>    
</div>
     <!-- Modal perk1-->
     <div class="modal fade" id="modalPerk1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 1</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodyPerk1">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
   <!-- Modal perk2-->
   <div class="modal fade" id="modalPerk2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 2</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodyPerk2">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
     <!-- Modal perk3-->
     <div class="modal fade" id="modalPerk3" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 3</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodyPerk3">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
     <!-- Modal perk4-->
     <div class="modal fade" id="modalPerk4" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Addon</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodyPerk4">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>


  </div>  
 
 

   <!-- Modales supervivientes-->
   <!-- Modal perk1-->
   <div class="modal fade" id="modalSurvivorPerk1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 1</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodySurvivorPerk1">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
   <!-- Modal perk2-->
   <div class="modal fade" id="modalSurvivorPerk2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 2</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodySurvivorPerk2">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
     <!-- Modal perk3-->
     <div class="modal fade" id="modalSurvivorPerk3" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Perk 3</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodySurvivorPerk3">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>  
     <!-- Modal perk4-->
     <div class="modal fade" id="modalSurvivorPerk4" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Seleccionar Addon</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="row" id="bodySurvivorPerk4">
           </div>
        </div> 
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      </div>
          </div>
           <!-- Modal objeto-->
     <div class="modal fade" id="modalObjeto" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h3>Seleccionar Obejto</h3>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row" id="bodySurvivorObjeto">
                </div>
            </div> 
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
          </div>
          </div>
    
       <!-- Modal objetoAddon-->
     <div class="modal fade" id="modalObjetoAddon1" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h3>Seleccionar addon 1</h3>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row" id="bodySurvivorObjetoAddon1">
                </div>
            </div> 
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
          </div>
          </div>
          
                     <!-- Modal objetoAddon2-->
     <div class="modal fade" id="modalObjetoAddon2" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h3>Seleccionar addon 2</h3>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row" id="bodySurvivorObjetoAddon2">
                </div>
            </div> 
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
          </div>
          </div>
          
          


  

  <script src="js/jquery-3.3.1.slim.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </body>
  <footer>
  </footer>
 
</html>
