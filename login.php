<?php
session_start();
include("conexion.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $correo = trim($_POST['correo']);
    $password = $_POST['password'];

    // Obtenemos también el campo 'nombre'
    $stmt = $conexion->prepare("SELECT id, nombre, password FROM usuarios WHERE correo = ?");
    $stmt->bind_param("s", $correo);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($resultado->num_rows > 0) {
        $usuario = $resultado->fetch_assoc();
        
        // Verificación de la contraseña encriptada
        if (password_verify($password, $usuario['password'])) {
            $_SESSION['usuario'] = $correo;
            $_SESSION['nombre_usuario'] = $usuario['nombre'];
            
            echo "<script>
                    alert('¡Bienvenido, " . addslashes($usuario['nombre']) . "!');
                    window.location.href='index.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Contraseña incorrecta.');
                    window.location.href='iniciosesion.php';
                  </script>";
        }
    } else {
        echo "<script>
                alert('No existe una cuenta vinculada a este correo.');
                window.location.href='iniciosesion.php';
              </script>";
    }

    $stmt->close();
    $conexion->close();
}
?>