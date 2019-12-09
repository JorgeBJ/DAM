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
            <h3>Asesinos<h3>
            <img id="imagenAsesino" title='Guias Asesinos' src='images\iconoAsesino.png' width='200' alt='' onclick='mostrarGuiasAsesinos(this, imagenSuperviviente)'>  
          </div>
          <div class="col-1">
            <h3>Supervivientes<h3>
            <img id="imagenSuperviviente" title='Crear Guia Superviviente' src='images\iconoSuperviviente.png' width='200' alt='' onclick='mostrarGuiasSupervivientes(this,imagenAsesino)'>  
          </div>
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
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='recuperarGuiasAsesino(this, $killerID)'>
                    <img title='".$killerName."' src='$photo' width='100' alt=''>
                  </div>";
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            kill_con($conn);
            ?>
          </div>
          <div class="col-5 offset-sm-1" id="ocultoAsesino">
            <table class="table">
                <thead>
                    <tr>
                    <th scope="col" colspan="3" class="text-center">Addons</th>
                    <th scope="col" colspan="4" class="text-center" >Perks</th>
                    
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <th scope="row">1</th>
                    <td>Addon 1</td>
                    <td>Addon 2</td>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    </tr>
                    <tr>
                    <th scope="row">2</th>
                    <td>Addon 1</td>
                    <td>Addon 2</td>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    </tr>
                    <tr>
                    <th scope="row">3</th>
                    <td>Addon 1</td>
                    <td>Addon 2</td>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    </tr>
                </tbody>
                </table>
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
           <div class="col-5 offset-sm-1" id="ocultoSuperviviente">
            <table class="table">
                <thead>
                    <tr>
                    <th scope="col" colspan="5" class="text-center">Perks</th>
                    <th scope="col" colspan="4" class="text-center" >Objetos</th>
                    
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <th scope="row">1</th>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    <td>Objeto 1</td>
                    <td>Objeto 2</td>
                    <td>Objeto 3</td>
                    <td>Objeto 4</td>

                  
                    </tr>
                    <tr>
                    <th scope="row">2</th>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    <td>Objeto 1</td>
                    <td>Objeto 2</td>
                    <td>Objeto 3</td>
                    <td>Objeto 4</td>
                    </tr>
                    <tr>
                    <th scope="row">3</th>
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
                    <td>Objeto 1</td>
                    <td>Objeto 2</td>
                    <td>Objeto 3</td>
                    <td>Objeto 4</td>
                    </tr>
                </tbody>
                </table>
        </div>
 </div>                   


  <script src="js/jquery-3.3.1.slim.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  </body>
  <footer>
  </footer>
 
</html>      