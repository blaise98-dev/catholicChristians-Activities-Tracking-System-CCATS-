<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
	<?php include('navbar.php'); ?>
	<div class="container-fluid">
		<div class="row-fluid">
			<?php include('sidebar.php'); ?>
			<div class="span3" id="addmembers">
				<?php include('addmembers.php'); ?>
			</div>
			<div class="span6" id="">
				<div class="row-fluid">
					<!-- block -->

					<div class="empty">
						<div class="alert alert-success alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<i class="icon-info-sign"></i> <strong>Note!:</strong> Select the checkbox if you want to delete?
						</div>
					</div>

					<?php
					$count_members = mysqli_query($conn, "select * from members,subparish,community,admin 
											where members.community=community.id and members.subparish=subparish.id 
											and members.residence='" . $_SESSION['id'] . "' group by keyu;
");
					$count = mysqli_num_rows($count_members);
					?>
					<div id="block_bg" class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left"></i><i class="icon-members"></i> Church members (s) List</div>
							<div class="muted pull-right">
								Number of Church members: <span class="badge badge-info"><?php echo $count; ?></span>
							</div>
						</div>
						<div class="block-content collapse in">
							<div class="span12">
								<form action="delete_member.php" method="post">
									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
										<a data-placement="right" title="Click to Delete check item" data-toggle="modal" href="#members_delete" id="delete" class="btn btn-danger" name=""><i class="icon-trash icon-large"> Delete</i></a>
										<script type="text/javascript">
											$(document).ready(function() {
												$('#delete').tooltip('show');
												$('#delete').tooltip('hide');
											});
										</script>
										<?php include('modal_delete.php'); ?>
										<thead>
											<tr>
												<th>check</th>
												<th>Name</th>
												<th>mobile</th>
												<th>Parish</th>
												<th>Update</th>
											</tr>
										</thead>
										<tbody>
											<?php
											$members_query = mysqli_query($conn, "select * from members,subparish,community,admin 
											where members.community=community.id and members.subparish=subparish.id 
											and members.residence='" . $_SESSION['id'] . "' group by keyu") or die(mysqli_error($conn));
											while ($row = mysqli_fetch_assoc($members_query)) {
												$id = $row['keyu'];
											?>

												<tr>
													<td width="30">
														<input id="optionsCheckbox" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
													</td>
													<td><?php echo $row['fname'] . " " . $row['lname']; ?> </td>

													<td><?php echo $row['mobile']; ?></td>
													<td><?php echo $_SESSION['username']; ?></td>

													<?php include('toolttip_edit_delete.php'); ?>
													<td width="120">
														<a rel="tooltip" title="Edit member" id="<?php echo $id; ?>" href="edit_members.php<?php echo '?id=' . $id; ?>" data-toggle="modal" class="btn btn-success"><i class="icon-pencil icon-large"> Edit member</i></a>
													</td>


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