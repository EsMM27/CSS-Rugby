<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT player_id AS player_link, player_name, team_name, points,team_id FROM player_points";

$result = $conn->query($sql);

$stats = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $row['player_link'] = "https://www.rugbyworldcup.com/2023/teams/" . urlencode(strtolower(str_replace(' ', '-', $row['team_name']))) . "/player/" . $row['player_link'];
        unset($row['player_id']);

        $stats[] = $row;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($stats);
?>