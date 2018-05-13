<?php
    header("Content-Type:application/json,charset=utf-8");
    require_once("../init.php");

    $sql="select * from news_carousel";
    #获取查询出来的数据的最新三个显示在主页上
    echo json_encode(array_slice(sql_execute($sql),-3));
?>