<?php
require_once('dbconn.php');
if (isset($_POST['delete_visitor'])) {
    $id = $_POST['selector'];
    $N = count($id);
    for ($i = 0; $i < $N; $i++) {
        $result = mysqli_query($conn, "DELETE FROM visitor WHERE `visitor`.`id`='$id[$i]'");
    }
header("location:Visitor.php");
}