<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
    //Seleciono los atributos del poder del asesino del cual me pasan el id powerName powerDesc powerLogo
     $query = "SELECT id, itemAddonName, logo from items_addons where itemType=".$id;
     $resultado=$conn->query($query);
     $resultado=$conn->query($query);
     if ($resultado->num_rows > 0) {
        while($fila = $resultado->fetch_array())
        {
            $datos[] = $fila;
        }       
     echo json_encode($datos);
     
    }
?>