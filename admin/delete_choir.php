<?php
include('dbconn.php'); 
if (isset($_POST['delete_choir'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"DELETE FROM choirs WHERE `choirs`.`id`='$id[$i]'");
	
}
header("location: choirsDetail.php");
}
?>