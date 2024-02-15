<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = $sql = "SELECT CONCAT(date, ' ', time) AS datetime, stage, team1_id, team1_name, team1_score, team2_score, team2_name, team2_id, venue_name,match_id FROM results";

$result = $conn->query($sql);

$results = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $results[] = $row;
    }
}


$conn->close();

header('Content-Type: application/json');
echo json_encode($results);
?>