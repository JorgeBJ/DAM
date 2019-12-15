<?php
  session_start();
?>
<!DOCTYPE>
<html lang="es">
<?php
    include_once 'menu.php';
    include_once 'conexion.php';
  
    $conn = create_con();
        $name = $_POST['nombreBuildSuperviviente'];
        $survivorId = $_POST['survivorID'];
        $perk1 = $_POST['seleccionSupervivientePerk1Name'];
        $perk2 = $_POST['seleccionSupervivientePerk2Name'];
        $perk3 = $_POST['seleccionSupervivientePerk3Name'];
        $perk4 = $_POST['seleccionSupervivientePerk4Name'];
        $itemID = $_POST['itemID'];
        $addon1 = $_POST['seleccionObjetoAddon1Name'];
        $addon2 = $_POST['seleccionObjetoAddon2Name'];
        $fp=true;
        $noob=true;
        $query = "INSERT INTO survivor_build(survivorBuildName, survivorId, perk1Id, perk2Id, perk3Id, perk4Id, itemId, addon1Id, addon2Id, isF2P, isNoob) VALUES ('".$name."','".$survivorId."','".$perk1."','".$perk2."','".$perk3."','".$perk4."','".$itemID."','".$addon1."','".$addon2."','".$fp."','".$noob."')";

        $resultado=$conn->query($query);

        if ($resultado === TRUE) {
           $mensaje="<h1>Build añadida</h1>";
       } else {
           $mensaje="<h1>No se ha podido añadir la build </h1><p>" . $conn->error."</p>";
       }
       kill_con($conn);
?>
       
       <body>
       
           <main>
             <div class="container">
         <div class='row'>
                   <div class='col-xs-12 text-center'>
                   <?php
                       echo $mensaje;
                   ?>
                      </div>
          </div>
       </div>
       </main>
        <script>
       //Script para redirigir a index.php tras 4 segundos
        //   setTimeout(function(){ window.location="<?= 'index.php' ?>"; }, 2000); 
       </script>
    
   