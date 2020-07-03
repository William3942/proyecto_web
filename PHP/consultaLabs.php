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
            <p>Consultar Laboratorios</p>
        </header>
            <center>
            <table bgcolor="white" border="1">
                <tr>
                    <td>Nombre Lab</td>
                    <td>Edificio</td>
                    <td>Salon</td>
                    <td>No.Computadoras</td>
                </tr>
        
                <?php
                    $sql="SELECT * from laboratorio";
                    $result=mysqli_query($conexion,$sql);
            
                    while($mostrar=mysqli_fetch_array($result)){
                ?>
        
                <tr>
                    <td><?php echo $mostrar['Nombre Lab'] ?></td>
                    <td><?php echo $mostrar['Edificio'] ?></td>
                    <td><?php echo $mostrar['Salon'] ?></td>
                    <td><?php echo $mostrar['No.Computadoras'] ?></td>
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