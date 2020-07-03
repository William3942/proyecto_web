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

    if(isset($_POST['registrarse']))
    {
        $id = $_POST["id"];
        $nombre = $_POST["Nombre"];
        $apellido = $_POST["Apellido"];
        $tipo = $_POST["TipoUsuario"];
        $password = $_POST["Contraseña"];
        $email = $_POST["Email"];

        $insertarDatos = "INSERT INTO usuario VALUES('$id',
                                                    '$nombre',
                                                    '$apellido',
                                                    '$tipo',
                                                    '$password',
                                                    '$email')";
        $ejecutarInsertar = mysqli_query($enlace, $insertarDatos);

        if(!$ejecutarInsertar)
        {
            echo"Error en la linea de sql";
        }
    }
?>