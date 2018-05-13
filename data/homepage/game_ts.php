<?php
    header("Content-Type:application/json,charset=utf-8");
    require_once("../init.php");
    $sql="select * from game_ts";
    echo json_encode(sql_execute($sql));
?>