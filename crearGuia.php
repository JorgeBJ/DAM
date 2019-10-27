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
        <div class="row">
          <div class="col-1">
            <h3>Asesino<h3>
          </div>
          <div class="col-1">
            <h3>Superviviente<h3>
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
                mysqli_stmt_bind_result($stmt, $name, $photo , $killerID);

                while (mysqli_stmt_fetch($stmt)) {
                  echo  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='seleccionarAsesino(this, $killerID , power)'>
                    <img title='".$name."' src='$photo' width='100' alt=''>
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
                <div class="col-3 text-center" id="powerAddon1" data-toggle='modal' data-target='#modalAddon1' onclick="mostrarAddons()">
                  <div class="row">
                    <h3>Addon 1<h3>
                  </div>
                  <div class="row">
                  <img class="poder" src="images/powerIcon.png" width="150" alt="">
                  </div>
                </div>
                <div class="col-3  text-center" id="powerAddon2">
                <div class="row">
                    <h3>Addon2<h3>
                  </div>
                  <div class="row">
                  <img class="poder" src="images/powerIcon.png" width="150" alt="">
                  </div>
                </div>
              </div>
              <div class="row">
              <br><br>
              </div>
              <div class="row">
                <div class="col-2 text-center offset-sm-1" id="perk1" onclick="mostrarListaPerks(this)"> 
                <div class="row">
                    <h3>Perk1<h3>
                  </div>
                <div class="row">
                  <br>
                </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="">
                  </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perk2">
                <div class="row">
                    <h3>Perk2<h3>
                  </div>
                  <div class="row">
                   <br>
                  </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="">
                  </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perk3">
                <div class="row">
                    <h3>Perk3<h3>
                </div>
                <div class="row">
                  <br>
                </div>
                <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="">
                </div>
                </div>
                <div class="col-2 text-center  offset-sm-1" id="perk4">
                <div class="row">
                    <h3>Perk4<h3>
                  </div>
                  <div class="row">
                  <br>
                </div>
                  <div class="row">
                  <img class="perk" src="images/perkIcon.png" width="150" alt="">
                  </div>
                </div>
              </div>
          </div>
        <div class="row">
          <br>
        </div>  
        <div class="row">
          <div id="superviviente" class="col-8 offset-2 text-center">
            <br>
            <h1>Sólo visible si se selecciona la opción superviviente<h1>
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
          <p>
            Addon1 Selección
          </p>
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
