<?php
include('dbconn.php');
if (isset($_POST['delete_member'])) {
	$id = $_POST['selector'];
	$N = count($id);
	for ($i = 0; $i < $N; $i++) {
		$result = mysqli_query($conn, "DELETE FROM `members` WHERE keyu='$id[$i]'");
	}
	header("location: membersDetail.php");
}
