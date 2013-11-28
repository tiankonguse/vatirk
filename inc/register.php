<?php
session_start ();
require_once ("init.php");
require_once ("JSON.php");
$json = new Services_JSON ();
echo $json->encode ( register () );
require_once ("end.php");
?>

<?php
function register() {
	global $conn;
	
	// 检查变量是否存在
	if (isset ( $_POST ['username'] ) && isset ( $_POST ['realname'] ) && isset ( $_POST ['email'] ) && isset ( $_POST ['password1'] ) && isset ( $_POST ['password2'] )) {
		// 获得变量的数据
		// 防止sql注入
		$email = mysql_real_escape_string ( $_POST ['email'] );
		$password1 = mysql_real_escape_string ( $_POST ['password1'] );
		$password2 = mysql_real_escape_string ( $_POST ['password2'] );
		$username = mysql_real_escape_string ( $_POST ['username'] );
		$realname = mysql_real_escape_string ( $_POST ['realname'] );
		
		// 检查表单数据是否合法
		if (strcmp ( $email, "" ) == 0 || strcmp ( $username, "" ) == 0 || strcmp ( $realname, "" ) == 0 || strcmp ( $password1, "" ) == 0 || strcmp ( $password2, "" ) == 0) {
			return output ( 6, "表单填写不完整，加*的必须填写" );
		}
		
		if (strcmp ( $password1, $password2 ) != 0) {
			return output ( 5, "输入的两次密码不1111同" );
		}
		
		if (! preg_match ( '/^.+?@.+?\..+?$/', $email )) {
			return output ( 4, "邮箱格式不正确" );
		}
		
		// 密码加密
		$password = sha1 ( SALT . $password2 );
		
		// 实现此函数功能前检查此操作是否合法
		$sql = "select * from `vatirk_user` where email = '$email' or 	username = '$username'";
		$result = @mysql_query ( $sql, $conn );
		if ($result && mysql_num_rows ( $result ) > 0) {
			return output ( 3, "该邮箱或用户名已存在" );
		}
		
		// 实现本函数功能
		$sql = "INSERT INTO `vatirk_user`(`username`, `password`, `email`, `realname`) VALUES ('$username','$password','$email','$realname')";
		$result = @mysql_query ( $sql, $conn );
		if ($result) {
			return output ( 0, "注册成功" );
		} else {
			return output ( 2, "数据库操作失败，请联系管理员" );
		}
	} else {
		return output ( 6, "表单填写不完整，加*的必须填写" );
	}
}

?>



