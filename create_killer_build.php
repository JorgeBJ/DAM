<?php
  session_start();
?>
<!DOCTYPE>
<html lang="es">
<?php
    include_once 'menu.php';
    include_once 'conexion.php';
 
    $conn = create_con();
        $name = $_POST['nombreBuildAsesino'];
        $killerId = $_POST['killerId'];
        $perk1 = $_POST['seleccionPerk1Name'];
        $perk2 = $_POST['seleccionPerk2Name'];
        $perk3 = $_POST['seleccionPerk3Name'];
        $perk4 = $_POST['seleccionPerk4Name'];
        $addon1 = $_POST['seleccionAddon1Name'];
        $addon2 = $_POST['seleccionAddon2Name'];
        if(isset($_SESSION["id"])){
            $createdBy = $_SESSION["id"];
        }else{
            $createdBy = NULL;
        }
        $fp=1;
        $noob=1;
    $query = "INSERT INTO killer_build (build_name, killer_id, perk1_id, perk2_id, perk3_id, perk4_id, addon1_id, addon2_id, isF2P, isNoob, created_by) VALUES ('".$name."',".$killerId.",".$perk1.",".$perk2.",".$perk3.",".$perk4.",".$addon1.",".$addon2.",".$fp.",".$noob.",".$createdBy.")";   $resultado=$conn->query($query);
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
    setTimeout(function(){ window.location="<?= 'index.php' ?>"; }, 2000); 
    </script>
 