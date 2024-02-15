<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT teams.id, teams.name, pools.pool FROM teams INNER JOIN pools ON teams.name = pools.team_name  \n"

    . "ORDER BY `teams`.`name` ASC;";

$result = $conn->query($sql);

$teams = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $teams[] = $row;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($teams);
?>