
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT players.team_id, players.name, players.abbrev, players.id FROM players  \n"

    . "ORDER BY `players`.`abbrev` ASC, `players`.`name` ASC;";

$result = $conn->query($sql);

$teams = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $teams[] = $row;
    }
}

foreach ($teams as &$row) {    
    if (isset($row['abbrev']) && $row['abbrev'] === 'ENG') {
        $row['abbrev'] = 'England';
        if (isset($row['id'])) {
            $row['id'] = "https://www.rugbyworldcup.com/2023/teams/england/player/{$row['id']}";
        }
    }
    if (isset($row['abbrev']) && $row['abbrev'] === 'IRL') {
        $row['abbrev'] = 'Ireland';
        if (isset($row['id'])) {
            $row['id'] = "https://www.rugbyworldcup.com/2023/teams/ireland/player/{$row['id']}";
        }
    }
    if (isset($row['abbrev']) && $row['abbrev'] === 'RSA') {
        $row['abbrev'] = 'South Africa';
        if (isset($row['id'])) {
            $row['id'] = "https://www.rugbyworldcup.com/2023/teams/south-africa/player/{$row['id']}";
        }
    }
    if (isset($row['abbrev']) && $row['abbrev'] === 'NZL') {
        $row['abbrev'] = 'New Zealand';
        if (isset($row['id'])) {
            $row['id'] = "https://www.rugbyworldcup.com/2023/teams/new-zealand/player/{$row['id']}";
        }
    }
    
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($teams);
?>