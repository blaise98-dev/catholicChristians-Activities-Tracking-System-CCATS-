<div class="row-fluid">
    <!-- block -->
    <div class="block">
        <div class="navbar navbar-inner block-header">
            <div class="muted pull-left"><i class="icon-plus-sign icon-large"> Register New Choir</i></div>
        </div>
        <div class="block-content collapse in">
            <div class="span12">

                <!--------------------form------------------->
                <form method="post">
                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>
                                <input class="input focused" name="name" id="focusedInput" type="text" placeholder="Choir Name" required>
                            </p>
                        </div>
                    </div>
                    </p>
                    <div class="control-group">
                        <p>
                        <div class="controls">
                            <p>
                                <input class="input focused" name="residence" id="focusedInput" type="text" placeholder="Residence" required>
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
    $residence = $_POST['residence'];
    $representer = $_POST['representer'];
    $contact = $_POST['contact'];
    $query = @mysqli_query($conn, "select * from choirs where name='$name' and parish='" . $_SESSION['id'] . "'") or die(mysqli_error($conn));
    $count = mysqli_num_rows($query);

    if ($count > 0) { ?>
        <script>
            alert('This Choir Already Exists');
        </script>
    <?php
    } else {
        mysqli_query($conn, "insert into choirs (id,name,residence,representer,contact,parish) 
values(null,'$name','$residence','$representer','$contact','" . $_SESSION['id'] . "')") or die(mysqli_error($conn));

        mysqli_query($conn, "insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added choir $name')") or die(mysqli_error($conn));
    ?>
        <script>
            window.location = "add_choir.php";
            $.jGrowl("Choir Successfully added", {
                header: 'choir add'
            });
        </script>
<?php
    }
}
?>