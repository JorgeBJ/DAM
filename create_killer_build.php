<?php
  session_start();
?>
<!DOCTYPE>
<html lang="es">
<?php
    include_once 'menu.php';
    include_once 'conexion.php';
 
    $conn = create_con();
 // if isset( $_POST['nombreBuildAsesino'] && $_POST['killerId']){
        $nombre = $_POST['nombreBuildAsesino'];
        $killerId = $_POST['killerId'];
        $perk1 = $_POST['seleccionPerk1Name'];
        $perk2 = $_POST['seleccionPerk2Name'];
        $perk3 = $_POST['seleccionPerk3Name'];
        $perk4 = $_POST['seleccionPerk4Name'];
        $addon1 = $_POST['seleccionAddon1Name'];
        $addon2 = $_POST['seleccionAddon2Name'];
       // $fp = checkFp($killerId, $nombre, $perk1, $perk2, $perk3, $perk4, $conn);
       //$noob = checkNoobie($killerId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
       $fp=1;
       $noob=1;
    $query = "INSERT INTO killer_build (killerName, killerId, perk1Id, perk2Id, perk3Id, perk4Id, addon1Id, addon2Id, isF2P, isNoob) VALUES ('".$nombre."','".$killerId."','".$perk1."','".$perk2."','".$perk3."','".$perk4."','".$addon1."','".$addon2."','".$fp."','".$noob."')";
                                                                   //           $query= "INSERT INTO usuarios(nombre, email, password) VALUES('".$nombre."', '".$email."','".$password."')";
 //   }else{
  //      die;
   // }

    // function checkFp(int $killerId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
    //     $isFp = TRUE;
    //     $allowedKillers = ["The Trapper", "The Wraith", "The Hillbilly", "The Nurse", "The Huntress"];
    //     $killer_name = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$killerId)
    //     if(!in_array($killer_name, $allowedKillers, FALSE)){
    //         $isFp = FALSE;
    //     }
    //     $perkArray = [$perk1, $perk2, $perk3, $perk4];
    //     foreach($perkArray as $perk){
    //         $theKillerId = mysqli_query($conn, 'SELECT `killerId` FROM `perks` WHERE `id` = '.$perk);
    //         if($theKillerId == NULL){
    //             $theKiller == NULL
    //         }else{
    //             $theKiller = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$theKillerId);
    //         }
    //         if(!$theKillerId == NULL){
    //             if(!in_array($theKiller, $allowedKillers, FALSE)){
    //                 $isFp = FALSE;
    //         }
    //     }
    //     }
    //     return $isFP;
    // }

    // function checkNoobie(int $killerId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
    //     $isNoob = TRUE
    //     $perkArray = [$perk1, $perk2, $perk3, $perk4];
    //     foreach($perkArray as $perk){
    //         $theKillerId = mysqli_query($conn, 'SELECT `killerId` FROM `perks` WHERE `id` = '.$perk);
    //         if($theKillerId != NULL){
    //             if(!$theKillerId == $killerId){
    //              $isNoob = FALSE;
    //             }
    //         }
    //     }
    //     return $isNoob
    // }


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
    setTimeout(function(){ window.location="<?= 'index.php' ?>"; }, 2000); 
    </script>
 