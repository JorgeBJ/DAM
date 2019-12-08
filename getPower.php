<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
    //Seleciono los atributos del poder del asesino del cual me pasan el id powerName powerDesc powerLogo
     $query = "SELECT powerName, powerDesc, powerLogo from killers where id=".$id;
     $resultado=$conn->query($query);
     if ($resultado->num_rows > 0) {
        $datosPoder= $resultado->fetch_assoc();
        $name=$datosPoder["powerName"];
        $powerDesc=$datosPoder["powerDesc"];
        $powerLogo=$datosPoder["powerLogo"];
        $data["name"] =  $name;
        $data["powerDesc"] =$powerDesc; 
        $data["powerLogo"] = $powerLogo;
     echo json_encode($data);
    }
?>
