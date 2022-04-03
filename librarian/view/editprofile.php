<?php

//include "includes/db_connect.inc.php";
$con = mysqli_connect('127.0.0.1:3306','root','12345','project') or die('Unable To connect');

session_start();
if(isset($_POST["submit"]))  
 {  
   if (empty($_POST['username']) && empty($_POST['password'])) {
      
               echo "Null submission";
                }}

elseif(!isset($_SESSION["username"]))
{
  header("Location: login.php");
}


$uName = $uPass = $message = " ";

$olduName = $_SESSION["username"];


if($_SERVER["REQUEST_METHOD"] == "POST")
{
	if(!empty($_POST['username']))
	{
		$uName = mysqli_real_escape_string($con, $_POST['username']);
	}
	if(!empty($_POST['password']))
	{
		$uPass = mysqli_real_escape_string($con, $_POST['password']);
	}

$sql = "UPDATE library
SET username = '$uName', password = '$uPass'
WHERE username = '$olduName' ";

mysqli_query($con , $sql);


 echo "Profile is Updated";



}




?>

