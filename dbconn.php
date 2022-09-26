<?php
$host="localhost";
		$uname="root";
		$pas="";
		$db_name="catholicdb";
		$tbl_name="members";
		
		$conn = @mysqli_connect("$host","$uname","$pas","$db_name") or die ("cannot connect to the database");
		?>