<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('sidebar.php'); ?>
				<div class="span3" id="addmembers">
				<?php include('addTransfer.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
						
				<div class="empty">
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                         <i class="icon-info-sign"></i>  <strong>Note!:</strong> Select the checkbox if you want to delete?
                    </div>
               </div>
			   								
				 
                        <div id="block_bg" class="block">
                            
                            <div class="block-content collapse in">
                                <div class="span12">
								<form action="delete_transfers.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-hover table-responsive table-bordered" id="examples">
									<a data-placement="right" title="Click to Delete check item"  data-toggle="modal" href="#transfer_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"> Delete</i></a>
									<script type="text/javascript">
									 $(document).ready(function(){
									 $('#delete').tooltip('show');
									 $('#delete').tooltip('hide');
									 });
									</script>
									<?php include('modal_delete.php'); ?>
										<thead>
										  <tr>
												<th></th>
                                                <th>Destination parish</th>
                                                <th>Transfer Reason</th>
                                                <th>Transfer code</th>
                                                <th>Status</th>
												<th>Date </th> 
												

												<th></th>
										   </tr>
										</thead>
										<tbody>
													<?php
													$members_query = mysqli_query($conn,"SELECT tbltransfer.id, admin.username,tbltransfer.transfeReason,tbltransfer.transferCode,tbltransfer.status,tbltransfer.requestDate,tbltransfer.sent_status,tbltransfer.received_status FROM tbltransfer,members,`admin` WHERE tbltransfer.christianId=members.mobile and tbltransfer.newParish=`admin`.admin_id AND `admin`.`role`='parish'and tbltransfer.christianId='$session_id' and tbltransfer.received_status=0; ")or die(mysqli_error($conn));
													while($row = mysqli_fetch_array($members_query)){
													$id = $row['id'];
													?>
									
												<tr>
												<td width="30">
												<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
												</td>
												<td><?php echo $row['username']; ?> </td>
	
												<td><?php echo $row['transfeReason']; ?></td>
                                                <td><?php echo $row['transferCode']; ?></td>
												<?php if($row['status']=='requested'){?>

													<td class=" text-info ">Request sent</td>	

												<?php } elseif ($row['sent_status']==1 && $row['received_status']==0) {?>
													<td class="text-warning">Waiting approval</td>
												<?php } ?>										
                                                <td><?php echo $row['requestDate']; ?></td>											
												<?php include('toolttip_edit_delete.php'); ?>	
												</tr>
												<?php } ?>
										</tbody>
									</table>
									</form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>

</html>