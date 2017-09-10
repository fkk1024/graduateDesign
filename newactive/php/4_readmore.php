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
		detil
	  limit
		$s,$cont";
$res=mysqli_query($conn, $sql);
while(1){
	$row=mysqli_fetch_assoc($res);
	if(!$row){
		break;
	}
	$output[]=$row;
}
echo json_encode($output);
?>