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



                    <li class="dropdown">
                        <?php $querytithe = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN tithe ON members.id = tithe.na WHERE tithe.titheid !='' and tithe.status='pending' and tithe.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingtithe = mysqli_num_rows($querytithe);
                        ?>
                        <a href="pending_tithe.php">Pending Tithes: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingtithe; ?></span></a>
                    </li>
                    <li class="dropdown">
                        <?php
                        $queryoffering = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN offering ON members.id = offering.na WHERE offering.offeringid !='' and offering.status='pending' and offering.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingoffering = mysqli_num_rows($queryoffering);
                        ?>
                        <a href="pending_offering.php">Pending Offerings: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingoffering; ?></span></a>
                    </li>
                    <li class="dropdown">
                        <?php
                        $queryoffering = mysqli_query($conn, "SELECT *FROm non_registered_user_offering where status='pending' and parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendingoffering = mysqli_num_rows($queryoffering);
                        ?>
                        <a href="pending_visitor_offering.php">Pending Visitors Offerings: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendingoffering; ?></span></a>
                    </li>

                    <li class="dropdown">
                        <?php
                        $querygiving = mysqli_query($conn, "SELECT *FROm members LEFT OUTER JOIN giving ON members.id = giving.na WHERE giving.givingid !='' and giving.status='pending'and giving.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                        $pendinggiving = mysqli_num_rows($querygiving);
                        ?>
                        <a href="pending_giving.php">Pending Givings: &nbsp;<span class="badge badge-danger" style="background-color: red;"><?php echo $pendinggiving; ?></span></a>

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