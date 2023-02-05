<?php
include "dbconn.php";
$amount = $_POST['Amount'];
$year = $_POST['year'];
$na=$_POST['phone_used'];
function GUID()
{
  return strtoupper(bin2hex(openssl_random_pseudo_bytes(8)));
}
$trcode = GUID();
$result = mysqli_query($conn, "insert into tithe (Amount,year,Trcode,phone_used,parish) values('$amount','$year','$trcode','$na','" . $_SESSION['parish'] . "')") or die(mysqli_error($conn));
$data = array(
  "telephoneNumber" => '25'.$na,
  "amount" =>  $amount,
  "organizationId" => 'e8f3a6da-dda2-429f-8cfb-935fc996a7f5',
  "description" => 'Payment for tithe',
  "callbackUrl" => "http://localhost/Projects/Final_ProjectKUMBADASLIVA/members/Tithes.php",
  "transactionId" => "$trcode"

);
$successfulPayment=array(

"statusDescription"=>"PAID DONE SUCCESSFULLY",
"spTransactionId"=>"1189008900089",
"walletTransactionId"=>"142bd904043011e989e1a30736f9425c",
"chargedCommission"=> 2.5,
"currency"=>"RWF",
"paidAmount"=> $amount,
"transactionId"=> "$trcode",
"statusCode"=> "200",
"status"=> "SUCCESS"
);

$headers = array(
  "Content-Type" => "application/json",
  "Accept" => "application/json",
  "Host" => "localhost:8080",
  "Content-Length" => 290
);
$url = "https://opay-api.oltranz.com/opay/paymentrequest";
$data = http_build_query($data);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_POSTFIELDS, $headers);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
$result = curl_exec($ch);
$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

if (!$result) {
echo ("Error occured try again with correct data!");
}

?>