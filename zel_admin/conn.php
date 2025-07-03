<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database= "prj_e_agro_cart_db";
	$local_mode = true;
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>