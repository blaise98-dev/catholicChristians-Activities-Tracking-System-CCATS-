<?php
include('dbconn.php'); 
if (isset($_POST['delete_subparish'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"DELETE FROM subparish WHERE `subparish`.`id`='$id[$i]'");
	
}
header("location: subparishDetail.php");
}
