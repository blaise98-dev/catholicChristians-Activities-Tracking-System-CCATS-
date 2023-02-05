<?php include('dbconn.php'); 
 $query = mysqli_query($conn, "select * from admin where admin_id = '$session_id'") or die(mysqli_error($conn));
$row = mysqli_fetch_array($query);
?>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <span class="brand" href="#"> <b><?php echo $row['username'];?> Parish</b> dashboard</span>
            </div>
            <!--.nav-collapse -->
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">


<!-- Counting notifications based on service -->
                <!-- tithe -->
                <?php $querytithe = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN tithe ON members.id = tithe.christian_username WHERE tithe.titheid !='' and tithe.status='pending' and tithe.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingtithe = mysqli_num_rows($querytithe);
                        
                        // offering
                        $queryoffering = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN offering ON members.id = offering.christian_username WHERE offering.offeringid !='' and offering.status='pending' and offering.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingoffering = mysqli_num_rows($queryoffering);
                        
                        // visitor offering
                        $queryvisitoroffering = mysqli_query($conn, "SELECT * FROM non_registered_user_offering where status='pending' and non_registered_user_offering.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingvisitoroffering = mysqli_num_rows($queryvisitoroffering);
                        
                        // giving
                        $querygiving = mysqli_query($conn, "SELECT *FROm members LEFT OUTER JOIN giving ON members.id = giving.christian_username WHERE giving.givingid !='' and giving.status='pending'and giving.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendinggiving = mysqli_num_rows($querygiving);

                        // incoming christians
                        $incomingrequest=mysqli_query($conn, "SELECT *FROm tbltransfer,`admin`,members WHERE tbltransfer.christianId=members.mobile and tbltransfer.newParish=`admin`.admin_id AND `admin`.`role`='parish' and tbltransfer.status='outgoing' and tbltransfer.received_status=0 and tbltransfer.newParish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $incomingchristian= mysqli_num_rows($incomingrequest);    


                        // outgoing christians
                        $outgoingrequest=mysqli_query($conn, "SELECT tbltransfer.id, tbltransfer.christianId,members.mobile,tbltransfer.previousParish,`admin`.admin_id,`admin`.`role`,`admin`.username,tbltransfer.status,tbltransfer.transferCode ,tbltransfer.transfeReason,tbltransfer.newparish,members.fname,members.lname FROm tbltransfer,`admin`,members WHERE tbltransfer.christianId=members.mobile and tbltransfer.previousParish=`admin`.admin_id AND `admin`.`role`='parish' and tbltransfer.status='requested'and `admin`.admin_id='$session_id'") or die(mysqli_error($conn));
                        $outgoingchristian= mysqli_num_rows($outgoingrequest); 
                        

                        // total notifications
                        $totalnotifications=$pendinggiving+$pendingoffering+$pendingvisitoroffering+$pendingtithe+$incomingchristian+$outgoingchristian;
                        ?>

                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                        Notifications &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $totalnotifications; ?></span></i>
                        </a>
                        <ul class="dropdown-menu">
                        <li class="dropdown">
                        <a tabindex="-1" href="pending_tithe.php">Pending Tithes: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingtithe; ?></span></a>
                    </li>
                            
                        <li ><a  tabindex="-1" href="pending_giving.php">Pending Givings: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendinggiving; ?></span></a>

                        </li>
                    <li >
                        <a tabindex="-1" href="pending_offering.php">Pending Offerings: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingoffering; ?></span></a>
                    </li>

                    <li> <a tabindex="-1" href="pending_visitor_offering.php">Pending Visitor's Offer: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingvisitoroffering; ?></span></a>
                    </li>

                        
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="incomingChristians.php"><i class="icon-signin"></i>&nbsp;Incoming Christians: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $incomingchristian; ?></span></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="outgoingChristians.php"><i class="icon-signout"></i>&nbsp; Christian leave requests: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $outgoingchristian; ?></span></a>
                            </li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <img id="avatar1" class="img-responsive" src="<?php echo $row['adminthumbnails']; ?>">
                            &nbsp;<?php echo $row['firstname'] . " " . $row['lastname'];  ?> <i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="change_password_admin.php"><i class="icon-cog"></i>&nbsp;Change Password</a>
                                <a tabindex="-1" href="#mymodal3" data-toggle="modal"><i class="icon-picture"></i>&nbsp;Change Picture</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="logout.php"><i class="icon-signout"></i>&nbsp;Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<?php include('admin_change_picture.php'); ?>