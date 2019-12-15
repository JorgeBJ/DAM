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
       // $fp = checkFp($survivorId, $name, $perk1, $perk2, $perk3, $perk4, $º);
        $fp=true;
        //$noob = checkNoobie($survivorId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
        $noob=true;
        $query = "INSERT INTO survivor_build(survivorBuildName, survivorId, perk1Id, perk2Id, perk3Id, perk4Id, itemId, addon1Id, addon2Id, isF2P, isNoob) VALUES ('".$name."','".$survivorId."','".$perk1."','".$perk2."','".$perk3."','".$perk4."','".$itemID."','".$addon1."','".$addon2."','".$fp."','".$noob."')";

        $resultado=$conn->query($query);

        if ($resultado === TRUE) {
           $mensaje="<h1>Build añadida</h1>";
       } else {
           $mensaje="<h1>No se ha podido añadir la build </h1><p>" . $conn->error."</p>";
       }
       kill_con($conn);
/* 
       function checkFp(int $survivorId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
        $isFp = TRUE;
        $allowedSurvivors = ["Claudette Morel", "Jake Park", "Dwight Fairfield", "Meg Thomas", "Nea Karlsson", "David King"];
        $survivor_name = mysqli_query($conn, 'SELECT `name` FROM `survivors` WHERE `id` = '.$survivorId)
        if(!in_array($survivor_name, $allowedSurvivors, FALSE)){
            $isFp = FALSE;
        }
        $perkArray = [$perk1, $perk2, $perk3, $perk4];
        foreach($perkArray as $perk){
            $thesurvivorId = mysqli_query($conn, 'SELECT `survivorId` FROM `perks` WHERE `id` = '.$perk);
            if($thesurvivorId == NULL){
                $theSurvivor == NULL
            }else{
                $theSurvivor = mysqli_query($conn, 'SELECT `name` FROM `survivors` WHERE `id` = '.$thesurvivorId);
            }
            if(!$thesurvivorId == NULL){
                if(!in_array($theSurvivor, $allowedSurvivors, FALSE)){
                    $isFp = FALSE;
            }
        }
        }
        return $isFP;
    }

    function checkNoobie(int $survivorId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
        $isNoob = TRUE
        $perkArray = [$perk1, $perk2, $perk3, $perk4];
        foreach($perkArray as $perk){
            $thesurvivorId = mysqli_query($conn, 'SELECT `survivor_id` FROM `perks` WHERE `id` = '.$perk);
            if($thesurvivorId != NULL){
                if(!$thesurvivorId == $survivorId){
                 $isNoob = FALSE;
                }
            }
        }
        return $isNoob
    }   */
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
    
   