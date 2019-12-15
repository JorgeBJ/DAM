<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
     $query = "SELECT b.survivorBuildName, P.photo FROM survivor_build B inner join survivor_perks P on perk1Id = P.id or perk2Id = P.id or perk3Id = P.id or perk4Id = P.id where B.survivorId =".$id;
     ;
     $resultado=$conn->query($query);
     if ($resultado->num_rows > 0) {
        while($fila = $resultado->fetch_array())
        {
            $datos[] = $fila;
        }       
     echo json_encode($datos);
     
    }
?>