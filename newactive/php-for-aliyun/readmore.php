<?php
require("req.php");
@$s=$_REQUEST["sta"];
$cont=10;
$output=[];
if(empty($s)){
	$s=0;
}
//$res=mysqli_query($conn, $query)
$sql="select 
		d_id,d_img,d_uname,d_detil,select_1,select_2
	  from
		progect_detil
	  limit
		$s,$cont";
$res=mysql_query($sql);
while(true){
	$row=mysql_fetch_assoc($res);
	if(!$row){
		break;
	}
	$output[]=$row;
}
echo json_encode($output);
?>