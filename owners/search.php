<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php
$username = $_POST['username'];
?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('sidebar.php'); ?>
				<div class="span9" id="content">
                     <div class="row-fluid">
					 
					 <div class="empty">
			 	         <div class="alert alert-success">
                            <strong> Advance Search Result List</strong>
                       </div>
			        </div>
				
					 <h2 id="sc" align="center"><image src="images/sclogo.png" width="45%" height="45%"/></h2>
					 <?php	
	             $count_student=mysqli_query($conn,"select * from admin where username LIKE '%$username%' ");
							 
	             $count = mysqli_num_rows($count_student);
                 ?>	 
				   <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                             <div class="muted pull-left"><i class="icon-reorder icon-large"></i>user Search Result List</div>
                          <div class="muted pull-right">
								Number of Search users : <span class="badge badge-info"><?php  echo $count; ?></span>
							 </div>
						  </div>
						  
<h4 id="sc">Subscribers List 
    <div align="right" id="sc">Date:
		<?php
            $date = new DateTime();
             echo $date->format('l, F jS, Y');
        ?></div>
 </h4>						  
                  					  
<br/>
 	
<div class="block-content collapse in">
    <div class="span12">
	<form action="" method="post">
  	<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
		<thead>		
		        <tr>			        
                	<th>Name</th>
					<th>Username </th>
                    					
		    </tr>
		</thead>
<tbody>
<?php
		$search_query = mysqli_query($conn,"select * from admin	where username LIKE '%$username%'")or die(mysqli_error());
		while($row = mysqli_fetch_array($search_query)){
		$RegNo = $row['username'];
		?>
		<tr>
		
		
			 <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
			<td><?php echo $row['username']; ?></td>
			
						
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