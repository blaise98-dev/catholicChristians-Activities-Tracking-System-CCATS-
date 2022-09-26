<?php
//Start session
session_start();
include_once('dbconn.php');
//Check whether the session variable SESS_mEmBER_ID is present or not
if (!isset($_SESSION['id']) ||(trim ($_SESSION['id']) == '')) {
	header("location:".host()."../index.php");
    exit();
}
$session_id =$_SESSION['id'];


$user_query = mysqli_query($conn,"select * from members where mobile = '$session_id'")or die(mysqli_error($conn));
$user_row = mysqli_fetch_array($user_query);
$admin_username = isset($user_row['mobile']);
 $_SESSION['parish']=$user_row['Residence']
?>