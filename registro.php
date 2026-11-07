<?php
include("conexion.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = trim($_POST['nombre']);
    $correo = trim($_POST['correo']);
    $password = $_POST['password'];

    // 1. Verificar si el correo ya existe
    $check_stmt = $conexion->prepare("SELECT id FROM usuarios WHERE correo = ?");
    $check_stmt->bind_param("s", $correo);
    $check_stmt->execute();
    $resultado = $check_stmt->get_result();

    if ($resultado->num_rows > 0) {
        echo "<script>
                alert('El correo ya está registrado.');
                window.location.href='registro.html';
              </script>";
    } else {
        // 2. Encriptar la contraseña por seguridad
        $password_encriptada = password_hash($password, PASSWORD_DEFAULT);

        // 3. Insertar el nuevo usuario con su nombre
        $stmt = $conexion->prepare("INSERT INTO usuarios (nombre, correo, password) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $nombre, $correo, $password_encriptada);

        if ($stmt->execute()) {
            echo "<script>
                    alert('¡Registro exitoso, " . addslashes($nombre) . "! Ya puedes iniciar sesión.');
                    window.location.href='iniciosesion.php';
                  </script>";
        } else {
            echo "Error al registrar el usuario: " . $conexion->error;
        }

        $stmt->close();
    }

    $check_stmt->close();
    $conexion->close();
}
?>