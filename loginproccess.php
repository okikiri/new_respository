
<?php 
session_start();
require ("connectme.php");
 // username and password sent from form
$username=$_POST['username'];
$password=$_POST['password'];
$result=mysql_query("SELECT * FROM students WHERE matric_no ='$username' and password='$password' and status = '0'") or die (mysql_error());
// Mysql_num_row is counting table row
$count=mysql_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){
// set session variable
	while($row=mysql_fetch_array($result)){  
		$_SESSION['id']= $row['id']; 
		$_SESSION['matric_no']= $row['matric_no']; 
		
		// track the log in time of the user
		$date = date ('d/m/y h:i:s');
		$track = mysql_query("INSERT INTO log_details (`userid` ,`date`,`log`) 
		VALUES ('$_SESSION[id]','$date','1')") or die(mysql_error());
	}
	header("location: voters.php");
}
else {
	echo "Wrong Username, Password or maybe you have logged in before. click <a href='index.php'>here</a> to go back";
}
?>
