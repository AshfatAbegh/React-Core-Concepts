<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title></title>
<link rel="stylesheet" href="css/shift.css">
</head>


    <center>
      
<div id="wrapper">
<div id="header">
<h1>Time Schedule</h1>
</div>
<div id="main-content">
<h2>All Records</h2>
<table cellpadding="7px">
  
</center>


<?php
//include '../dbconnection.php';

    $conn = new mysqli('localhost', 'root', '12345', 'project');
    
    if(!$conn){
        die("Error: Can't connect to the database!");
    }

$sql = "SELECT * from shift";
$result = mysqli_query($conn,$sql) or die("Query Failed");
if(mysqli_num_rows($result)>0){
 
?>

<thead>
 
<th>Librarian Name</th>
<th> Day </th>
<th> Time </th>
</thead>
<?php
while($row = mysqli_fetch_assoc($result)){
?>
<tbody>
<tr>
<td><?php echo $row['librarian']; ?></td>
<td><?php echo $row['day']; ?></td>
<td><?php echo $row['time']; ?></td>
 
</tr>
<?php
 }
?>
</tbody>
</table>
<?php } 
mysqli_close($conn);
?>

</div>
</div>
<div align = "right">
         <button style="margin-right:16%;" class="btn btn-info" onclick="window.location.href = 'homepage.php';">Back to Profile</button>
      </div>
  
</body>
</html>