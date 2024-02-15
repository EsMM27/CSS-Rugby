<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8mb4");
//fixes the special characters issue i had with the names like "Martín Sigren" (í) for json_encode
//note for self: utf8mb4 is the same as utf8 but with 4 bytes instead of 3, so it can handle more characters


$sql = "SELECT player_id AS player_link, player_name, team_name, tackles AS points,team_id FROM player_tackles";

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