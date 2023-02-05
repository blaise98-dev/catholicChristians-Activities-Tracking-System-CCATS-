<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include_once('dbconn.php'); ?>
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
                            <div class="muted pull-left"><i class="icon-reorder icon-large"></i> Christians requesting to Join our parish </div>

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
                                                <th>Christian Name </th>
                                                <th>mobile No. </th>
                                                <th>Reason for Joining</th>
                                                <th>Transfer code</th>
                                                <th>Previous Parish</th>
                                                <th>Action </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-----------------------------------Content------------------------------------>
                                            <?php
                                            $username=0;
                                            $mobile="";
                                            $student_query = mysqli_query($conn, "SELECT tbltransfer.id, tbltransfer.christianId,members.mobile,tbltransfer.newParish,`admin`.admin_id,`admin`.`role`,tbltransfer.status,tbltransfer.transferCode ,tbltransfer.transfeReason,members.fname,members.lname FROm tbltransfer,`admin`,members WHERE tbltransfer.christianId=members.mobile and tbltransfer.newParish=`admin`.admin_id AND `admin`.`role`='parish' and tbltransfer.status='outgoing' and tbltransfer.newParish='$session_id'") or die(mysqli_error($conn));
                                            while ($row = mysqli_fetch_array($student_query)) {
                                                $username = $row['id'];
                                                $mobile=$row['mobile'];

                                                $previous_query = mysqli_query($conn, "SELECT tbltransfer.newParish,tbltransfer.christianId, admin.username,tbltransfer.status,`admin`.`role`,`admin`.admin_id,tbltransfer.previousParish FROm tbltransfer,`admin`WHERE tbltransfer.previousParish=`admin`.admin_id AND `admin`.`role`='parish' and tbltransfer.status='outgoing' and tbltransfer.newParish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                                                while ($rowparish = mysqli_fetch_array($previous_query)) {
    
                                                ?>

                                                <tr>
                                                    <td><?php echo $row['fname'] . " " . $row['lname']; ?></td>
                                                    <td><?php echo $row['mobile']; ?></td>
                                                    <td><?php echo $row['transfeReason']; ?></td>
                                                    <td><?php echo $row['transferCode']; ?></td>
                                                    <td><?php echo $rowparish['username']; ?></td>
                                                    <td><a tabindex="-1" href="#modaltransfer"  class="text-primary" data-toggle="modal">Approve</a>
                                                    </td>
                                                </tr>

                                            <?php }} ?>

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
        <div id="modaltransfer" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="mymodalLabel" aria-hidden="true">
            <div class="modal-body">
                <form method="post" class="form-horizontal" action="#">
                    <h3 id="mymodalLabel">Do you realy want to Approve this Transfer?</h3>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>
                    Close</button>
                <button class="btn btn-info" name="Approve_transfer"><i class="icon-save icon-large"></i> Approve</button>
            </div>
            </form>
        </div>
        <!-- end  modal -->

        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>

</html>
<?php
if (isset($_POST['Approve_transfer'])) {
    // error_reporting(1);
    mysqli_query($conn, "update tbltransfer set status = 'incoming',received_status=1 where id = '$username' and newParish=$session_id ") or die(mysqli_error($conn));
    mysqli_query($conn, "update members set members.Residence =$session_id where mobile = $mobile") or die(mysqli_error($conn));

    echo '<meta http-equiv="refresh" content="0;url=incomingChristians.php">';
    header('Location:incomingChristians.php');

}?>