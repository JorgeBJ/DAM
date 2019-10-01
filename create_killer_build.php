<?php
require("conexion.php");
    if isset( $_POST['name'] && $_POST['killerId']){
        $conn = create_con();
        $name = $_POST['name'];
        $killerId = $_POST['killerId'];
        $perk1 = $_POST['perk1'];
        $perk2 = $_POST['perk2'];
        $perk3 = $_POST['perk3'];
        $perk4 = $_POST['perk4'];
        $addon1 = $_POST['addon1'];
        $addon2 = $_POST['addon2'];
        $fp = checkFp($killerId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
        $noob = checkNoobie($killerId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
        $query = 'INSERT INTO `killer_build`(`name`, `killerId`, `perk1Id`, `perk2Id`, `perk3Id`, `perk4Id`, `addon1Id`, `addon2Id`, `isF2P`, `isNoob`) VALUES ('.$name.','.$perk1.','.$perk2.','.$perk3.','.$perk4.','.$addon1.','.$addon2.','.$fp.','.$noob.')';
    }else{
        die;
    }

    function checkFp(int $killerId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
        $isFp = TRUE;
        $allowedKillers = ["The Trapper", "The Wraith", "The Hillbilly", "The Nurse", "The Huntress"];
        $killer_name = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$killerId)
        if(!in_array($killer_name, $allowedKillers, FALSE)){
            $isFp = FALSE;
        }
        $perkArray = [$perk1, $perk2, $perk3, $perk4];
        foreach($perkArray as $perk){
            $theKillerId = mysqli_query($conn, 'SELECT `killerId` FROM `perks` WHERE `id` = '.$perk);
            if($theKillerId == NULL){
                $theKiller == NULL
            }else{
                $theKiller = mysqli_query($conn, 'SELECT `name` FROM `killers` WHERE `id` = '.$theKillerId);
            }
            if(!$theKillerId == NULL){
                if(!in_array($theKiller, $allowedKillers, FALSE)){
                    $isFp = FALSE;
            }
        }
        }
        return $isFP;
    }

    function checkNoobie(int $killerId, int $perk1, int $perk2, int $perk3, int $perk4, mysqli $conn){
        $isNoob = TRUE
        $perkArray = [$perk1, $perk2, $perk3, $perk4];
        foreach($perkArray as $perk){
            $theKillerId = mysqli_query($conn, 'SELECT `killerId` FROM `perks` WHERE `id` = '.$perk);
            if($theKillerId != NULL){
                if(!$theKillerId == $killerId){
                 $isNoob = FALSE;
                }
            }
        }
        return $isNoob
    }
?>
