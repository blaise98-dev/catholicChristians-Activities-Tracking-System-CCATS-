<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('sidebar.php'); ?>

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
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"><i class="icon-reorder icon-large"></i> Offerings waiting approval </div>

                        </div>

                        <h4 id="sc">
                            <div align="right" id="sc">Date:
                                <?php
                                $date = new DateTime();
                                echo $date->format('l, F jS, Y');
                                ?></div>
                        </h4>

                        <div class="block-content collapse in">
                            <div class="span12">
                                <form action="" method="post">
                                    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                                        <thead>
                                            <tr>
                                                <th>member Name </th>
                                                <th>mobile No. </th>
                                                <th>Transaction Code</th>
                                                <th>Amount</th>
                                                <th>Date & Time </th>
                                                <th>Action </th>



                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-----------------------------------Content------------------------------------>
                                            <?php
                                            // $student_query = mysqli_query($conn,"SELECT *FROm members  LEFT OUTER JOIN offering ON members.id = offering.christian_username WHERE offering.offeringid !='' ")or die(mysqli_error($conn));
                                            $student_query = mysqli_query($conn, "SELECT *FROm members  LEFT OUTER JOIN offering ON members.id = offering.christian_username WHERE offering.offeringid !='' and offering.status='pending'and offering.parish ='" . $_SESSION['id'] . "' ") or die(mysqli_error($conn));

                                            while ($row = mysqli_fetch_array($student_query)) {
                                                $username = $row['offeringid'];

                                            ?>
                                                <?php

                                                if (isset($_POST['Approve_offering'])) {
                                                    error_reporting(0);
                                                    mysqli_query($conn, "update offering set status = 'paid' where offeringid = '$username' ") or die(mysqli_error($conn));
                                                    echo '<meta http-equiv="refresh" content="0;url=pending_offering.php">';
                                                    header('Location:offering.php');
                                                }
                                                ?>
                                                <tr>
                                                    <td><?php echo $row['fname'] . " " . $row['lname']; ?></td>
                                                    <td><?php echo $row['mobile']; ?></td>
                                                    <td><?php echo $row['Trcode']; ?></td>
                                                    <td><?php echo $row['Amount']; ?></td>
                                                    <td><?php echo $row['paytime']; ?></td>
                                                    <td><a tabindex="-1" href="#modaloffering" class="text-primary" data-toggle="modal">Approve</a>
                                                    </td>
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
        <!-- modal -->
        <div id="modaloffering" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="mymodalLabel" aria-hidden="true">
            <div class="modal-body">
                <form method="post" class="form-horizontal" action="#">
                    <h3 id="mymodalLabel">Do you realy want to Approve this Payment?</h3>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>
                    Close</button>
                <button class="btn btn-info" name="Approve_offering"><i class="icon-save icon-large"></i> Approve</button>
            </div>
            </form>
        </div>
        <!-- end  modal -->

        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>

</html>