<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar.php'); ?>
    <?php include('sidebar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span9" id="content">
                <div class="row-fluid">
                    <!-- block -->
                    <div class="empty">
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="icon-info-sign"></i> <strong>Note!:</strong> Select the checbox if you want to delete?
                        </div>
                    </div>

                    <?php
                    $count_log = mysqli_query($conn, "select * from subparish where parish='" . $_SESSION['id'] . "'");
                    $count = mysqli_num_rows($count_log);

                    ?>
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"><i class="icon-user"></i> Church Subparish</div>
                            <div class="muted pull-right">
                                Number of Subparish: <span class="badge badge-info"><?php echo $count; ?></span>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <div class="row-fluid">
                                <div class="empty">
                                    <div class="pull-right">
                                        <a href="print_subparish.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a>
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
                                <form action="delete_subparish.php" method="post">
                                    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                                        <a data-placement="right" title="Click to Delete checked item" data-toggle="modal" href="#delete_subparish" id="delete" class="btn btn-danger" name="delete_subparish"><i class="icon-trash icon-large"> Delete</i></a>
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#delete').tooltip('show');
                                                $('#delete').tooltip('hide');
                                            });
                                        </script>
                                        <?php include('modal_delete.php'); ?>
                                        <thead>
                                            <tr>
                                                <th>Check</th>
                                                <th>Name</th>
                                                <th>Representer</th>
                                                <th>Contact No. </th>



                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-----------------------------------Content------------------------------------>
                                            <?php
                                            $members_query = mysqli_query($conn, "select * from subparish where parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                                            while ($row = mysqli_fetch_array($members_query)) {
                                                $id = $row['id'];



                                            ?>

                                                <tr>
                                                    <td width="70">
                                                        <input type="checkbox" id="optionsCheckbox" name="selector[]" value="<?php echo $id; ?>">
                                                    </td>
                                                    <td><?php echo $row['subparish_name']; ?></td>
                                                    <td><?php echo $row['representer']; ?></td>
                                                    <td><?php echo $row['contact']; ?></td>

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