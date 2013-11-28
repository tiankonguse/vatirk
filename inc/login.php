<?php
session_start();
require_once("init.php");
require_once("JSON.php");
$json = new Services_JSON();
echo $json->encode(login());
require_once("end.php");
?>

<?php

function login(){
	global $conn;

	//检查变量是否存在
	if(isset($_POST['username']) && isset($_POST['password'])){
		//获得变量的数据
		//防止sql注入
		$password = mysql_real_escape_string($_POST['password']);
		$username = mysql_real_escape_string($_POST['username']);
		
		//检查表单数据是否合法
		if(strcmp($username,"") == 0 || strcmp($password,"") == 0){
			return output(6,"表单填写不完整");
		}
		
		//密码加密
		$password = sha1(SALT . $password);
		
		
		//实现此函数功能前检查此操作是否合法
		$sql = "select * from `vatirk_user` where password = '$password' and username = '$username'";
		$result = @mysql_query($sql ,$conn);
		if($result && mysql_num_rows($result) > 0){
			$row=mysql_fetch_array($result);
			$_SESSION['username'] = $username;
			$_SESSION['user_id'] = $row['id'];
			$_SESSION['email'] = $row['email'];
			$_SESSION['realname'] = $row['realname'];
			return output(0,"登陆成功");
		}else{
			return output(2,"用户名或密码错误");
		}
		
	}else{
		return output(6,"表单填写不完整");
	}
}

?>



