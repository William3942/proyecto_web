<?php
    $servidor="localhost";
    $usuario="root";
    $clave="root";
    $baseDeDatos="sistematw";

    $enlace = mysqli_connect($servidor,$usuario,$clave,$baseDeDatos);

    if(!$enlace)
    {
        echo"Error en la conexión con el servidor";
    }

    if(isset($_POST['elim']))
    {
        $num = $_POST["id"];

        $insertarDatos = "DELETE FROM usuario WHERE id='$num' ";

        $ejecutarInsertar = mysqli_query($enlace, $insertarDatos);

        if(!$ejecutarInsertar)
        {
            echo"Error en la linea de sql";
        }
    }
?>