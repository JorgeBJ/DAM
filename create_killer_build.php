<?php
  session_start();
?>
<!DOCTYPE>
<html lang="es">
<?php
    include_once 'menu.php';
    include_once 'conexion.php';
 
    $conn = create_con();
 // if isset( $_POST['nombreBuildAsesino'] && $_POST['killer_id']){
        $name = $_POST['nombreBuildAsesino'];
        $killerId = $_POST['killerId'];
        $perk1 = $_POST['seleccionPerk1Name'];
        $perk2 = $_POST['seleccionPerk2Name'];
        $perk3 = $_POST['seleccionPerk3Name'];
        $perk4 = $_POST['seleccionPerk4Name'];
        $addon1 = $_POST['seleccionAddon1Name'];
        $addon2 = $_POST['seleccionAddon2Name'];
        $createdBy= "null";
    //    if(isset($_SESSION["id"]){
    //        $createdBy= $_SESSION["id"];
     //   }else{
     //       $createdBy= NULL;
      //  }       
       // $fp = checkFp($killer_id, $nombre, $perk1, $perk2, $perk3, $perk4, $conn);
       //$noob = checkNoobie($killer_id, $name, $perk1, $perk2, $perk3, $perk4, $conn);
       $fp=1;
       $noob=1;
    $query = "INSERT INTO killer_build (build_name, killer_id, perk1_id, perk2_id, perk3_id, perk4_id, addon1_id, addon2_id, isF2P, isNoob, created_by) VALUES ('".$name."',".$killerId.",".$perk1.",".$perk2.",".$perk3.",".$perk4.",".$addon1.",".$addon2.",".$fp.",".$noob.",".$createdBy.")";
//           $query= "INSERT INTO usuarios(nombre, email, password) VALUES('".$nombre."', '".$email."','".$password."')";
 //   }else{
  //      die;
   // }

    // function checkFp(int $killer_id, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
    //     $isFp = TRUE;
    //     $allowedKillers = ["The Trapper", "The Wraith", "The Hillbilly", "The Nurse", "The Huntress"];
    //     $killer_name = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$killer_id)
    //     if(!in_array($killer_name, $allowedKillers, FALSE)){
    //         $isFp = FALSE;
    //     }
    //     $perkArray = [$perk1, $perk2, $perk3, $perk4];
    //     foreach($perkArray as $perk){
    //         $theKiller_id = mysqli_query($conn, 'SELECT `killer_id` FROM `perks` WHERE `id` = '.$perk);
    //         if($theKiller_id == NULL){
    //             $theKiller == NULL
    //         }else{
    //             $theKiller = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$theKiller_id);
    //         }
    //         if(!$theKiller_id == NULL){
    //             if(!in_array($theKiller, $allowedKillers, FALSE)){
    //                 $isFp = FALSE;
    //         }
    //     }
    //     }
    //     return $isFP;
    // }

    // function checkNoobie(int $killer_id, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
    //     $isNoob = TRUE
    //     $perkArray = [$perk1, $perk2, $perk3, $perk4];
    //     foreach($perkArray as $perk){
    //         $theKiller_id = mysqli_query($conn, 'SELECT `killer_id` FROM `perks` WHERE `id` = '.$perk);
    //         if($theKiller_id != NULL){
    //             if(!$theKiller_id == $killer_id){
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
 