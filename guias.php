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
              
              $query = "select killer_name, photo , id from killers order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $killer_name, $photo , $killerID);

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
            <table class="table" id="tablaKillers">
                <thead>
                    <tr>
                    <th></th>  
                    <th scope="col" colspan="2" class="text-center align-middle">Addons</th>
                    <th scope="col" colspan="4" class="text-center align-middle" >Perks</th>
                    </tr>
                </thead>
                <tbody id="bodyAsesino">
                    <tr>
                    <td class="align-middle">Nombre de la build</td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
                    <td> <img id="imagenBuild" title='' src='images\iconoAsesino.png' width='50' alt=''>  </td>
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
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'  onclick='recuperarGuiasSuperviviente(this, $survivorID)'>
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
            <table class="table" id="tablaSurvivors">
                <thead>
                    <tr>
                    <th></th>
                    <th scope="col" colspan="3" class="text-center" >Objeto</th>
                    <th scope="col" colspan="4" class="text-center">Perks</th>
                  
    
                    </tr>
                </thead>
                <tbody id="bodySupervivientes">
                    <tr>
                 
                    <td>Objeto</td>
                    <td>Objeto Addon 1</td>
                    <td>Objeto Addon 2</td>    
                    <td>Perk 1</td>
                    <td>Perk 2</td>
                    <td>Perk 3</td>
                    <td>Perk 4</td>
     
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