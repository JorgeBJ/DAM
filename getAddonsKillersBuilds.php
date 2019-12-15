<?php
require("conexion.php");
    $conn = create_con();
    $id = $_GET['id'];
     $query = "SELECT b.build_name, A.logo FROM killer_build B inner join killers_addons A ON B.addon1_Id = A.id or B.addon2_Id = A.id where B.killer_id =".$id;
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