<?php
session_start ();
require_once ("../inc/init.php");
require_once ("../inc/JSON.php");
$json = new Services_JSON ();
echo $json->encode ( getLogin () );
require_once ("../inc/end.php");
?>

<?php
function getLogin() {
	$title = "vatirk 的后台管理登陆";
	
	$head = "
	<div class='wrap'>
		<div class='page-header text-center'>
			<h1>$title</h1>
		</div>		
	";
	$body = "
		<form class='form-horizontal' id='manger_login' method='post'>
			<div class='control-group'>
				<label class='control-label'>username</label>
				<div class='controls'>
					<div class='input-prepend'>
						<span class='add-on'><i class='icon-user'></i></span>
						<input type='text' id='manger_login_username' placeholder='用户名'  class='span3'>
					</div>
				</div>
			</div>
			<div class='control-group'>
				<label class='control-label'  for='inputPassword'>密码</label>
				<div class='controls'>
					<div class='input-prepend'>
						<span class='add-on'><i class='icon-lock'></i></span>
						<input type='password' id='manger_login_password' placeholder='密码'  class='span3'>
					</div>
					
				</div>
			</div>
			<div class='control-group'>
				<div class='controls'>
					<button type='submit' class='btn btn-large btn-primary' type='submit'>提交</button>
				</div>
			</div>
		 </form>	
	";
	
	$footer = "
	</div>
	";
	
	$state = 0;
	
	$html = $head . $body . $footer;
	
	return output ( $state, $html );
}

?>



