<?php
session_start();
header('Content-Type: application/json');

$response = array('email' => isset($_SESSION['email']) ? $_SESSION['email'] : '');

echo json_encode($response);
?>