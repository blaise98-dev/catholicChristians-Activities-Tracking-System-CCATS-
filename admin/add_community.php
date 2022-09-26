<?php include('header.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('sidebar.php'); ?>
            <div class="span3" id="addmembers">
                <?php include('addcommunity.php'); ?>
            </div>
            <div class="span6" id="">
                <div class="row-fluid">
                    <!-- block -->

                    <div class="empty">
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="icon-info-sign"></i> <strong>Note!:</strong> Select the checkbox if you want to delete?
                        </div>
                    </div>

                    <?php
                    $count_members = mysqli_query($conn, "SELECT * FROM subparish,community where community.subparish=subparish.id");
                    $count = mysqli_num_rows($count_members);
                    ?>
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"></i><i class="icon-members"></i> Church community (s) List</div>
                            <div class="muted pull-right">
                                Number of Church community: <span class="badge badge-info"><?php echo $count; ?></span>
                            </div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <form action="delete_community.php" method="post">
                                    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                                        <a data-placement="right" title="Click to Delete check item" data-toggle="modal" href="#delete_community" id="delete" class="btn btn-danger" name=""><i class="icon-trash icon-large"> Delete</i></a>
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#delete').tooltip('show');
                                                $('#delete').tooltip('hide');
                                            });
                                        </script>
                                        <?php include('modal_delete.php'); ?>
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>Name</th>
                                                <th>Subparish</th>
                                                <th>Community Representative</th>
                                                <th>Contact No. </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $members_query = mysqli_query($conn, "SELECT * FROM subparish,community where community.subparish=subparish.id and subparish.parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
                                            while ($row = mysqli_fetch_array($members_query)) {
                                                $id = $row['id'];
                                            ?>

                                                <tr>
                                                    <td width="30">
                                                        <input id="optionsCheckbox"  name="selector[]" type="checkbox" value="<?php echo $id; ?>">
                                                    </td>
                                                    <td><?php echo $row['name']; ?> </td>
                                                    <td><?php echo $row['subparish_name']; ?> </td>
                                                    <td><?php echo $row['representer']; ?> </td>
                                                    <td><?php echo $row['contact']; ?></td>

                                                    <?php include('toolttip_edit_delete.php'); ?>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>


            </div>
        </div>
        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>

</html>