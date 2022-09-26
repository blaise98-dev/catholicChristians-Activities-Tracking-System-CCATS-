<?php
include('./lib/dbcon.php');
dbcon();
if (isset($_POST['delete_giving'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"DELETE FROm giving  WHERE givingid !='' and  givingid='$id[$i]'");
}
header("location: addgiving.php");
}
