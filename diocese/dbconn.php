<?php
$host="localhost";
		$uname="root";
		$pas="";
		$db_name="catholicdb";
		$tbl_name="admin";
		
		$conn = @mysqli_connect("$host","$uname","$pas","$db_name") or die ("cannot connect to the database");
		?>