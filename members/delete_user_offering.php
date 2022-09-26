<?php
require_once('dbconn.php');
$rowCount = count($_POST["selector"]);
for ($i = 0; $i < $rowCount; $i++){
        $result = mysqli_query($conn, "DELETE FROM offering WHERE `offering`.`offeringid`='" . $_POST["selector"][$i] . "'");
    }
    header("location: offering.php");
?>


