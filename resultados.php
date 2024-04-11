<?php 
session_start();

$correctas = $_SESSION['puntuacion'];
$errores = $_SESSION['total_preguntas'] - $correctas;

$_SESSION['puntuacion'] = 0;
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados</title>
</head>
<body>

<h1>Pagina de resultados</h1>
<b>Aciertos: </b><?php echo $correctas; ?> <br>
<b>Errores: </b> <?php echo $errores; ?>

<a href="index.php">Inicio</a>
    
</body>
</html>