<?php
require_once('dbconn.php');
$rowCount = count($_POST["selector"]);
for ($i = 0; $i < $rowCount; $i++){
        $result = mysqli_query($conn, "DELETE FROM tithe WHERE `tithe`.`titheid`='" . $_POST["selector"][$i] . "'");
    }
    header("location: Tithes.php");
