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
                 <input class="input focused" name="givedate" id="focusedInput" type="text" type="text" onfocus="(this.type='date')" placeholder="Date" required>
               </div>
             </div>
             <div class="control-group">
                      <div class="controls">
                        <select class="input focused" name="christian_username" id="focusedInput" required>
                                      <option value="" selected>Select username</option>

                                      <?php
                                      $sql = mysqli_query($conn, "select * from members,subparish,community,admin 
                                      where members.community=community.id and members.subparish=subparish.id 
                                      and members.residence='" . $_SESSION['id'] . "' group by christian_id");
                                      while ($rows = mysqli_fetch_array($sql)) { ?>

                                          <option value="<?php echo $rows['mobile']; ?>"><?php echo $rows['mobile']; ?></option>
                                      <?php
                                      }
                                      ?>
                                  </select>                     
                       </div>
                    </div>

										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="amount" id="focusedInput" type="number" placeholder = "Amount" required>
                                          </div>
                                        </div>
									
											<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="for" id="focusedInput" type="text" placeholder = "Giving Towards" required>
                                          </div>
                                        </div>
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="mobile" id="focusedInput" type="text" placeholder = "Momo/ Airtel Money" required>
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
$christian_username=$_POST['christian_username'];
$reason = $_POST['for'];
$mobile = $_POST['mobile'];

  function GUID()
  {
    return strtoupper(bin2hex(openssl_random_pseudo_bytes(8)));
  }
  $trcode = GUID();
mysqli_query($conn,"insert into giving (Amount,phone_used,Trcode,christian_username,ya,status,parish) values('$amount','$mobile','$trcode','$christian_username','$reason','pending','" . $_SESSION['id'] . "')")or die(mysqli_error($conn));

  $data = array(
    "telephoneNumber" => '25' . $mobile,
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

?>
<script>
window.location = "giving.php";
$.jGrowl("The Giving Successfully added", { header: 'Giving added' });
</script>
<?php
}

?>