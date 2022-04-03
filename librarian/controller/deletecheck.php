<?php
 session_start();
//include "includes/db_connect.inc.php";
$con = mysqli_connect('127.0.0.1:3306','root','12345','project') or die('Unable To connect');
$uName = $uPass = $uPub=$message = " ";
/*session_start();

if(!isset($_SESSION["bookname"]))
{
  header("Location: login.php");
}


$uName = $uPass = $uPub=$message = " ";

$olduName = $_SESSION["bookname"];*/


if($_SERVER["REQUEST_METHOD"] == "POST")
{
	if(!empty($_POST['bookname']))
	{
		$uName = mysqli_real_escape_string($con, $_POST['bookname']);}


$sql = "DELETE from book

WHERE bookname = '$uName' ";

mysqli_query($con , $sql);


 echo "Delete Successful";



}

else
{
	echo "null";
}



?>

