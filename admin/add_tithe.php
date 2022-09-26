   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><i class="icon-plus-sign icon-large"> Enter Your Giving</i></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="amount" id="focusedInput" type="number" placeholder = "Amount" required>
                                          </div>
                                        </div>
											<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="mobile" id="focusedInput" type="text" placeholder = "mobile Number" required>
                                          </div>
                                        </div>
										
										
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-info" id="save" data-placement="right" title="Click to Save"><i class="icon-plus-sign icon-large"> Save</i></button>
                                                <script type="text/javascript">
	                                            $(document).ready(function(){
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

if (isset($_POST['save'])){
$amount = $_POST['amount'];
$mobile = $_POST['mobile'];
  function GUID()
  {
    return strtoupper(bin2hex(openssl_random_pseudo_bytes(16)));
  }
  $trcode = GUID();
$check_query=mysqli_query($conn,"select * from members where members.mobile=$mobile and members.Residence='" . $_SESSION['id'] . "'");
  if ($row = mysqli_fetch_array($check_query)) {
mysqli_query($conn,"insert into tithe (Amount,Trcode,status,na,parish) values('$amount','$trcode','pending','$mobile','" . $_SESSION['id'] . "')")or die(mysqli_error($conn));

    $data = array(
      "telephoneNumber" => '25'.$mobile,
      "amount" =>  $amount,
      "organizationId" => 'e8f3a6da-dda2-429f-8cfb-935fc996a7f5',
      "description" => 'Payment for offering',
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

}
  else{
    echo "This user doesn't exists";
    
  }
?>
<script>
window.location = "Tithes.php";
$.jGrowl("The Tithe Successfully added", { header: 'Tithe added' });
</script>
<?php
}

?>