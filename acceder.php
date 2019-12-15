<?php
  session_start();
  require("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<?php
	include 'menu.php';
?>
<?php
 
$conn = create_con();
$email=$_POST["emailAcceso"];
$password=$_POST["passwordAcceso"];

$query = "select id, email, nombre, password from usuarios where email='".$email."'";

$resultado=$conn->query($query);

$msg="<h3>Error. Usuario o contraseña incorrectos</h3><p>". $conn->error."</p>";

if ($resultado->num_rows > 0) {
    $userData= $resultado->fetch_assoc();
    $hash=$userData["password"];
    if(password_verify($password, $hash)){
       // Password correcto!
       $_SESSION["usuario"]=$userData["email"];
       $_SESSION["nombre"]=$userData["nombre"];
       $_SESSION["id"]=$userData["id"];
       //Solo si es correcto cambio el msg por defecto.
       $msg="<h3>Usuario Correcto.</h3>";
    }  
    else {
      $msg="La contraseña no es correcta";
  }
} 

kill_con($conn);
?>

  <body>
	<main>
    <div class="container">
      <div class="row">
        <div class="col-xs-10 col-xs-offset-1 text-center">
      	<?php
	echo $msg;
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