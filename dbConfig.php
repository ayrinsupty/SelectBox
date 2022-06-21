<?php 
//Database Configuration
$dbHost = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "country";

//Create Database Connection
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

//Check Connection
if($db -> connect_error){
    die("Connection failed: " . $db->connect_error);
}