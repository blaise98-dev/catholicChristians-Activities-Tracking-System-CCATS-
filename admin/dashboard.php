<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Baptiste BIGIRUMWAMI">
    <link href="bootstrap/css/index_background.css" rel="stylesheet" media="screen" />

</head>
<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar.php') ?>
    <?php include('sidebar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span9" id="content">
                <div class="row-fluid">
                    <?php $query = mysqli_query($conn, "select * from admin where admin_id = '" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                    $row = mysqli_fetch_array($query);
                    ?>
                    <div class="col-lg-12">
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <img id="avatar1" class="img-responsive" src="<?php echo $row['adminthumbnails']; ?>">
                            <strong> Welcome! <?php echo $row['firstname'] . " " . $row['lastname'];  ?></strong>
                        </div>
                    </div>

                    <!-- block -->
                    <div class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"><i class="icon-dashboard">&nbsp;</i>Dashboard </div>
                            <div class="muted pull-right"><i class="icon-time"></i>&nbsp;<?php include('time.php'); ?></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">

                                <div class="block-content collapse in">
                                    <div id="page-wrapper">
                                        <?php
                                        $student = mysqli_query($conn, "select * from members where  members.Residence='" . $_SESSION['id'] . "' ") or die(mysqli_error($conn));
                                        $student = mysqli_num_rows($student);
                                        ?>
                                        <div class="row-fluid">
                                            <div class="span6">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-users fa-5x"></i><br />
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $student; ?></div>
                                                                    <div>All members</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="membersDetail.php">
                                                        <div class="modal-footer">
                                                            <span class="pull-left">View Details</span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <?php
                                        $student = mysqli_query($conn, "select * from event where event.parish='" . $_SESSION['id'] . "' ") or die(mysqli_error($conn));
                                        $student = mysqli_num_rows($student);
                                        ?>
                                            <div class="span6">
                                                <div class="panel panel-green">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-calendar  fa-5x" aria-hidden="true"></i><br />
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $student; ?></div>
                                                                    <div>Events & Announcements</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="events.php">
                                                        <div class="modal-footer">
                                                            <span class="pull-left">Events</span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   

                                    <div id="page-wrapper">
                                        <?php
                                        $result2 = mysqli_query($conn, "SELECT SUm(Amount) AS value_sum FROm giving where giving.parish='" . $_SESSION['id'] . "' ");
                                        $row = mysqli_fetch_assoc($result2);
                                        $sum2 = $row['value_sum'];
                                        ?>
                                        <div class="row-fluid">
                                            <div class="span6">
                                                <div class="panel panel-info">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-money  fa-5x" aria-hidden="true"></i>
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $sum2; ?></div>
                                                                    <div> Total Givings</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="giving.php">
                                                        <div class="modal-footer">
                                                            <span class="pull-left"> Totals Givings</span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <?php
                                            $result = mysqli_query($conn, "SELECT SUm(Amount) AS value_sum FROm offering where offering.parish='" . $_SESSION['id'] . "' ");
                                            $row = mysqli_fetch_assoc($result);
                                            $sum = $row['value_sum'];
                                            ?>
                                            <div class="span6">
                                                <div class="panel panel-success">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-money  fa-5x"></i><br />
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $sum; ?></div>
                                                                    <div>Total Offering</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="#">
                                                        <div class="modal-footer">
                                                            <span class="pull-left"></span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="page-wrapper">
                                        <?php
                                        $result2 = mysqli_query($conn, "SELECT SUm(Amount) AS value_sum FROm tithe where tithe.parish='" . $_SESSION['id'] . "' ");
                                        $row = mysqli_fetch_assoc($result2);
                                        $sum2 = $row['value_sum'];
                                        ?>
                                        <div class="row-fluid">
                                            <div class="span6">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-money  fa-5x" aria-hidden="true"></i>
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $sum2; ?></div>
                                                                    <div> Total Tithes</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="tithes.php">
                                                        <div class="modal-footer">
                                                            <span class="pull-left"> Total tithes</span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <?php
                                            $result = mysqli_query($conn, "SELECT SUm(Amount) AS value_sum FROm non_registered_user_offering where non_registered_user_offering.parish='" . $_SESSION['id'] . "' ");
                                            $row = mysqli_fetch_assoc($result);
                                            $sum = $row['value_sum'];
                                            ?>
                                            <div class="span6">
                                                <div class="panel panel-green">
                                                    <div class="panel-heading">
                                                        <div class="container-fluid">
                                                            <div class="row-fluid">
                                                                <div class="span3"><br />
                                                                    <i class="fa fa-money  fa-5x"></i><br />
                                                                </div>
                                                                <div class="span8 text-right"><br />
                                                                    <div class="huge"><?php echo $sum; ?></div>
                                                                    <div>Total Visitors Offering</div><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="#">
                                                        <div class="modal-footer">
                                                            <span class="pull-left"></span>
                                                            <span class="pull-right"><i class="icon-chevron-right"></i></span>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>
        </div>

    </div>
    </div>

    <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>