<?php
    $conn=mysqli_connect("127.0.0.1","root","","nuannuan",3306);
    mysqli_query($conn,"SET NAMES UTF8");

    function sql_execute($sql){
        global $conn;
        $result=mysqli_query($conn,$sql);
        if(!$result){
            return "查询执行失败，请检查是否为sql语法错误:$sql";
        }else{
            return $rowList=mySqli_fetch_all($result,MYSQLI_ASSOC);
        }
    }
?>