<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
	<?php include('navbar.php'); ?>
	<?php include('sidebar.php'); ?>
	<div class="container-fluid" >
		<div class="row-fluid">
			<div class="span9" id="content" >
				<div class="row-fluid">

					<script type="text/javascript">
						$(document).ready(function() {
							$('#add').tooltip('show');
							$('#add').tooltip('hide');
						});
					</script>
					<div id="sc" align="center">
						<image src="images/sclogo.png" width="45%" height="45%" />
					</div>
					<?php
					$count_student = mysqli_query($conn, "select * from tithe where christian_username='$session_id' and tithe.status='paid'");
					$count = mysqli_num_rows($count_student);
					?>
					<div id="block_bg" class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left"><i class="icon-reorder icon-large"></i> Tithing list </div>
							<div class="muted pull-right">
								Total tithes paid: <span class="badge badge-info"><?php echo $count; ?></span>
							</div>
						</div>

						<h4 id="sc">
							<div align="right" id="sc">Date:
								<?php
								$date = new DateTime();
								echo $date->format('l, F jS, Y');
								?></div>
						</h4>


						<div class="container-fluid">
							<div class="row-fluid">
							<div class="empty">
								<div class="pull-left">
										<a href="Tithes.php" class="btn btn-info"  data-placement="left" ><i class="icon-plus icon-large"></i> Add new Tithe</a>
										
									</div>
									<div class="pull-right">
										<a href="print_tithe.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a>
										<script type="text/javascript">
											$(document).ready(function() {
												$('#print').tooltip('show');
												$('#print').tooltip('hide');
											});
										</script>
									</div>
								</div>
							</div>
						</div>

						<div class="block-content collapse in">
							<div class="span12">
								<form action="" method="post">
									<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-hover table-responsive table-bordered " id="example">
										<thead>
											<tr class=" text-bolder">
												<th>member Name </th>
												<th>Momo/ Airtel Money </th>
												<th>Transaction Code</th>
												<th>Amount</th>

												<th>Status</th>
												<th>Date & Time </th>



											</tr>
										</thead>
										<tbody>
											<!-----------------------------------Content------------------------------------>
											<?php
											$student_query = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN tithe ON members.id = tithe.christian_username WHERE tithe.christian_username ='$session_id' and tithe.status='paid' ") or die(mysqli_error($conn));
											while ($row = mysqli_fetch_array($student_query)) {
												$username = $row['titheid'];

											?>

												<tr class=" text-bold">
													<td><?php echo $row['fname'] . " " . $row['lname']; ?></td>
													<td><?php echo $row['phone_used']; ?></td>
													<td><?php echo $row['Trcode']; ?></td>
													<td><?php echo $row['Amount']; ?></td>
													<td><?php echo $row['status']; ?></td>
													<td><?php echo $row['paytime']; ?></td>
												</tr>

											<?php } ?>

										</tbody>
									</table>
								</form>


							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<?php include('footer.php'); ?>
	</div>
	<?php include('script.php'); ?>
</body>

</html>