<?php
require("conexion.php");
    if isset( $_POST['name'] && $_POST['survivorId']){
        $conn = create_con();
        $name = $_POST['name'];
        $survivorId = $_POST['survivorId'];
        $perk1 = $_POST['perk1'];
        $perk2 = $_POST['perk2'];
        $perk3 = $_POST['perk3'];
        $perk4 = $_POST['perk4'];
        $item = $_POST['item']
        $addon1 = $_POST['addon1'];
        $addon2 = $_POST['addon2'];
        $fp = checkFp($survivorId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
        $noob = checkNoobie($survivorId, $name, $perk1, $perk2, $perk3, $perk4, $conn);
        $query = 'INSERT INTO `survivor_build`(`name`, `survivorId`, `perk1Id`, `perk2Id`, `perk3Id`, `perk4Id`, `itemId`, `addon1Id`, `addon2Id`, `isF2P`, `isNoob`) VALUES ('.$name.','.$perk1.','.$perk2.','.$perk3.','.$perk4.','.$item.','.$addon1.','.$addon2.','.$fp.','.$noob.')';
    }else{
        die;
    }

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
            $thesurvivorId = mysqli_query($conn, 'SELECT `survivorId` FROM `perks` WHERE `id` = '.$perk);
            if($thesurvivorId != NULL){
                if(!$thesurvivorId == $survivorId){
                 $isNoob = FALSE;
                }
            }
        }
        return $isNoob
    }
?>