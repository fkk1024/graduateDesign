<?php
//接收用户提交的数据，用户名和密码，验证是否正确，向客户端输出ok或err
require("req.php");
@$uname=$_REQUEST['uname'] or die('用户名不能为空');
@$upwd=$_REQUEST['upwd'] or die('用密码不能为空');
//执行sql语句
$sql="SELECT * FROM progect_user WHERE name='$uname' AND pwd='$upwd'";
$res=mysql_query($sql);
//从结果集中取出一条，当做关联数组返回
if($res===false){
    echo '语句错误';
}else{
//抓取一条记录
    $rows=mysql_fetch_assoc($res);
	//echo console.log($row);
    if($rows){
        echo '1';
    }else{
        echo '0';
    }
}