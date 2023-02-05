<?php
include('dbconn.php');
?>

<form id="login_form1" class="form-signin" method="post">
	<h3 class="form-signin-heading">
		<i class="icon-lock"></i> Administrator Login
	</h3>
	<input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
	<input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
	<a href="../index.php" style="text-decoration:none; font-size:1em;"> Back to christian</a>
	<button data-placement="right" title="Click Here to Sign In" id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-large"></i> Sign in</button>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#signin').tooltip('show');
			$('#signin').tooltip('hide');
		});
	</script>
</form>
</br>
<div class="error">
	<?php

	if (isset($_POST['login'])) {

		$username = $_POST['username'];
		$password = $_POST['password'];
		$login_query = mysqli_query($conn, "select * from admin where username='$username' and password='$password'");
		$count = mysqli_num_rows($login_query);
		$row = mysqli_fetch_array($login_query);


		if ($count > 0) {

			if ( $row['status']==1) {
			session_start();
			$_SESSION['id'] = $row['admin_id'];
			$_SESSION['username'] = $row['username'];

			$date = new DateTime();
			
			 if ($username !== 'admin') {
				if ($username == 'developer') {
					$logindate = date_format($date, 'Y-m-d H:i:s');
				mysqli_query($conn, "insert into user_log (username,login_date,admin_id)values('$username','$logindate'," . $row['admin_id'] . ")") or die(mysqli_error($conn));
					header('location:../owners/dashboard.php');

				}
				else if($row['role']=='diocese'){
					$logindate = date_format($date, 'Y-m-d H:i:s');
				mysqli_query($conn, "insert into user_log (username,login_date,admin_id)values('$username','$logindate'," . $row['admin_id'] . ")") or die(mysqli_error($conn));
					header('location:../diocese/dashboard.php');

				}

				else{
				$logindate = date_format($date, 'Y-m-d H:i:s');
				mysqli_query($conn, "insert into user_log (username,login_date,admin_id)values('$username','$logindate'," . $row['admin_id'] . ")") or die(mysqli_error($conn));

			 	header('location:dashboard.php');
			}
				
			 } 
			}
			else {
				echo "
						<div class='alert alert-danger'>
							<p>Subscription ended please contact system admin to activate again!
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

</div>