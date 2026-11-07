<?php
$host = "localhost";
$usuario = "root";
$password = ""; // Por defecto en XAMPP está vacía
$base_datos = "tienda_adidas";

$conexion = new mysqli($host, $usuario, $password, $base_datos);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>