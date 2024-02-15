<?php
session_start();

if (isset($_SESSION['email'])) {
    echo 'User: ' . $_SESSION['email'];
} else {
    echo 'User not logged in.';
}

?>