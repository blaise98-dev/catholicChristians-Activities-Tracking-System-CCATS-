<?php
include "dbconn.php";
session_start();
error_reporting(1);
$response = array();
$giv=$_SESSION['mobile'];
$result = mysqli_query($conn, "SELECT * FROM giving ") or die(mysqli_error($conn));
if(mysqli_num_rows($result) > 0){
while($row=mysqli_fetch_array($result)){
array_push($response,$row);
}
}else{
    $response['success'] = 0;
    $response['message'] = 'no data found';
}
 echo json_encode($response,JSON_PRETTY_PRINT);

 ?>