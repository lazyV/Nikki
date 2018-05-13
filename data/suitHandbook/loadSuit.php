<?php
    header("Content-Type:application/json,charset=utf-8");
    require_once("../init.php");
    @$pageSize=$_REQUEST["pageSize"];
    if(!$pageSize){
        $pageSize=8;
    }
    @$pno=$_REQUEST["pno"];
    if(!$pno){
        $pno=1;
    }
    @$classId=$_REQUEST["classId"];
    if(!$classId){
        $classId=1;
    }
    switch(intval($classId)){
        case 1:
            $tableName="suit_festival";
            break;
        case 2:
            $tableName="suit_troupe";
            break;
        case 3:
            $tableName="suit_together";
            break;
        case 4:
            $tableName="suit_miracle";
            break;
        case 5:
            $tableName="suit_stars";
            break;
        case 6:
            $tableName="suit_apple";
            break;
        default:
            $tableName="suit_festival";
    }
    $output=[
        "suitCount"=>0, //一共有多少图片
        "pageSize"=>$pageSize,  //一页保存多少图片
        "pno"=>$pno,   //当前的页码
        "pageCount"=>0,  //总页数
        "data"=>"",  //保存查询出来的数据
    ];
    $sql="SELECT * FROM $tableName";
    $output["suitCount"]=count(sql_execute($sql));
    $output["pageCount"]=ceil($output["suitCount"]/$pageSize);

    $start=$output["pageSize"]*($pno-1);
    $sql="SELECT * FROM $tableName ORDER BY suitId DESC LIMIT $start,$pageSize";
    $output["data"]=sql_execute($sql);
    echo json_encode($output);
?>