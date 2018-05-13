<?php
    header("Content-Type:application/json,charset=utf-8");
    @$isWhat=$_REQUEST["isWhat"];
    @$pno=$_REQUEST["pno"];
    @$pageSize=$_REQUEST["pageSize"];
    if(!$isWhat){
        $isWhat="isHot";
    };
    if(!$pno){
        $pno=1;
    };
    if(!$pageSize){
        $pageSize=20;
    }
    require_once("../init.php");
    $output=[
        "count"=>0,
        "pageSize"=>$pageSize,
        "data"=>''
        ];
    $start=($pno-1)*$pageSize;
    $sql="select * from news_info where $isWhat";
    $output["count"]=count(sql_execute($sql));

    $sql="select title,url,date from news_info where $isWhat=1 order by date desc limit $start,$pageSize";
    $output["data"]=sql_execute($sql);
    echo json_encode($output);
?>