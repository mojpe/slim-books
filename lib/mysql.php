<?php
// a simple database connection function - returns a mysqli connection object
function connect_db() {
	$server = 'localhost'; // e.g 'localhost' or '192.168.1.100'
	$user = 'root';
	$pass = '';
	$database = 'myslimsite';
	$connection = new mysqli($server, $user, $pass, $database);

	return $connection;
}