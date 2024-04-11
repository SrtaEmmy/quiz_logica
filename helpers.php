<?php 
 
function get_ids_temas(){
    require('conn.php');
    $sql = "SELECT id FROM temas";
    $result = $connection->query($sql);

    $ids = array();
    if($result->num_rows > 0){
        while ($row = $result->fetch_assoc()) {
            $ids[] = $row['id'];
        }
    }
    return $ids;
}


function get_nombre_tema($id_tema){
    require('conn.php');
    $sql = "SELECT nombre FROM temas WHERE id = $id_tema";
    $result = $connection->query($sql);

    if($result->num_rows > 0){
        $row = $result->fetch_assoc();
        return $row['nombre'];
    }
}

function get_preguntas_by_id_tema($id_tema){
    require('conn.php');
    $sql = "SELECT pregunta, opcion_a, opcion_b, opcion_c, correcta FROM preguntas WHERE id_tema = $id_tema";
    $result = $connection->query($sql);

    $preguntas = array();
    if($result->num_rows > 0){
        while ($row = $result->fetch_assoc()) {
            $preguntas[] = $row; 
        }
        return $preguntas;

    }else{
        return "no hay preguntas en este Tema";
    }
}

 
?>