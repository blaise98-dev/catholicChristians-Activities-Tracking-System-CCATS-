<?php
include('dbconn.php'); 
if (isset($_POST['delete_community'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn, "DELETE FROM `community` WHERE id='$id[$i]'");
	
}
header("location: communityDetail.php");
}
