<?php
require("conexion.php");
$conn = create_con();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        //Establecer filtros
    }else{
        //Recuperar todas
        $query = 'SELECT * FROM `survivor_build`';
        $result = $conn->query($query);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                //Imprimir
                echo($row);
            }
        }
    }
?>