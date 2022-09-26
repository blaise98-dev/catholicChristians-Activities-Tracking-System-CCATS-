   <div class="row-fluid">
     <!-- block -->
     <div class="block">
       <div class="navbar navbar-inner block-header">
         <div class="muted pull-left"><i class="icon-plus-sign icon-large"> Enter Your Tithe</i></div>
       </div>
       <div class="block-content collapse in">
         <div class="span12">
           <form method="post">

             <div class="control-group">
               <div class="controls">
                 <input class="input focused" name="year" id="focusedInput" type="text" onfocus="(this.type='month')" placeholder="Year" required>
               </div>
             </div>
             <div class="control-group">
               <div class="controls">
                 <input class="input focused" name="amount" id="focusedInput" type="number" placeholder="Amount" required>
               </div>
             </div>

             <div class="control-group">
               <div class="controls">
                 <button name="save" class="btn btn-info" id="save" data-placement="right" title="Click to Save"><i class="icon-plus-sign icon-large"> Save</i></button>
                 <script type="text/javascript">
                   $(document).ready(function() {
                     $('#save').tooltip('show');
                     $('#save').tooltip('hide');
                   });
                 </script>
               </div>
             </div>
           </form>
         </div>
       </div>
     </div>
     <!-- /block -->
   </div>

   <?php

    if (isset($_POST['save'])) {
      $amount = $_POST['amount'];
      $year = $_POST['year'];

      function GUID()
      {
        return strtoupper(bin2hex(openssl_random_pseudo_bytes(8)));
      }
      $trcode = GUID();
      $result = mysqli_query($conn, "insert into tithe (Amount,year,Trcode,na,parish) values('$amount','$year','$trcode','$session_id','" . $_SESSION['parish'] . "')") or die(mysqli_error($conn));
      $data = array(
        "telephoneNumber" => '25'.$session_id,
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
     <script>
       window.location = "Tithes.php";
       $.jGrowl("The Giving Successfully added", {
         header: 'Giving added'
       });
     </script>
   <?php
    }

    ?>