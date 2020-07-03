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

    if(isset($_POST['comput']))
    {
        $num = $_POST["NumeroDeComputadora"];
        $entr = $_POST["Entrada"];
        $sald = $_POST["Salida"];


        $insertarDatos = "INSERT INTO apartarcompu VALUES('$num',
                                                    '$entr',
                                                    '$sald')";
        $ejecutarInsertar = mysqli_query($enlace, $insertarDatos);

        if(!$ejecutarInsertar)
        {
            echo"Error en la linea de sql";
        }
    }
?>