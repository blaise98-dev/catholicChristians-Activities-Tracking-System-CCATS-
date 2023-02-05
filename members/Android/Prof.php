<?php
include "dbconn.php";
include('session.php');
$response = array();
echo $admin_username;
$my="SELECT* FROM members where ";
$result= mysqli_query($conn,$my);
if(mysqli_num_rows($result) > 0){
while($row=mysqli_fetch_assoc($result)){
array_push($response,$row);  
}
}else{
    $response['success'] = 0;
    $response['message'] ='no data found';
}


 echo json_encode($response,JSON_PRETTY_PRINT);