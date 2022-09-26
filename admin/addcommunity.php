<div class="row-fluid">
    <!-- block -->
    <div class="block">
        <div class="navbar navbar-inner block-header">
            <div class="muted pull-left"><i class="icon-plus-sign icon-large"> Register New community</i></div>
        </div>
        <div class="block-content collapse in">
            <div class="span12">

                <!--------------------form------------------->
                <form method="post">
                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>
                                <input class="input focused" name="name" id="focusedInput" type="text" placeholder="community Name" required>
                            </p>
                        </div>
                    </div>
                    </p>



                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>

                                <select class="input focused" name="subparish" id="focusedInput" required>
                                    <option value="" selected>---subparish---</option>

                                    <?php
                                    $sql = mysqli_query($conn, "select * from subparish where parish='" . $_SESSION['id'] . "'");
                                    while ($rows = mysqli_fetch_array($sql)) { ?>

                                        <option value="<?php echo $rows['id']; ?>"><?php echo $rows['subparish_name']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </p>
                        </div>
                    </div>
                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>
                                <input class="input focused" name="representer" id="focusedInput" type="text" placeholder="Representator" required>
                            </p>
                        </div>
                    </div>
                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>
                                <input class="input focused" name="contact" id="focusedInput" type="text" placeholder=" Contact no" required>
                            </p>
                        </div>
                    </div>
            </div>



            <div class="control-group">
                <div class="controls">
                    <button name="save" class="btn btn-info" id="save" data-placement="right" title="Click to Save"><i class="icon-plus-sign icon-large"> Save</i></button>
                    <script type="text/javascript">
                        $(document).ready(function() {
                            $('#save').tooltip('show');
                            $('#save').tooltip('hide');
                        });
                    </script>
                </div>
            </div>
            </form>

        </div>
    </div>
</div>
<!-- /block -->

<?php
if (isset($_POST['save'])) {
    $name = $_POST['name'];
    $subparish = $_POST['subparish'];
    $representer = $_POST['representer'];
    $contact = $_POST['contact'];
    $query = @mysqli_query($conn, "select * from community,subparish where name='$name' and subparish.parish='" . $_SESSION['id'] . "' ") or die(mysqli_error($conn));
    $count = mysqli_num_rows($query);

    if ($count > 0) { ?>
        <script>
            alert('This community Already Exists');
        </script>
    <?php
    } else {
        mysqli_query($conn, "insert into community (id,name,subparish,representer,contact) 
values(null,'$name','$subparish','$representer','$contact')") or die(mysqli_error($conn));

        mysqli_query($conn, "insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added community $name')") or die(mysqli_error($conn));
    ?>
        <script>
            window.location = "add_community.php";
            $.jGrowl("community Successfully added", {
                header: 'member add'
            });
        </script>
<?php
    }
}
?>