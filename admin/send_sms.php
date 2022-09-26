<?php
require_once 'vendor/autoload.php';
$messagebird = new MessageBird\Client('CgSqimWkRD2fLYpiyrhfOS0QR');
$message = new MessageBird\Objects\Message;
$message->originator = '+250785207163';
$message->recipients = ['+250785207163'];
$message->body = 'You have successfully paid your tithe';
$response = $messagebird->messages->create($message);
if($response){
    echo "Message sent successfully!!";

}
else{
    echo "Failed to send Message";
}
