
<?php
include('dbconn.php');
 session_start();
error_reporting(1);
?>
<?php
$phone = $_POST['mobile'];
$password = $_POST['password'];
$result = array();
$login_query = mysqli_query($conn, "select * from members WHERE mobile ='$phone' AND password ='$password'");
$count = mysqli_num_rows($login_query);
if ($count) {
    while($row = mysqli_fetch_array($login_query)){
        $_SESSION['mobile'] = $_POST['mobile'];
        $result['status'] ='success';

            echo json_encode($result);
    }
 
} 
else {
    $result['status'] ='error';
        echo json_encode($result);
    echo "
<div class='alert alert-danger'>
    <p>Wrong username or password!
    </p>
</div>";
}
?>