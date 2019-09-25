<?php
session_start();
include "comprobarSesion.php";
require("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
  
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
          <div class="col-6 text-center">
            <h3>Asesino<h3>
          </div>
          <div class="col-6 text-center">
            <h3>Superviviente<h3>
          </div>
        </div>
        <div class="row">
          <div id="asesino" class="col-8 offset-2 text-center">
            <br>
            <h4>Visible si se elige la opcion asesino<h4>
            <?php
              $conn = create_con();
              
              $query = "select name, photo from killers order by id";

              if ($stmt = mysqli_prepare($conn, $query)) {

                echo "<div class='row'>";

                mysqli_stmt_execute($stmt);
                mysqli_stmt_bind_result($stmt, $name, $photo);

                while (mysqli_stmt_fetch($stmt)) {
                  echo 
/*                   "<div class='card'>
                  <img src='$photo' class='card-img-top' style='width: 5rem;' alt=''...'>
                  <div class='card-body'>
                    <h5 class='card-title'>".$name."</h5>
                    <p class='card-text'>Algo del lore aqui?.</p>
                    <a href='#' class='btn btn-primary'>Crear guía</a>
                  </div>
                  </div>";

 */
                  
                  "<div class='col-3 text-center hover-div' style='margin-bottom: 2.5rem;'>
                    <h3>".$name."<h3>
                    <img src='$photo' width='100' alt=''>
                  </div>";
                
                }
                echo "</div>";
        
                mysqli_stmt_close($stmt);
            }
            
            
            kill_con($conn);
            ?>
            
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


  <script src="js/jquery-3.3.1.slim.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

 

  </body>
  <footer>
  </footer>
 
</html>
