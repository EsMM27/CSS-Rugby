<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT name FROM `venues`;";
$result = $conn->query($sql);

$venues = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $venues[] = $row;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($venues);
?>