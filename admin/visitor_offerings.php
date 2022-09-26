<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
	<?php include('navbar.php'); ?>
	<?php include('sidebar.php'); ?>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
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
					$count_payment = mysqli_query($conn, "select * from non_registered_user_offering WHERE non_registered_user_offering.parish='" . $_SESSION['id'] . "'");
					$count = mysqli_num_rows($count_payment);
					?>
					<div id="block_bg" class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left"><i class="icon-reorder icon-large"></i> Payment list</div>
							<div class="muted pull-right">
								Number of payments: <span class="badge badge-info"><?php echo $count; ?></span>
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
									<div class="pull-right">
										<a href="print_visitors_offerings.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a>
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
									<table cellpadding="0" cellspacing="0" border="0" class="table">
										<thead>
											<tr>
												<th>FirstName </th>
												<th>LastName </th>
												<th>Transaction Code</th>
												<th>Amount</th>
												<th>mobile</th>
												<th>Date & Time </th>



											</tr>
										</thead>
										<tbody>
											<!-----------------------------------Content------------------------------------>
											<?php
											$student_query = mysqli_query($conn, "select * from non_registered_user_offering WHERE status='paid' and non_registered_user_offering.parish='" . $_SESSION['id'] . "' ") or die(mysqli_error($conn));
											while ($row = mysqli_fetch_array($student_query)) {
												$username = $row['id'];

											?>

												<tr>
													<td><?php echo $row['firstname']; ?></td>
													<td><?php echo $row['lastname']; ?></td>
													<td><?php echo $row['trcode']; ?></td>
													<td><?php echo $row['amount']; ?></td>
                                                    <td><?php echo $row['mobile']; ?></td>
													<td><?php echo $row['date']; ?></td>
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