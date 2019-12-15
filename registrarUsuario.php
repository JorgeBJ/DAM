<!DOCTYPE>
<html lang="es">
<?php
    include_once 'menu.php';
    include_once 'conexion.php';

    $conn = create_con();

    $name=$_POST["usuarioRegistro"];
    $email=$_POST["emailRegistro"];
    $passwordRegistro=$_POST["passwordRegistro"];
   // $password=$_POST["passwordRegistro"]; 
    $password = password_hash($passwordRegistro, PASSWORD_DEFAULT);

$query= "INSERT INTO users(name, email, password) VALUES('".$name."', '".$email."','".$password."')";

$resultado=$conn->query($query);

if ($resultado === TRUE) {
    $msg="<h1>Registrado con éxito</h1>";
} else {
    $msg="<h1>No se ha podido realizar el registro </h1><p>" . $conn->error."</p>";
}
kill_con($conn);
?>

<body>

	<main>
      <div class="container">
  <div class='row'>
        	<div class='col-xs-12 text-center'>
            <?php
                echo $msg;
            ?>
       	    </div>
   </div>
</div>
</main>
 <script>
//Script para redirigir a index.php tras 4 segundos
setTimeout(function(){ window.location="<?= 'index.php' ?>"; }, 2000); 
</script>