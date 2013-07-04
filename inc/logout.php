<?php
session_start();
unset($_SESSION['username']);
unset($_SESSION['user_id']);
unset($_SESSION['email']);
unset($_SESSION['realname']);
require_once("JSON.php");
$json = new Services_JSON();
echo $json->encode(output(0,"已经安全退出"));
function output($id, $message){
	$ret = array(
			'code' => $id,
			'message' => $message
		    );
	return $ret; 
}
?>



