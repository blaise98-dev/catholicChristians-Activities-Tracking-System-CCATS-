<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
	<?php include('navbar.php'); ?>
	<?php include('sidebar.php'); ?>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="row-fluid">
					<a href="add_visitor.php" class="btn btn-info" id="add" data-placement="right" title="Click to Add members"><i class="icon-plus-sign icon-large"></i> Add Visitor</a>
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
					$count_members = mysqli_query($conn, "select * from visitor, admin where visitor.host_parish=admin.admin_id and admin.admin_id='" . $_SESSION['id'] . "'");
					$count = mysqli_num_rows($count_members);
					?>
					<div id="block_bg" class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left"><i class="icon-reorder icon-large"></i> Registered Visitors List</div>
							<div class="muted pull-right">
								Number of Registered Visitors: <span class="badge badge-info"><?php echo $count; ?></span>
							</div>
						</div>

						<h4 id="sc">Visitors List
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
										<a href="print_Visitors.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a>
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
								<form action="delete_visitors.php" method="post">
									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">


										<a data-placement="right" title="Click to Delete check item" data-toggle="modal" href="#visitor_delete" id="delete" class="btn btn-danger" name=""><i class="icon-trash icon-large"> Delete</i></a>
										<script type="text/javascript">
											$(document).ready(function() {
												$('#delete').tooltip('show');
												$('#delete').tooltip('hide');
											});
										</script>
										<?php include('modal_delete.php'); ?>
										<thead>
											<tr>
												<th>CHECK</th>
												<th>Name</th>
												<th>Gender </th>
												<th>Residence</th>
												<th>Place of Birth</th>
												<th>Birthday</th>
												<th>Event</th>
												<th>mobile No. </th>



											</tr>
										</thead>
										<tbody>
											<!-----------------------------------Content------------------------------------>
											<?php
											$members_query = mysqli_query($conn, "select * from visitor, admin where visitor.host_parish=admin.admin_id and admin.admin_id='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
											while ($row = mysqli_fetch_array($members_query)) {
												$id = $row['id'];

											?>

												<tr>
													<td width="30">
														<input id="optionsCheckbox" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
													</td>
													<td><?php echo $row['fname'] . " " . $row['lname']; ?></td>
													<td><?php echo $row['Gender']; ?></td>
													<td><?php echo $row['Residence']; ?></td>
													<td><?php echo $row['pob']; ?></td>
													<td><?php echo $row['Birthday']; ?></td>
													<td><?php echo $row['ministry']; ?></td>
													<td><?php echo $row['mobile']; ?></td>

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