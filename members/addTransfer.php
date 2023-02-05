
  <div class="row-fluid">
                        <!-- block -->
 <div class="block">
 <div class="navbar navbar-inner block-header">
<div class="muted pull-left"><i class="icon-plus-sign icon-large"> Request transfer</i></div>
</div>
<div class="block-content collapse in">
                                <div class="span12">
								
								 <!--------------------form------------------->
								<form method="post">
					<div class="control-group">
            
          <p>
                                    <h4 >Destination parish</h4>
                                </p>
                                <p> <div class="controls">
                                <select class="input focused" name="destinationParish" id="focusedInput" required>
                                    <option value="" selected>Select here ...</option>

                                    <?php
                                    $sql = mysqli_query($conn, "select * from admin where username !='developer' and username !='admin' and role='parish' ");
                                    while ($rows = mysqli_fetch_array($sql)) { ?>

                                        <option value="<?php echo $rows['admin_id']; ?>"><?php echo $rows['username']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                                 </div>
                                  </div>
								  </p>
								  <div class="control-group">
                    
            
          <p>
                                    <h4>Transfer reason</h4>
                                </p>
                                <p> <div class="controls">
                                   <p>
                                     <textarea class="input focused" name="transferReason" id="focusedInput" cols="10" rows="5" required> </textarea>
                                   </p>
                                 </div>
                                  </div>
								 							 
								  </p>
                                    </div>
										
                                
                                        
										<div class="control-group">
                                          <div class="controls">
 <button name="save" class="btn btn-info" id="save" data-placement="right" title="Click to Request"><i class="icon-plus-sign icon-large"> Request</i></button>
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
                  				 
<?php
if (isset($_POST['save'])){
$destinationParish = $_POST['destinationParish'];
$transferReason = $_POST['transferReason'];
$transferCode=strtoupper(bin2hex(openssl_random_pseudo_bytes(4)));

$sql = mysqli_query($conn, "select admin.admin_id,members.Residence,admin.username,members.mobile from members,admin where members.mobile='$session_id' and members.Residence=admin.admin_id");
while ($rows = mysqli_fetch_array($sql)) {  
     $previousParish=$rows['Residence']; 
  mysqli_query($conn,"INSERT INTO `tbltransfer`(`christianId`, `previousParish`, `newParish`, `transfeReason`, `transferCode`, `status`) VALUES ('$session_id',' $previousParish','$destinationParish','$transferReason','$transferCode','requested')")or die(mysqli_error($conn));

mysqli_query($conn,"insert into activity_log (date,username,action) values(NOW(),'$admin_username',' $session_id requested transfer to $destinationParish ')")or die(mysqli_error($conn));

}
?>
<script>
window.location = "add_transfer.php";
$.jGrowl("member Successfully sent", { header: 'member transfer' });
</script>
<?php

}
?>