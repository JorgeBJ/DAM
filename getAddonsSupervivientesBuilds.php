<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
     $query = "SELECT b.survivorBuildName, I.logo FROM survivor_build B inner join items_addons I ON B.addon1Id = I.id or B.addon2Id = I.id where B.survivorId =".$id;
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