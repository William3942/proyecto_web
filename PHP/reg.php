<?php
    //conexion con la base de datos y el servidor
    $link = mysql_connect("localhost","root","root")or die("<h2>No se encuentra el servidor</h2>");
    $db=mysql_select_db("",&link) or die("<h2>Error de Conexion</h2>");

    //obtenemos los valores del formulario
    $nombre=$_POST['Nombre'];
    $numero=$_POST['id'];
    $email=$_POST['Email'];
    $password=$_POST['Contraseña'];
    $apellido=$_POST['Apellido'];
    $TipUsr=$_POST['TipoUsuario'];

    //obtiene la longitud de un string
    $reg=(strlen($nombre)*strlen($numero)*strlen($email)*strlen($password))or die("No se han llenado todos los campos");

    //ingresar la información a la tabla datos
    mysql_query("INSERT INTO datos VALUES('$numero','$nombre','$password','$email','$apellido','$TipUsr')",$link) or die ("<h2>Error al enviar datos</h2>")

    echo '
    <h2>Registro Completo</h2>
    <a href="../html/Inicio.html"';
?>