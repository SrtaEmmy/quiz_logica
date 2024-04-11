<?php
require_once ('conn.php');
require_once ('helpers.php');
session_start();

// variables
$id_tema = $_SESSION['id_tema'];

$preguntas = get_preguntas_by_id_tema($id_tema);

$pregunta_correcta = '';

$_SESSION['total_preguntas'] = 5;

if (!isset($_SESSION['puntuacion'])) {
    $_SESSION['puntuacion'] = 0;
}


// si el usuario NO ha pulsado el boton de siguiente
if (!isset($_GET['next'])) {
    $_SESSION['pregunta_actual'] = 0;
} else  {
    $pregunta_correcta = $preguntas[$_SESSION['pregunta_actual']]['correcta'];
    if($_GET['respuesta']===$pregunta_correcta){
         $_SESSION['puntuacion']++;
    }

      if($_SESSION['pregunta_actual'] < $_SESSION['total_preguntas']-1){
           $_SESSION['pregunta_actual']++;
      }else{
        $_SESSION['pregunta_actual'] = 0;
        header('Location: resultados.php');
      }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>En partida</title>
</head>

<body>
    <h2>El tema es <?php echo get_nombre_tema($id_tema); ?></h2>
                             <!-- el 0 es el registro y 'pregunta' es el campo -->
    <h3 style="color: blue"><?php echo $preguntas[$_SESSION['pregunta_actual']]['pregunta'] ?></h3>

    <form method="get">
        <p> <?php echo $preguntas[$_SESSION['pregunta_actual']]['opcion_a']; ?> </p>
        <input type="radio" name="respuesta" value="a" required>
    
        <p> <?php echo $preguntas[$_SESSION['pregunta_actual']]['opcion_b']; ?> </p>
        <input type="radio" name="respuesta" value="b" required>
    
        <p> <?php echo $preguntas[$_SESSION['pregunta_actual']]['opcion_c']; ?> </p>
        <input type="radio" name="respuesta" value="c" required>
    
        <input type="submit" name="next" value="envia">
    </form>

    <p>Score: <?php echo $_SESSION['puntuacion'] ?></p>
</body>

</html>