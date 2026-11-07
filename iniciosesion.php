<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ADIDAS</title>
</head>
<style>
	body{
		font-family:Times New Roman;
		text-align: center;
		margin: 0;
		background-color:#EAF0F2;
	}
	header{
		font-family: Arial;
		background-color: black;
		text-align: center;
		color: white;
		padding: 10px;
	}
	footer{
		font-family: Arial;
		background-color: black;
		text-align: center;
		color: white;
		padding: 10px;
	}
	.producto {
    display: inline-block;
    padding: 10px;
    margin: 15px;
    vertical-align: top;
    text-align: center;
    }
    nav{
    	background-color: white;
    	padding: 10px;
    	text-align: center;
    }
    nav a{
    	color: black;
    	padding: 10px 20px;
    	display: inline-block;
    	text-decoration: none;
    }
</style>
<body>
	<header>
		<h1>ADIDAS</h1>
	</header>
	<nav>
    	<a href="index.html">Inicio</a>
		<a href="calzado.html">Calzado</a>
		<a href="pantalones.html">Pantalones</a>
		<a href="sudaderas.html">Sudaderas Y Hoodies</a>
		<a href="camisa.html">Camisas</a>
		<a href="accesorios.html">Accesorios</a>
		<a href="iniciosesion.php">Iniciar Sesión</a>
	</nav>
	<h2>Iniciar Sesión</h2>
	<form action="login.php" method="POST">
    	<h3>Ingresa tu correo electronico:</h3>
    	<input type="email" name="correo" required>
    	<h3>Ingresa tu contraseña:</h3>
    	<input type="password" name="password" required>
    	<br><br>
    	<input type="submit" value="Enviar">
	</form>
	<h2>No Tengo Cuenta:</h2>
	<h3><a href="registro.html">Haz Click Aquí</a></h3>
	<footer>
		<p>Sandoval Lugo Javier</p>
		<p>5ºI</p>
		<p>24308051280661</p>
	</footer>
</body>
</html>