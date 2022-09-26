<?php
include('dbconn.php');
error_reporting(1);
?>
	<?php

	if (isset($_POST['login'])) {

		$username = $_POST['username'];
		$password = $_POST['password'];

		$login_query = mysqli_query($conn, "select * from members,admin where members.mobile='$username' and members.password='$password' and members.Residence=admin.admin_id");
		$count = mysqli_num_rows($login_query);
		$row = mysqli_fetch_array($login_query);
		if ($count > 0) {
			if ( $row['status']==1) {
				
			session_start();
			$_SESSION['id'] = $row['id'];

			$date = new DateTime();
				mysqli_query($conn, "insert into user_log(username,login_date,admin_id)values('$username','$logindate'," . $row['id'] . ")") or die(mysqli_error($conn));
			
				header('location:members/dashboard.php');
			}
			else {
						echo "
				<div class='alert alert-danger'>
					<p>Please contact parish admin to claim your access!
					</p>
				</div>";
					}
			
		} 
		else {
			echo "
		<div class='alert alert-danger'>
			<p>Wrong username or password!
			</p>
		</div>";
		}
	}
	?>







