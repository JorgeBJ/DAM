<?php
if(!isset($_SESSION["usuario"]))
	$usuario="No hay usuario";
else {
	$usuario=$_SESSION["usuario"];
	$nombre=$_SESSION["nombre"];
}
?>
