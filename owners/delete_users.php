<?php
include('dbconn.php');
// dbcon();
if (isset($_POST['delete_user'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"update admin set status=0 where admin_id='$id[$i]' and role='diocese'");
}
header("location: admin_user.php");
}
if (isset($_REQUEST['id']) &&isset($_REQUEST['unblock'])) {
	

	$result = mysqli_query($conn,"update admin set status=1 where admin_id=".$_REQUEST['id']." and role='diocese' ");
	header("location: admin_user.php");

}
?>