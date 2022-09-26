<?php
include('./lib/dbcon.php'); 
dbcon(); 
include('session.php');

$date = new DateTime();
$logoutdate = date_format($date, 'Y-m-d H:i:s');							
mysqli_query($conn,"update user_log set
logout_date ='$logoutdate'											
where admin_id = ' " . $session_id . "' ")or die(mysqli_error($conn));
session_destroy();
header('location:../admin/index.php');
?>