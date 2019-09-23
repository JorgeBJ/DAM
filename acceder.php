<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="es">
<?php
	include 'menu.php';
?>
<?php
 include 'conexion.php'; 

$email=$_POST["emailAcceso"];

$password=$_POST["passwordAcceso"];

//$hashed_password = password_hash($password, PASSWORD_DEFAULT);

//$orden= "select email, nombre from usuarios where email='".$email."' AND password='".$hashed_password."'";

//Prueba sin hash
$orden= "select email, nombre from usuarios where email='".$email."' AND password='".$password."'";



$resultado=$conn->query($orden);


if ($resultado->num_rows > 0) {
    $datosUsuario= $resultado->fetch_assoc();
    $_SESSION["usuario"]=$datosUsuario["email"];
    $_SESSION["nombre"]=$datosUsuario["nombre"];
    
    $mensaje="<h3>Usuario Correcto.</h3>";
} else {
    $mensaje="<h3>Error. Usuario o contraseña incorrectos</h3><p>". $conn->error."</p>";
    ;
}


$conn->close();
?>

  <body>
	<main>
    <div class="container">
      <div class="row">
        <div class="col-xs-10 col-xs-offset-1 text-center">
      	<?php
	echo $mensaje;
?>
        </div>
      </div>
    </div>

<script>
  //Script para redirigir a index.php tras x segundos

//setTimeout(function(){ window.location.href="index.php"; }, 4000); 
setTimeout(() => {
  window.location.href="index.php"; 
  exit();
}, 2000);

</script>
   
