<?php
error_reporting(0);
include_once('dbconn.php'); ?>
<?php
if (isset($_POST['submit'])) {
    $fname = $_POST['fname'];
    $sname = $_POST['sname'];
    $lname = $_POST['lname'];
    $Gender = $_POST['gender'];
    $birthday = $_POST['birthday'];
    $baptism_parish = $_POST['baptism_parish'];
    $residence = $_POST['Residence'];
    $pob = $_POST['pob'];
    $subparish = $_POST['subparish'];
    $community = $_POST['community'];
    $ministry = $_POST['ministry'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $password = $_POST['password'];


    $query = @mysqli_query($conn, "select * from members where  mobile = '$mobile'  ") or die(mysqli_error($conn));
    $count = mysqli_num_rows($query);

    if ($count > 0) { ?>
        <script>
            alert('This Member Already Exists');
            window.location = "index.php";
        </script>
    <?php
    } else {
        mysqli_query($conn, "insert into members (fname,sname,lname,Gender,birthday,baptism_parish,Residence,pob,subparish,community,ministry,mobile,email,thumbnail,password,id) 
values('$fname','$sname','$lname','$Gender','$birthday','$baptism_parish','$residence','$pob','$subparish','$community','$ministry','$mobile','$email','uploads/none.png','$password','$mobile')") or die(mysqli_error($conn));

        mysqli_query($conn, "insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added member $mobile')") or die(mysqli_error($conn));


    echo "Member Successfully added"; 
    ?>
        <script>
            window.location = "index.php";
            $.jGrowl("Member Successfully added", {
                header: 'Member add'
            });
        </script>

<?php
    }
}
?>