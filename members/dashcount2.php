<?php
include "dbconn.php";
$response = array();
$sum=0;
$my="SELECT * FROM offering";
$result= mysqli_query($conn,$my);
if(mysqli_num_rows($result) > 0){
while($row=mysqli_fetch_assoc($result)){
array_push($response,$row);  
}
}else{
    $response['success'] = 0;
    $response['message'] = 'no data found';
}
 echo json_encode($response,JSON_PRETTY_PRINT);
 ?>