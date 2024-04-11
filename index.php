<?php
require_once ('conn.php');
require_once ('helpers.php');


$ids_temas = get_ids_temas();

if($_SERVER['REQUEST_METHOD']==='GET' && isset($_GET['id_tema'])){
    session_start();
    $_SESSION['id_tema'] = $_GET['id_tema'];
    header('Location: jugando.php');
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
</head>

<body>

    <h1>Elige el tema</h1>

    <?php foreach ($ids_temas as $id_tema): ?>

        <form method="get">
            <input type="hidden" name="id_tema" value="<?php echo $id_tema ?>">
            <input type="submit" value="<?php echo get_nombre_tema($id_tema) ?>">
        </form>


    <?php endforeach ?>


</body>

</html>