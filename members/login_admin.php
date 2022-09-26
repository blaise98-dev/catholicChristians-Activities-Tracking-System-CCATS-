<?php
include('dbconn.php');
?>
	
	<form id="login_form1" class="form-signin" method="post">
				<h3 class="form-signin-heading">
					<i class="icon-lock"></i> member Login
				</h3>
				<input type="text"      class="input-block-level"   id="username" name="username" placeholder="Username" required>
				<input type="password"  class="input-block-level"   id="password" name="password" placeholder="Password" required>
				
				<button data-placement="right" title="Click Here to Sign In" id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-large"></i> Sign in</button>
				<script type="text/javascript">
				$(document).ready(function(){
				$('#signin').tooltip('show');
				$('#signin').tooltip('hide');
				});
				</script>		
			</form>
	</br>
	<div class="error">
	<?php

if (isset($_POST['login'])){

$username=$_POST['username'];
$password=$_POST['password'];

$login_query=mysqli_query($conn,"select * from members where mobile='$username' and password='$password'");
$count=mysqli_num_rows($login_query);
$row=mysqli_fetch_array($login_query);

if ($count > 0){
	
session_start();
$_SESSION['id']=$row['id'];
				$date = new DateTime();
				$logindate = date_format($date, 'Y-m-d H:i:s');
				$query=mysqli_query($conn, "insert into user_log (username,login_date,member_id)
				values('$username','$logindate'," . $_SESSION['id']. ")") or die(mysqli_error($conn));
		
				if($query){echo "Success";}
				else{
					die();
				}
?>
<script>
$.jGrowl(" Welcome to Catholic membership system", { header: 'Welcome Note' });
window.location = "dashboard.php";
</script><?php

}else{
	echo " <div class='alert alert-danger'>
				<p>Wrong username or password!
				</p>
			</div>";
	
}
}
?>
</div>
