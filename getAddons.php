<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
    
     $query = "SELECT killerName, logo, id from killers_addons where killerId=".$id;
     $resultado=$conn->query($query);
     if ($resultado->num_rows > 0) {
        while($fila = $resultado->fetch_array())
        {
            $datos[] = $fila;
        }       
     echo json_encode($datos);
     
    }
?>