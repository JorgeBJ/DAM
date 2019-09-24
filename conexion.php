
<?php
//Acceso a la Base de Datos


//Creacion de la conexion
function create_con(){
    $serverName="localhost";
    $userName="root";
    $pw="";
    $db="dbd_meta";
    $conn = new mysqli($serverName,$userName,$pw,$db);
    //Comprobando la conexión
    if ($conn->connect_error) {
        die("Conexion fallida: " . $conn->connect_error);
    } 
    return $conn;
}

function kill_con(mysqli $conn){
  mysqli_close($conn);
}

?>