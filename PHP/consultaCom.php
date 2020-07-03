<?php

    $conexion=mysqli_connect('localhost','root','root','sistematw');
    
?>


<!DOCTYPE html>
<html>
<head>
	<title>Registro Usuarios</title>
	<link rel="stylesheet" type="text/css" href="../css/reg1.css">
	<link rel="stylesheet" type="text/css" href="../css/regSection.css">
	<meta charset="utf-8">
</head>
<body>
	<header>
		<p class="titulo">ESCOM LAB´S</p>
    </header>
    <nav>
		
    </nav>
    <section>
        <header>
            <p>Consultar Computadoras</p>
        </header>
            <center>
            <table bgcolor="white" border="1">
                <tr>
                    <td>Num Computadora</td>
                    <td>Estado Pantalla</td>
                    <td>Estado CPU</td>
                    <td>Estadod e teclado</td>
                    <td>Estado de Raton</td>
                    <td>Sistemas operativos</td>
                </tr>
        
                <?php
                $sql="SELECT * from computadora";
                $result=mysqli_query($conexion,$sql);
        
                while($mostrar=mysqli_fetch_array($result)){
                ?>
        
                <tr>
                    <td><?php echo $mostrar['NumeroDeComputadora'] ?></td>
                    <td><?php echo $mostrar['EstadoPantalla'] ?></td>
                    <td><?php echo $mostrar['EstadoCPU'] ?></td>
                    <td><?php echo $mostrar['EstadoTeclado'] ?></td>
                    <td><?php echo $mostrar['EstadoRaton'] ?></td>
                    <td><?php echo $mostrar['Sistema(s)Operativo(s)'] ?></td>
                </tr>
        
                <?php
                }
        
                ?>
            </table>
            </center>
          
    </section>
    <footer>
		<p>Inicio | Sobre nosotros | Contactanos </p>
		<p>&copy; 2020 Tecnologías para la Web</p>
	</footer>
</body>
</html>