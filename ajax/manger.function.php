<?php
function getUserList(){
	global $conn;
	$html ="";
	$title = "vatirk集训基地的联盟成员";
	
	$head = "
	<div class='wrap'>
		<div class='page-header text-center'>
			<h1>$title</h1>
		</div>
		<table class='table table-striped table-bordered table-hover table-condensed tablesorter' style='word-break:break-all;'>
			<thead>
				<tr>
					<th>username</th>
					<th>真实姓名</th>
					<th>邮箱</th>
					<th>管理</th>
				</tr>
			</thead>
			<tbody>
	";
	$footer = "
				</tbody>
		</table>
	</div>
	";
	
	$state = 0;
	
	if($_SESSION['username'] != 'admin'){
		$state = 1;
		$body = "<tr><td colspan='4'>请先登录</td></tr>";
	}else{
		$state = 0;
		$body = "";
		
		$sql = "SELECT * FROM `user`";
		$result = mysql_query($sql ,$conn);
		while($result && $row=mysql_fetch_array($result)) {
			$row_id = $row['id'];
			$row_username = $row['username'];
			$row_email = $row['email'];
			$row_realname = $row['realname'];
			$body .= "<tr data-id='$row_id' id='user_$row_id' >";
			$body .= "<td>$row_username</td>";
			$body .= "<td>$row_realname</td>";
			$body .= "<td>$row_email</td>";
			$body .= "
			<td style='text-align:center;'>
				<div class='btn-group'  data-toggle='buttons-radio'>
					<button class='btn btn-info' onclick=\"click_reset_password($row_id,'$row_username')\">重置密码</button>
					<button class='btn btn-danger' onclick=\"click_delete_user($row_id, '$row_username')\">删除</button>
				</div>
			</td>";
			$body .= "</tr>";			
		}
		$body .= "
		<div id='addevent'  class='modal hide fade'>
			<div class='modal-header' style='text-align: center;cursor: move;'>
				<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
				<h3></h3>
			</div>
			<div class='modal-body'>
				<div class='control-group username'>
					<label class='control-label'>username</label>
					<div class='controls'>
						<div class='input-prepend'>
							<span class='add-on'><i class='icon-user'></i></span>
							<input type='text' id='del_username' placeholder='用户名'  class='span3'>
						</div>
					</div>
				</div>
				<div class='control-group password'>
					<label class='control-label'  for='inputPassword'>password</label>
					<div class='controls'>
						<div class='input-prepend'>
							<span class='add-on'><i class='icon-lock'></i></span>
							<input type='password' id='reset_password' placeholder='密码'  class='span3'>
						</div>
						
					</div>
				</div>
			</div>
		  <div class='modal-footer'>
			<button class='btn' data-dismiss='modal' aria-hidden='true' >取消</button>
			<button class='btn btn-primary' onclick=''>确认</button>
		  </div>
		</div>
		";
	}
	
	return output($state,$head.$body.$footer);
}

?>