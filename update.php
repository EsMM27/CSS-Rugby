<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rwc2023";

$conn = new mysqli($servername, $username, $password, $dbname);

$matchId = $_POST['match_id'];
$team1Score = $_POST['team1_score'];
$team2Score = $_POST['team2_score'];


$sql = "UPDATE results SET team1_score = $team1Score, team2_score = $team2Score WHERE match_id = $matchId";
//$sql = "UPDATE results SET team1_score = 10, team2_score = 5 WHERE match_id = 28813";
echo $sql;



if ($conn->query($sql) === TRUE) {
    echo "Scores updated successfully";
} else {
    echo "Error updating scores: " . $conn->error;
}

$conn->close();
?>