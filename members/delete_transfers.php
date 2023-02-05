<?php
require_once('dbconn.php');
$rowCount = count($_POST["selector"]);
for ($i = 0; $i < $rowCount; $i++) {
    $result = mysqli_query($conn, "DELETE FROM tbltransfer WHERE `tbltransfer`.`id`='" . $_POST["selector"][$i] . "'");
}
header("location: add_transfer.php");
