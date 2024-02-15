<?php
$servername = "localhost";
$username = "root";
$pass = "";
$dbname = "rwc2023";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $conn = new mysqli($servername, $username, $pass, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        session_start();

        $_SESSION['email'] = $email;
        header("Location: teams.html");
    } else {
        echo "Invalid email or password.";
    }

    

    $conn->close();
}
?>