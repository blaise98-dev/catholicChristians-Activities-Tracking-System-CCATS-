<?php
require_once('dbconn.php');
$rowCount = count($_POST["selector"]);
for ($i = 0; $i < $rowCount; $i++){
        $result = mysqli_query($conn, "DELETE FROM `event` WHERE `event`.`id`='" . $_POST["selector"][$i] . "'");
    }
    header("location: events.php");
