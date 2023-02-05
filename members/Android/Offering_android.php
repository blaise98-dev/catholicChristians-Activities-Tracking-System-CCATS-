<?php
 include "dbconn.php";
$amount = $_POST['Amount'];
$year = $_POST['year'];
$na = $_POST['phone'];
      function GUID()
      {
        return strtoupper(bin2hex(openssl_random_pseudo_bytes(8)));
      }
      $trcode = GUID();
      $pay= mysqli_query($conn, "insert into offering (year,Amount,Trcode,na,parish) values('$year','$amount','$trcode','$na','". $_SESSION['parish']."')") or die(mysqli_error($conn));
      if($pay){
        $response ="success";
      $data = array(
        "telephoneNumber" => '25'.$na,
        "amount" =>  $amount,
        "organizationId" => 'e8f3a6da-dda2-429f-8cfb-935fc996a7f5',
        "description" => 'Payment for giving',
        "callbackUrl" => "http://myonlineprints.com/payments/callback",
        "transactionId" => "$trcode"
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
    }else{
      $response ="fail";
    }

  echo $response;
     ?>