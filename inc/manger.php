<?php
 /*
	inc/manger.php?state=
	定义一个操作
	delete_user      => 1
*/
session_start();
require_once("init.php");
require_once("JSON.php");
$json = new Services_JSON();
require_once("manger.function.php");
if(!isset($_GET["state"])){
	$ret = output(14,"非法操作");
	echo $json->encode($ret);
}else{
	$state = $_GET["state"];
	if(!$ret){
		if(!isset($_SESSION["username"]) || $_SESSION["username"]!="admin"){
			$ret = output(9,"此操作你没有权限");
		}
	}
	if(!$conn || !$result ||  $ret){
		echo $json->encode($ret);
	}else{
		switch($state){
			case 1:echo $json->encode(delete_user());break;
			default:echo $json->encode(output(9,"非法操作"));break;
		}
	}
}
require_once("end.php");
?>
