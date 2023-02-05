<?php
include ('dbconn.php');
const WEBHOOK_SECRET = 'de929dab2d24820321512ea75c14c6bf31201b93a39eccc1bdc2f7f6fee847456761f8654c0206034dd58d07638da06f';
function verifySignature ($body, $signature) {
    $digest = hash_hmac('sha1', $body, WEBHOOK_SECRET);
    return $signature === $digest ;
}
if (!verifySignature(file_get_contents('php://input'), $_SERVER['HTTP_X_TAWK_SIGNATURE'])) {
    // verification failed
    // save the request body in .txt file
}


// convert the request body to json
$json = json_decode(file_get_contents('php://input'), true);

// get the message from the json
$transactionId = $json['transactionId'];
$status = $json['status'];

// update status from tithe table
mysqli_query($conn, "update tithe set status = 'paid' where trcode = '$transactionId' ") or die(mysqli_error($conn));

file_put_contents('request.txt', file_get_contents('php://input'));
exit;
?>