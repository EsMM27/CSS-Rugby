<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT pools.*, teams.*\n"

    . "FROM pools\n"

    . "JOIN teams ON pools.team_name = teams.name;";
$result = $conn->query($sql);

$pools = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $pools[] = $row;
    }

    function customSort($a, $b) {
        $poolComparison = strcmp($a['pool'], $b['pool']);

        if ($poolComparison == 0) {
            return strcmp($a['position'], $b['position']);
        }

        return $poolComparison;
    }

    usort($pools, 'customSort');
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($pools);
?>