<?php
include "dbconn.php";
$mobile= $_POST['mobile'];
$email= $_POST['email'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$password = $_POST['password'];
$response = array();
$result = mysqli_query($conn, "SELECT * FROM members ") or die(mysqli_error($conn));
if(mysqli_num_rows($result) > 0){
$update=mysqli_query($conn,"UPDATE members SET fname='$fname',lname='$lname',email='$email',password='$password' WHERE mobile='$mobile'");

}else{
    $response['success'] = 0;
    $response['message'] = 'no data found';
}
 echo json_encode($response,JSON_PRETTY_PRINT);

 ?>