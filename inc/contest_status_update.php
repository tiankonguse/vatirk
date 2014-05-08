<?php
session_start();
require_once("init.php");
require_once("JSON.php");
$json = new Services_JSON();
echo $json->encode(contest());
require_once("end.php");
?>

<?php

function contest(){
	global $conn;

	//检查变量是否存在
	if(isset($_POST['contest_id']) && isset($_POST['status']) && isset($_POST['user_id'])){
		//获得变量的数据
		//防止sql注入
		$contest_id = mysql_real_escape_string($_POST['contest_id']);
		$status = mysql_real_escape_string($_POST['status']);
		$user_id = mysql_real_escape_string($_POST['user_id']);
		
		//检查表单数据是否合法
		if(strcmp($contest_id,"") == 0 || strcmp($status,"") == 0 || strcmp($user_id,"") == 0){
			return output(6,"表单填写不完整");
		}
		

		//实现此函数功能前检查此操作是否合法
		$sql = "select * from `vatirk_contest_user` where contest_id = '$contest_id' and user_id = '$user_id'";
		$result = mysql_query($sql ,$conn);
		if($result && mysql_num_rows($result) > 0){
			if($status == 1){
				return output(1,"你已经报名，不需要重复报名");
			}else{
				$sql = "DELETE FROM `vatirk_contest_user` WHERE contest_id = '$contest_id' and user_id = '$user_id'";
				$result = mysql_query($sql ,$conn);
				if($result){
					return output(0,"取消报名成功");
				}else{
					return output(2,"数据库操作失败，请联系管理员");
				}			
			}
		}else{
			if($status == 0){
				return output(1,"你并没有报名，不需要取消报名");
			}else{
                $sql = "INSERT INTO `vatirk_contest_user`(`contest_id`, `user_id`) VALUES ('$contest_id','$user_id')";
				$result = mysql_query($sql ,$conn);
				if($result){
					return output(0,"报名成功");
				}else{
					return output(2,"数据库操作失败，请联系管理员");
				}
		
			}
		}
		
	}else{
		return output(6,"你的数据有问题");
	}
}

?>
