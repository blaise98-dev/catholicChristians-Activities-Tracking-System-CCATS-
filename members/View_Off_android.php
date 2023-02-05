<?php
include "dbconn.php";
session_start();
error_reporting(1);
$response = array();
$off=$_SESSION['mobile'];
$my="SELECT * FROM offering";
$results = mysqli_query($conn,$my);
if(mysqli_num_rows($results) > 0){
while($row=mysqli_fetch_array($results)){
array_push($response,$row);
}
}else{
    $response['success'] = 0;
    $response['message'] = 'no data found';
}
 echo json_encode($response,JSON_PRETTY_PRINT);
 ?>