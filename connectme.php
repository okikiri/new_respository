<?php
define("SQL_HOST","localhost");
define("SQL_USER","root");
define("SQL_PASS","");
define("SQL_DB","evoting");
$conn = mysql_connect(SQL_HOST, SQL_USER, SQL_PASS) or die("Could not connect to MySQL database. ". mysql_error());
mysql_select_db(SQL_DB,$conn)  or die(mysql_error());
?>

