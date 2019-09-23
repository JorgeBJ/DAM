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

$orden= "select email, nombre, password from usuarios where email='".$email."'";

$resultado=$conn->query($orden);

$mensaje="<h3>Error. Usuario o contraseña incorrectos</h3><p>". $conn->error."</p>";

if ($resultado->num_rows > 0) {
    $datosUsuario= $resultado->fetch_assoc();
    $hash=$datosUsuario["password"];
    if(password_verify($password, $hash)){
       // Password correcto!
       $_SESSION["usuario"]=$datosUsuario["email"];
       $_SESSION["nombre"]=$datosUsuario["nombre"];
       //Solo si es correcto cambio el mensaje por defecto.
       $mensaje="<h3>Usuario Correcto.</h3>";
    }  
    else {
      $mensaje="El password no coincide";
  }
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
setTimeout(() => {
  window.location.href="index.php"; 
  exit();
}, 2000);

</script>
   
