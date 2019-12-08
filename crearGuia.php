<?php
session_start();
include "comprobarSesion.php";
require("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<script>
var powerDesc="";
var powerName="";
var addonArray= new Array();
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
          <div class="col-1">
            <h3>Superviviente<h3>
            <img id="imagenSuperviviente" title='Crear Guia Superviviente' src='images\iconoSuperviviente.png' width='200' alt='' onclick='mostrarCreacionSupervivientes(this,imagenAsesino)'>  
          </div>
        </div>
        <div class="row">
          <div id="asesino" class="col-3 text-center">
            <?php
              $conn = create_con();
              
              $query = "select killerName, photo , id from killers order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $killerName, $photo , $killerID);

                while (mysqli_stmt_fetch($stmt)) {
                  echo  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='seleccionarAsesino(this, $killerID , power)'>
                    <img title='".$killerName."' src='$photo' width='100' alt=''>
                  </div>";
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            
            
            kill_con($conn);
            ?>
          </div>
            <div class="col-9" id="buildAsesino">
              <div class="row">
                <br><br>
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
                    <h3 id="seleccionAddon1">Addon 1<span>ID</span></h3>
                  </div>
                  <div class="row">
                   <img class="poder" src="images/powerIcon.png" width="150" alt="IconoAddon" id="iconoPowerAddon1">
                  </div>
                </div>
                <div class="col-3  text-center" id="powerAddon2" data-toggle='modal' data-target='#modalAddon2'>
                  <div class="row">
                    <h3 id="seleccionAddon2">Addon2 <span>ID</span><h3>
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
          </div>

        <div class="row">
          <div id="superviviente" class="col-3 text-center">
            <?php
              $conn = create_con();
              
              $query = "select survivorName, photo , id from survivors order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $survivorName, $photo , $survivorID);

                while (mysqli_stmt_fetch($stmt)) {
                  echo  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='seleccionarAsesino(this, $survivorID , power)'>
                    <img title='".$survivorName."' src='$photo' width='100' alt=''>
                  </div>";
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            
            
            kill_con($conn);
            ?>
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

  <div class="col-9" id="buildSuperviviente">
              <div class="row">
                <br><br>
              </div>
              <div class="row">
                <div class="col-3 offset-sm-2" id="objeto">
                  <div class="row"> 
                     <h3>Objeto<h3>
                  </div>
                  <div class="row">
                     <img class="objeto" src="images/powerIcon.png" width="150" alt="">
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
                <div class="col-2 text-center offset-sm-1" id="perkSupervivient1"  data-toggle='modal' data-target='#modalSupervivientePerk1'> 
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
                <div class="col-2 text-center  offset-sm-1" id="supervivientePerk2" data-toggle='modal' data-target='#modalSupervivientePerk2'>
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
                <div class="col-2 text-center  offset-sm-1" id="supervivientePerk3" data-toggle='modal' data-target='#modalSupervivientePerk3'>
                <div class="row">
                    <h3 id="seleccionPerk3">Perk 3</h3>
                </div>
                <div class="row">
                  <br>
                </div>
                <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="" id="iconoSupervivientePerk3">
                </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perkSuperviviente4" data-toggle='modal' data-target='#modalSupervivientePerk4'>
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
          </div>

  

  <script src="js/jquery-3.3.1.slim.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </body>
  <footer>
  </footer>
 
</html>
