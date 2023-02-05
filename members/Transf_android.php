<?php
include('dbconn.php');
include('session.php');
$destinationParish = $_POST['destinationParish'];
$transferReason = $_POST['transferReason'];
$transferCode=strtoupper(bin2hex(openssl_random_pseudo_bytes(4)));
$sql = mysqli_query($conn, "select admin.admin_id,members.Residence,admin.username,members.mobile from members,admin where members.mobile='$session_id' and members.Residence=admin.admin_id");
while ($rows = mysqli_fetch_array($sql)) {  
     $previousParish=$rows['username']; 
 $ppp= mysqli_query($conn,"INSERT INTO `tbltransfer`(`christianId`, `previousParish`, `newParish`, `transfeReason`, `transferCode`, `status`) VALUES ('$session_id',' $previousParish','$destinationParish','$transferReason','$transferCode','requested')")or die(mysqli_error($conn));
  if($ppp){
	$response="success";
	}else{
		$response="Failed";
	}
	echo $response;
mysqli_query($conn,"insert into activity_log (date,username,action) values(NOW(),'$admin_username',' $session_id requested transfer to $destinationParish ')")or die(mysqli_error($conn));

}

?>