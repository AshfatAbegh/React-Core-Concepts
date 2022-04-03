<?php
    session_start();
    $message="";

               
    if(count($_POST)>0) {
        $con = mysqli_connect('127.0.0.1:3306','root','12345','project') or die('Unable To connect');
        $result = mysqli_query($con,"SELECT * FROM book WHERE bookname='" . $_POST["bookname"] . "'");
        $row  = mysqli_fetch_array($result);
        if(is_array($row)) {
        $_SESSION["id"] = $row['id'];
        $_SESSION["bookname"] = $row['bookname'];
        } 
       /* elseif($_SERVER["REQUEST_METHOD"] == "POST") {
       if (empty($_POST['bookname'])) {
        echo "All field are required.";}
      }*/

        else {
         //$message = "Invalid Username or Password!";
             echo "Invalid Bookname ";
        }
    }
    if(isset($_SESSION["id"])) {
    header("Location:../view/searchpage.php");
    }



 /*elseif(!isset($_SESSION["username"])) {
    echo "Null submission";
    }*/

?>
