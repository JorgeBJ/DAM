<?php
session_start();
session_unset();
session_destroy();
?>
<!DOCTYPE>
<html lang="es">
<?php
	include_once 'menu.php';
?>

<body>

	<main>
      <div class="container">
  <div class='row'>
        	<div class='col-xs-12 text-center'>
        	  <h3>Se ha cerrado la sesion</h3>
       	    </div>
   </div>
</div>
</main>
 <script>
//Script para redirigir a index.php tras 4 segundos
setTimeout(function(){ window.location="<?= 'index.php' ?>"; }, 2000); 
</script>
    

