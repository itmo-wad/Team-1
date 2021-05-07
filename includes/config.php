<?php
define('DB_SERVER','localhost');  // localhost
define('DB_USER','root');    // username is root
define('DB_PASS' ,''); 	//password is empty
define('DB_NAME', 'shopping');    // database name
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>