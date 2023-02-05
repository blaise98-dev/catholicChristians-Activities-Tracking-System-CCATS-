<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar.php'); ?>
    <?php include('sidebar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span9" id="content">
                <div class="row-fluid">

                    <script type="text/javascript">
                        $(document).ready(function() {
                            $('#add').tooltip('show');
                            $('#add').tooltip('hide');
                        });
                    </script>
                    <div id="sc" align="center">
                        <image src="images/sclogo.png" width="45%" height="45%" />
                    </div>
                    <?php
                    $count_student = mysqli_query($conn, "select * from members INNER JOIN offering ON members.id=offering.christian_username and offering.parish=members.Residence and offering.status='paid' and members.id='$session_id' and members.id=offering.christian_username;");
                    $count = mysqli_num_rows($count_student);
                    ?>
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"><i class="icon-reorder icon-large"></i> Offering list</div>
                            <div class="muted pull-right">
                                Number of successful payments: <span class="badge badge-info"><?php echo $count; ?></span>
                            </div>
                        </div>

                        <h4 id="sc">
                            <div align="right" id="sc">Date:
                                <?php
                                $date = new DateTime();
                                echo $date->format('l, F jS, Y');
                                ?></div>
                        </h4>


                        <div class="container-fluid">
                            <div class="row-fluid m-2">
                                <div class="empty">
                                <div class="pull-left">
										<a href="offering.php" class="btn btn-info"  data-placement="left" ><i class="icon-plus icon-large"></i> Add new Offer</a>
										
									</div>
                                    <div class="pull-right">
                                        <a href="print_offering.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a>
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#print').tooltip('show');
                                                $('#print').tooltip('hide');
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="block-content collapse in">
                            <div class="span12">
                                <form action="" method="post">
                                    <table cellpadding="0" cellspacing="0" border="0" class=" table table-striped table-hover table-responsive table-bordered" id="example">
                                        <thead>
                                            <tr>
                                                <th>No </th>
                                                <th>Amount</th>
                                                <th>Payment Mobile/Airtel money</th>
                                                <th>Transaction Code</th>
                                                <th>Status</th>
                                                <th>Date & Time </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-----------------------------------Content------------------------------------>
                                            <?php
                                            $student_query = mysqli_query($conn, "select * from members INNER JOIN offering ON members.id=offering.christian_username and offering.parish=members.Residence and offering.status='paid' and members.id='$session_id' and members.id=offering.christian_username; ") or die(mysqli_error($conn));
                                            $i=0;
                                            while ($row = mysqli_fetch_array($student_query)) {
                                                $username = $row['offeringid'];
                                                $i++;
                                            ?>
                                                <tr>
                                                    <td><?php echo $i ?></td>
                                                    <td><?php echo $row['Amount']; ?></td>
                                                    <td><?php echo $row['phone_used']; ?></td>
                                                    <td><?php echo $row['Trcode']; ?></td>
                                                    <td><?php echo $row['status']; ?></td>
                                                    <td><?php echo $row['paytime']; ?></td>
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