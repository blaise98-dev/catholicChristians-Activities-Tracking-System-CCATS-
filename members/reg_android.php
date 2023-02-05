
<?php
include "dbconn.php";
$fname = $_POST['fname'];
$sname = $_POST['sname'];
$lname = $_POST['lname'];
$Gender = $_POST['Gender'];
$birthday = $_POST['Birthday'];
$residence= $_POST['Residence'];
$pob = $_POST['pob'];
$ministry = $_POST['ministry'];
$mobile= $_POST['mobile'];
$email= $_POST['email'];
$response = array();
$password = $_POST['password'];
$query = mysqli_query($conn,"select * from members where  mobile = '$mobile'")or die(mysqli_error($conn));
$count = mysqli_num_rows($query);
 if ($count > 0){ ?>
 <script>
 alert('This member Already Exists');
</script>
 <?php
}else{
$tt= mysqli_query($conn,"insert into members (fname,sname,lname,Gender,Birthday,Residence,pob,ministry,mobile,email,thumbnail,password) 
values('$fname','$sname','$lname','$Gender','$birthday','$residence','$pob','$ministry','$mobile','$email','uploads/none.png','$password')")or die(mysqli_error($conn));
mysqli_query($conn,"insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added member $mobile')")or die(mysqli_error($conn));

if($tt){
$response = "success";

}else{
    $response = "Failed";
}
echo $response;
?>
<!-- <script>
window.location = "add_members.php";
$.jGrowl("member Successfully added", { header:'member add' });
</script>-->
<?php 
}

?>