<?php
//session_start();
?>
<?php
$title = "Home Page";
include('header.php');
//$name = $_COOKIE['username'];
//if ($_COOKIE['flag'] == true) {

?>
<html>
<head>
<title>User Login</title>
</head>
<body>
<body style="background-color:lightgrey;">
<?php
if($_SESSION["bookname"]) {
?>
<!--Welcome <?php echo $_SESSION["bookname"]; ?>. Click here to <a href="logout.php" tite="Logout">Logout.-->
<?php
}else echo "<h1>Please enter book name first .</h1>";
?>


<h1 align="center"style ="color:black;">Library</h1><br />
<div style="padding:30px">
        <table width="100%">
            <tr>
                
                
           
     <a href="updatebook.php" align="center" style ="color:RosyBrown;"><?php echo $_SESSION["bookname"]; ?></a><br><br />

      <a href='../controller/removebook.php'style ="color:RosyBrown;">Remove</a><br><br>
   
    <a href="addbook.php" align="center" style ="color:RosyBrown;">Add Book</a>
     <br /><br />
           <a href="index.php">Search Book</a>
     <br><br>
    <a href='homepage.php'style ="color:RosyBrown;">Home</a><br><br>
    
      </tr>
        </table>  

</body>
</html>

<?php
//}
   //else
    //{
       //header('location: homepage.php');
    //}
    include('footer.php');
    ?>
