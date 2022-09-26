<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('add_offering.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
				<?php	
	             $count_user=mysqli_query($conn, "select * from members,offering WHERE members.id=offering.na and offering.status='paid' and offering.parish='" . $_SESSION['id'] . "'");
	             $count = mysqli_num_rows($count_user);
                 ?>	 
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"></i><i class="icon-user"></i> Offering List</div>
								<div class="muted pull-right">
								Number of Offerings: <span class="badge badge-info"><?php  echo $count; ?></span>
							 </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form action="" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">								
										<thead>
										  <tr>
												<th></th>
												<th>Name</th>
												<th>Amount</th>
												<th>Transaction Id</th>
										
												<th>Date</th>
										   </tr>
										</thead>
										<tbody>
													<?php
													$user_query = mysqli_query($conn, "select * from members INNER JOIN offering ON members.id=offering.na and  offering.parish='" . $_SESSION['id'] . "'")or die(mysqli_error($conn));
													while($row = mysqli_fetch_array($user_query)){
													$id = $row['id'];
													?>
									
												<tr>
												<td width="30">
												<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
												</td>
												<td><?php echo $row['fname']; ?> <?php echo $row['lname']; ?></td>
	
												<td><?php echo $row['Amount']; ?></td>
												<td><?php echo $row['Trcode']; ?></td>
												<td><?php echo $row['paytime']; ?></td>
											
																										
												
		
									
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